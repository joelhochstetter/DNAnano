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
	<24.021103, 35.133698, 34.762306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168173, 34.943291, 35.081860>,  <24.256414, 34.829044, 35.273594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168173, 34.943291, 35.081860>,  <24.021103, 35.133698, 34.762306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168173, 34.943291, 35.081860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784461, -0.302602, -0.541343,
		0.499436, 0.825733, 0.262161,
		0.367675, -0.476021, 0.798886,
		24.278475, 34.800484, 35.321526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748760, 35.342823, 34.903275>,  <24.021103, 35.133698, 34.762306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748760, 35.342823, 34.903275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643549, 34.970264, 35.003929>,  <24.580423, 34.746731, 35.064323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.643549, 34.970264, 35.003929>,  <24.748760, 35.342823, 34.903275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643549, 34.970264, 35.003929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831966, -0.351031, -0.429662,
		0.488517, 0.096341, 0.867219,
		-0.263027, -0.931394, 0.251637,
		24.564640, 34.690845, 35.079422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405621, 35.176380, 34.614220>,  <24.748760, 35.342823, 34.903275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405621, 35.176380, 34.614220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685305, 34.891800, 34.586090>,  <25.853115, 34.721050, 34.569214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685305, 34.891800, 34.586090>,  <25.405621, 35.176380, 34.614220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685305, 34.891800, 34.586090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669896, 0.686355, -0.283120,
		0.249693, 0.150850, 0.956503,
		0.699209, -0.711450, -0.070325,
		25.895067, 34.678364, 34.564991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958609, 35.306778, 35.108360>,  <25.405621, 35.176380, 34.614220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958609, 35.306778, 35.108360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096292, 35.136227, 34.773762>,  <26.178902, 35.033897, 34.573002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096292, 35.136227, 34.773762>,  <25.958609, 35.306778, 35.108360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096292, 35.136227, 34.773762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586041, 0.793638, -0.163385,
		0.733536, -0.433982, 0.523053,
		0.344208, -0.426379, -0.836494,
		26.199554, 35.008312, 34.522812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683701, 35.285671, 35.093704>,  <25.958609, 35.306778, 35.108360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683701, 35.285671, 35.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515509, 35.314236, 34.731911>,  <26.414595, 35.331375, 34.514832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515509, 35.314236, 34.731911>,  <26.683701, 35.285671, 35.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515509, 35.314236, 34.731911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307569, 0.949089, -0.068054,
		0.853580, -0.306808, -0.421034,
		-0.420478, 0.071407, -0.904488,
		26.389366, 35.335659, 34.460564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191210, 34.868477, 34.866684>,  <26.683701, 35.285671, 35.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191210, 34.868477, 34.866684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346546, 34.500050, 34.878101>,  <27.439749, 34.278992, 34.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346546, 34.500050, 34.878101>,  <27.191210, 34.868477, 34.866684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346546, 34.500050, 34.878101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587772, -0.223722, 0.777478,
		-0.709728, -0.318706, -0.628262,
		0.388343, -0.921072, 0.028545,
		27.463049, 34.223728, 34.886665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665308, 34.301685, 34.945740>,  <27.191210, 34.868477, 34.866684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665308, 34.301685, 34.945740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004883, 34.212635, 35.137466>,  <27.208628, 34.159206, 35.252502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004883, 34.212635, 35.137466>,  <26.665308, 34.301685, 34.945740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004883, 34.212635, 35.137466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510736, -0.112449, 0.852352,
		-0.135879, -0.968391, -0.209178,
		0.848932, -0.222651, 0.479312,
		27.259563, 34.145847, 35.281261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575951, 33.642616, 35.282593>,  <26.665308, 34.301685, 34.945740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575951, 33.642616, 35.282593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852846, 33.866283, 35.465080>,  <27.018984, 34.000484, 35.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852846, 33.866283, 35.465080>,  <26.575951, 33.642616, 35.282593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852846, 33.866283, 35.465080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530675, -0.034002, 0.846893,
		0.489072, -0.828353, 0.273202,
		0.692237, 0.559173, 0.456216,
		27.060518, 34.034035, 35.601944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681833, 33.247532, 35.905682>,  <26.575951, 33.642616, 35.282593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681833, 33.247532, 35.905682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822767, 33.617527, 35.962608>,  <26.907328, 33.839523, 35.996765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822767, 33.617527, 35.962608>,  <26.681833, 33.247532, 35.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822767, 33.617527, 35.962608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408054, 0.014982, 0.912835,
		0.842231, -0.379696, 0.382724,
		0.352334, 0.924990, 0.142318,
		26.928467, 33.895023, 36.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933008, 33.206375, 36.500225>,  <26.681833, 33.247532, 35.905682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933008, 33.206375, 36.500225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892080, 33.603283, 36.472134>,  <26.867523, 33.841427, 36.455276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892080, 33.603283, 36.472134>,  <26.933008, 33.206375, 36.500225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892080, 33.603283, 36.472134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202316, 0.048369, 0.978125,
		0.973961, 0.114290, 0.195803,
		-0.102319, 0.992269, -0.070232,
		26.861385, 33.900963, 36.451065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268072, 33.456539, 37.068832>,  <26.933008, 33.206375, 36.500225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268072, 33.456539, 37.068832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011620, 33.734539, 36.938644>,  <26.857748, 33.901337, 36.860531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011620, 33.734539, 36.938644>,  <27.268072, 33.456539, 37.068832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011620, 33.734539, 36.938644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448542, 0.004761, 0.893749,
		0.622702, 0.718997, 0.308683,
		-0.641134, 0.694996, -0.325465,
		26.819279, 33.943039, 36.841003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186216, 33.965736, 37.639866>,  <27.268072, 33.456539, 37.068832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186216, 33.965736, 37.639866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871933, 33.980141, 37.392845>,  <26.683363, 33.988785, 37.244633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871933, 33.980141, 37.392845>,  <27.186216, 33.965736, 37.639866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871933, 33.980141, 37.392845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618504, -0.028188, 0.785276,
		0.010871, 0.998954, 0.044421,
		-0.785706, 0.036011, -0.617551,
		26.636221, 33.990944, 37.207581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793444, 34.589222, 37.845276>,  <27.186216, 33.965736, 37.639866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793444, 34.589222, 37.845276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565176, 34.297737, 37.693848>,  <26.428215, 34.122845, 37.602989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565176, 34.297737, 37.693848>,  <26.793444, 34.589222, 37.845276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565176, 34.297737, 37.693848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583515, 0.035472, 0.811328,
		-0.577796, 0.683900, -0.445458,
		-0.570668, -0.728713, -0.378570,
		26.393976, 34.079124, 37.580276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029381, 34.805805, 37.716682>,  <26.793444, 34.589222, 37.845276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029381, 34.805805, 37.716682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074854, 34.412155, 37.771210>,  <26.102139, 34.175964, 37.803925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074854, 34.412155, 37.771210>,  <26.029381, 34.805805, 37.716682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074854, 34.412155, 37.771210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485824, 0.064615, 0.871665,
		-0.866632, -0.165319, -0.470764,
		0.113684, -0.984121, 0.136313,
		26.108959, 34.116920, 37.812103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710197, 34.320663, 37.308357>,  <26.029381, 34.805805, 37.716682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710197, 34.320663, 37.308357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620640, 34.577290, 37.601822>,  <25.566906, 34.731266, 37.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620640, 34.577290, 37.601822>,  <25.710197, 34.320663, 37.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620640, 34.577290, 37.601822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926801, 0.092732, -0.363923,
		-0.301516, -0.761440, 0.573844,
		-0.223892, 0.641568, 0.733664,
		25.553473, 34.769760, 37.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713694, 34.401634, 36.607914>,  <25.710197, 34.320663, 37.308357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713694, 34.401634, 36.607914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012438, 34.357075, 36.870148>,  <26.191685, 34.330341, 37.027489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012438, 34.357075, 36.870148>,  <25.713694, 34.401634, 36.607914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012438, 34.357075, 36.870148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664983, 0.125558, -0.736229,
		-0.000301, 0.985812, 0.167851,
		0.746859, -0.111396, 0.655586,
		26.236496, 34.323654, 37.066822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115923, 34.965031, 36.489338>,  <25.713694, 34.401634, 36.607914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115923, 34.965031, 36.489338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355349, 34.672821, 36.620823>,  <26.499004, 34.497494, 36.699715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355349, 34.672821, 36.620823>,  <26.115923, 34.965031, 36.489338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355349, 34.672821, 36.620823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632309, 0.178921, -0.753772,
		0.491840, 0.659026, 0.569015,
		0.598564, -0.730529, 0.328708,
		26.534918, 34.453663, 36.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769945, 35.170315, 36.337067>,  <26.115923, 34.965031, 36.489338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769945, 35.170315, 36.337067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817543, 34.774101, 36.364433>,  <26.846102, 34.536373, 36.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817543, 34.774101, 36.364433>,  <26.769945, 35.170315, 36.337067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817543, 34.774101, 36.364433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641626, 0.024127, -0.766638,
		0.757731, 0.135127, 0.638424,
		0.118997, -0.990535, 0.068420,
		26.853243, 34.476940, 36.384960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510370, 35.004459, 36.266056>,  <26.769945, 35.170315, 36.337067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510370, 35.004459, 36.266056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342161, 34.653675, 36.173016>,  <27.241236, 34.443207, 36.117191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342161, 34.653675, 36.173016>,  <27.510370, 35.004459, 36.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342161, 34.653675, 36.173016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631893, -0.099125, -0.768691,
		0.651054, -0.470231, 0.595829,
		-0.420524, -0.876959, -0.232600,
		27.216003, 34.390587, 36.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088886, 34.596169, 36.157478>,  <27.510370, 35.004459, 36.266056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088886, 34.596169, 36.157478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763302, 34.423420, 36.002064>,  <27.567951, 34.319771, 35.908813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763302, 34.423420, 36.002064>,  <28.088886, 34.596169, 36.157478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763302, 34.423420, 36.002064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528599, -0.273208, -0.803704,
		0.240942, -0.859562, 0.450665,
		-0.813959, -0.431868, -0.388537,
		27.519114, 34.293861, 35.885502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329369, 33.989243, 35.967731>,  <28.088886, 34.596169, 36.157478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329369, 33.989243, 35.967731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987062, 33.997269, 35.760941>,  <27.781679, 34.002087, 35.636868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987062, 33.997269, 35.760941>,  <28.329369, 33.989243, 35.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987062, 33.997269, 35.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464720, -0.409351, -0.785154,
		-0.227382, -0.912156, 0.340982,
		-0.855765, 0.020069, -0.516976,
		27.730333, 34.003288, 35.605846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225580, 33.362385, 35.627506>,  <28.329369, 33.989243, 35.967731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225580, 33.362385, 35.627506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024958, 33.648613, 35.433025>,  <27.904585, 33.820351, 35.316338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024958, 33.648613, 35.433025>,  <28.225580, 33.362385, 35.627506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024958, 33.648613, 35.433025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463043, -0.252686, -0.849553,
		-0.730775, -0.651234, -0.204605,
		-0.501557, 0.715573, -0.486206,
		27.874491, 33.863285, 35.287163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445522, 33.615986, 34.868153>,  <28.225580, 33.362385, 35.627506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445522, 33.615986, 34.868153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336470, 33.232960, 34.905552>,  <28.271038, 33.003143, 34.927994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336470, 33.232960, 34.905552>,  <28.445522, 33.615986, 34.868153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336470, 33.232960, 34.905552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949921, 0.252474, -0.184141,
		0.152720, -0.139021, -0.978442,
		-0.272631, -0.957565, 0.093501,
		28.254681, 32.945690, 34.933601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109766, 33.897018, 35.194820>,  <28.445522, 33.615986, 34.868153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109766, 33.897018, 35.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462831, 33.839851, 35.373920>,  <29.674671, 33.805550, 35.481380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462831, 33.839851, 35.373920>,  <29.109766, 33.897018, 35.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462831, 33.839851, 35.373920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450425, 0.529325, -0.718980,
		-0.134249, 0.836295, 0.531590,
		0.882663, -0.142919, 0.447749,
		29.727631, 33.796974, 35.508244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493511, 34.556145, 35.336121>,  <29.109766, 33.897018, 35.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493511, 34.556145, 35.336121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735830, 34.242268, 35.283569>,  <29.881222, 34.053940, 35.252037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735830, 34.242268, 35.283569>,  <29.493511, 34.556145, 35.336121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735830, 34.242268, 35.283569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310079, 0.384929, -0.869299,
		0.732708, 0.485882, 0.476507,
		0.605798, -0.784697, -0.131379,
		29.917570, 34.006859, 35.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173046, 34.818947, 34.979813>,  <29.493511, 34.556145, 35.336121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173046, 34.818947, 34.979813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118179, 34.433468, 34.888180>,  <30.085258, 34.202183, 34.833199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118179, 34.433468, 34.888180>,  <30.173046, 34.818947, 34.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118179, 34.433468, 34.888180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244129, 0.191247, -0.950698,
		0.959993, -0.186332, 0.209032,
		-0.137168, -0.963693, -0.229084,
		30.077028, 34.144360, 34.819454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733545, 34.561222, 34.556496>,  <30.173046, 34.818947, 34.979813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733545, 34.561222, 34.556496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419018, 34.350750, 34.426979>,  <30.230301, 34.224468, 34.349270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419018, 34.350750, 34.426979>,  <30.733545, 34.561222, 34.556496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419018, 34.350750, 34.426979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257516, 0.197251, -0.945927,
		0.561595, -0.827180, -0.019602,
		-0.786318, -0.526180, -0.323787,
		30.183123, 34.192898, 34.329842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969576, 34.008213, 34.036179>,  <30.733545, 34.561222, 34.556496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969576, 34.008213, 34.036179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580238, 34.072533, 33.970764>,  <30.346636, 34.111126, 33.931515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580238, 34.072533, 33.970764>,  <30.969576, 34.008213, 34.036179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580238, 34.072533, 33.970764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130858, -0.196229, -0.971787,
		-0.188335, -0.967287, 0.169960,
		-0.973348, 0.160781, -0.163534,
		30.288235, 34.120773, 33.921703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662338, 33.448441, 33.621254>,  <30.969576, 34.008213, 34.036179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662338, 33.448441, 33.621254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432344, 33.766762, 33.545265>,  <30.294348, 33.957756, 33.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432344, 33.766762, 33.545265>,  <30.662338, 33.448441, 33.621254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432344, 33.766762, 33.545265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019630, -0.218707, -0.975593,
		-0.817929, -0.564680, 0.110132,
		-0.574984, 0.795804, -0.189971,
		30.259850, 34.005505, 33.488274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134024, 33.254585, 33.212151>,  <30.662338, 33.448441, 33.621254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134024, 33.254585, 33.212151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203087, 33.636684, 33.116074>,  <30.244524, 33.865944, 33.058430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203087, 33.636684, 33.116074>,  <30.134024, 33.254585, 33.212151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203087, 33.636684, 33.116074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259348, -0.279337, -0.924505,
		-0.950225, 0.097329, -0.295971,
		0.172657, 0.955248, -0.240191,
		30.254885, 33.923260, 33.044018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836140, 33.372353, 32.539944>,  <30.134024, 33.254585, 33.212151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836140, 33.372353, 32.539944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114197, 33.655796, 32.588356>,  <30.281031, 33.825863, 32.617401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114197, 33.655796, 32.588356>,  <29.836140, 33.372353, 32.539944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114197, 33.655796, 32.588356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280243, -0.112086, -0.953363,
		-0.661995, 0.696643, -0.276498,
		0.695145, 0.708608, 0.121029,
		30.322741, 33.868378, 32.624664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746685, 33.868614, 31.967804>,  <29.836140, 33.372353, 32.539944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746685, 33.868614, 31.967804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124538, 33.888248, 32.097576>,  <30.351252, 33.900028, 32.175438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124538, 33.888248, 32.097576>,  <29.746685, 33.868614, 31.967804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124538, 33.888248, 32.097576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315378, 0.137088, -0.939012,
		-0.090566, 0.989342, 0.114018,
		0.944635, 0.049083, 0.324432,
		30.407928, 33.902973, 32.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072575, 34.455589, 31.698961>,  <29.746685, 33.868614, 31.967804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072575, 34.455589, 31.698961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381845, 34.226646, 31.808216>,  <30.567408, 34.089279, 31.873768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381845, 34.226646, 31.808216>,  <30.072575, 34.455589, 31.698961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381845, 34.226646, 31.808216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363079, 0.046376, -0.930604,
		0.519971, 0.818692, 0.243668,
		0.773178, -0.572358, 0.273135,
		30.613798, 34.054939, 31.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684620, 34.733826, 31.444851>,  <30.072575, 34.455589, 31.698961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684620, 34.733826, 31.444851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735287, 34.340714, 31.498655>,  <30.765688, 34.104847, 31.530937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735287, 34.340714, 31.498655>,  <30.684620, 34.733826, 31.444851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735287, 34.340714, 31.498655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323606, -0.087240, -0.942162,
		0.937675, 0.162871, 0.306984,
		0.126669, -0.982783, 0.134509,
		30.773287, 34.045879, 31.539007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189474, 34.512917, 31.042387>,  <30.684620, 34.733826, 31.444851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189474, 34.512917, 31.042387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988068, 34.170441, 31.088697>,  <30.867224, 33.964954, 31.116484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988068, 34.170441, 31.088697>,  <31.189474, 34.512917, 31.042387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988068, 34.170441, 31.088697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203281, -0.247641, -0.947286,
		0.839730, -0.453440, 0.298740,
		-0.503518, -0.856193, 0.115776,
		30.837011, 33.913582, 31.123430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861250, 34.412113, 30.412449>,  <31.189474, 34.512917, 31.042387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861250, 34.412113, 30.412449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896164, 34.056721, 30.232233>,  <30.917112, 33.843487, 30.124104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896164, 34.056721, 30.232233>,  <30.861250, 34.412113, 30.412449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896164, 34.056721, 30.232233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089161, -0.443485, 0.891836,
		-0.992185, -0.118014, 0.040508,
		0.087284, -0.888478, -0.450541,
		30.922350, 33.790176, 30.097071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403561, 33.739960, 30.686102>,  <30.861250, 34.412113, 30.412449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403561, 33.739960, 30.686102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759548, 33.641117, 30.532797>,  <30.973141, 33.581810, 30.440813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759548, 33.641117, 30.532797>,  <30.403561, 33.739960, 30.686102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759548, 33.641117, 30.532797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309261, -0.290588, 0.905492,
		-0.335132, -0.924388, -0.182191,
		0.889968, -0.247115, -0.383262,
		31.026539, 33.566982, 30.417818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560654, 33.051296, 30.675346>,  <30.403561, 33.739960, 30.686102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560654, 33.051296, 30.675346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834019, 33.333824, 30.749165>,  <30.998037, 33.503342, 30.793455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834019, 33.333824, 30.749165>,  <30.560654, 33.051296, 30.675346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834019, 33.333824, 30.749165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020575, -0.271328, 0.962267,
		0.729743, -0.653828, -0.199961,
		0.683412, 0.706322, 0.184548,
		31.039042, 33.545719, 30.804529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885824, 32.860611, 31.262564>,  <30.560654, 33.051296, 30.675346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885824, 32.860611, 31.262564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075031, 33.212765, 31.276316>,  <31.188557, 33.424057, 31.284567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075031, 33.212765, 31.276316>,  <30.885824, 32.860611, 31.262564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075031, 33.212765, 31.276316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201370, 0.070038, 0.977008,
		0.857731, -0.469067, 0.210411,
		0.473019, 0.880381, 0.034382,
		31.216936, 33.476879, 31.286631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363605, 32.929600, 31.739935>,  <30.885824, 32.860611, 31.262564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363605, 32.929600, 31.739935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194538, 33.288475, 31.688696>,  <31.093098, 33.503799, 31.657953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194538, 33.288475, 31.688696>,  <31.363605, 32.929600, 31.739935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194538, 33.288475, 31.688696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094004, 0.097178, 0.990818,
		0.901396, 0.430829, 0.043265,
		-0.422669, 0.897186, -0.128096,
		31.067738, 33.557632, 31.650267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482466, 33.260445, 32.362667>,  <31.363605, 32.929600, 31.739935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482466, 33.260445, 32.362667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241486, 33.524139, 32.182682>,  <31.096897, 33.682354, 32.074692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241486, 33.524139, 32.182682>,  <31.482466, 33.260445, 32.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241486, 33.524139, 32.182682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306057, 0.329850, 0.893044,
		0.737145, 0.675728, 0.003045,
		-0.602451, 0.659235, -0.449959,
		31.060751, 33.721909, 32.047695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548170, 33.850525, 32.789757>,  <31.482466, 33.260445, 32.362667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548170, 33.850525, 32.789757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214073, 33.856384, 32.569881>,  <31.013615, 33.859898, 32.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214073, 33.856384, 32.569881>,  <31.548170, 33.850525, 32.789757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214073, 33.856384, 32.569881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514502, 0.331960, 0.790627,
		0.194054, 0.943180, -0.269732,
		-0.835243, 0.014646, -0.549686,
		30.963501, 33.860779, 32.404976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340181, 34.608711, 32.700306>,  <31.548170, 33.850525, 32.789757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340181, 34.608711, 32.700306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019722, 34.372730, 32.660072>,  <30.827446, 34.231144, 32.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019722, 34.372730, 32.660072>,  <31.340181, 34.608711, 32.700306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019722, 34.372730, 32.660072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493420, 0.556029, 0.668856,
		-0.338666, 0.585483, -0.736556,
		-0.801151, -0.589950, -0.100581,
		30.779377, 34.195744, 32.629898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713367, 35.132637, 32.535133>,  <31.340181, 34.608711, 32.700306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713367, 35.132637, 32.535133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626259, 34.773628, 32.688507>,  <30.573994, 34.558224, 32.780533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626259, 34.773628, 32.688507>,  <30.713367, 35.132637, 32.535133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626259, 34.773628, 32.688507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616640, 0.431047, 0.658751,
		-0.756525, -0.092983, -0.647321,
		-0.217773, -0.897526, 0.383434,
		30.560926, 34.504372, 32.803539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068821, 35.177254, 32.896595>,  <30.713367, 35.132637, 32.535133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068821, 35.177254, 32.896595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098372, 34.784451, 32.966099>,  <30.116102, 34.548767, 33.007801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098372, 34.784451, 32.966099>,  <30.068821, 35.177254, 32.896595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098372, 34.784451, 32.966099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430001, 0.125843, 0.894015,
		-0.899801, -0.140765, -0.412969,
		0.073877, -0.982013, 0.173763,
		30.120535, 34.489845, 33.018227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518076, 35.017010, 33.303375>,  <30.068821, 35.177254, 32.896595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518076, 35.017010, 33.303375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717855, 34.675701, 33.363342>,  <29.837723, 34.470917, 33.399323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717855, 34.675701, 33.363342>,  <29.518076, 35.017010, 33.303375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717855, 34.675701, 33.363342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390044, -0.066951, 0.918359,
		-0.773574, -0.517148, -0.366253,
		0.499448, -0.853274, 0.149919,
		29.867689, 34.419720, 33.408318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057476, 34.529716, 33.664795>,  <29.518076, 35.017010, 33.303375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057476, 34.529716, 33.664795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440636, 34.448669, 33.746159>,  <29.670532, 34.400040, 33.794975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440636, 34.448669, 33.746159>,  <29.057476, 34.529716, 33.664795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440636, 34.448669, 33.746159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240279, -0.177980, 0.954248,
		-0.157123, -0.962953, -0.219167,
		0.957903, -0.202595, 0.203413,
		29.728006, 34.387886, 33.807182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003670, 33.946304, 33.960167>,  <29.057476, 34.529716, 33.664795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003670, 33.946304, 33.960167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314518, 34.169418, 34.076759>,  <29.501026, 34.303288, 34.146713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314518, 34.169418, 34.076759>,  <29.003670, 33.946304, 33.960167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314518, 34.169418, 34.076759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097238, -0.351169, 0.931249,
		0.621794, -0.752036, -0.218664,
		0.777121, 0.557783, 0.291481,
		29.547655, 34.336754, 34.164204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412178, 33.556698, 34.274635>,  <29.003670, 33.946304, 33.960167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412178, 33.556698, 34.274635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527149, 33.916805, 34.405418>,  <29.596132, 34.132870, 34.483891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527149, 33.916805, 34.405418>,  <29.412178, 33.556698, 34.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527149, 33.916805, 34.405418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182270, -0.283717, 0.941426,
		0.940299, -0.330187, 0.082543,
		0.287428, 0.900267, 0.326962,
		29.613379, 34.186886, 34.503506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632343, 32.871052, 34.527531>,  <29.412178, 33.556698, 34.274635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632343, 32.871052, 34.527531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775728, 33.241371, 34.575523>,  <29.861759, 33.463562, 34.604321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775728, 33.241371, 34.575523>,  <29.632343, 32.871052, 34.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775728, 33.241371, 34.575523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475556, -0.291687, 0.829918,
		0.803337, -0.240437, -0.544830,
		0.358464, 0.925801, 0.119982,
		29.883266, 33.519112, 34.611519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322042, 32.938850, 34.534683>,  <29.632343, 32.871052, 34.527531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322042, 32.938850, 34.534683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217434, 33.240547, 34.775593>,  <30.154669, 33.421566, 34.920139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217434, 33.240547, 34.775593>,  <30.322042, 32.938850, 34.534683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217434, 33.240547, 34.775593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629042, -0.340080, 0.699037,
		0.732061, 0.561665, -0.385511,
		-0.261519, 0.754240, 0.602270,
		30.138979, 33.466820, 34.956272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937502, 33.334511, 34.824585>,  <30.322042, 32.938850, 34.534683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937502, 33.334511, 34.824585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630941, 33.370903, 35.078941>,  <30.447006, 33.392738, 35.231556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630941, 33.370903, 35.078941>,  <30.937502, 33.334511, 34.824585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630941, 33.370903, 35.078941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608385, -0.214889, 0.763996,
		0.206153, 0.972392, 0.109340,
		-0.766400, 0.090979, 0.635889,
		30.401022, 33.398197, 35.269707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072006, 33.817707, 35.461189>,  <30.937502, 33.334511, 34.824585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072006, 33.817707, 35.461189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834660, 33.508621, 35.551373>,  <30.692251, 33.323170, 35.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834660, 33.508621, 35.551373>,  <31.072006, 33.817707, 35.461189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834660, 33.508621, 35.551373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532261, -0.166536, 0.830038,
		-0.603832, 0.612523, 0.510101,
		-0.593368, -0.772710, 0.225462,
		30.656649, 33.276810, 35.619011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735718, 34.063084, 35.657681>,  <31.072006, 33.817707, 35.461189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735718, 34.063084, 35.657681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002144, 34.147572, 35.371536>,  <32.161999, 34.198265, 35.199848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002144, 34.147572, 35.371536>,  <31.735718, 34.063084, 35.657681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002144, 34.147572, 35.371536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703318, -0.497241, 0.508031,
		-0.248401, -0.841508, -0.479750,
		0.666064, 0.211222, -0.715363,
		32.201962, 34.210938, 35.156929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058208, 33.411446, 35.637844>,  <31.735718, 34.063084, 35.657681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058208, 33.411446, 35.637844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305378, 33.685749, 35.484009>,  <32.453678, 33.850330, 35.391708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305378, 33.685749, 35.484009>,  <32.058208, 33.411446, 35.637844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305378, 33.685749, 35.484009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732271, -0.323856, 0.599080,
		0.286274, -0.651805, -0.702280,
		0.617921, 0.685760, -0.384586,
		32.490753, 33.891476, 35.368633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602989, 33.330593, 36.080307>,  <32.058208, 33.411446, 35.637844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602989, 33.330593, 36.080307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 33.629944, 35.860661>,  <32.841076, 33.809555, 35.728870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 33.629944, 35.860661>,  <32.602989, 33.330593, 36.080307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751793, 33.629944, 35.860661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893628, -0.128744, 0.429948,
		0.251069, -0.650654, -0.716669,
		0.372014, 0.748381, -0.549119,
		32.863396, 33.854458, 35.695927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065170, 33.038303, 35.669937>,  <32.602989, 33.330593, 36.080307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065170, 33.038303, 35.669937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149620, 33.424763, 35.729244>,  <33.200291, 33.656639, 35.764828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149620, 33.424763, 35.729244>,  <33.065170, 33.038303, 35.669937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149620, 33.424763, 35.729244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923576, -0.246845, 0.293386,
		0.320054, 0.074998, -0.944426,
		0.211124, 0.966149, 0.148270,
		33.212955, 33.714607, 35.773724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521355, 33.248795, 35.253265>,  <33.065170, 33.038303, 35.669937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521355, 33.248795, 35.253265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560669, 33.457172, 35.592430>,  <33.584259, 33.582199, 35.795929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560669, 33.457172, 35.592430>,  <33.521355, 33.248795, 35.253265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560669, 33.457172, 35.592430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899065, -0.411768, 0.148762,
		0.426640, 0.747709, -0.508831,
		0.098290, 0.520940, 0.847915,
		33.590157, 33.613453, 35.846806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243309, 33.648273, 35.326988>,  <33.521355, 33.248795, 35.253265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243309, 33.648273, 35.326988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075249, 33.459431, 35.636978>,  <33.974411, 33.346127, 35.822971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075249, 33.459431, 35.636978>,  <34.243309, 33.648273, 35.326988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075249, 33.459431, 35.636978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668448, -0.738590, -0.087538,
		0.613717, 0.481253, 0.625897,
		-0.420153, -0.472103, 0.774978,
		33.949203, 33.317799, 35.869473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764420, 33.655094, 35.963078>,  <34.243309, 33.648273, 35.326988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764420, 33.655094, 35.963078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500343, 33.359272, 35.910625>,  <34.341896, 33.181778, 35.879154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500343, 33.359272, 35.910625>,  <34.764420, 33.655094, 35.963078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500343, 33.359272, 35.910625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744465, -0.667463, 0.016302,
		-0.099581, -0.086859, 0.991231,
		-0.660194, -0.739560, -0.131130,
		34.302284, 33.137405, 35.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820995, 33.179874, 36.440033>,  <34.764420, 33.655094, 35.963078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820995, 33.179874, 36.440033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700592, 33.018917, 36.094208>,  <34.628349, 32.922340, 35.886711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700592, 33.018917, 36.094208>,  <34.820995, 33.179874, 36.440033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700592, 33.018917, 36.094208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601350, -0.783726, 0.155407,
		-0.740118, -0.473128, 0.477886,
		-0.301005, -0.402396, -0.864565,
		34.610291, 32.898197, 35.834839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377941, 32.907051, 36.023888>,  <34.820995, 33.179874, 36.440033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377941, 32.907051, 36.023888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644325, 33.146751, 35.846172>,  <35.804157, 33.290573, 35.739544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644325, 33.146751, 35.846172>,  <35.377941, 32.907051, 36.023888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644325, 33.146751, 35.846172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639263, -0.765405, -0.074149,
		-0.384497, -0.234639, -0.892809,
		0.665962, 0.599250, -0.444291,
		35.844112, 33.326527, 35.712887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978851, 33.162712, 35.446968>,  <35.377941, 32.907051, 36.023888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978851, 33.162712, 35.446968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213432, 32.883873, 35.281982>,  <35.354179, 32.716568, 35.182991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213432, 32.883873, 35.281982>,  <34.978851, 33.162712, 35.446968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213432, 32.883873, 35.281982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494779, -0.711486, 0.498981,
		-0.641303, -0.088548, -0.762161,
		0.586451, -0.697099, -0.412467,
		35.389366, 32.674744, 35.158241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836803, 32.725254, 34.879025>,  <34.978851, 33.162712, 35.446968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836803, 32.725254, 34.879025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097244, 32.476383, 35.052902>,  <35.253510, 32.327061, 35.157230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097244, 32.476383, 35.052902>,  <34.836803, 32.725254, 34.879025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097244, 32.476383, 35.052902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732611, -0.664867, 0.145716,
		0.198356, -0.413341, -0.888709,
		0.651104, -0.622174, 0.434699,
		35.292576, 32.289730, 35.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394489, 32.521503, 34.326809>,  <34.836803, 32.725254, 34.879025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394489, 32.521503, 34.326809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093021, 32.258720, 34.334709>,  <34.912140, 32.101051, 34.339447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093021, 32.258720, 34.334709>,  <35.394489, 32.521503, 34.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093021, 32.258720, 34.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475606, 0.524394, -0.706265,
		0.453626, -0.541686, -0.707672,
		-0.753673, -0.656953, 0.019751,
		34.866920, 32.061634, 34.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229691, 32.436462, 33.648464>,  <35.394489, 32.521503, 34.326809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229691, 32.436462, 33.648464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893494, 32.332062, 33.838390>,  <34.691776, 32.269421, 33.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893494, 32.332062, 33.838390>,  <35.229691, 32.436462, 33.648464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893494, 32.332062, 33.838390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536246, 0.275337, -0.797891,
		0.077512, -0.925241, -0.371378,
		-0.840495, -0.260996, 0.474815,
		34.641346, 32.253761, 33.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824509, 31.962942, 33.309662>,  <35.229691, 32.436462, 33.648464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824509, 31.962942, 33.309662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561893, 32.178112, 33.521172>,  <34.404324, 32.307213, 33.648079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561893, 32.178112, 33.521172>,  <34.824509, 31.962942, 33.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561893, 32.178112, 33.521172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623727, 0.007058, -0.781610,
		-0.424179, -0.842964, 0.330883,
		-0.656534, 0.537923, 0.528774,
		34.364933, 32.339489, 33.679802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203468, 31.617382, 33.518356>,  <34.824509, 31.962942, 33.309662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203468, 31.617382, 33.518356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167557, 32.009666, 33.448902>,  <34.146008, 32.245037, 33.407230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167557, 32.009666, 33.448902>,  <34.203468, 31.617382, 33.518356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167557, 32.009666, 33.448902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418156, -0.195348, -0.887121,
		-0.903927, -0.007040, 0.427628,
		-0.089781, 0.980709, -0.173636,
		34.140621, 32.303879, 33.396812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490311, 31.700006, 33.249638>,  <34.203468, 31.617382, 33.518356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490311, 31.700006, 33.249638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696163, 32.016518, 33.117558>,  <33.819675, 32.206425, 33.038311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696163, 32.016518, 33.117558>,  <33.490311, 31.700006, 33.249638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696163, 32.016518, 33.117558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262316, -0.221346, -0.939253,
		-0.816298, 0.569988, 0.093653,
		0.514633, 0.791277, -0.330202,
		33.850552, 32.253902, 33.018497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070587, 32.256023, 32.803886>,  <33.490311, 31.700006, 33.249638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070587, 32.256023, 32.803886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452011, 32.294842, 32.689831>,  <33.680866, 32.318134, 32.621399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452011, 32.294842, 32.689831>,  <33.070587, 32.256023, 32.803886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452011, 32.294842, 32.689831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278596, -0.075633, -0.957426,
		-0.114483, 0.992402, -0.045084,
		0.953561, 0.097049, -0.285138,
		33.738079, 32.323956, 32.604290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040749, 32.771198, 32.261841>,  <33.070587, 32.256023, 32.803886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040749, 32.771198, 32.261841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389755, 32.588467, 32.192532>,  <33.599159, 32.478828, 32.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389755, 32.588467, 32.192532>,  <33.040749, 32.771198, 32.261841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389755, 32.588467, 32.192532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200916, -0.012209, -0.979532,
		0.445364, 0.889470, -0.102437,
		0.872516, -0.456830, -0.173271,
		33.651508, 32.451416, 32.140549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089951, 33.008171, 31.581430>,  <33.040749, 32.771198, 32.261841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089951, 33.008171, 31.581430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372658, 32.729652, 31.631472>,  <33.542282, 32.562542, 31.661497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372658, 32.729652, 31.631472>,  <33.089951, 33.008171, 31.581430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372658, 32.729652, 31.631472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092652, -0.084212, -0.992131,
		0.701351, 0.712798, 0.004995,
		0.706769, -0.696295, 0.125104,
		33.584690, 32.520763, 31.669003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691448, 33.202152, 31.220589>,  <33.089951, 33.008171, 31.581430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691448, 33.202152, 31.220589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705788, 32.803051, 31.243238>,  <33.714390, 32.563591, 31.256828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705788, 32.803051, 31.243238>,  <33.691448, 33.202152, 31.220589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705788, 32.803051, 31.243238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026717, -0.055685, -0.998091,
		0.999000, 0.037292, 0.024660,
		0.035848, -0.997751, 0.056626,
		33.716541, 32.503727, 31.260225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177650, 32.995647, 30.769979>,  <33.691448, 33.202152, 31.220589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177650, 32.995647, 30.769979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972103, 32.656368, 30.821363>,  <33.848774, 32.452801, 30.852194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972103, 32.656368, 30.821363>,  <34.177650, 32.995647, 30.769979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972103, 32.656368, 30.821363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061719, -0.185910, -0.980627,
		0.855645, -0.495986, 0.147883,
		-0.513870, -0.848195, 0.128461,
		33.817944, 32.401909, 30.859901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656406, 32.499004, 30.539124>,  <34.177650, 32.995647, 30.769979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656406, 32.499004, 30.539124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286713, 32.351131, 30.500908>,  <34.064896, 32.262405, 30.477978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286713, 32.351131, 30.500908>,  <34.656406, 32.499004, 30.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286713, 32.351131, 30.500908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185585, -0.216255, -0.958537,
		0.333698, -0.903640, 0.268478,
		-0.924232, -0.369687, -0.095538,
		34.009441, 32.240227, 30.472246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730061, 31.831320, 30.259237>,  <34.656406, 32.499004, 30.539124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730061, 31.831320, 30.259237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353218, 31.915430, 30.154766>,  <34.127113, 31.965897, 30.092083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353218, 31.915430, 30.154766>,  <34.730061, 31.831320, 30.259237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353218, 31.915430, 30.154766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161823, -0.397075, -0.903407,
		-0.293668, -0.893374, 0.340062,
		-0.942111, 0.210272, -0.261177,
		34.070583, 31.978512, 30.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405010, 31.189108, 30.013170>,  <34.730061, 31.831320, 30.259237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405010, 31.189108, 30.013170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173916, 31.487494, 29.880648>,  <34.035259, 31.666525, 29.801134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173916, 31.487494, 29.880648>,  <34.405010, 31.189108, 30.013170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173916, 31.487494, 29.880648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001188, -0.405131, -0.914258,
		-0.816224, -0.528592, 0.233172,
		-0.577734, 0.745962, -0.331306,
		34.000595, 31.711283, 29.781256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021999, 30.877701, 29.531841>,  <34.405010, 31.189108, 30.013170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021999, 30.877701, 29.531841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961128, 31.259428, 29.428986>,  <33.924606, 31.488464, 29.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961128, 31.259428, 29.428986>,  <34.021999, 30.877701, 29.531841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961128, 31.259428, 29.428986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042187, -0.266206, -0.962993,
		-0.987452, -0.135702, 0.080771,
		-0.152182, 0.954316, -0.257140,
		33.915474, 31.545723, 29.351843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426071, 30.895042, 29.063679>,  <34.021999, 30.877701, 29.531841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426071, 30.895042, 29.063679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669945, 31.206047, 29.002022>,  <33.816269, 31.392649, 28.965027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669945, 31.206047, 29.002022>,  <33.426071, 30.895042, 29.063679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669945, 31.206047, 29.002022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099667, -0.117725, -0.988032,
		-0.786352, 0.617752, 0.005716,
		0.609686, 0.777511, -0.154143,
		33.852852, 31.439301, 28.955778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125523, 31.166216, 28.432318>,  <33.426071, 30.895042, 29.063679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125523, 31.166216, 28.432318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488129, 31.332916, 28.459314>,  <33.705692, 31.432936, 28.475513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488129, 31.332916, 28.459314>,  <33.125523, 31.166216, 28.432318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488129, 31.332916, 28.459314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036579, 0.081734, -0.995983,
		-0.420593, 0.905339, 0.058849,
		0.906512, 0.416751, 0.067493,
		33.760082, 31.457941, 28.479563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135723, 31.842762, 28.168764>,  <33.125523, 31.166216, 28.432318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135723, 31.842762, 28.168764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516663, 31.729847, 28.122543>,  <33.745224, 31.662098, 28.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516663, 31.729847, 28.122543>,  <33.135723, 31.842762, 28.168764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516663, 31.729847, 28.122543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043715, 0.248603, -0.967618,
		0.301871, 0.926559, 0.224416,
		0.952346, -0.282286, -0.115551,
		33.802368, 31.645161, 28.087877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413502, 32.100796, 27.506002>,  <33.135723, 31.842762, 28.168764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413502, 32.100796, 27.506002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721420, 31.854334, 27.572653>,  <33.906174, 31.706457, 27.612642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721420, 31.854334, 27.572653>,  <33.413502, 32.100796, 27.506002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721420, 31.854334, 27.572653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147474, -0.082296, -0.985636,
		0.621014, 0.783316, 0.027515,
		0.769801, -0.616152, 0.166626,
		33.952362, 31.669489, 27.622641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998329, 32.379704, 27.110758>,  <33.413502, 32.100796, 27.506002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998329, 32.379704, 27.110758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064232, 31.991871, 27.183168>,  <34.103771, 31.759172, 27.226614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064232, 31.991871, 27.183168>,  <33.998329, 32.379704, 27.110758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064232, 31.991871, 27.183168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195397, -0.147813, -0.969521,
		0.966786, 0.195105, 0.165100,
		0.164754, -0.969580, 0.181027,
		34.113659, 31.700996, 27.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505028, 32.175404, 26.692875>,  <33.998329, 32.379704, 27.110758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505028, 32.175404, 26.692875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319107, 31.830624, 26.773867>,  <34.207554, 31.623755, 26.822462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319107, 31.830624, 26.773867>,  <34.505028, 32.175404, 26.692875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319107, 31.830624, 26.773867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109801, -0.283029, -0.952805,
		0.878579, -0.420635, 0.226196,
		-0.464803, -0.861951, 0.202477,
		34.179665, 31.572039, 26.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814163, 31.729172, 26.359922>,  <34.505028, 32.175404, 26.692875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814163, 31.729172, 26.359922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480499, 31.516325, 26.417921>,  <34.280300, 31.388617, 26.452721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480499, 31.516325, 26.417921>,  <34.814163, 31.729172, 26.359922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480499, 31.516325, 26.417921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035445, -0.210635, -0.976922,
		0.550379, -0.820051, 0.156843,
		-0.834163, -0.532118, 0.144996,
		34.230251, 31.356689, 26.461420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023113, 30.984755, 26.340282>,  <34.814163, 31.729172, 26.359922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023113, 30.984755, 26.340282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633167, 30.958908, 26.254990>,  <34.399200, 30.943399, 26.203814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633167, 30.958908, 26.254990>,  <35.023113, 30.984755, 26.340282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633167, 30.958908, 26.254990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222035, -0.361368, -0.905601,
		-0.018539, -0.930181, 0.366632,
		-0.974862, -0.064617, -0.213232,
		34.340710, 30.939524, 26.191019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985947, 30.382374, 26.025826>,  <35.023113, 30.984755, 26.340282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985947, 30.382374, 26.025826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628529, 30.533062, 25.928122>,  <34.414078, 30.623476, 25.869499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628529, 30.533062, 25.928122>,  <34.985947, 30.382374, 26.025826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628529, 30.533062, 25.928122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020693, -0.578010, -0.815767,
		-0.448501, -0.723868, 0.524272,
		-0.893542, 0.376721, -0.244259,
		34.360466, 30.646078, 25.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597538, 29.818235, 25.796276>,  <34.985947, 30.382374, 26.025826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597538, 29.818235, 25.796276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465561, 30.158709, 25.632998>,  <34.386375, 30.362993, 25.535030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465561, 30.158709, 25.632998>,  <34.597538, 29.818235, 25.796276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465561, 30.158709, 25.632998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016378, -0.427185, -0.904016,
		-0.943860, -0.304955, 0.127004,
		-0.329939, 0.851185, -0.408198,
		34.366581, 30.414064, 25.510538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068497, 29.634914, 25.296059>,  <34.597538, 29.818235, 25.796276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068497, 29.634914, 25.296059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181038, 30.004257, 25.191561>,  <34.248562, 30.225863, 25.128862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181038, 30.004257, 25.191561>,  <34.068497, 29.634914, 25.296059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181038, 30.004257, 25.191561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014882, -0.276410, -0.960925,
		-0.959488, 0.266476, -0.091511,
		0.281357, 0.923357, -0.261246,
		34.265446, 30.281265, 25.113188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709995, 29.733892, 24.658569>,  <34.068497, 29.634914, 25.296059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709995, 29.733892, 24.658569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016125, 29.990023, 24.684711>,  <34.199802, 30.143700, 24.700396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016125, 29.990023, 24.684711>,  <33.709995, 29.733892, 24.658569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016125, 29.990023, 24.684711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171777, -0.105339, -0.979488,
		-0.620305, 0.760848, -0.190611,
		0.765320, 0.640323, 0.065354,
		34.245720, 30.182119, 24.704317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610947, 30.145897, 24.141785>,  <33.709995, 29.733892, 24.658569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610947, 30.145897, 24.141785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993279, 30.231350, 24.222527>,  <34.222679, 30.282621, 24.270971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993279, 30.231350, 24.222527>,  <33.610947, 30.145897, 24.141785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993279, 30.231350, 24.222527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171872, 0.150850, -0.973501,
		-0.238419, 0.965198, 0.107470,
		0.955833, 0.213630, 0.201856,
		34.280029, 30.295439, 24.283083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797325, 30.724590, 23.670630>,  <33.610947, 30.145897, 24.141785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797325, 30.724590, 23.670630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118408, 30.509699, 23.774208>,  <34.311058, 30.380764, 23.836355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118408, 30.509699, 23.774208>,  <33.797325, 30.724590, 23.670630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118408, 30.509699, 23.774208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293691, -0.021804, -0.955652,
		0.519048, 0.843156, 0.140277,
		0.802705, -0.537227, 0.258945,
		34.359219, 30.348530, 23.851891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353561, 31.035225, 23.220913>,  <33.797325, 30.724590, 23.670630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353561, 31.035225, 23.220913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478596, 30.689114, 23.377672>,  <34.553616, 30.481447, 23.471727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478596, 30.689114, 23.377672>,  <34.353561, 31.035225, 23.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478596, 30.689114, 23.377672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389460, -0.259554, -0.883715,
		0.866378, 0.428866, 0.255858,
		0.312586, -0.865278, 0.391898,
		34.572372, 30.429531, 23.495241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048336, 31.038252, 23.074081>,  <34.353561, 31.035225, 23.220913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048336, 31.038252, 23.074081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918922, 30.664062, 23.130959>,  <34.841274, 30.439548, 23.165085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918922, 30.664062, 23.130959>,  <35.048336, 31.038252, 23.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918922, 30.664062, 23.130959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454626, -0.285474, -0.843694,
		0.829844, -0.208319, 0.517650,
		-0.323533, -0.935472, 0.142192,
		34.821861, 30.383421, 23.173616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552994, 30.563105, 22.702290>,  <35.048336, 31.038252, 23.074081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552994, 30.563105, 22.702290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239902, 30.322218, 22.765129>,  <35.052048, 30.177687, 22.802832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239902, 30.322218, 22.765129>,  <35.552994, 30.563105, 22.702290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239902, 30.322218, 22.765129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140406, -0.416775, -0.898101,
		0.606325, -0.680907, 0.410774,
		-0.782724, -0.602216, 0.157098,
		35.005085, 30.141554, 22.812258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789730, 29.919729, 22.608040>,  <35.552994, 30.563105, 22.702290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789730, 29.919729, 22.608040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396297, 29.883354, 22.545692>,  <35.160236, 29.861528, 22.508284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396297, 29.883354, 22.545692>,  <35.789730, 29.919729, 22.608040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396297, 29.883354, 22.545692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179982, -0.431573, -0.883941,
		0.013116, -0.897483, 0.440855,
		-0.983583, -0.090940, -0.155870,
		35.101223, 29.856071, 22.498932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796535, 29.329418, 22.218895>,  <35.789730, 29.919729, 22.608040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796535, 29.329418, 22.218895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434429, 29.491249, 22.167042>,  <35.217163, 29.588348, 22.135931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434429, 29.491249, 22.167042>,  <35.796535, 29.329418, 22.218895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434429, 29.491249, 22.167042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014086, -0.333546, -0.942629,
		-0.424607, -0.851506, 0.307647,
		-0.905269, 0.404580, -0.129632,
		35.162849, 29.612621, 22.128153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370163, 28.766958, 21.939558>,  <35.796535, 29.329418, 22.218895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370163, 28.766958, 21.939558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238895, 29.132593, 21.844267>,  <35.160137, 29.351974, 21.787092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238895, 29.132593, 21.844267>,  <35.370163, 28.766958, 21.939558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238895, 29.132593, 21.844267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123290, -0.291483, -0.948597,
		-0.936540, -0.281925, 0.208353,
		-0.328164, 0.914087, -0.238227,
		35.140446, 29.406820, 21.772799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846584, 28.564959, 21.567839>,  <35.370163, 28.766958, 21.939558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846584, 28.564959, 21.567839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897385, 28.952171, 21.481316>,  <34.927864, 29.184498, 21.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897385, 28.952171, 21.481316>,  <34.846584, 28.564959, 21.567839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897385, 28.952171, 21.481316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041697, -0.212672, -0.976234,
		-0.991026, 0.133002, 0.013355,
		0.127001, 0.968030, -0.216309,
		34.935486, 29.242580, 21.416424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347275, 28.804127, 21.160408>,  <34.846584, 28.564959, 21.567839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347275, 28.804127, 21.160408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637135, 29.067150, 21.077938>,  <34.811050, 29.224964, 21.028456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637135, 29.067150, 21.077938>,  <34.347275, 28.804127, 21.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637135, 29.067150, 21.077938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151264, -0.140109, -0.978513,
		-0.672314, 0.740263, -0.002065,
		0.724647, 0.657556, -0.206173,
		34.854530, 29.264418, 21.016087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153240, 29.122757, 20.491625>,  <34.347275, 28.804127, 21.160408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153240, 29.122757, 20.491625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537788, 29.220070, 20.543121>,  <34.768517, 29.278458, 20.574018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537788, 29.220070, 20.543121>,  <34.153240, 29.122757, 20.491625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537788, 29.220070, 20.543121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139151, -0.026030, -0.989929,
		-0.237481, 0.969606, -0.058878,
		0.961374, 0.243282, 0.128740,
		34.826202, 29.293055, 20.581743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285049, 29.654982, 20.018045>,  <34.153240, 29.122757, 20.491625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285049, 29.654982, 20.018045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643379, 29.484503, 20.068419>,  <34.858376, 29.382215, 20.098642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643379, 29.484503, 20.068419>,  <34.285049, 29.654982, 20.018045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643379, 29.484503, 20.068419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178276, 0.085059, -0.980297,
		0.407086, 0.900624, 0.152178,
		0.895823, -0.426195, 0.125933,
		34.912125, 29.356644, 20.106199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737766, 30.055819, 19.608704>,  <34.285049, 29.654982, 20.018045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737766, 30.055819, 19.608704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953484, 29.728224, 19.687113>,  <35.082912, 29.531666, 19.734159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953484, 29.728224, 19.687113>,  <34.737766, 30.055819, 19.608704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953484, 29.728224, 19.687113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164508, -0.125835, -0.978316,
		0.825896, 0.559844, 0.066868,
		0.539290, -0.818988, 0.196025,
		35.115269, 29.482527, 19.745920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300995, 30.136929, 19.135864>,  <34.737766, 30.055819, 19.608704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300995, 30.136929, 19.135864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279934, 29.747776, 19.225958>,  <35.267296, 29.514284, 19.280014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279934, 29.747776, 19.225958>,  <35.300995, 30.136929, 19.135864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279934, 29.747776, 19.225958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134604, -0.230403, -0.963741,
		0.989500, -0.020426, 0.143085,
		-0.052653, -0.972881, 0.225235,
		35.264137, 29.455912, 19.293528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994663, 29.807364, 18.905323>,  <35.300995, 30.136929, 19.135864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994663, 29.807364, 18.905323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714222, 29.522264, 18.913818>,  <35.545959, 29.351206, 18.918915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714222, 29.522264, 18.913818>,  <35.994663, 29.807364, 18.905323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714222, 29.522264, 18.913818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072103, -0.100491, -0.992322,
		0.709408, -0.694186, 0.121846,
		-0.701100, -0.712747, 0.021236,
		35.503891, 29.308441, 18.920189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135872, 29.428631, 18.334742>,  <35.994663, 29.807364, 18.905323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135872, 29.428631, 18.334742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760426, 29.317259, 18.416201>,  <35.535156, 29.250435, 18.465076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760426, 29.317259, 18.416201>,  <36.135872, 29.428631, 18.334742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760426, 29.317259, 18.416201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157847, -0.178265, -0.971239,
		0.306726, -0.943768, 0.123373,
		-0.938618, -0.278431, 0.203649,
		35.478840, 29.233730, 18.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020821, 28.680632, 17.987724>,  <36.135872, 29.428631, 18.334742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020821, 28.680632, 17.987724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686760, 28.887888, 18.061533>,  <35.486324, 29.012241, 18.105818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686760, 28.887888, 18.061533>,  <36.020821, 28.680632, 17.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686760, 28.887888, 18.061533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251118, -0.060731, -0.966049,
		-0.489342, -0.853137, 0.180834,
		-0.835155, 0.518140, 0.184520,
		35.436214, 29.043329, 18.116888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709148, 28.457207, 17.517275>,  <36.020821, 28.680632, 17.987724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709148, 28.457207, 17.517275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478848, 28.766058, 17.624847>,  <35.340668, 28.951368, 17.689390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478848, 28.766058, 17.624847>,  <35.709148, 28.457207, 17.517275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478848, 28.766058, 17.624847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157463, 0.218048, -0.963151,
		-0.802316, -0.596886, -0.003960,
		-0.575755, 0.772128, 0.268931,
		35.306122, 28.997696, 17.705526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123432, 28.366665, 17.053905>,  <35.709148, 28.457207, 17.517275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123432, 28.366665, 17.053905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084755, 28.741531, 17.187990>,  <35.061546, 28.966452, 17.268440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084755, 28.741531, 17.187990>,  <35.123432, 28.366665, 17.053905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084755, 28.741531, 17.187990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169149, 0.316418, -0.933417,
		-0.980835, -0.146958, 0.127925,
		-0.096695, 0.937167, 0.335212,
		35.055748, 29.022682, 17.288553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518002, 28.625048, 16.798656>,  <35.123432, 28.366665, 17.053905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518002, 28.625048, 16.798656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752350, 28.942680, 16.863388>,  <34.892960, 29.133259, 16.902227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752350, 28.942680, 16.863388>,  <34.518002, 28.625048, 16.798656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752350, 28.942680, 16.863388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340396, 0.422350, -0.840090,
		-0.735447, 0.437101, 0.517745,
		0.585874, 0.794080, 0.161829,
		34.928112, 29.180904, 16.911938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039642, 29.280695, 16.720633>,  <34.518002, 28.625048, 16.798656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039642, 29.280695, 16.720633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432316, 29.315943, 16.653070>,  <34.667919, 29.337091, 16.612534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432316, 29.315943, 16.653070>,  <34.039642, 29.280695, 16.720633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432316, 29.315943, 16.653070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190405, 0.424380, -0.885239,
		-0.006325, 0.901186, 0.433385,
		0.981685, 0.088118, -0.168906,
		34.726822, 29.342379, 16.602398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409435, 30.036646, 16.723576>,  <34.039642, 29.280695, 16.720633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409435, 30.036646, 16.723576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583782, 29.802355, 16.450243>,  <34.688389, 29.661779, 16.286243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583782, 29.802355, 16.450243>,  <34.409435, 30.036646, 16.723576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583782, 29.802355, 16.450243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177836, 0.688230, -0.703360,
		0.882266, 0.428092, 0.195814,
		0.435868, -0.585728, -0.683332,
		34.714542, 29.626637, 16.245243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591270, 30.557972, 17.240513>,  <34.409435, 30.036646, 16.723576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591270, 30.557972, 17.240513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526642, 30.902750, 17.048285>,  <34.487865, 31.109617, 16.932947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526642, 30.902750, 17.048285>,  <34.591270, 30.557972, 17.240513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526642, 30.902750, 17.048285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312982, -0.506584, -0.803377,
		-0.935916, 0.020611, 0.351621,
		-0.161567, 0.861944, -0.480571,
		34.478172, 31.161333, 16.904114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854771, 30.573740, 17.021992>,  <34.591270, 30.557972, 17.240513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854771, 30.573740, 17.021992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040459, 30.840347, 16.788666>,  <34.151871, 31.000311, 16.648670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040459, 30.840347, 16.788666>,  <33.854771, 30.573740, 17.021992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040459, 30.840347, 16.788666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314798, -0.491419, -0.812041,
		-0.827890, 0.560591, -0.018308,
		0.464220, 0.666517, -0.583314,
		34.179726, 31.040302, 16.613672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432709, 31.092684, 16.538328>,  <33.854771, 30.573740, 17.021992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432709, 31.092684, 16.538328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791222, 31.018839, 16.377035>,  <34.006329, 30.974533, 16.280258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791222, 31.018839, 16.377035>,  <33.432709, 31.092684, 16.538328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791222, 31.018839, 16.377035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438683, -0.235623, -0.867202,
		0.065084, 0.954149, -0.292170,
		0.896282, -0.184611, -0.403234,
		34.060104, 30.963455, 16.256065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299091, 31.253321, 15.828585>,  <33.432709, 31.092684, 16.538328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299091, 31.253321, 15.828585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636074, 31.040995, 15.865450>,  <33.838264, 30.913599, 15.887569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636074, 31.040995, 15.865450>,  <33.299091, 31.253321, 15.828585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636074, 31.040995, 15.865450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121265, -0.353505, -0.927539,
		0.524933, 0.770239, -0.362184,
		0.842461, -0.530816, 0.092164,
		33.888813, 30.881750, 15.893099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827034, 31.515965, 15.356546>,  <33.299091, 31.253321, 15.828585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827034, 31.515965, 15.356546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849419, 31.124180, 15.434031>,  <33.862850, 30.889109, 15.480522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849419, 31.124180, 15.434031>,  <33.827034, 31.515965, 15.356546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849419, 31.124180, 15.434031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188995, -0.200900, -0.961208,
		0.980382, 0.017176, -0.196355,
		0.055958, -0.979461, 0.193712,
		33.866207, 30.830341, 15.492146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495647, 31.227486, 15.509902>,  <33.827034, 31.515965, 15.356546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495647, 31.227486, 15.509902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589108, 31.531670, 15.267545>,  <34.645184, 31.714180, 15.122130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589108, 31.531670, 15.267545>,  <34.495647, 31.227486, 15.509902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589108, 31.531670, 15.267545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584320, -0.388248, -0.712625,
		-0.777160, 0.520541, 0.353637,
		0.233651, 0.760461, -0.605893,
		34.659203, 31.759808, 15.085776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749874, 31.931658, 15.911774>,  <34.495647, 31.227486, 15.509902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749874, 31.931658, 15.911774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559998, 31.652639, 16.126472>,  <34.446072, 31.485228, 16.255291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559998, 31.652639, 16.126472>,  <34.749874, 31.931658, 15.911774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559998, 31.652639, 16.126472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184886, 0.517200, 0.835656,
		-0.860516, 0.495914, -0.116543,
		-0.474689, -0.697548, 0.536746,
		34.417591, 31.443375, 16.287497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291233, 32.329380, 16.315075>,  <34.749874, 31.931658, 15.911774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291233, 32.329380, 16.315075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339111, 31.972614, 16.489506>,  <34.367840, 31.758554, 16.594164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339111, 31.972614, 16.489506>,  <34.291233, 32.329380, 16.315075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339111, 31.972614, 16.489506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307898, 0.450928, 0.837773,
		-0.943860, 0.033991, 0.328592,
		0.119695, -0.891913, 0.436078,
		34.375019, 31.705040, 16.620329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039894, 32.434883, 16.973202>,  <34.291233, 32.329380, 16.315075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039894, 32.434883, 16.973202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238914, 32.091087, 17.020052>,  <34.358326, 31.884809, 17.048162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238914, 32.091087, 17.020052>,  <34.039894, 32.434883, 16.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238914, 32.091087, 17.020052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295782, 0.295033, 0.908553,
		-0.815451, -0.417404, 0.401016,
		0.497547, -0.859493, 0.117124,
		34.388180, 31.833239, 17.055189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811993, 32.118031, 17.551968>,  <34.039894, 32.434883, 16.973202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811993, 32.118031, 17.551968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167828, 31.940132, 17.510334>,  <34.381329, 31.833393, 17.485353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167828, 31.940132, 17.510334>,  <33.811993, 32.118031, 17.551968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167828, 31.940132, 17.510334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166846, 0.104268, 0.980454,
		-0.425199, -0.889567, 0.166959,
		0.889589, -0.444745, -0.104086,
		34.434704, 31.806709, 17.479109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878506, 31.745726, 18.148241>,  <33.811993, 32.118031, 17.551968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878506, 31.745726, 18.148241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257233, 31.777006, 18.023390>,  <34.484470, 31.795774, 17.948479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257233, 31.777006, 18.023390>,  <33.878506, 31.745726, 18.148241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257233, 31.777006, 18.023390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285209, 0.245160, 0.926581,
		0.148979, -0.966324, 0.209818,
		0.946817, 0.078199, -0.312128,
		34.541279, 31.800467, 17.929750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265274, 31.245712, 18.476612>,  <33.878506, 31.745726, 18.148241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265274, 31.245712, 18.476612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511211, 31.545527, 18.378502>,  <34.658775, 31.725416, 18.319635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511211, 31.545527, 18.378502>,  <34.265274, 31.245712, 18.476612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511211, 31.545527, 18.378502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267961, 0.093961, 0.958837,
		0.741730, -0.655260, -0.143076,
		0.614844, 0.749537, -0.245277,
		34.695663, 31.770388, 18.304918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845905, 31.217527, 18.878683>,  <34.265274, 31.245712, 18.476612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845905, 31.217527, 18.878683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890598, 31.590399, 18.740953>,  <34.917412, 31.814121, 18.658316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890598, 31.590399, 18.740953>,  <34.845905, 31.217527, 18.878683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890598, 31.590399, 18.740953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176624, 0.322349, 0.929997,
		0.977917, -0.164723, -0.128630,
		0.111728, 0.932179, -0.344325,
		34.924118, 31.870052, 18.637655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582748, 31.423925, 19.006418>,  <34.845905, 31.217527, 18.878683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582748, 31.423925, 19.006418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354996, 31.752464, 18.992596>,  <35.218346, 31.949587, 18.984303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354996, 31.752464, 18.992596>,  <35.582748, 31.423925, 19.006418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354996, 31.752464, 18.992596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330482, 0.267188, 0.905203,
		0.752718, 0.503986, -0.423572,
		-0.569383, 0.821345, -0.034559,
		35.184181, 31.998867, 18.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855839, 31.935366, 19.633589>,  <35.582748, 31.423925, 19.006418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855839, 31.935366, 19.633589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531944, 32.128590, 19.500338>,  <35.337608, 32.244526, 19.420387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531944, 32.128590, 19.500338>,  <35.855839, 31.935366, 19.633589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531944, 32.128590, 19.500338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098200, 0.448153, 0.888547,
		0.578515, 0.752204, -0.315451,
		-0.809739, 0.483060, -0.333130,
		35.289024, 32.273506, 19.400398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025871, 32.620823, 19.781349>,  <35.855839, 31.935366, 19.633589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025871, 32.620823, 19.781349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628006, 32.612301, 19.740974>,  <35.389286, 32.607185, 19.716749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628006, 32.612301, 19.740974>,  <36.025871, 32.620823, 19.781349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628006, 32.612301, 19.740974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093992, 0.590422, 0.801603,
		0.042514, 0.806814, -0.589274,
		-0.994665, -0.021308, -0.100935,
		35.329605, 32.605907, 19.710693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780735, 33.320187, 19.759575>,  <36.025871, 32.620823, 19.781349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780735, 33.320187, 19.759575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486904, 33.078808, 19.883671>,  <35.310604, 32.933983, 19.958128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486904, 33.078808, 19.883671>,  <35.780735, 33.320187, 19.759575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486904, 33.078808, 19.883671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087773, 0.537898, 0.838428,
		-0.672820, 0.588662, -0.448095,
		-0.734580, -0.603443, 0.310240,
		35.266529, 32.897774, 19.976742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286175, 33.730911, 20.127447>,  <35.780735, 33.320187, 19.759575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286175, 33.730911, 20.127447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146210, 33.387108, 20.276470>,  <35.062229, 33.180824, 20.365885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146210, 33.387108, 20.276470>,  <35.286175, 33.730911, 20.127447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146210, 33.387108, 20.276470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221749, 0.462394, 0.858498,
		-0.910158, 0.217787, -0.352395,
		-0.349915, -0.859512, 0.372558,
		35.041237, 33.129253, 20.388237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601849, 33.971485, 20.247065>,  <35.286175, 33.730911, 20.127447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601849, 33.971485, 20.247065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743893, 33.649654, 20.437454>,  <34.829121, 33.456554, 20.551689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743893, 33.649654, 20.437454>,  <34.601849, 33.971485, 20.247065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743893, 33.649654, 20.437454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228469, 0.419024, 0.878761,
		-0.906476, -0.420803, -0.035021,
		0.355111, -0.804576, 0.475976,
		34.850426, 33.408283, 20.580248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253807, 34.006836, 20.920832>,  <34.601849, 33.971485, 20.247065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253807, 34.006836, 20.920832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554775, 33.747219, 20.965750>,  <34.735355, 33.591450, 20.992701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554775, 33.747219, 20.965750>,  <34.253807, 34.006836, 20.920832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554775, 33.747219, 20.965750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016283, 0.188763, 0.981888,
		-0.658483, -0.736963, 0.152597,
		0.752419, -0.649042, 0.112297,
		34.780502, 33.552505, 20.999439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061832, 33.645798, 21.568762>,  <34.253807, 34.006836, 20.920832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061832, 33.645798, 21.568762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443302, 33.551098, 21.494524>,  <34.672184, 33.494278, 21.449982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443302, 33.551098, 21.494524>,  <34.061832, 33.645798, 21.568762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443302, 33.551098, 21.494524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158302, -0.129661, 0.978840,
		-0.255809, -0.962879, -0.086176,
		0.953679, -0.236754, -0.185594,
		34.729404, 33.480072, 21.438847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296345, 32.991283, 21.806820>,  <34.061832, 33.645798, 21.568762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296345, 32.991283, 21.806820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608311, 33.241596, 21.811441>,  <34.795490, 33.391785, 21.814215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608311, 33.241596, 21.811441>,  <34.296345, 32.991283, 21.806820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608311, 33.241596, 21.811441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027250, -0.052395, 0.998255,
		0.625298, -0.778234, -0.057916,
		0.779911, 0.625785, 0.011555,
		34.842285, 33.429333, 21.814907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598228, 32.744972, 22.358637>,  <34.296345, 32.991283, 21.806820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598228, 32.744972, 22.358637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793709, 33.090183, 22.307493>,  <34.910999, 33.297310, 22.276808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793709, 33.090183, 22.307493>,  <34.598228, 32.744972, 22.358637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793709, 33.090183, 22.307493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166236, 0.051756, 0.984727,
		0.856467, -0.502493, -0.118174,
		0.488702, 0.863031, -0.127859,
		34.940319, 33.349091, 22.269135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213947, 32.733044, 22.848427>,  <34.598228, 32.744972, 22.358637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213947, 32.733044, 22.848427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113934, 33.110779, 22.762905>,  <35.053925, 33.337418, 22.711592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113934, 33.110779, 22.762905>,  <35.213947, 32.733044, 22.848427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113934, 33.110779, 22.762905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063663, 0.236373, 0.969575,
		0.966141, 0.228820, -0.119222,
		-0.250039, 0.944335, -0.213802,
		35.038921, 33.394081, 22.698765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664612, 33.102966, 23.218884>,  <35.213947, 32.733044, 22.848427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664612, 33.102966, 23.218884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365601, 33.350552, 23.122480>,  <35.186195, 33.499104, 23.064638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365601, 33.350552, 23.122480>,  <35.664612, 33.102966, 23.218884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365601, 33.350552, 23.122480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072979, 0.284110, 0.956010,
		0.660207, 0.732235, -0.167210,
		-0.747530, 0.618962, -0.241009,
		35.141342, 33.536240, 23.050177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809658, 33.689453, 23.677526>,  <35.664612, 33.102966, 23.218884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809658, 33.689453, 23.677526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427338, 33.720650, 23.564127>,  <35.197945, 33.739368, 23.496088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427338, 33.720650, 23.564127>,  <35.809658, 33.689453, 23.677526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427338, 33.720650, 23.564127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242598, 0.335607, 0.910228,
		0.166130, 0.938768, -0.301852,
		-0.955797, 0.077987, -0.283497,
		35.140598, 33.744045, 23.479078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641987, 34.282135, 23.865406>,  <35.809658, 33.689453, 23.677526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641987, 34.282135, 23.865406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288609, 34.097881, 23.831156>,  <35.076580, 33.987328, 23.810606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288609, 34.097881, 23.831156>,  <35.641987, 34.282135, 23.865406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288609, 34.097881, 23.831156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275006, 0.361851, 0.890750,
		-0.379327, 0.810481, -0.446355,
		-0.883450, -0.460635, -0.085627,
		35.023575, 33.959690, 23.805468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324368, 34.703949, 24.180477>,  <35.641987, 34.282135, 23.865406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324368, 34.703949, 24.180477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093483, 34.377438, 24.171412>,  <34.954952, 34.181530, 24.165972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093483, 34.377438, 24.171412>,  <35.324368, 34.703949, 24.180477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093483, 34.377438, 24.171412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237412, 0.141193, 0.961093,
		-0.781322, 0.560135, -0.275293,
		-0.577211, -0.816281, -0.022665,
		34.920319, 34.132553, 24.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657909, 34.960617, 24.351831>,  <35.324368, 34.703949, 24.180477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657909, 34.960617, 24.351831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690815, 34.570557, 24.434103>,  <34.710560, 34.336521, 24.483467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690815, 34.570557, 24.434103>,  <34.657909, 34.960617, 24.351831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690815, 34.570557, 24.434103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479037, 0.142285, 0.866186,
		-0.873931, -0.169786, -0.455431,
		0.082265, -0.975155, 0.205681,
		34.715496, 34.278011, 24.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017673, 34.794479, 24.619244>,  <34.657909, 34.960617, 24.351831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017673, 34.794479, 24.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246513, 34.490314, 24.742189>,  <34.383816, 34.307816, 24.815956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246513, 34.490314, 24.742189>,  <34.017673, 34.794479, 24.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246513, 34.490314, 24.742189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389782, 0.077658, 0.917627,
		-0.721648, -0.644776, -0.251968,
		0.572097, -0.760416, 0.307364,
		34.418144, 34.262188, 24.834398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590878, 34.388176, 24.963182>,  <34.017673, 34.794479, 24.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590878, 34.388176, 24.963182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935879, 34.265003, 25.123812>,  <34.142879, 34.191097, 25.220190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935879, 34.265003, 25.123812>,  <33.590878, 34.388176, 24.963182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935879, 34.265003, 25.123812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407027, 0.049380, 0.912080,
		-0.300693, -0.950124, -0.082748,
		0.862504, -0.307937, 0.401574,
		34.194630, 34.172623, 25.244284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410717, 33.854374, 25.497341>,  <33.590878, 34.388176, 24.963182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410717, 33.854374, 25.497341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767914, 34.016697, 25.575195>,  <33.982231, 34.114090, 25.621908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767914, 34.016697, 25.575195>,  <33.410717, 33.854374, 25.497341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767914, 34.016697, 25.575195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235515, 0.052817, 0.970435,
		0.383527, -0.912432, 0.142738,
		0.892995, 0.405805, 0.194635,
		34.035812, 34.138439, 25.633585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645607, 33.491386, 26.145424>,  <33.410717, 33.854374, 25.497341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645607, 33.491386, 26.145424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874199, 33.816662, 26.101370>,  <34.011356, 34.011826, 26.074938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874199, 33.816662, 26.101370>,  <33.645607, 33.491386, 26.145424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874199, 33.816662, 26.101370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112239, 0.210404, 0.971150,
		0.812902, -0.542634, 0.211514,
		0.571483, 0.813190, -0.110133,
		34.045643, 34.060619, 26.068331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141891, 33.362617, 26.701658>,  <33.645607, 33.491386, 26.145424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141891, 33.362617, 26.701658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147709, 33.742264, 26.575817>,  <34.151199, 33.970051, 26.500313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147709, 33.742264, 26.575817>,  <34.141891, 33.362617, 26.701658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147709, 33.742264, 26.575817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039327, 0.314936, 0.948298,
		0.999121, -0.001419, 0.041906,
		0.014544, 0.949112, -0.314603,
		34.152073, 34.026997, 26.481436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646332, 33.613815, 27.042168>,  <34.141891, 33.362617, 26.701658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646332, 33.613815, 27.042168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392460, 33.909550, 26.952230>,  <34.240135, 34.086990, 26.898268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392460, 33.909550, 26.952230>,  <34.646332, 33.613815, 27.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392460, 33.909550, 26.952230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050752, 0.330209, 0.942542,
		0.771105, 0.586803, -0.247101,
		-0.634682, 0.739340, -0.224844,
		34.202057, 34.131351, 26.884777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887302, 34.058609, 27.444969>,  <34.646332, 33.613815, 27.042168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887302, 34.058609, 27.444969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527111, 34.201168, 27.345274>,  <34.310997, 34.286705, 27.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527111, 34.201168, 27.345274>,  <34.887302, 34.058609, 27.444969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527111, 34.201168, 27.345274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118614, 0.350102, 0.929171,
		0.418412, 0.866262, -0.272986,
		-0.900479, 0.356396, -0.249238,
		34.256966, 34.308086, 27.270502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849400, 34.728657, 27.587761>,  <34.887302, 34.058609, 27.444969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849400, 34.728657, 27.587761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462116, 34.628750, 27.593279>,  <34.229748, 34.568806, 27.596590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462116, 34.628750, 27.593279>,  <34.849400, 34.728657, 27.587761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462116, 34.628750, 27.593279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082000, 0.368994, 0.925808,
		-0.236330, 0.895242, -0.377743,
		-0.968207, -0.249771, 0.013794,
		34.171654, 34.553818, 27.597418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516926, 35.280483, 27.835201>,  <34.849400, 34.728657, 27.587761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516926, 35.280483, 27.835201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264305, 34.973186, 27.877047>,  <34.112732, 34.788807, 27.902153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264305, 34.973186, 27.877047>,  <34.516926, 35.280483, 27.835201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264305, 34.973186, 27.877047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038563, 0.165884, 0.985391,
		-0.774371, 0.618295, -0.134391,
		-0.631555, -0.768241, 0.104612,
		34.074837, 34.742714, 27.908430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054050, 35.473057, 28.303944>,  <34.516926, 35.280483, 27.835201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054050, 35.473057, 28.303944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972031, 35.082554, 28.331860>,  <33.922821, 34.848251, 28.348610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972031, 35.082554, 28.331860>,  <34.054050, 35.473057, 28.303944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972031, 35.082554, 28.331860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086536, 0.089108, 0.992256,
		-0.974919, 0.197418, -0.102753,
		-0.205045, -0.976261, 0.069790,
		33.910519, 34.789677, 28.352797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542206, 35.473587, 28.749386>,  <34.054050, 35.473057, 28.303944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542206, 35.473587, 28.749386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679993, 35.098183, 28.758636>,  <33.762665, 34.872940, 28.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679993, 35.098183, 28.758636>,  <33.542206, 35.473587, 28.749386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679993, 35.098183, 28.758636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039697, 0.010053, 0.999161,
		-0.937960, -0.345094, -0.033793,
		0.344464, -0.938515, 0.023128,
		33.783333, 34.816628, 28.765575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964077, 35.037010, 29.115311>,  <33.542206, 35.473587, 28.749386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964077, 35.037010, 29.115311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317711, 34.852768, 29.146887>,  <33.529892, 34.742222, 29.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317711, 34.852768, 29.146887>,  <32.964077, 35.037010, 29.115311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317711, 34.852768, 29.146887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075173, 0.026554, 0.996817,
		-0.461238, -0.887206, -0.011149,
		0.884086, -0.460608, 0.078942,
		33.582935, 34.714584, 29.170568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944927, 34.574898, 29.634525>,  <32.964077, 35.037010, 29.115311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944927, 34.574898, 29.634525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343235, 34.595341, 29.603973>,  <33.582218, 34.607605, 29.585642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343235, 34.595341, 29.603973>,  <32.944927, 34.574898, 29.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343235, 34.595341, 29.603973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083166, -0.147512, 0.985557,
		0.039102, -0.987739, -0.151139,
		0.995768, 0.051107, -0.076379,
		33.641964, 34.610672, 29.581060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197002, 33.985714, 30.171831>,  <32.944927, 34.574898, 29.634525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197002, 33.985714, 30.171831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486469, 34.256886, 30.120102>,  <33.660149, 34.419590, 30.089064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486469, 34.256886, 30.120102>,  <33.197002, 33.985714, 30.171831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486469, 34.256886, 30.120102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216002, -0.044507, 0.975378,
		0.655480, -0.733780, -0.178642,
		0.723664, 0.677928, -0.129324,
		33.703568, 34.460262, 30.081305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754593, 33.708359, 30.539997>,  <33.197002, 33.985714, 30.171831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754593, 33.708359, 30.539997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861031, 34.092102, 30.502403>,  <33.924892, 34.322346, 30.479847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861031, 34.092102, 30.502403>,  <33.754593, 33.708359, 30.539997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861031, 34.092102, 30.502403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505832, -0.055972, 0.860814,
		0.820566, -0.276597, -0.500166,
		0.266094, 0.959355, -0.093983,
		33.940861, 34.379910, 30.474209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442661, 33.672672, 30.626736>,  <33.754593, 33.708359, 30.539997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442661, 33.672672, 30.626736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324184, 34.046951, 30.703405>,  <34.253098, 34.271519, 30.749407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324184, 34.046951, 30.703405>,  <34.442661, 33.672672, 30.626736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324184, 34.046951, 30.703405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430992, -0.048153, 0.901070,
		0.852359, 0.349502, -0.389015,
		-0.296194, 0.935697, 0.191676,
		34.235325, 34.327660, 30.760908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056850, 34.030998, 30.798786>,  <34.442661, 33.672672, 30.626736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056850, 34.030998, 30.798786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767181, 34.258923, 30.954166>,  <34.593380, 34.395676, 31.047396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767181, 34.258923, 30.954166>,  <35.056850, 34.030998, 30.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767181, 34.258923, 30.954166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453491, -0.030885, 0.890725,
		0.519540, 0.821197, -0.236037,
		-0.724171, 0.569809, 0.388451,
		34.549931, 34.429867, 31.070702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338257, 34.719860, 31.108925>,  <35.056850, 34.030998, 30.798786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338257, 34.719860, 31.108925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984402, 34.642506, 31.278643>,  <34.772091, 34.596092, 31.380474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984402, 34.642506, 31.278643>,  <35.338257, 34.719860, 31.108925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984402, 34.642506, 31.278643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393299, 0.179345, 0.901749,
		-0.250480, 0.964592, -0.082596,
		-0.884633, -0.193385, 0.424295,
		34.719013, 34.584492, 31.405931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975948, 35.271069, 30.952356>,  <35.338257, 34.719860, 31.108925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975948, 35.271069, 30.952356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316566, 35.443569, 31.071611>,  <35.520939, 35.547070, 31.143166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316566, 35.443569, 31.071611>,  <34.975948, 35.271069, 30.952356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316566, 35.443569, 31.071611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349319, -0.042653, -0.936032,
		-0.390948, 0.901223, -0.186965,
		0.851549, 0.431251, 0.298139,
		35.572033, 35.572945, 31.161053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078468, 35.933846, 30.547995>,  <34.975948, 35.271069, 30.952356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078468, 35.933846, 30.547995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429649, 35.788227, 30.672356>,  <35.640358, 35.700855, 30.746973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429649, 35.788227, 30.672356>,  <35.078468, 35.933846, 30.547995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429649, 35.788227, 30.672356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387503, 0.159030, -0.908048,
		0.281132, 0.917702, 0.280692,
		0.877956, -0.364050, 0.310904,
		35.693035, 35.679012, 30.765627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557457, 36.388378, 30.345398>,  <35.078468, 35.933846, 30.547995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557457, 36.388378, 30.345398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749264, 36.038952, 30.378733>,  <35.864346, 35.829296, 30.398733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749264, 36.038952, 30.378733>,  <35.557457, 36.388378, 30.345398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749264, 36.038952, 30.378733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362686, 0.110812, -0.925300,
		0.799078, 0.473918, 0.369967,
		0.479513, -0.873569, 0.083336,
		35.893116, 35.776882, 30.403734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993568, 36.530170, 29.820154>,  <35.557457, 36.388378, 30.345398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993568, 36.530170, 29.820154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045246, 36.146534, 29.920916>,  <36.076252, 35.916351, 29.981373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045246, 36.146534, 29.920916>,  <35.993568, 36.530170, 29.820154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045246, 36.146534, 29.920916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185081, -0.226247, -0.956325,
		0.974194, 0.170175, 0.148279,
		0.129195, -0.959090, 0.251904,
		36.084003, 35.858807, 29.996487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707386, 36.416821, 29.673361>,  <35.993568, 36.530170, 29.820154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707386, 36.416821, 29.673361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540184, 36.053448, 29.675722>,  <36.439865, 35.835426, 29.677139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540184, 36.053448, 29.675722>,  <36.707386, 36.416821, 29.673361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540184, 36.053448, 29.675722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523450, -0.246158, -0.815725,
		0.742480, -0.337884, 0.578410,
		-0.418001, -0.908428, 0.005902,
		36.414783, 35.780918, 29.677492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286449, 35.898979, 29.595844>,  <36.707386, 36.416821, 29.673361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286449, 35.898979, 29.595844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941460, 35.735104, 29.476988>,  <36.734467, 35.636776, 29.405674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941460, 35.735104, 29.476988>,  <37.286449, 35.898979, 29.595844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941460, 35.735104, 29.476988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409919, -0.221143, -0.884908,
		0.296830, -0.885013, 0.358671,
		-0.862472, -0.409693, -0.297141,
		36.682716, 35.612194, 29.387846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522583, 35.221512, 29.357347>,  <37.286449, 35.898979, 29.595844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522583, 35.221512, 29.357347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179222, 35.330151, 29.183279>,  <36.973206, 35.395336, 29.078838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179222, 35.330151, 29.183279>,  <37.522583, 35.221512, 29.357347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179222, 35.330151, 29.183279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411418, -0.142187, -0.900288,
		-0.306395, -0.951849, 0.010313,
		-0.858404, 0.271601, -0.435173,
		36.921700, 35.411629, 29.052727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237835, 34.704517, 28.912542>,  <37.522583, 35.221512, 29.357347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237835, 34.704517, 28.912542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081421, 35.041668, 28.764681>,  <36.987572, 35.243958, 28.675964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081421, 35.041668, 28.764681>,  <37.237835, 34.704517, 28.912542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081421, 35.041668, 28.764681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284261, -0.271396, -0.919532,
		-0.875379, -0.464647, -0.133473,
		-0.391034, 0.842880, -0.369655,
		36.964111, 35.294533, 28.653784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915058, 34.477585, 28.291851>,  <37.237835, 34.704517, 28.912542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915058, 34.477585, 28.291851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907997, 34.872063, 28.226002>,  <36.903763, 35.108749, 28.186491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907997, 34.872063, 28.226002>,  <36.915058, 34.477585, 28.291851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907997, 34.872063, 28.226002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281052, -0.153118, -0.947399,
		-0.959530, -0.062989, -0.274470,
		-0.017649, 0.986199, -0.164624,
		36.902702, 35.167923, 28.176615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434212, 34.555305, 27.719584>,  <36.915058, 34.477585, 28.291851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434212, 34.555305, 27.719584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650566, 34.891518, 27.707329>,  <36.780380, 35.093246, 27.699976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650566, 34.891518, 27.707329>,  <36.434212, 34.555305, 27.719584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650566, 34.891518, 27.707329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187910, -0.156267, -0.969676,
		-0.819834, 0.518731, -0.242468,
		0.540891, 0.840535, -0.030638,
		36.812832, 35.143677, 27.698137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240192, 34.934643, 27.119078>,  <36.434212, 34.555305, 27.719584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240192, 34.934643, 27.119078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593636, 35.091629, 27.221224>,  <36.805702, 35.185822, 27.282511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593636, 35.091629, 27.221224>,  <36.240192, 34.934643, 27.119078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593636, 35.091629, 27.221224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263773, 0.033383, -0.964007,
		-0.386865, 0.919160, -0.074025,
		0.883606, 0.392466, 0.255364,
		36.858719, 35.209370, 27.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340042, 35.518719, 26.744537>,  <36.240192, 34.934643, 27.119078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340042, 35.518719, 26.744537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700935, 35.378418, 26.844889>,  <36.917473, 35.294235, 26.905100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700935, 35.378418, 26.844889>,  <36.340042, 35.518719, 26.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700935, 35.378418, 26.844889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264210, -0.010179, -0.964411,
		0.340826, 0.936412, 0.083489,
		0.902236, -0.350756, 0.250879,
		36.971607, 35.273190, 26.920153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714668, 35.886066, 26.228777>,  <36.340042, 35.518719, 26.744537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714668, 35.886066, 26.228777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989090, 35.626198, 26.359779>,  <37.153744, 35.470276, 26.438381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989090, 35.626198, 26.359779>,  <36.714668, 35.886066, 26.228777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989090, 35.626198, 26.359779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339579, -0.112175, -0.933865,
		0.643443, 0.751893, 0.143657,
		0.686052, -0.649672, 0.327505,
		37.194904, 35.431297, 26.458031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414978, 36.116055, 26.111980>,  <36.714668, 35.886066, 26.228777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414978, 36.116055, 26.111980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426094, 35.716618, 26.130058>,  <37.432762, 35.476955, 26.140905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426094, 35.716618, 26.130058>,  <37.414978, 36.116055, 26.111980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426094, 35.716618, 26.130058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253080, -0.036708, -0.966749,
		0.967046, 0.038303, 0.251704,
		0.027790, -0.998592, 0.045192,
		37.434429, 35.417042, 26.143616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916328, 35.915497, 25.670000>,  <37.414978, 36.116055, 26.111980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916328, 35.915497, 25.670000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741741, 35.562950, 25.742321>,  <37.636990, 35.351421, 25.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741741, 35.562950, 25.742321>,  <37.916328, 35.915497, 25.670000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741741, 35.562950, 25.742321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038093, -0.218875, -0.975009,
		0.898912, -0.418675, 0.129106,
		-0.436469, -0.881366, 0.180801,
		37.610802, 35.298542, 25.796562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356911, 35.397846, 25.451107>,  <37.916328, 35.915497, 25.670000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356911, 35.397846, 25.451107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988991, 35.240891, 25.451612>,  <37.768238, 35.146717, 25.451916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988991, 35.240891, 25.451612>,  <38.356911, 35.397846, 25.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988991, 35.240891, 25.451612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137134, -0.324465, -0.935904,
		0.367649, -0.860670, 0.352252,
		-0.919798, -0.392390, 0.001262,
		37.713051, 35.123173, 25.451992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394310, 34.932949, 24.972183>,  <38.356911, 35.397846, 25.451107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394310, 34.932949, 24.972183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996960, 34.966187, 25.003933>,  <37.758549, 34.986130, 25.022982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996960, 34.966187, 25.003933>,  <38.394310, 34.932949, 24.972183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996960, 34.966187, 25.003933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099695, -0.279692, -0.954900,
		-0.057145, -0.956487, 0.286123,
		-0.993376, 0.083093, 0.079374,
		37.698948, 34.991116, 25.027744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022392, 34.330658, 24.630186>,  <38.394310, 34.932949, 24.972183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022392, 34.330658, 24.630186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718185, 34.589863, 24.646620>,  <37.535660, 34.745384, 24.656479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718185, 34.589863, 24.646620>,  <38.022392, 34.330658, 24.630186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718185, 34.589863, 24.646620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160616, -0.126442, -0.978885,
		-0.629135, -0.751060, 0.200243,
		-0.760520, 0.648013, 0.041083,
		37.490028, 34.784267, 24.658945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472729, 34.062809, 24.319397>,  <38.022392, 34.330658, 24.630186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472729, 34.062809, 24.319397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380627, 34.450706, 24.286945>,  <37.325363, 34.683445, 24.267475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380627, 34.450706, 24.286945>,  <37.472729, 34.062809, 24.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380627, 34.450706, 24.286945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314005, -0.152949, -0.937020,
		-0.921076, -0.190282, 0.339722,
		-0.230259, 0.969742, -0.081128,
		37.311550, 34.741631, 24.262608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861103, 33.967983, 24.065994>,  <37.472729, 34.062809, 24.319397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861103, 33.967983, 24.065994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982029, 34.342999, 23.997137>,  <37.054585, 34.568008, 23.955822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982029, 34.342999, 23.997137>,  <36.861103, 33.967983, 24.065994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982029, 34.342999, 23.997137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048306, -0.165295, -0.985060,
		-0.951984, 0.306114, -0.004683,
		0.302314, 0.937535, -0.172145,
		37.072723, 34.624260, 23.945494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373222, 34.386333, 23.609583>,  <36.861103, 33.967983, 24.065994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373222, 34.386333, 23.609583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727077, 34.571480, 23.587063>,  <36.939392, 34.682568, 23.573551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727077, 34.571480, 23.587063>,  <36.373222, 34.386333, 23.609583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727077, 34.571480, 23.587063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022092, -0.079001, -0.996630,
		-0.465753, 0.882902, -0.059662,
		0.884639, 0.462865, -0.056300,
		36.992470, 34.710339, 23.570173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412823, 34.924084, 23.103981>,  <36.373222, 34.386333, 23.609583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412823, 34.924084, 23.103981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806019, 34.855671, 23.130724>,  <37.041939, 34.814621, 23.146769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806019, 34.855671, 23.130724>,  <36.412823, 34.924084, 23.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806019, 34.855671, 23.130724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042983, -0.139660, -0.989266,
		0.178536, 0.975316, -0.129933,
		0.982994, -0.171034, 0.066856,
		37.100918, 34.804359, 23.150782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678162, 35.338348, 22.528261>,  <36.412823, 34.924084, 23.103981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678162, 35.338348, 22.528261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951969, 35.057404, 22.606359>,  <37.116253, 34.888836, 22.653217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951969, 35.057404, 22.606359>,  <36.678162, 35.338348, 22.528261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951969, 35.057404, 22.606359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077963, -0.195758, -0.977548,
		0.724815, 0.684372, -0.079241,
		0.684518, -0.702363, 0.195244,
		37.157326, 34.846695, 22.664932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216534, 35.484684, 22.131908>,  <36.678162, 35.338348, 22.528261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216534, 35.484684, 22.131908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272099, 35.099197, 22.223082>,  <37.305439, 34.867905, 22.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272099, 35.099197, 22.223082>,  <37.216534, 35.484684, 22.131908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272099, 35.099197, 22.223082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206188, -0.196976, -0.958481,
		0.968602, 0.180141, 0.171344,
		0.138912, -0.963717, 0.227934,
		37.313770, 34.810081, 22.291462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757984, 35.229378, 21.672485>,  <37.216534, 35.484684, 22.131908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757984, 35.229378, 21.672485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612167, 34.888309, 21.822187>,  <37.524677, 34.683670, 21.912008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612167, 34.888309, 21.822187>,  <37.757984, 35.229378, 21.672485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612167, 34.888309, 21.822187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141576, -0.447991, -0.882757,
		0.920362, -0.268814, 0.284028,
		-0.364540, -0.852668, 0.374257,
		37.502804, 34.632507, 21.934464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159286, 34.811916, 21.370567>,  <37.757984, 35.229378, 21.672485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159286, 34.811916, 21.370567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845337, 34.589855, 21.480680>,  <37.656967, 34.456619, 21.546747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845337, 34.589855, 21.480680>,  <38.159286, 34.811916, 21.370567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845337, 34.589855, 21.480680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094887, -0.546684, -0.831945,
		0.612349, -0.626851, 0.481754,
		-0.784873, -0.555153, 0.275281,
		37.609875, 34.423309, 21.563265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386578, 34.126797, 21.403860>,  <38.159286, 34.811916, 21.370567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386578, 34.126797, 21.403860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993164, 34.121346, 21.331770>,  <37.757118, 34.118073, 21.288515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993164, 34.121346, 21.331770>,  <38.386578, 34.126797, 21.403860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993164, 34.121346, 21.331770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147825, -0.634419, -0.758723,
		-0.103996, -0.772869, 0.625985,
		-0.983530, -0.013632, -0.180227,
		37.698105, 34.117256, 21.277702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394268, 33.553486, 21.068058>,  <38.386578, 34.126797, 21.403860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394268, 33.553486, 21.068058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025799, 33.693768, 21.000599>,  <37.804718, 33.777939, 20.960123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025799, 33.693768, 21.000599>,  <38.394268, 33.553486, 21.068058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025799, 33.693768, 21.000599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042160, -0.520758, -0.852663,
		-0.386859, -0.778341, 0.494495,
		-0.921175, 0.350708, -0.168645,
		37.749447, 33.798981, 20.950005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900772, 32.954811, 20.987747>,  <38.394268, 33.553486, 21.068058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900772, 32.954811, 20.987747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762962, 33.284218, 20.807470>,  <37.680275, 33.481861, 20.699305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762962, 33.284218, 20.807470>,  <37.900772, 32.954811, 20.987747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762962, 33.284218, 20.807470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042139, -0.466033, -0.883763,
		-0.937831, -0.323469, 0.125857,
		-0.344524, 0.823517, -0.450691,
		37.659607, 33.531273, 20.672262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429173, 32.675007, 20.606096>,  <37.900772, 32.954811, 20.987747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429173, 32.675007, 20.606096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505081, 33.022930, 20.423923>,  <37.550625, 33.231686, 20.314619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505081, 33.022930, 20.423923>,  <37.429173, 32.675007, 20.606096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505081, 33.022930, 20.423923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025251, -0.459385, -0.887878,
		-0.981504, 0.179993, -0.065214,
		0.189770, 0.869809, -0.455433,
		37.562012, 33.283875, 20.287294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005142, 32.746037, 19.941040>,  <37.429173, 32.675007, 20.606096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005142, 32.746037, 19.941040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291222, 33.021366, 19.892532>,  <37.462868, 33.186565, 19.863428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291222, 33.021366, 19.892532>,  <37.005142, 32.746037, 19.941040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291222, 33.021366, 19.892532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115001, -0.287036, -0.950991,
		-0.689397, 0.666200, -0.284445,
		0.715196, 0.688323, -0.121268,
		37.505779, 33.227863, 19.856152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868416, 33.031780, 19.379839>,  <37.005142, 32.746037, 19.941040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868416, 33.031780, 19.379839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259617, 33.097206, 19.431606>,  <37.494339, 33.136459, 19.462667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259617, 33.097206, 19.431606>,  <36.868416, 33.031780, 19.379839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259617, 33.097206, 19.431606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190451, -0.447357, -0.873842,
		-0.085032, 0.879272, -0.468669,
		0.978007, 0.163563, 0.129419,
		37.553020, 33.146275, 19.470432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193092, 33.167828, 18.672438>,  <36.868416, 33.031780, 19.379839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193092, 33.167828, 18.672438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519306, 33.100906, 18.894035>,  <37.715034, 33.060753, 19.026995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519306, 33.100906, 18.894035>,  <37.193092, 33.167828, 18.672438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519306, 33.100906, 18.894035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410755, -0.506996, -0.757784,
		0.407652, 0.845556, -0.344753,
		0.815537, -0.167303, 0.553994,
		37.763966, 33.050716, 19.060234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721081, 33.412163, 18.247066>,  <37.193092, 33.167828, 18.672438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721081, 33.412163, 18.247066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875008, 33.141876, 18.498568>,  <37.967365, 32.979706, 18.649467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875008, 33.141876, 18.498568>,  <37.721081, 33.412163, 18.247066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875008, 33.141876, 18.498568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360468, -0.517086, -0.776327,
		0.849693, 0.525389, 0.044589,
		0.384818, -0.675713, 0.628751,
		37.990452, 32.939163, 18.687193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334156, 33.270126, 17.992332>,  <37.721081, 33.412163, 18.247066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334156, 33.270126, 17.992332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246971, 32.958996, 18.228123>,  <38.194660, 32.772316, 18.369596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246971, 32.958996, 18.228123>,  <38.334156, 33.270126, 17.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246971, 32.958996, 18.228123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341272, -0.626609, -0.700639,
		0.914345, 0.048460, 0.402025,
		-0.217959, -0.777826, 0.589475,
		38.181583, 32.725647, 18.404964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847931, 32.910587, 17.862881>,  <38.334156, 33.270126, 17.992332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847931, 32.910587, 17.862881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609158, 32.634972, 18.027267>,  <38.465893, 32.469601, 18.125900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609158, 32.634972, 18.027267>,  <38.847931, 32.910587, 17.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609158, 32.634972, 18.027267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204547, -0.626019, -0.752503,
		0.775780, -0.365129, 0.514631,
		-0.596930, -0.689043, 0.410967,
		38.430080, 32.428257, 18.150558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134331, 32.316757, 17.748638>,  <38.847931, 32.910587, 17.862881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134331, 32.316757, 17.748638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760460, 32.191151, 17.815304>,  <38.536137, 32.115788, 17.855303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760460, 32.191151, 17.815304>,  <39.134331, 32.316757, 17.748638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760460, 32.191151, 17.815304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123874, -0.727100, -0.675264,
		0.333225, -0.610507, 0.718500,
		-0.934674, -0.314018, 0.166662,
		38.480057, 32.096947, 17.865303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223228, 31.613445, 17.890442>,  <39.134331, 32.316757, 17.748638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223228, 31.613445, 17.890442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855583, 31.696470, 17.756483>,  <38.634998, 31.746284, 17.676107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855583, 31.696470, 17.756483>,  <39.223228, 31.613445, 17.890442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855583, 31.696470, 17.756483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141482, -0.619434, -0.772195,
		-0.367724, -0.757114, 0.539961,
		-0.919109, 0.207560, -0.334898,
		38.579849, 31.758738, 17.656013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395988, 31.092813, 17.288790>,  <39.223228, 31.613445, 17.890442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395988, 31.092813, 17.288790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758175, 30.929399, 17.334803>,  <39.975487, 30.831350, 17.362410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758175, 30.929399, 17.334803>,  <39.395988, 31.092813, 17.288790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758175, 30.929399, 17.334803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049917, 0.371656, 0.927028,
		-0.421477, -0.833648, 0.356914,
		0.905464, -0.408537, 0.115031,
		40.029816, 30.806839, 17.369312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397167, 30.614573, 17.871529>,  <39.395988, 31.092813, 17.288790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397167, 30.614573, 17.871529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776909, 30.734344, 17.833427>,  <40.004753, 30.806208, 17.810568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776909, 30.734344, 17.833427>,  <39.397167, 30.614573, 17.871529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776909, 30.734344, 17.833427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030299, 0.214491, 0.976256,
		0.312751, -0.929696, 0.194555,
		0.949352, 0.299430, -0.095251,
		40.061714, 30.824173, 17.804852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444637, 30.730898, 18.501488>,  <39.397167, 30.614573, 17.871529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444637, 30.730898, 18.501488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787609, 30.849228, 18.333059>,  <39.993393, 30.920225, 18.232002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787609, 30.849228, 18.333059>,  <39.444637, 30.730898, 18.501488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787609, 30.849228, 18.333059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368279, 0.218745, 0.903616,
		0.359421, -0.929859, 0.078612,
		0.857431, 0.295827, -0.421069,
		40.044838, 30.937975, 18.206739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055706, 30.443361, 18.955873>,  <39.444637, 30.730898, 18.501488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055706, 30.443361, 18.955873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166630, 30.755140, 18.731173>,  <40.233185, 30.942207, 18.596352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166630, 30.755140, 18.731173>,  <40.055706, 30.443361, 18.955873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166630, 30.755140, 18.731173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439795, 0.416851, 0.795497,
		0.854214, -0.467650, -0.227202,
		0.277305, 0.779447, -0.561750,
		40.249821, 30.988976, 18.562647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764847, 30.649410, 19.193476>,  <40.055706, 30.443361, 18.955873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764847, 30.649410, 19.193476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612957, 30.967686, 19.004717>,  <40.521824, 31.158651, 18.891460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612957, 30.967686, 19.004717>,  <40.764847, 30.649410, 19.193476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612957, 30.967686, 19.004717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299199, 0.588323, 0.751236,
		0.875379, 0.144072, -0.461470,
		-0.379726, 0.795688, -0.471899,
		40.499039, 31.206392, 18.863148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337818, 31.213686, 19.262707>,  <40.764847, 30.649410, 19.193476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337818, 31.213686, 19.262707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974823, 31.369095, 19.198818>,  <40.757027, 31.462339, 19.160484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974823, 31.369095, 19.198818>,  <41.337818, 31.213686, 19.262707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974823, 31.369095, 19.198818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086855, 0.545556, 0.833561,
		0.410994, 0.742576, -0.528833,
		-0.907491, 0.388521, -0.159724,
		40.702576, 31.485651, 19.150902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331448, 31.951668, 19.509216>,  <41.337818, 31.213686, 19.262707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331448, 31.951668, 19.509216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944244, 31.851950, 19.497774>,  <40.711922, 31.792118, 19.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944244, 31.851950, 19.497774>,  <41.331448, 31.951668, 19.509216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944244, 31.851950, 19.497774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168619, 0.561815, 0.809896,
		-0.185834, 0.788806, -0.585876,
		-0.968005, -0.249296, -0.028604,
		40.653843, 31.777161, 19.489193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112576, 32.509430, 19.809671>,  <41.331448, 31.951668, 19.509216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112576, 32.509430, 19.809671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790592, 32.273945, 19.839207>,  <40.597401, 32.132652, 19.856928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790592, 32.273945, 19.839207>,  <41.112576, 32.509430, 19.809671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790592, 32.273945, 19.839207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261530, 0.463762, 0.846479,
		-0.532580, 0.662071, -0.527277,
		-0.804960, -0.588717, 0.073839,
		40.549103, 32.097328, 19.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559608, 32.917587, 19.984306>,  <41.112576, 32.509430, 19.809671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559608, 32.917587, 19.984306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423862, 32.565689, 20.117500>,  <40.342415, 32.354549, 20.197416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423862, 32.565689, 20.117500>,  <40.559608, 32.917587, 19.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423862, 32.565689, 20.117500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053248, 0.335456, 0.940550,
		-0.939145, 0.336924, -0.066999,
		-0.339369, -0.879745, 0.332983,
		40.322052, 32.301765, 20.217396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910477, 33.030712, 20.437992>,  <40.559608, 32.917587, 19.984306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910477, 33.030712, 20.437992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038593, 32.666740, 20.543398>,  <40.115463, 32.448357, 20.606642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038593, 32.666740, 20.543398>,  <39.910477, 33.030712, 20.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038593, 32.666740, 20.543398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034548, 0.289204, 0.956644,
		-0.946690, -0.297296, 0.124064,
		0.320287, -0.909932, 0.263516,
		40.134678, 32.393761, 20.622452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505661, 32.882652, 20.985140>,  <39.910477, 33.030712, 20.437992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505661, 32.882652, 20.985140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813507, 32.631680, 21.032503>,  <39.998215, 32.481094, 21.060921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813507, 32.631680, 21.032503>,  <39.505661, 32.882652, 20.985140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813507, 32.631680, 21.032503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166926, -0.018712, 0.985792,
		-0.616301, -0.778447, -0.119136,
		0.769616, -0.627431, 0.118410,
		40.044392, 32.443451, 21.068026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209743, 32.369228, 21.411547>,  <39.505661, 32.882652, 20.985140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209743, 32.369228, 21.411547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608032, 32.378166, 21.447411>,  <39.847004, 32.383530, 21.468929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608032, 32.378166, 21.447411>,  <39.209743, 32.369228, 21.411547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608032, 32.378166, 21.447411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092030, 0.326808, 0.940599,
		-0.008287, -0.944827, 0.327466,
		0.995721, 0.022342, 0.089661,
		39.906750, 32.384869, 21.474308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274025, 32.169945, 22.023960>,  <39.209743, 32.369228, 21.411547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274025, 32.169945, 22.023960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631271, 32.336880, 21.956829>,  <39.845619, 32.437042, 21.916552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631271, 32.336880, 21.956829>,  <39.274025, 32.169945, 22.023960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631271, 32.336880, 21.956829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148550, 0.078514, 0.985783,
		0.424582, -0.905353, 0.008127,
		0.893120, 0.417338, -0.167826,
		39.899208, 32.462082, 21.906481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754837, 31.876255, 22.481800>,  <39.274025, 32.169945, 22.023960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754837, 31.876255, 22.481800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934387, 32.215321, 22.368683>,  <40.042118, 32.418758, 22.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934387, 32.215321, 22.368683>,  <39.754837, 31.876255, 22.481800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934387, 32.215321, 22.368683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141947, 0.244812, 0.959124,
		0.882246, -0.470672, -0.010432,
		0.448879, 0.847664, -0.282795,
		40.069050, 32.469620, 22.283844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351395, 31.810778, 22.808285>,  <39.754837, 31.876255, 22.481800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351395, 31.810778, 22.808285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273228, 32.196613, 22.737429>,  <40.226326, 32.428116, 22.694916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273228, 32.196613, 22.737429>,  <40.351395, 31.810778, 22.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273228, 32.196613, 22.737429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164975, 0.210381, 0.963599,
		0.966744, 0.159083, -0.200246,
		-0.195420, 0.964589, -0.177140,
		40.214603, 32.485989, 22.684286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806564, 32.295452, 23.202469>,  <40.351395, 31.810778, 22.808285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806564, 32.295452, 23.202469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508778, 32.550003, 23.121677>,  <40.330105, 32.702732, 23.073202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508778, 32.550003, 23.121677>,  <40.806564, 32.295452, 23.202469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508778, 32.550003, 23.121677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010346, 0.291483, 0.956520,
		0.667577, 0.714189, -0.210417,
		-0.744469, 0.636373, -0.201977,
		40.285439, 32.740913, 23.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933727, 32.849991, 23.647369>,  <40.806564, 32.295452, 23.202469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933727, 32.849991, 23.647369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571449, 32.948048, 23.509022>,  <40.354084, 33.006882, 23.426014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571449, 32.948048, 23.509022>,  <40.933727, 32.849991, 23.647369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571449, 32.948048, 23.509022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208902, 0.451852, 0.867289,
		0.368887, 0.857751, -0.358030,
		-0.905694, 0.245138, -0.345868,
		40.299740, 33.021587, 23.405262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812553, 33.673409, 23.697758>,  <40.933727, 32.849991, 23.647369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812553, 33.673409, 23.697758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455849, 33.492435, 23.694571>,  <40.241825, 33.383854, 23.692657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455849, 33.492435, 23.694571>,  <40.812553, 33.673409, 23.697758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455849, 33.492435, 23.694571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194071, 0.366495, 0.909955,
		-0.408771, 0.813011, -0.414631,
		-0.891764, -0.452431, -0.007969,
		40.188320, 33.356705, 23.692181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397842, 34.184551, 24.060776>,  <40.812553, 33.673409, 23.697758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397842, 34.184551, 24.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147911, 33.872383, 24.069994>,  <39.997952, 33.685081, 24.075525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147911, 33.872383, 24.069994>,  <40.397842, 34.184551, 24.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147911, 33.872383, 24.069994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244751, 0.223818, 0.943399,
		-0.741405, 0.583825, -0.330858,
		-0.624832, -0.780419, 0.023048,
		39.960461, 33.638256, 24.076908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711613, 34.484364, 24.211040>,  <40.397842, 34.184551, 24.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711613, 34.484364, 24.211040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714378, 34.098915, 24.317917>,  <39.716038, 33.867645, 24.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714378, 34.098915, 24.317917>,  <39.711613, 34.484364, 24.211040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714378, 34.098915, 24.317917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342635, 0.248736, 0.905942,
		-0.939443, -0.097815, -0.328449,
		0.006918, -0.963619, 0.267188,
		39.716454, 33.809830, 24.398073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048859, 34.338680, 24.547054>,  <39.711613, 34.484364, 24.211040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048859, 34.338680, 24.547054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282181, 34.042809, 24.681297>,  <39.422173, 33.865284, 24.761843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282181, 34.042809, 24.681297>,  <39.048859, 34.338680, 24.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282181, 34.042809, 24.681297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118744, 0.331089, 0.936098,
		-0.803528, -0.585880, 0.105292,
		0.583302, -0.739678, 0.335610,
		39.457172, 33.820904, 24.781981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667221, 33.912201, 25.103003>,  <39.048859, 34.338680, 24.547054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667221, 33.912201, 25.103003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041428, 33.805115, 25.195206>,  <39.265953, 33.740864, 25.250528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041428, 33.805115, 25.195206>,  <38.667221, 33.912201, 25.103003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041428, 33.805115, 25.195206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248781, -0.035982, 0.967891,
		-0.250823, -0.962826, -0.100264,
		0.935519, -0.267714, 0.230508,
		39.322083, 33.724800, 25.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643692, 33.289742, 25.606678>,  <38.667221, 33.912201, 25.103003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643692, 33.289742, 25.606678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007160, 33.448959, 25.657085>,  <39.225239, 33.544491, 25.687330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007160, 33.448959, 25.657085>,  <38.643692, 33.289742, 25.606678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007160, 33.448959, 25.657085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139427, 0.004791, 0.990221,
		0.393553, -0.917351, 0.059852,
		0.908667, 0.398049, 0.126018,
		39.279762, 33.568375, 25.694891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887424, 32.913094, 26.209181>,  <38.643692, 33.289742, 25.606678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887424, 32.913094, 26.209181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137310, 33.222572, 26.166981>,  <39.287243, 33.408260, 26.141661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137310, 33.222572, 26.166981>,  <38.887424, 32.913094, 26.209181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137310, 33.222572, 26.166981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181360, 0.275178, 0.944132,
		0.759499, -0.570681, 0.312225,
		0.624716, 0.773692, -0.105499,
		39.324726, 33.454681, 26.135330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296528, 32.875797, 26.828329>,  <38.887424, 32.913094, 26.209181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296528, 32.875797, 26.828329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342155, 33.258945, 26.722900>,  <39.369534, 33.488834, 26.659643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342155, 33.258945, 26.722900>,  <39.296528, 32.875797, 26.828329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342155, 33.258945, 26.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120057, 0.250069, 0.960756,
		0.986192, -0.141239, -0.086473,
		0.114072, 0.957871, -0.263572,
		39.376377, 33.546307, 26.643829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873615, 33.158855, 27.164890>,  <39.296528, 32.875797, 26.828329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873615, 33.158855, 27.164890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645477, 33.474133, 27.072411>,  <39.508595, 33.663300, 27.016924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645477, 33.474133, 27.072411>,  <39.873615, 33.158855, 27.164890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645477, 33.474133, 27.072411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269842, 0.445638, 0.853576,
		0.775814, 0.424450, -0.466857,
		-0.570349, 0.788194, -0.231197,
		39.474373, 33.710590, 27.003052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372150, 33.781239, 27.202721>,  <39.873615, 33.158855, 27.164890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372150, 33.781239, 27.202721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996147, 33.917645, 27.206591>,  <39.770546, 33.999489, 27.208912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996147, 33.917645, 27.206591>,  <40.372150, 33.781239, 27.202721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996147, 33.917645, 27.206591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226401, 0.602363, 0.765442,
		0.255199, 0.721712, -0.643433,
		-0.940009, 0.341014, 0.009674,
		39.714146, 34.019947, 27.209494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386833, 34.476448, 27.373272>,  <40.372150, 33.781239, 27.202721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386833, 34.476448, 27.373272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013718, 34.370628, 27.471191>,  <39.789848, 34.307137, 27.529943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013718, 34.370628, 27.471191>,  <40.386833, 34.476448, 27.373272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013718, 34.370628, 27.471191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047196, 0.583676, 0.810614,
		-0.357331, 0.767682, -0.531958,
		-0.932785, -0.264550, 0.244797,
		39.733883, 34.291264, 27.544630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071510, 35.054054, 27.508215>,  <40.386833, 34.476448, 27.373272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071510, 35.054054, 27.508215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892864, 34.761063, 27.713743>,  <39.785679, 34.585266, 27.837061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892864, 34.761063, 27.713743>,  <40.071510, 35.054054, 27.508215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892864, 34.761063, 27.713743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051865, 0.552118, 0.832152,
		-0.893224, 0.398298, -0.208592,
		-0.446611, -0.732479, 0.513822,
		39.758881, 34.541321, 27.867889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782566, 35.374264, 28.150406>,  <40.071510, 35.054054, 27.508215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782566, 35.374264, 28.150406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724590, 34.993721, 28.259153>,  <39.689804, 34.765396, 28.324402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724590, 34.993721, 28.259153>,  <39.782566, 35.374264, 28.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724590, 34.993721, 28.259153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119065, 0.256004, 0.959315,
		-0.982251, 0.171409, 0.076169,
		-0.144935, -0.951357, 0.271869,
		39.681110, 34.708313, 28.340714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318295, 35.381084, 28.687098>,  <39.782566, 35.374264, 28.150406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318295, 35.381084, 28.687098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497505, 35.031517, 28.762508>,  <39.605034, 34.821777, 28.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497505, 35.031517, 28.762508>,  <39.318295, 35.381084, 28.687098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497505, 35.031517, 28.762508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146085, 0.279606, 0.948936,
		-0.882002, -0.397612, 0.252938,
		0.448031, -0.873914, 0.188528,
		39.631916, 34.769344, 28.819067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049458, 35.109299, 29.301611>,  <39.318295, 35.381084, 28.687098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049458, 35.109299, 29.301611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388412, 34.897564, 29.284922>,  <39.591785, 34.770523, 29.274908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388412, 34.897564, 29.284922>,  <39.049458, 35.109299, 29.301611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388412, 34.897564, 29.284922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128760, 0.128617, 0.983300,
		-0.515129, -0.838607, 0.177146,
		0.847386, -0.529335, -0.041725,
		39.642628, 34.738762, 29.272404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924770, 34.716534, 29.874544>,  <39.049458, 35.109299, 29.301611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924770, 34.716534, 29.874544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311577, 34.757385, 29.781206>,  <39.543659, 34.781895, 29.725203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311577, 34.757385, 29.781206>,  <38.924770, 34.716534, 29.874544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311577, 34.757385, 29.781206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222844, 0.104500, 0.969237,
		0.123381, -0.989266, 0.078292,
		0.967015, 0.102138, -0.233345,
		39.601681, 34.788025, 29.711203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325985, 34.366306, 30.471287>,  <38.924770, 34.716534, 29.874544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325985, 34.366306, 30.471287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624321, 34.575291, 30.305996>,  <39.803322, 34.700680, 30.206821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624321, 34.575291, 30.305996>,  <39.325985, 34.366306, 30.471287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624321, 34.575291, 30.305996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490387, -0.010811, 0.871438,
		0.450824, -0.852595, -0.264271,
		0.745841, 0.522460, -0.413227,
		39.848072, 34.732029, 30.182028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852726, 34.104656, 30.753914>,  <39.325985, 34.366306, 30.471287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852726, 34.104656, 30.753914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972351, 34.461525, 30.618507>,  <40.044125, 34.675644, 30.537264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972351, 34.461525, 30.618507>,  <39.852726, 34.104656, 30.753914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972351, 34.461525, 30.618507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313917, 0.243023, 0.917821,
		0.901120, -0.380753, -0.207388,
		0.299063, 0.892170, -0.338518,
		40.062069, 34.729176, 30.516953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512859, 34.117847, 31.063805>,  <39.852726, 34.104656, 30.753914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512859, 34.117847, 31.063805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406097, 34.498581, 31.003445>,  <40.342041, 34.727020, 30.967228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406097, 34.498581, 31.003445>,  <40.512859, 34.117847, 31.063805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406097, 34.498581, 31.003445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333554, 0.238143, 0.912157,
		0.904159, 0.193125, -0.381050,
		-0.266905, 0.951835, -0.150902,
		40.326027, 34.784130, 30.958174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087318, 34.526596, 31.298662>,  <40.512859, 34.117847, 31.063805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087318, 34.526596, 31.298662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782452, 34.785538, 31.295988>,  <40.599533, 34.940903, 31.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782452, 34.785538, 31.295988>,  <41.087318, 34.526596, 31.298662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782452, 34.785538, 31.295988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257348, 0.312437, 0.914415,
		0.594036, 0.695213, -0.404722,
		-0.762164, 0.647350, -0.006687,
		40.553802, 34.979744, 31.293982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305973, 35.039421, 31.571466>,  <41.087318, 34.526596, 31.298662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305973, 35.039421, 31.571466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915596, 35.108143, 31.625153>,  <40.681370, 35.149376, 31.657364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915596, 35.108143, 31.625153>,  <41.305973, 35.039421, 31.571466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915596, 35.108143, 31.625153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195422, 0.416502, 0.887883,
		0.096638, 0.892754, -0.440057,
		-0.975946, 0.171800, 0.134214,
		40.622810, 35.159683, 31.665417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283787, 35.617836, 31.892834>,  <41.305973, 35.039421, 31.571466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283787, 35.617836, 31.892834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897175, 35.532597, 31.949986>,  <40.665207, 35.481453, 31.984278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897175, 35.532597, 31.949986>,  <41.283787, 35.617836, 31.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897175, 35.532597, 31.949986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000348, 0.555815, 0.831306,
		-0.256561, 0.803530, -0.537136,
		-0.966528, -0.213094, 0.142880,
		40.607216, 35.468670, 31.992849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958836, 36.272556, 32.167061>,  <41.283787, 35.617836, 31.892834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958836, 36.272556, 32.167061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704247, 35.974514, 32.246780>,  <40.551495, 35.795689, 32.294613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704247, 35.974514, 32.246780>,  <40.958836, 36.272556, 32.167061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704247, 35.974514, 32.246780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324637, 0.493186, 0.807080,
		-0.699652, 0.448984, -0.555788,
		-0.636473, -0.745105, 0.199302,
		40.513306, 35.750984, 32.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237221, 36.633942, 32.277397>,  <40.958836, 36.272556, 32.167061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237221, 36.633942, 32.277397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241817, 36.279152, 32.462063>,  <40.244576, 36.066277, 32.572865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241817, 36.279152, 32.462063>,  <40.237221, 36.633942, 32.277397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241817, 36.279152, 32.462063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373057, 0.424560, 0.824971,
		-0.927737, -0.181707, -0.326016,
		0.011490, -0.886979, 0.461667,
		40.245266, 36.013058, 32.600563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571205, 36.582977, 32.721439>,  <40.237221, 36.633942, 32.277397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571205, 36.582977, 32.721439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834980, 36.327602, 32.880199>,  <39.993244, 36.174377, 32.975456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834980, 36.327602, 32.880199>,  <39.571205, 36.582977, 32.721439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834980, 36.327602, 32.880199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425388, 0.118408, 0.897231,
		-0.619823, -0.760511, -0.193501,
		0.659442, -0.638438, 0.396904,
		40.032814, 36.136070, 32.999271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121563, 36.076176, 33.100090>,  <39.571205, 36.582977, 32.721439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121563, 36.076176, 33.100090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492287, 36.111649, 33.246052>,  <39.714722, 36.132931, 33.333630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492287, 36.111649, 33.246052>,  <39.121563, 36.076176, 33.100090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492287, 36.111649, 33.246052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375266, 0.182788, 0.908716,
		0.013883, -0.979145, 0.202688,
		0.926813, 0.088678, 0.364902,
		39.770332, 36.138252, 33.355522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006924, 35.732632, 33.728638>,  <39.121563, 36.076176, 33.100090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006924, 35.732632, 33.728638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373230, 35.890072, 33.760765>,  <39.593014, 35.984535, 33.780041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373230, 35.890072, 33.760765>,  <39.006924, 35.732632, 33.728638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373230, 35.890072, 33.760765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062495, -0.057916, 0.996363,
		0.396819, -0.917456, -0.028440,
		0.915767, 0.393598, 0.080318,
		39.647961, 36.008152, 33.784859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434570, 35.359898, 34.175285>,  <39.006924, 35.732632, 33.728638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434570, 35.359898, 34.175285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557480, 35.740368, 34.163670>,  <39.631226, 35.968651, 34.156700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557480, 35.740368, 34.163670>,  <39.434570, 35.359898, 34.175285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557480, 35.740368, 34.163670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231678, 0.104365, 0.967178,
		0.922989, -0.290460, 0.252435,
		0.307272, 0.951179, -0.029035,
		39.649662, 36.025723, 34.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643185, 35.496754, 34.892223>,  <39.434570, 35.359898, 34.175285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643185, 35.496754, 34.892223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627697, 35.862656, 34.731369>,  <39.618404, 36.082199, 34.634857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627697, 35.862656, 34.731369>,  <39.643185, 35.496754, 34.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627697, 35.862656, 34.731369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152899, 0.403126, 0.902281,
		0.987483, -0.026549, -0.155475,
		-0.038721, 0.914759, -0.402139,
		39.616081, 36.137085, 34.610725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099945, 35.792717, 35.254368>,  <39.643185, 35.496754, 34.892223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099945, 35.792717, 35.254368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910164, 36.121761, 35.129017>,  <39.796295, 36.319187, 35.053806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910164, 36.121761, 35.129017>,  <40.099945, 35.792717, 35.254368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910164, 36.121761, 35.129017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030237, 0.371014, 0.928135,
		0.879760, 0.430884, -0.200903,
		-0.474456, 0.822610, -0.313374,
		39.767826, 36.368546, 35.035004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533913, 36.412857, 35.430374>,  <40.099945, 35.792717, 35.254368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533913, 36.412857, 35.430374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148029, 36.513393, 35.398964>,  <39.916500, 36.573715, 35.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148029, 36.513393, 35.398964>,  <40.533913, 36.412857, 35.430374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148029, 36.513393, 35.398964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069059, 0.529252, 0.845650,
		0.254107, 0.810382, -0.527931,
		-0.964707, 0.251343, -0.078523,
		39.858616, 36.588795, 35.375408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510796, 37.090313, 35.381580>,  <40.533913, 36.412857, 35.430374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510796, 37.090313, 35.381580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146202, 37.004276, 35.521828>,  <39.927444, 36.952656, 35.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146202, 37.004276, 35.521828>,  <40.510796, 37.090313, 35.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146202, 37.004276, 35.521828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079409, 0.744345, 0.663058,
		-0.403595, 0.632209, -0.661379,
		-0.911485, -0.215087, 0.350617,
		39.872757, 36.939751, 35.627014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303085, 37.771450, 35.712101>,  <40.510796, 37.090313, 35.381580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303085, 37.771450, 35.712101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986816, 37.538116, 35.786457>,  <39.797054, 37.398117, 35.831070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986816, 37.538116, 35.786457>,  <40.303085, 37.771450, 35.712101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986816, 37.538116, 35.786457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218577, 0.552571, 0.804294,
		-0.571891, 0.595303, -0.564407,
		-0.790674, -0.583335, 0.185891,
		39.749615, 37.363117, 35.842224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707500, 38.157040, 35.722729>,  <40.303085, 37.771450, 35.712101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707500, 38.157040, 35.722729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640270, 37.840004, 35.957184>,  <39.599934, 37.649784, 36.097858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640270, 37.840004, 35.957184>,  <39.707500, 38.157040, 35.722729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640270, 37.840004, 35.957184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344013, 0.604376, 0.718599,
		-0.923800, -0.080861, -0.374240,
		-0.168075, -0.792585, 0.586140,
		39.589848, 37.602230, 36.133026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002468, 38.261436, 35.994183>,  <39.707500, 38.157040, 35.722729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002468, 38.261436, 35.994183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209476, 38.051373, 36.264404>,  <39.333679, 37.925331, 36.426537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209476, 38.051373, 36.264404>,  <39.002468, 38.261436, 35.994183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209476, 38.051373, 36.264404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375967, 0.569655, 0.730850,
		-0.768652, -0.632214, 0.097361,
		0.517516, -0.525165, 0.675558,
		39.364731, 37.893822, 36.467072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473675, 38.259048, 36.570427>,  <39.002468, 38.261436, 35.994183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473675, 38.259048, 36.570427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807564, 38.115696, 36.737663>,  <39.007896, 38.029686, 36.838005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807564, 38.115696, 36.737663>,  <38.473675, 38.259048, 36.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807564, 38.115696, 36.737663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224206, 0.472270, 0.852463,
		-0.502956, -0.805310, 0.313864,
		0.834725, -0.358381, 0.418086,
		39.057980, 38.008183, 36.863091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315422, 37.983253, 37.264748>,  <38.473675, 38.259048, 36.570427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315422, 37.983253, 37.264748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704395, 38.076046, 37.274231>,  <38.937778, 38.131721, 37.279922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704395, 38.076046, 37.274231>,  <38.315422, 37.983253, 37.264748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704395, 38.076046, 37.274231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122410, 0.421275, 0.898634,
		0.198479, -0.876762, 0.438058,
		0.972431, 0.231983, 0.023710,
		38.996124, 38.145641, 37.281345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571819, 37.731518, 37.935829>,  <38.315422, 37.983253, 37.264748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571819, 37.731518, 37.935829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810135, 38.019489, 37.793434>,  <38.953125, 38.192272, 37.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810135, 38.019489, 37.793434>,  <38.571819, 37.731518, 37.935829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810135, 38.019489, 37.793434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098648, 0.505492, 0.857173,
		0.797058, -0.475579, 0.372188,
		0.595792, 0.719932, -0.355992,
		38.988873, 38.235470, 37.686638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732056, 38.104912, 38.532280>,  <38.571819, 37.731518, 37.935829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732056, 38.104912, 38.532280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918804, 38.300694, 38.237667>,  <39.030853, 38.418163, 38.060902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918804, 38.300694, 38.237667>,  <38.732056, 38.104912, 38.532280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918804, 38.300694, 38.237667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211823, 0.746728, 0.630498,
		0.858584, -0.450372, 0.244945,
		0.466866, 0.489451, -0.736528,
		39.058865, 38.447529, 38.016708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511002, 38.332729, 38.696774>,  <38.732056, 38.104912, 38.532280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511002, 38.332729, 38.696774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312881, 38.584446, 38.457218>,  <39.194008, 38.735477, 38.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312881, 38.584446, 38.457218>,  <39.511002, 38.332729, 38.696774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312881, 38.584446, 38.457218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178804, 0.748478, 0.638600,
		0.850119, 0.209218, -0.483244,
		-0.495305, 0.629292, -0.598887,
		39.164291, 38.773235, 38.277554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008923, 38.862499, 38.522423>,  <39.511002, 38.332729, 38.696774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008923, 38.862499, 38.522423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627312, 38.981529, 38.508141>,  <39.398346, 39.052948, 38.499573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627312, 38.981529, 38.508141>,  <40.008923, 38.862499, 38.522423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627312, 38.981529, 38.508141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213259, 0.757702, 0.616773,
		0.210591, 0.580806, -0.786331,
		-0.954029, 0.297579, -0.035703,
		39.341103, 39.070805, 38.497429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099430, 39.571682, 38.399143>,  <40.008923, 38.862499, 38.522423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099430, 39.571682, 38.399143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733669, 39.528461, 38.555187>,  <39.514214, 39.502529, 38.648815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733669, 39.528461, 38.555187>,  <40.099430, 39.571682, 38.399143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733669, 39.528461, 38.555187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091991, 0.883041, 0.460192,
		-0.394208, 0.456690, -0.797518,
		-0.914406, -0.108047, 0.390113,
		39.459347, 39.496048, 38.672222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818085, 40.188126, 38.410667>,  <40.099430, 39.571682, 38.399143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818085, 40.188126, 38.410667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624374, 39.965736, 38.680889>,  <39.508148, 39.832302, 38.843021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624374, 39.965736, 38.680889>,  <39.818085, 40.188126, 38.410667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624374, 39.965736, 38.680889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143080, 0.711412, 0.688057,
		-0.863137, 0.429866, -0.264970,
		-0.484275, -0.555975, 0.675551,
		39.479092, 39.798943, 38.883553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095116, 40.314293, 38.298679>,  <39.818085, 40.188126, 38.410667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095116, 40.314293, 38.298679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737667, 40.479210, 38.369625>,  <38.523197, 40.578159, 38.412193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737667, 40.479210, 38.369625>,  <39.095116, 40.314293, 38.298679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737667, 40.479210, 38.369625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138847, -0.629738, 0.764298,
		0.426807, 0.658366, 0.619992,
		-0.893620, 0.412292, 0.177364,
		38.469582, 40.602898, 38.422836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849380, 40.675533, 39.076454>,  <39.095116, 40.314293, 38.298679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849380, 40.675533, 39.076454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559227, 40.482811, 38.879810>,  <38.385136, 40.367176, 38.761826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559227, 40.482811, 38.879810>,  <38.849380, 40.675533, 39.076454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559227, 40.482811, 38.879810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089636, -0.774229, 0.626526,
		-0.682482, 0.410407, 0.604801,
		-0.725385, -0.481805, -0.491610,
		38.341610, 40.338268, 38.732327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470036, 40.799671, 39.548912>,  <38.849380, 40.675533, 39.076454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470036, 40.799671, 39.548912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164368, 40.639984, 39.751560>,  <38.980968, 40.544170, 39.873150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164368, 40.639984, 39.751560>,  <39.470036, 40.799671, 39.548912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164368, 40.639984, 39.751560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122076, -0.681735, -0.721342,
		0.633358, -0.613074, 0.472226,
		-0.764169, -0.399220, 0.506624,
		38.935116, 40.520218, 39.903549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653194, 40.106697, 39.748302>,  <39.470036, 40.799671, 39.548912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653194, 40.106697, 39.748302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264702, 40.185760, 39.695187>,  <39.031605, 40.233200, 39.663315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264702, 40.185760, 39.695187>,  <39.653194, 40.106697, 39.748302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264702, 40.185760, 39.695187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000032, -0.557557, -0.830139,
		-0.238124, -0.806264, 0.541512,
		-0.971235, 0.197659, -0.132794,
		38.973331, 40.245060, 39.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383026, 39.433163, 39.578007>,  <39.653194, 40.106697, 39.748302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383026, 39.433163, 39.578007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178833, 39.751762, 39.448387>,  <39.056316, 39.942921, 39.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178833, 39.751762, 39.448387>,  <39.383026, 39.433163, 39.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178833, 39.751762, 39.448387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198181, -0.475678, -0.857003,
		-0.836741, -0.373263, 0.400674,
		-0.510479, 0.796496, -0.324046,
		39.025688, 39.990711, 39.351173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516479, 39.238560, 39.606049>,  <39.383026, 39.433163, 39.578007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516479, 39.238560, 39.606049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686493, 39.495918, 39.351368>,  <38.788502, 39.650333, 39.198559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686493, 39.495918, 39.351368>,  <38.516479, 39.238560, 39.606049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686493, 39.495918, 39.351368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079036, -0.674338, -0.734181,
		-0.901722, 0.362371, -0.235763,
		0.425030, 0.643393, -0.636706,
		38.814003, 39.688938, 39.160355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125713, 39.269455, 38.991661>,  <38.516479, 39.238560, 39.606049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125713, 39.269455, 38.991661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505886, 39.346012, 38.893646>,  <38.733990, 39.391949, 38.834835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505886, 39.346012, 38.893646>,  <38.125713, 39.269455, 38.991661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505886, 39.346012, 38.893646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127542, -0.478755, -0.868635,
		-0.283566, 0.856832, -0.430614,
		0.950433, 0.191394, -0.245041,
		38.791016, 39.403431, 38.820133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061413, 39.419395, 38.297768>,  <38.125713, 39.269455, 38.991661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061413, 39.419395, 38.297768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453575, 39.354317, 38.342194>,  <38.688873, 39.315269, 38.368847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453575, 39.354317, 38.342194>,  <38.061413, 39.419395, 38.297768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453575, 39.354317, 38.342194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011883, -0.513925, -0.857753,
		0.196630, 0.842266, -0.501921,
		0.980406, -0.162696, 0.111062,
		38.747696, 39.305508, 38.375511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401318, 39.539108, 37.597847>,  <38.061413, 39.419395, 38.297768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401318, 39.539108, 37.597847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637966, 39.310658, 37.825459>,  <38.779957, 39.173588, 37.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637966, 39.310658, 37.825459>,  <38.401318, 39.539108, 37.597847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637966, 39.310658, 37.825459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224162, -0.561447, -0.796573,
		0.774424, 0.598827, -0.204141,
		0.591624, -0.571124, 0.569033,
		38.815453, 39.139320, 37.996170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168880, 39.442802, 37.275753>,  <38.401318, 39.539108, 37.597847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168880, 39.442802, 37.275753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148640, 39.153290, 37.551022>,  <39.136494, 38.979580, 37.716183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148640, 39.153290, 37.551022>,  <39.168880, 39.442802, 37.275753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148640, 39.153290, 37.551022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418650, -0.640961, -0.643351,
		0.906737, 0.255546, 0.335446,
		-0.050602, -0.723785, 0.688168,
		39.133461, 38.936153, 37.757473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865589, 39.105232, 37.327950>,  <39.168880, 39.442802, 37.275753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865589, 39.105232, 37.327950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594292, 38.835957, 37.445793>,  <39.431511, 38.674389, 37.516499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594292, 38.835957, 37.445793>,  <39.865589, 39.105232, 37.327950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594292, 38.835957, 37.445793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474690, -0.707423, -0.523662,
		0.560937, -0.215325, 0.799365,
		-0.678247, -0.673192, 0.294607,
		39.390816, 38.633999, 37.534176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084499, 38.825409, 36.610527>,  <39.865589, 39.105232, 37.327950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084499, 38.825409, 36.610527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418938, 38.898216, 36.817532>,  <40.619602, 38.941898, 36.941734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418938, 38.898216, 36.817532>,  <40.084499, 38.825409, 36.610527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418938, 38.898216, 36.817532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464418, -0.267274, 0.844323,
		0.291998, -0.946274, -0.138935,
		0.836094, 0.182016, 0.517510,
		40.669765, 38.952820, 36.972786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232929, 38.394119, 37.323242>,  <40.084499, 38.825409, 36.610527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232929, 38.394119, 37.323242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841488, 38.312874, 37.310112>,  <39.606625, 38.264126, 37.302235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841488, 38.312874, 37.310112>,  <40.232929, 38.394119, 37.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841488, 38.312874, 37.310112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151180, -0.601623, -0.784343,
		0.139563, -0.772524, 0.619458,
		-0.978605, -0.203115, -0.032827,
		39.547905, 38.251938, 37.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256550, 37.604576, 37.124119>,  <40.232929, 38.394119, 37.323242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256550, 37.604576, 37.124119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880238, 37.730324, 37.073368>,  <39.654449, 37.805775, 37.042915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880238, 37.730324, 37.073368>,  <40.256550, 37.604576, 37.124119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880238, 37.730324, 37.073368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143192, -0.707728, -0.691822,
		-0.307285, -0.632686, 0.710833,
		-0.940782, 0.314372, -0.126879,
		39.598003, 37.824635, 37.035305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822628, 36.999702, 37.187920>,  <40.256550, 37.604576, 37.124119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822628, 36.999702, 37.187920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657936, 37.246124, 36.919308>,  <39.559120, 37.393978, 36.758141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657936, 37.246124, 36.919308>,  <39.822628, 36.999702, 37.187920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657936, 37.246124, 36.919308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068971, -0.755836, -0.651118,
		-0.908691, -0.221771, 0.353693,
		-0.411733, 0.616059, -0.671526,
		39.534416, 37.430943, 36.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272327, 36.637840, 36.893856>,  <39.822628, 36.999702, 37.187920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272327, 36.637840, 36.893856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385002, 36.935986, 36.652168>,  <39.452606, 37.114872, 36.507156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385002, 36.935986, 36.652168>,  <39.272327, 36.637840, 36.893856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385002, 36.935986, 36.652168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114108, -0.599226, -0.792406,
		-0.952697, 0.292156, -0.083741,
		0.281686, 0.745368, -0.604218,
		39.469509, 37.159595, 36.470901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755466, 36.693844, 36.390186>,  <39.272327, 36.637840, 36.893856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755466, 36.693844, 36.390186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111721, 36.821831, 36.260948>,  <39.325474, 36.898624, 36.183407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111721, 36.821831, 36.260948>,  <38.755466, 36.693844, 36.390186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111721, 36.821831, 36.260948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062106, -0.618282, -0.783499,
		-0.450459, 0.717877, -0.530791,
		0.890634, 0.319969, -0.323095,
		39.378910, 36.917820, 36.164021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649326, 36.790134, 35.690250>,  <38.755466, 36.693844, 36.390186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649326, 36.790134, 35.690250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046467, 36.837761, 35.686722>,  <39.284752, 36.866337, 35.684605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046467, 36.837761, 35.686722>,  <38.649326, 36.790134, 35.690250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046467, 36.837761, 35.686722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027916, -0.303312, -0.952482,
		-0.116084, 0.945423, -0.304467,
		0.992847, 0.119067, -0.008817,
		39.344322, 36.873482, 35.684078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694500, 37.138756, 35.060955>,  <38.649326, 36.790134, 35.690250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694500, 37.138756, 35.060955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045879, 36.976856, 35.162548>,  <39.256706, 36.879715, 35.223503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045879, 36.976856, 35.162548>,  <38.694500, 37.138756, 35.060955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045879, 36.976856, 35.162548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112718, -0.341002, -0.933280,
		0.464357, 0.848465, -0.253930,
		0.878446, -0.404753, 0.253984,
		39.309414, 36.855431, 35.238743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096889, 37.343494, 34.529228>,  <38.694500, 37.138756, 35.060955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096889, 37.343494, 34.529228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304054, 37.045883, 34.698082>,  <39.428352, 36.867317, 34.799393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304054, 37.045883, 34.698082>,  <39.096889, 37.343494, 34.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304054, 37.045883, 34.698082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356129, -0.261141, -0.897205,
		0.777779, 0.615006, 0.129721,
		0.517911, -0.744025, 0.422132,
		39.459427, 36.822678, 34.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681866, 37.293114, 34.136093>,  <39.096889, 37.343494, 34.529228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681866, 37.293114, 34.136093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683964, 36.931023, 34.306053>,  <39.685223, 36.713768, 34.408028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683964, 36.931023, 34.306053>,  <39.681866, 37.293114, 34.136093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683964, 36.931023, 34.306053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477376, -0.371096, -0.796492,
		0.878683, 0.207016, 0.430186,
		0.005247, -0.905225, 0.424900,
		39.685539, 36.659454, 34.433525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335663, 37.133881, 34.084148>,  <39.681866, 37.293114, 34.136093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335663, 37.133881, 34.084148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141891, 36.788338, 34.139408>,  <40.025627, 36.581013, 34.172562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141891, 36.788338, 34.139408>,  <40.335663, 37.133881, 34.084148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141891, 36.788338, 34.139408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554277, -0.425247, -0.715501,
		0.676835, -0.270037, 0.684817,
		-0.484428, -0.863855, 0.138147,
		39.996563, 36.529182, 34.180851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783733, 36.577236, 34.115925>,  <40.335663, 37.133881, 34.084148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783733, 36.577236, 34.115925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435440, 36.436653, 33.978340>,  <40.226463, 36.352303, 33.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435440, 36.436653, 33.978340>,  <40.783733, 36.577236, 34.115925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435440, 36.436653, 33.978340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486816, -0.517119, -0.703987,
		0.069553, -0.780427, 0.621366,
		-0.870731, -0.351456, -0.343957,
		40.174221, 36.331215, 33.875153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982811, 36.020306, 33.799618>,  <40.783733, 36.577236, 34.115925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982811, 36.020306, 33.799618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612099, 36.067081, 33.656845>,  <40.389671, 36.095146, 33.571182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612099, 36.067081, 33.656845>,  <40.982811, 36.020306, 33.799618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612099, 36.067081, 33.656845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293422, -0.367822, -0.882389,
		-0.234467, -0.922515, 0.306580,
		-0.926784, 0.116934, -0.356928,
		40.334064, 36.102161, 33.549767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888542, 35.329964, 33.569820>,  <40.982811, 36.020306, 33.799618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888542, 35.329964, 33.569820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620007, 35.569794, 33.395550>,  <40.458885, 35.713692, 33.290989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620007, 35.569794, 33.395550>,  <40.888542, 35.329964, 33.569820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620007, 35.569794, 33.395550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044385, -0.619308, -0.783893,
		-0.739819, -0.506921, 0.442378,
		-0.671340, 0.599574, -0.435676,
		40.418606, 35.749664, 33.264847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357891, 34.864304, 33.234505>,  <40.888542, 35.329964, 33.569820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357891, 34.864304, 33.234505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329350, 35.219101, 33.052010>,  <40.312225, 35.431980, 32.942513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329350, 35.219101, 33.052010>,  <40.357891, 34.864304, 33.234505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329350, 35.219101, 33.052010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078609, -0.460979, -0.883923,
		-0.994349, -0.027204, 0.102617,
		-0.071351, 0.886994, -0.456235,
		40.307945, 35.485199, 32.915138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268627, 35.083069, 33.941807>,  <40.357891, 34.864304, 33.234505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268627, 35.083069, 33.941807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623074, 34.898590, 33.960114>,  <40.835743, 34.787903, 33.971096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623074, 34.898590, 33.960114>,  <40.268627, 35.083069, 33.941807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623074, 34.898590, 33.960114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458230, 0.886628, 0.062573,
		-0.069437, -0.034474, 0.996991,
		0.886117, -0.461196, 0.045768,
		40.888908, 34.760231, 33.973843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575657, 35.234947, 34.649181>,  <40.268627, 35.083069, 33.941807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575657, 35.234947, 34.649181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832851, 35.158352, 34.352562>,  <40.987167, 35.112396, 34.174591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832851, 35.158352, 34.352562>,  <40.575657, 35.234947, 34.649181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832851, 35.158352, 34.352562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509076, 0.830243, 0.227021,
		0.572197, -0.523478, 0.631317,
		0.642987, -0.191488, -0.741552,
		41.025749, 35.100906, 34.130096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203350, 34.899292, 34.793285>,  <40.575657, 35.234947, 34.649181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203350, 34.899292, 34.793285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237900, 35.180439, 34.510864>,  <41.258629, 35.349129, 34.341412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237900, 35.180439, 34.510864>,  <41.203350, 34.899292, 34.793285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237900, 35.180439, 34.510864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518267, 0.573560, 0.634373,
		0.850846, -0.420715, -0.314737,
		0.086370, 0.702871, -0.706054,
		41.263809, 35.391300, 34.299049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898701, 35.141777, 34.681419>,  <41.203350, 34.899292, 34.793285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898701, 35.141777, 34.681419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660351, 35.438801, 34.559086>,  <41.517342, 35.617016, 34.485687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660351, 35.438801, 34.559086>,  <41.898701, 35.141777, 34.681419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660351, 35.438801, 34.559086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493599, 0.639053, 0.589891,
		0.633473, 0.200545, -0.747324,
		-0.595879, 0.742559, -0.305834,
		41.481586, 35.661568, 34.467335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306526, 35.714733, 34.447121>,  <41.898701, 35.141777, 34.681419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306526, 35.714733, 34.447121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950909, 35.817799, 34.598499>,  <41.737537, 35.879639, 34.689327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950909, 35.817799, 34.598499>,  <42.306526, 35.714733, 34.447121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950909, 35.817799, 34.598499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452394, 0.621406, 0.639683,
		-0.070344, 0.739909, -0.669019,
		-0.889040, 0.257662, 0.378442,
		41.684196, 35.895096, 34.712032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356461, 36.373131, 34.392803>,  <42.306526, 35.714733, 34.447121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356461, 36.373131, 34.392803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352600, 36.771446, 34.356342>,  <42.350285, 37.010437, 34.334465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352600, 36.771446, 34.356342>,  <42.356461, 36.373131, 34.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352600, 36.771446, 34.356342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693327, -0.059023, -0.718202,
		-0.720559, -0.070127, -0.689839,
		-0.009649, 0.995790, -0.091150,
		42.349705, 37.070183, 34.328999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243843, 36.558933, 33.713871>,  <42.356461, 36.373131, 34.392803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243843, 36.558933, 33.713871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473843, 36.823532, 33.906452>,  <42.611843, 36.982292, 34.022003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.473843, 36.823532, 33.906452>,  <42.243843, 36.558933, 33.713871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473843, 36.823532, 33.906452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676505, -0.053457, -0.734495,
		-0.460129, 0.748039, -0.478245,
		0.574997, 0.661498, 0.481455,
		42.646343, 37.021980, 34.050888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428635, 37.330486, 33.441029>,  <42.243843, 36.558933, 33.713871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428635, 37.330486, 33.441029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722565, 37.131844, 33.625816>,  <42.898922, 37.012657, 33.736687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722565, 37.131844, 33.625816>,  <42.428635, 37.330486, 33.441029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722565, 37.131844, 33.625816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596051, 0.147795, -0.789227,
		0.323660, 0.855300, 0.404607,
		0.734825, -0.496607, 0.461967,
		42.943012, 36.982861, 33.764408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156635, 37.690941, 33.411381>,  <42.428635, 37.330486, 33.441029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156635, 37.690941, 33.411381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215988, 37.298286, 33.459328>,  <43.251602, 37.062695, 33.488094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215988, 37.298286, 33.459328>,  <43.156635, 37.690941, 33.411381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215988, 37.298286, 33.459328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602303, -0.006427, -0.798241,
		0.784355, 0.190644, 0.590290,
		0.148386, -0.981638, 0.119867,
		43.260506, 37.003796, 33.495289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856689, 37.364368, 33.448860>,  <43.156635, 37.690941, 33.411381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856689, 37.364368, 33.448860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615288, 37.080326, 33.303795>,  <43.470448, 36.909901, 33.216755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615288, 37.080326, 33.303795>,  <43.856689, 37.364368, 33.448860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615288, 37.080326, 33.303795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577964, -0.076244, -0.812493,
		0.549308, -0.699951, 0.456431,
		-0.603505, -0.710110, -0.362665,
		43.434235, 36.867294, 33.194996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379719, 36.793343, 33.230583>,  <43.856689, 37.364368, 33.448860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379719, 36.793343, 33.230583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041229, 36.861935, 33.028790>,  <43.838135, 36.903088, 32.907715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041229, 36.861935, 33.028790>,  <44.379719, 36.793343, 33.230583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041229, 36.861935, 33.028790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511021, -0.006913, -0.859540,
		-0.150881, -0.985163, -0.081780,
		-0.846222, 0.171480, -0.504483,
		43.787361, 36.913380, 32.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502796, 36.432495, 32.626896>,  <44.379719, 36.793343, 33.230583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502796, 36.432495, 32.626896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235798, 36.728668, 32.595398>,  <44.075600, 36.906372, 32.576500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235798, 36.728668, 32.595398>,  <44.502796, 36.432495, 32.626896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235798, 36.728668, 32.595398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298469, 0.169174, -0.939306,
		-0.682175, -0.650488, -0.333921,
		-0.667498, 0.740436, -0.078744,
		44.035549, 36.950798, 32.571774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826351, 35.736492, 32.297001>,  <44.502796, 36.432495, 32.626896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826351, 35.736492, 32.297001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532948, 35.495453, 32.422752>,  <44.356903, 35.350830, 32.498203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532948, 35.495453, 32.422752>,  <44.826351, 35.736492, 32.297001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532948, 35.495453, 32.422752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282729, -0.691150, -0.665114,
		0.618079, -0.398985, 0.677340,
		-0.733513, -0.602597, 0.314381,
		44.312893, 35.314674, 32.517067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128429, 35.104153, 32.661030>,  <44.826351, 35.736492, 32.297001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128429, 35.104153, 32.661030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772575, 35.065128, 32.482578>,  <44.559063, 35.041714, 32.375507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772575, 35.065128, 32.482578>,  <45.128429, 35.104153, 32.661030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772575, 35.065128, 32.482578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421898, -0.549488, -0.721155,
		-0.174789, -0.829786, 0.530004,
		-0.889635, -0.097557, -0.446130,
		44.505684, 35.035862, 32.348740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290730, 34.469505, 32.405140>,  <45.128429, 35.104153, 32.661030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290730, 34.469505, 32.405140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291069, 34.118057, 32.214134>,  <45.291271, 33.907188, 32.099529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291069, 34.118057, 32.214134>,  <45.290730, 34.469505, 32.405140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291069, 34.118057, 32.214134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997491, 0.033060, -0.062598,
		0.070787, 0.476369, -0.876392,
		0.000846, -0.878624, -0.477514,
		45.291325, 33.854469, 32.070881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830967, 34.861862, 32.750645>,  <45.290730, 34.469505, 32.405140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830967, 34.861862, 32.750645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100224, 34.651550, 32.958660>,  <46.261776, 34.525364, 33.083469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100224, 34.651550, 32.958660>,  <45.830967, 34.861862, 32.750645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100224, 34.651550, 32.958660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431142, 0.850355, 0.301683,
		-0.600834, 0.021134, 0.799095,
		0.673139, -0.525784, 0.520034,
		46.302166, 34.493816, 33.114670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900917, 35.083023, 33.466099>,  <45.830967, 34.861862, 32.750645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900917, 35.083023, 33.466099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260212, 34.933193, 33.374123>,  <46.475788, 34.843296, 33.318935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260212, 34.933193, 33.374123>,  <45.900917, 35.083023, 33.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260212, 34.933193, 33.374123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438768, 0.794764, 0.419324,
		0.025684, -0.477543, 0.878233,
		0.898234, -0.374570, -0.229943,
		46.529682, 34.820824, 33.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262196, 34.836151, 33.971004>,  <45.900917, 35.083023, 33.466099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262196, 34.836151, 33.971004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509022, 34.990971, 33.696945>,  <46.657116, 35.083862, 33.532509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509022, 34.990971, 33.696945>,  <46.262196, 34.836151, 33.971004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509022, 34.990971, 33.696945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375792, 0.620044, 0.688713,
		0.691388, -0.682451, 0.237155,
		0.617060, 0.387048, -0.685151,
		46.694141, 35.107082, 33.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711460, 35.263912, 34.367550>,  <46.262196, 34.836151, 33.971004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711460, 35.263912, 34.367550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071781, 35.166424, 34.223797>,  <47.287971, 35.107929, 34.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071781, 35.166424, 34.223797>,  <46.711460, 35.263912, 34.367550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071781, 35.166424, 34.223797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375244, 0.020428, 0.926701,
		-0.218519, -0.969629, 0.109858,
		0.900800, -0.243725, -0.359384,
		47.342022, 35.093307, 34.115982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916058, 34.771389, 34.751671>,  <46.711460, 35.263912, 34.367550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916058, 34.771389, 34.751671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.206501, 34.994690, 34.591114>,  <47.380768, 35.128670, 34.494781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.206501, 34.994690, 34.591114>,  <46.916058, 34.771389, 34.751671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.206501, 34.994690, 34.591114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244040, 0.336527, 0.909502,
		0.642810, -0.758357, 0.108121,
		0.726113, 0.558251, -0.401393,
		47.424335, 35.162167, 34.470695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.592743, 34.668564, 35.116188>,  <46.916058, 34.771389, 34.751671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.592743, 34.668564, 35.116188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539669, 35.042130, 34.983402>,  <47.507824, 35.266270, 34.903728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539669, 35.042130, 34.983402>,  <47.592743, 34.668564, 35.116188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539669, 35.042130, 34.983402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264588, 0.356148, 0.896187,
		0.955190, 0.031078, -0.294358,
		-0.132687, 0.933913, -0.331966,
		47.499863, 35.322304, 34.883812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.112587, 29.244114, 25.379917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725288, 29.225071, 25.281752>,  <37.492908, 29.213646, 25.222853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725288, 29.225071, 25.281752>,  <38.112587, 29.244114, 25.379917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725288, 29.225071, 25.281752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245058, 0.374769, 0.894145,
		0.049405, 0.925895, -0.374537,
		-0.968249, -0.047608, -0.245413,
		37.434814, 29.210789, 25.208128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826801, 29.930786, 25.573217>,  <38.112587, 29.244114, 25.379917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826801, 29.930786, 25.573217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510559, 29.685856, 25.573544>,  <37.320812, 29.538898, 25.573740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510559, 29.685856, 25.573544>,  <37.826801, 29.930786, 25.573217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510559, 29.685856, 25.573544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276820, 0.358607, 0.891500,
		-0.546180, 0.704599, -0.453020,
		-0.790606, -0.612325, 0.000817,
		37.273376, 29.502159, 25.573788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122105, 30.326172, 25.681791>,  <37.826801, 29.930786, 25.573217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122105, 30.326172, 25.681791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060139, 29.947645, 25.795275>,  <37.022961, 29.720530, 25.863365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060139, 29.947645, 25.795275>,  <37.122105, 30.326172, 25.681791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060139, 29.947645, 25.795275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326517, 0.320080, 0.889345,
		-0.932410, 0.045136, -0.358573,
		-0.154913, -0.946314, 0.283709,
		37.013664, 29.663752, 25.880388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424023, 30.336063, 26.009260>,  <37.122105, 30.326172, 25.681791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424023, 30.336063, 26.009260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620461, 30.009785, 26.131544>,  <36.738323, 29.814016, 26.204914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620461, 30.009785, 26.131544>,  <36.424023, 30.336063, 26.009260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620461, 30.009785, 26.131544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179371, 0.248735, 0.951818,
		-0.852438, -0.522270, -0.024160,
		0.491097, -0.815699, 0.305711,
		36.767788, 29.765076, 26.223257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899521, 30.001667, 26.352953>,  <36.424023, 30.336063, 26.009260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899521, 30.001667, 26.352953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251930, 29.866219, 26.485096>,  <36.463375, 29.784948, 26.564383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251930, 29.866219, 26.485096>,  <35.899521, 30.001667, 26.352953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251930, 29.866219, 26.485096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330687, 0.058556, 0.941922,
		-0.338300, -0.939099, -0.060389,
		0.881022, -0.338623, 0.330357,
		36.516235, 29.764631, 26.584204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720661, 29.548571, 26.898518>,  <35.899521, 30.001667, 26.352953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720661, 29.548571, 26.898518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107830, 29.630705, 26.956421>,  <36.340134, 29.679985, 26.991163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107830, 29.630705, 26.956421>,  <35.720661, 29.548571, 26.898518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107830, 29.630705, 26.956421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174452, 0.134695, 0.975410,
		0.180797, -0.969376, 0.166198,
		0.967925, 0.205345, 0.144757,
		36.398209, 29.692307, 26.999849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944508, 29.229849, 27.670900>,  <35.720661, 29.548571, 26.898518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944508, 29.229849, 27.670900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221729, 29.495687, 27.559195>,  <36.388062, 29.655191, 27.492170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221729, 29.495687, 27.559195>,  <35.944508, 29.229849, 27.670900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221729, 29.495687, 27.559195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001590, 0.388799, 0.921321,
		0.720887, -0.638079, 0.270515,
		0.693051, 0.664598, -0.279266,
		36.429646, 29.695066, 27.475414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366859, 29.340494, 28.206902>,  <35.944508, 29.229849, 27.670900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366859, 29.340494, 28.206902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462296, 29.674072, 28.007858>,  <36.519558, 29.874218, 27.888433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.462296, 29.674072, 28.007858>,  <36.366859, 29.340494, 28.206902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462296, 29.674072, 28.007858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040053, 0.520419, 0.852971,
		0.970294, -0.183579, 0.157568,
		0.238589, 0.833944, -0.497606,
		36.533871, 29.924255, 27.858576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788345, 29.639481, 28.708830>,  <36.366859, 29.340494, 28.206902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788345, 29.639481, 28.708830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664566, 29.934092, 28.468241>,  <36.590298, 30.110859, 28.323887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664566, 29.934092, 28.468241>,  <36.788345, 29.639481, 28.708830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664566, 29.934092, 28.468241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038164, 0.622391, 0.781776,
		0.950152, 0.264870, -0.164486,
		-0.309444, 0.736528, -0.601474,
		36.571732, 30.155050, 28.287798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149891, 30.325476, 28.946720>,  <36.788345, 29.639481, 28.708830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149891, 30.325476, 28.946720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830818, 30.420540, 28.725008>,  <36.639374, 30.477579, 28.591980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830818, 30.420540, 28.725008>,  <37.149891, 30.325476, 28.946720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830818, 30.420540, 28.725008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277027, 0.671980, 0.686803,
		0.535691, 0.701399, -0.470185,
		-0.797678, 0.237660, -0.554280,
		36.591515, 30.491838, 28.558723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245987, 30.959906, 28.792831>,  <37.149891, 30.325476, 28.946720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245987, 30.959906, 28.792831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850002, 30.906336, 28.774748>,  <36.612411, 30.874193, 28.763899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850002, 30.906336, 28.774748>,  <37.245987, 30.959906, 28.792831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850002, 30.906336, 28.774748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135218, 0.804105, 0.578905,
		-0.041178, 0.579205, -0.814141,
		-0.989960, -0.133925, -0.045207,
		36.553013, 30.866158, 28.761187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983253, 31.569809, 28.560627>,  <37.245987, 30.959906, 28.792831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983253, 31.569809, 28.560627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710670, 31.367550, 28.772263>,  <36.547119, 31.246195, 28.899244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.710670, 31.367550, 28.772263>,  <36.983253, 31.569809, 28.560627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710670, 31.367550, 28.772263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003154, 0.720904, 0.693027,
		-0.731849, 0.473939, -0.489672,
		-0.681460, -0.505647, 0.529088,
		36.506233, 31.215857, 28.930988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813744, 32.031643, 28.973665>,  <36.983253, 31.569809, 28.560627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813744, 32.031643, 28.973665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629295, 31.720732, 29.144878>,  <36.518627, 31.534185, 29.247606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629295, 31.720732, 29.144878>,  <36.813744, 32.031643, 28.973665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629295, 31.720732, 29.144878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024826, 0.493488, 0.869398,
		-0.886991, 0.390270, -0.246853,
		-0.461119, -0.777277, 0.428031,
		36.490959, 31.487549, 29.273287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291710, 32.341339, 29.231937>,  <36.813744, 32.031643, 28.973665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291710, 32.341339, 29.231937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298061, 31.994020, 29.430256>,  <36.301872, 31.785629, 29.549246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.298061, 31.994020, 29.430256>,  <36.291710, 32.341339, 29.231937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298061, 31.994020, 29.430256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199051, 0.483186, 0.852590,
		-0.979860, -0.112230, -0.165160,
		0.015883, -0.868295, 0.495794,
		36.302826, 31.733532, 29.578995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677921, 32.301132, 29.691566>,  <36.291710, 32.341339, 29.231937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677921, 32.301132, 29.691566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955650, 32.061031, 29.850370>,  <36.122288, 31.916971, 29.945652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955650, 32.061031, 29.850370>,  <35.677921, 32.301132, 29.691566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955650, 32.061031, 29.850370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053408, 0.507163, 0.860194,
		-0.717679, -0.618456, 0.320077,
		0.694323, -0.600249, 0.397010,
		36.163948, 31.880957, 29.969473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515842, 32.146095, 30.356180>,  <35.677921, 32.301132, 29.691566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515842, 32.146095, 30.356180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881844, 31.988920, 30.392775>,  <36.101444, 31.894615, 30.414730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881844, 31.988920, 30.392775>,  <35.515842, 32.146095, 30.356180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881844, 31.988920, 30.392775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126840, 0.495430, 0.859337,
		-0.382992, -0.774692, 0.503160,
		0.915002, -0.392940, 0.091484,
		36.156345, 31.871038, 30.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653156, 31.911718, 31.136137>,  <35.515842, 32.146095, 30.356180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653156, 31.911718, 31.136137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011280, 31.975386, 30.969719>,  <36.226154, 32.013588, 30.869867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011280, 31.975386, 30.969719>,  <35.653156, 31.911718, 31.136137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011280, 31.975386, 30.969719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316195, 0.430792, 0.845245,
		0.313766, -0.888304, 0.335362,
		0.895306, 0.159170, -0.416045,
		36.279873, 32.023136, 30.844906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051956, 32.013275, 31.706036>,  <35.653156, 31.911718, 31.136137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051956, 32.013275, 31.706036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300793, 32.160450, 31.429592>,  <36.450092, 32.248753, 31.263727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300793, 32.160450, 31.429592>,  <36.051956, 32.013275, 31.706036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300793, 32.160450, 31.429592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546398, 0.428191, 0.719793,
		0.560764, -0.825394, 0.065333,
		0.622088, 0.367936, -0.691108,
		36.487419, 32.270832, 31.222260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704433, 31.748590, 31.779573>,  <36.051956, 32.013275, 31.706036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704433, 31.748590, 31.779573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788383, 32.091934, 31.592310>,  <36.838753, 32.297939, 31.479952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.788383, 32.091934, 31.592310>,  <36.704433, 31.748590, 31.779573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788383, 32.091934, 31.592310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553132, 0.290594, 0.780769,
		0.806225, -0.422815, -0.413799,
		0.209874, 0.858360, -0.468157,
		36.851345, 32.349442, 31.451862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311111, 31.811665, 31.873629>,  <36.704433, 31.748590, 31.779573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311111, 31.811665, 31.873629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234058, 32.192265, 31.777676>,  <37.187828, 32.420624, 31.720104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234058, 32.192265, 31.777676>,  <37.311111, 31.811665, 31.873629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234058, 32.192265, 31.777676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554773, 0.307245, 0.773193,
		0.809394, 0.015864, -0.587051,
		-0.192634, 0.951498, -0.239882,
		37.176270, 32.477715, 31.705711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893341, 32.130314, 31.981544>,  <37.311111, 31.811665, 31.873629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893341, 32.130314, 31.981544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640617, 32.440262, 31.989491>,  <37.488983, 32.626232, 31.994257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640617, 32.440262, 31.989491>,  <37.893341, 32.130314, 31.981544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640617, 32.440262, 31.989491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381314, 0.288399, 0.878308,
		0.674845, 0.562498, -0.477682,
		-0.631810, 0.774869, 0.019863,
		37.451073, 32.672722, 31.995449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338158, 32.772343, 32.045811>,  <37.893341, 32.130314, 31.981544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338158, 32.772343, 32.045811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971016, 32.859467, 32.178539>,  <37.750732, 32.911743, 32.258175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971016, 32.859467, 32.178539>,  <38.338158, 32.772343, 32.045811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971016, 32.859467, 32.178539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385803, 0.293054, 0.874800,
		0.093302, 0.930955, -0.353013,
		-0.917851, 0.217814, 0.331823,
		37.695660, 32.924812, 32.278088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125843, 33.315166, 32.447708>,  <38.338158, 32.772343, 32.045811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125843, 33.315166, 32.447708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485535, 33.390530, 32.605640>,  <38.701351, 33.435745, 32.700397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485535, 33.390530, 32.605640>,  <38.125843, 33.315166, 32.447708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485535, 33.390530, 32.605640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432687, -0.249855, -0.866230,
		-0.064554, 0.949777, -0.306198,
		0.899230, 0.188406, 0.394827,
		38.755302, 33.447052, 32.724087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461872, 33.746803, 32.030937>,  <38.125843, 33.315166, 32.447708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461872, 33.746803, 32.030937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761215, 33.549034, 32.207802>,  <38.940819, 33.430370, 32.313919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761215, 33.549034, 32.207802>,  <38.461872, 33.746803, 32.030937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761215, 33.549034, 32.207802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370902, -0.240727, -0.896929,
		0.549906, 0.835221, 0.003234,
		0.748355, -0.494426, 0.442163,
		38.985722, 33.400707, 32.340450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076263, 34.022091, 31.823767>,  <38.461872, 33.746803, 32.030937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076263, 34.022091, 31.823767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171425, 33.656757, 31.955967>,  <39.228519, 33.437557, 32.035286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171425, 33.656757, 31.955967>,  <39.076263, 34.022091, 31.823767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171425, 33.656757, 31.955967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444066, -0.200351, -0.873307,
		0.863834, 0.354524, 0.357916,
		0.237899, -0.913330, 0.330502,
		39.242794, 33.382759, 32.055119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782150, 33.949860, 31.669271>,  <39.076263, 34.022091, 31.823767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782150, 33.949860, 31.669271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660152, 33.572018, 31.717764>,  <39.586952, 33.345310, 31.746861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660152, 33.572018, 31.717764>,  <39.782150, 33.949860, 31.669271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660152, 33.572018, 31.717764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476227, -0.261511, -0.839535,
		0.824734, -0.198318, 0.529606,
		-0.304993, -0.944607, 0.121233,
		39.568653, 33.288635, 31.754133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441433, 33.510815, 31.704565>,  <39.782150, 33.949860, 31.669271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441433, 33.510815, 31.704565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.146355, 33.265934, 31.590712>,  <39.969307, 33.119007, 31.522400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.146355, 33.265934, 31.590712>,  <40.441433, 33.510815, 31.704565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146355, 33.265934, 31.590712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636994, -0.491441, -0.593907,
		0.223709, -0.619432, 0.752501,
		-0.737695, -0.612201, -0.284635,
		39.925045, 33.082275, 31.505322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729507, 32.837864, 31.581448>,  <40.441433, 33.510815, 31.704565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729507, 32.837864, 31.581448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.381866, 32.819366, 31.384462>,  <40.173283, 32.808270, 31.266272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.381866, 32.819366, 31.384462>,  <40.729507, 32.837864, 31.581448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381866, 32.819366, 31.384462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419037, -0.597814, -0.683393,
		-0.262801, -0.800300, 0.538939,
		-0.869105, -0.046240, -0.492462,
		40.121136, 32.805496, 31.236723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797310, 32.191040, 31.307066>,  <40.729507, 32.837864, 31.581448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797310, 32.191040, 31.307066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473278, 32.298702, 31.098709>,  <40.278858, 32.363300, 30.973696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473278, 32.298702, 31.098709>,  <40.797310, 32.191040, 31.307066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473278, 32.298702, 31.098709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183936, -0.726900, -0.661653,
		-0.556720, -0.631802, 0.539340,
		-0.810080, 0.269151, -0.520891,
		40.230255, 32.379448, 30.942442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316891, 31.677069, 31.237984>,  <40.797310, 32.191040, 31.307066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316891, 31.677069, 31.237984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.251915, 31.902107, 30.913738>,  <40.212929, 32.037132, 30.719191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.251915, 31.902107, 30.913738>,  <40.316891, 31.677069, 31.237984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251915, 31.902107, 30.913738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070471, -0.826043, -0.559185,
		-0.984198, -0.033711, 0.173832,
		-0.162443, 0.562599, -0.810614,
		40.203182, 32.070889, 30.670553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741493, 31.261442, 30.794498>,  <40.316891, 31.677069, 31.237984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741493, 31.261442, 30.794498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916794, 31.526535, 30.551609>,  <40.021976, 31.685591, 30.405876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916794, 31.526535, 30.551609>,  <39.741493, 31.261442, 30.794498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916794, 31.526535, 30.551609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086044, -0.641518, -0.762267,
		-0.894723, 0.386314, -0.224124,
		0.438254, 0.662733, -0.607221,
		40.048271, 31.725355, 30.369442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300705, 31.328753, 30.208549>,  <39.741493, 31.261442, 30.794498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300705, 31.328753, 30.208549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647324, 31.464668, 30.062319>,  <39.855293, 31.546217, 29.974581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647324, 31.464668, 30.062319>,  <39.300705, 31.328753, 30.208549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647324, 31.464668, 30.062319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042607, -0.679432, -0.732501,
		-0.497278, 0.650320, -0.574280,
		0.866544, 0.339788, -0.365575,
		39.907288, 31.566605, 29.952646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131126, 31.433498, 29.535416>,  <39.300705, 31.328753, 30.208549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131126, 31.433498, 29.535416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529472, 31.412134, 29.564796>,  <39.768482, 31.399315, 29.582424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529472, 31.412134, 29.564796>,  <39.131126, 31.433498, 29.535416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529472, 31.412134, 29.564796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031433, -0.556073, -0.830539,
		0.085205, 0.829416, -0.552096,
		0.995867, -0.053412, 0.073451,
		39.828232, 31.396111, 29.586832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408291, 31.828934, 28.949926>,  <39.131126, 31.433498, 29.535416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408291, 31.828934, 28.949926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638832, 31.539974, 29.102741>,  <39.777157, 31.366598, 29.194429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638832, 31.539974, 29.102741>,  <39.408291, 31.828934, 28.949926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638832, 31.539974, 29.102741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026180, -0.450932, -0.892174,
		0.816778, 0.524213, -0.240986,
		0.576358, -0.722400, 0.382035,
		39.811741, 31.323254, 29.217352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017422, 31.820169, 28.563189>,  <39.408291, 31.828934, 28.949926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017422, 31.820169, 28.563189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044041, 31.453669, 28.721205>,  <40.060013, 31.233768, 28.816013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044041, 31.453669, 28.721205>,  <40.017422, 31.820169, 28.563189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044041, 31.453669, 28.721205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112301, -0.386523, -0.915417,
		0.991443, 0.105281, 0.077174,
		0.066547, -0.916251, 0.395039,
		40.064003, 31.178793, 28.839716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594978, 31.553726, 28.253481>,  <40.017422, 31.820169, 28.563189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594978, 31.553726, 28.253481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373283, 31.247713, 28.384655>,  <40.240265, 31.064104, 28.463360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373283, 31.247713, 28.384655>,  <40.594978, 31.553726, 28.253481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373283, 31.247713, 28.384655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214073, -0.511746, -0.832039,
		0.804359, -0.390945, 0.447402,
		-0.554238, -0.765034, 0.327937,
		40.207012, 31.018202, 28.483036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965305, 31.002087, 28.005739>,  <40.594978, 31.553726, 28.253481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965305, 31.002087, 28.005739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610085, 30.832266, 28.076302>,  <40.396954, 30.730373, 28.118639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610085, 30.832266, 28.076302>,  <40.965305, 31.002087, 28.005739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610085, 30.832266, 28.076302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062390, -0.491444, -0.868671,
		0.455491, -0.760419, 0.462915,
		-0.888051, -0.424554, 0.176406,
		40.343670, 30.704901, 28.129223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084892, 30.300188, 27.725708>,  <40.965305, 31.002087, 28.005739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084892, 30.300188, 27.725708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.688618, 30.340261, 27.762579>,  <40.450851, 30.364305, 27.784702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.688618, 30.340261, 27.762579>,  <41.084892, 30.300188, 27.725708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688618, 30.340261, 27.762579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132267, -0.547947, -0.825990,
		-0.032242, -0.830492, 0.556096,
		-0.990690, 0.100185, 0.092180,
		40.391411, 30.370317, 27.790234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775101, 29.652912, 27.544455>,  <41.084892, 30.300188, 27.725708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775101, 29.652912, 27.544455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484097, 29.925091, 27.509315>,  <40.309494, 30.088398, 27.488232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484097, 29.925091, 27.509315>,  <40.775101, 29.652912, 27.544455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484097, 29.925091, 27.509315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346501, -0.474904, -0.808952,
		-0.592168, -0.558083, 0.581274,
		-0.727512, 0.680448, -0.087847,
		40.265842, 30.129225, 27.482962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172733, 29.259239, 27.257006>,  <40.775101, 29.652912, 27.544455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172733, 29.259239, 27.257006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046478, 29.632841, 27.190060>,  <39.970726, 29.857002, 27.149891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.046478, 29.632841, 27.190060>,  <40.172733, 29.259239, 27.257006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046478, 29.632841, 27.190060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492401, -0.311999, -0.812525,
		-0.811120, -0.174050, 0.558382,
		-0.315635, 0.934004, -0.167367,
		39.951786, 29.913042, 27.139851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.402721, 29.248001, 27.170776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577332, 29.546461, 26.969700>,  <39.682098, 29.725538, 26.849054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577332, 29.546461, 26.969700>,  <39.402721, 29.248001, 27.170776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577332, 29.546461, 26.969700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321224, -0.392653, -0.861765,
		-0.840391, 0.537663, 0.068277,
		0.436530, 0.746152, -0.502693,
		39.708290, 29.770308, 26.818892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939915, 29.422462, 26.625692>,  <39.402721, 29.248001, 27.170776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939915, 29.422462, 26.625692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264324, 29.624048, 26.506857>,  <39.458969, 29.744999, 26.435556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264324, 29.624048, 26.506857>,  <38.939915, 29.422462, 26.625692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264324, 29.624048, 26.506857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298611, -0.080069, -0.951010,
		-0.503063, 0.860005, 0.085551,
		0.811023, 0.503965, -0.297086,
		39.507629, 29.775238, 26.417730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721207, 29.999151, 26.175196>,  <38.939915, 29.422462, 26.625692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721207, 29.999151, 26.175196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103531, 29.921480, 26.086897>,  <39.332924, 29.874878, 26.033916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103531, 29.921480, 26.086897>,  <38.721207, 29.999151, 26.175196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103531, 29.921480, 26.086897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248454, -0.132059, -0.959600,
		0.157180, 0.972037, -0.174466,
		0.955806, -0.194177, -0.220749,
		39.390274, 29.863228, 26.020672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884209, 30.262125, 25.422508>,  <38.721207, 29.999151, 26.175196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884209, 30.262125, 25.422508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204647, 30.030081, 25.481466>,  <39.396908, 29.890854, 25.516842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204647, 30.030081, 25.481466>,  <38.884209, 30.262125, 25.422508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204647, 30.030081, 25.481466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017030, -0.224066, -0.974425,
		0.598300, 0.783114, -0.169618,
		0.801091, -0.580110, 0.147395,
		39.444973, 29.856049, 25.525684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366531, 30.441992, 24.844290>,  <38.884209, 30.262125, 25.422508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366531, 30.441992, 24.844290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423870, 30.076855, 24.997217>,  <39.458271, 29.857773, 25.088974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.423870, 30.076855, 24.997217>,  <39.366531, 30.441992, 24.844290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423870, 30.076855, 24.997217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185743, -0.354629, -0.916372,
		0.972086, 0.202369, 0.118721,
		0.143344, -0.912844, 0.382318,
		39.466873, 29.803001, 25.111912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821144, 30.172951, 24.348768>,  <39.366531, 30.441992, 24.844290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821144, 30.172951, 24.348768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691227, 29.836016, 24.520803>,  <39.613277, 29.633854, 24.624023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691227, 29.836016, 24.520803>,  <39.821144, 30.172951, 24.348768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691227, 29.836016, 24.520803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072554, -0.475592, -0.876669,
		0.942997, -0.253533, 0.215585,
		-0.324795, -0.842338, 0.430087,
		39.593788, 29.583315, 24.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303635, 29.647249, 24.255930>,  <39.821144, 30.172951, 24.348768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303635, 29.647249, 24.255930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960808, 29.452097, 24.322149>,  <39.755112, 29.335007, 24.361881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960808, 29.452097, 24.322149>,  <40.303635, 29.647249, 24.255930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960808, 29.452097, 24.322149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115406, -0.494965, -0.861215,
		0.502109, -0.719016, 0.480523,
		-0.857069, -0.487879, 0.165547,
		39.703686, 29.305733, 24.371813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483925, 29.027359, 24.092020>,  <40.303635, 29.647249, 24.255930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483925, 29.027359, 24.092020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084545, 29.028259, 24.069799>,  <39.844917, 29.028799, 24.056467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084545, 29.028259, 24.069799>,  <40.483925, 29.027359, 24.092020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084545, 29.028259, 24.069799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050365, -0.386536, -0.920898,
		-0.023543, -0.922272, 0.385825,
		-0.998453, 0.002248, -0.055551,
		39.785007, 29.028934, 24.053135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272289, 28.282148, 24.022034>,  <40.483925, 29.027359, 24.092020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272289, 28.282148, 24.022034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007759, 28.539246, 23.867355>,  <39.849041, 28.693504, 23.774548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007759, 28.539246, 23.867355>,  <40.272289, 28.282148, 24.022034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007759, 28.539246, 23.867355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115180, -0.422399, -0.899062,
		-0.741206, -0.639109, 0.205311,
		-0.661322, 0.642742, -0.386698,
		39.809361, 28.732069, 23.751347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835407, 27.969049, 23.588121>,  <40.272289, 28.282148, 24.022034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835407, 27.969049, 23.588121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745094, 28.324051, 23.427441>,  <39.690907, 28.537052, 23.331032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745094, 28.324051, 23.427441>,  <39.835407, 27.969049, 23.588121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745094, 28.324051, 23.427441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154832, -0.374414, -0.914243,
		-0.961795, -0.268613, -0.052879,
		-0.225779, 0.887502, -0.401700,
		39.677361, 28.590302, 23.306931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379726, 27.851398, 22.981289>,  <39.835407, 27.969049, 23.588121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379726, 27.851398, 22.981289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.564491, 28.204622, 22.948206>,  <39.675350, 28.416557, 22.928356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.564491, 28.204622, 22.948206>,  <39.379726, 27.851398, 22.981289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564491, 28.204622, 22.948206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240134, -0.214286, -0.946793,
		-0.853797, 0.417480, -0.311035,
		0.461917, 0.883059, -0.082706,
		39.703068, 28.469540, 22.923395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190292, 28.082628, 22.313990>,  <39.379726, 27.851398, 22.981289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190292, 28.082628, 22.313990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534092, 28.278833, 22.371473>,  <39.740372, 28.396557, 22.405964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.534092, 28.278833, 22.371473>,  <39.190292, 28.082628, 22.313990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534092, 28.278833, 22.371473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249378, -0.157004, -0.955594,
		-0.446169, 0.857174, -0.257268,
		0.859502, 0.490514, 0.143710,
		39.791943, 28.425987, 22.414587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349678, 28.598391, 21.826777>,  <39.190292, 28.082628, 22.313990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349678, 28.598391, 21.826777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720486, 28.581274, 21.975803>,  <39.942970, 28.571005, 22.065220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720486, 28.581274, 21.975803>,  <39.349678, 28.598391, 21.826777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720486, 28.581274, 21.975803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374674, 0.148090, -0.915253,
		-0.016009, 0.988048, 0.153315,
		0.927018, -0.042791, 0.372567,
		39.998592, 28.568436, 22.087574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594025, 29.175049, 21.563877>,  <39.349678, 28.598391, 21.826777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594025, 29.175049, 21.563877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921688, 28.957565, 21.636938>,  <40.118286, 28.827074, 21.680775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921688, 28.957565, 21.636938>,  <39.594025, 29.175049, 21.563877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921688, 28.957565, 21.636938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368559, 0.254958, -0.893958,
		0.439486, 0.799609, 0.409240,
		0.819156, -0.543711, 0.182653,
		40.167435, 28.794453, 21.691734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240871, 29.538294, 21.326603>,  <39.594025, 29.175049, 21.563877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240871, 29.538294, 21.326603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320557, 29.146463, 21.337563>,  <40.368366, 28.911366, 21.344139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320557, 29.146463, 21.337563>,  <40.240871, 29.538294, 21.326603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320557, 29.146463, 21.337563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253566, 0.024519, -0.967007,
		0.946583, 0.199585, 0.253271,
		0.199210, -0.979574, 0.027399,
		40.380318, 28.852591, 21.345781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797646, 29.481621, 20.996841>,  <40.240871, 29.538294, 21.326603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797646, 29.481621, 20.996841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643200, 29.112640, 20.996420>,  <40.550533, 28.891253, 20.996166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643200, 29.112640, 20.996420>,  <40.797646, 29.481621, 20.996841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643200, 29.112640, 20.996420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205945, -0.085087, -0.974857,
		0.899168, -0.376623, 0.222827,
		-0.386114, -0.922451, -0.001056,
		40.527367, 28.835905, 20.996103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182072, 29.159155, 20.467859>,  <40.797646, 29.481621, 20.996841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182072, 29.159155, 20.467859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921982, 28.857695, 20.506273>,  <40.765930, 28.676819, 20.529322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921982, 28.857695, 20.506273>,  <41.182072, 29.159155, 20.467859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921982, 28.857695, 20.506273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188607, -0.282573, -0.940521,
		0.735961, -0.593434, 0.325879,
		-0.650222, -0.753650, 0.096037,
		40.726913, 28.631599, 20.535084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490067, 28.516182, 20.045795>,  <41.182072, 29.159155, 20.467859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490067, 28.516182, 20.045795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095116, 28.465466, 20.083755>,  <40.858143, 28.435036, 20.106531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095116, 28.465466, 20.083755>,  <41.490067, 28.516182, 20.045795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095116, 28.465466, 20.083755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063186, -0.234078, -0.970162,
		0.145223, -0.963915, 0.223112,
		-0.987379, -0.126792, 0.094899,
		40.798901, 28.427427, 20.112225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394943, 27.978813, 19.691362>,  <41.490067, 28.516182, 20.045795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394943, 27.978813, 19.691362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019588, 28.113798, 19.721180>,  <40.794376, 28.194790, 19.739071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019588, 28.113798, 19.721180>,  <41.394943, 27.978813, 19.691362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019588, 28.113798, 19.721180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128514, -0.140505, -0.981704,
		-0.320816, -0.930794, 0.175216,
		-0.938383, 0.337464, 0.074544,
		40.738075, 28.215036, 19.743544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069386, 27.575342, 19.160231>,  <41.394943, 27.978813, 19.691362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069386, 27.575342, 19.160231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829350, 27.893616, 19.193178>,  <40.685329, 28.084579, 19.212946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829350, 27.893616, 19.193178>,  <41.069386, 27.575342, 19.160231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829350, 27.893616, 19.193178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271382, -0.105638, -0.956657,
		-0.752494, -0.596431, 0.279326,
		-0.600087, 0.795683, 0.082368,
		40.649323, 28.132320, 19.217888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457088, 27.409254, 18.722385>,  <41.069386, 27.575342, 19.160231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457088, 27.409254, 18.722385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490246, 27.805386, 18.766893>,  <40.510139, 28.043064, 18.793598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490246, 27.805386, 18.766893>,  <40.457088, 27.409254, 18.722385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490246, 27.805386, 18.766893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110784, 0.120119, -0.986559,
		-0.990381, 0.069457, 0.119670,
		0.082898, 0.990327, 0.111269,
		40.515114, 28.102484, 18.800274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872242, 27.667946, 18.384930>,  <40.457088, 27.409254, 18.722385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872242, 27.667946, 18.384930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145988, 27.959412, 18.395454>,  <40.310238, 28.134291, 18.401770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145988, 27.959412, 18.395454>,  <39.872242, 27.667946, 18.384930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145988, 27.959412, 18.395454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192300, 0.215183, -0.957454,
		-0.703325, 0.650188, 0.287386,
		0.684365, 0.728665, 0.026312,
		40.351299, 28.178011, 18.403349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550625, 28.191378, 18.186073>,  <39.872242, 27.667946, 18.384930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550625, 28.191378, 18.186073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942245, 28.248123, 18.127657>,  <40.177219, 28.282171, 18.092607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942245, 28.248123, 18.127657>,  <39.550625, 28.191378, 18.186073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942245, 28.248123, 18.127657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171537, 0.188383, -0.966999,
		-0.109671, 0.971796, 0.208772,
		0.979054, 0.141863, -0.146039,
		40.235962, 28.290682, 18.083845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468128, 27.710711, 17.555380>,  <39.550625, 28.191378, 18.186073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468128, 27.710711, 17.555380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167915, 27.847420, 17.329145>,  <38.987785, 27.929445, 17.193405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167915, 27.847420, 17.329145>,  <39.468128, 27.710711, 17.555380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167915, 27.847420, 17.329145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635022, -0.136149, 0.760402,
		0.182881, 0.929868, 0.319219,
		-0.750535, 0.341774, -0.565587,
		38.942757, 27.949951, 17.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088123, 28.422655, 17.698750>,  <39.468128, 27.710711, 17.555380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088123, 28.422655, 17.698750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840679, 28.148640, 17.544844>,  <38.692215, 27.984230, 17.452499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840679, 28.148640, 17.544844>,  <39.088123, 28.422655, 17.698750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840679, 28.148640, 17.544844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509452, -0.023094, 0.860189,
		-0.598150, 0.728139, -0.334709,
		-0.618608, -0.685040, -0.384765,
		38.655098, 27.943127, 17.429415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400223, 28.662451, 17.728970>,  <39.088123, 28.422655, 17.698750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400223, 28.662451, 17.728970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358810, 28.264688, 17.720594>,  <38.333961, 28.026031, 17.715570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358810, 28.264688, 17.720594>,  <38.400223, 28.662451, 17.728970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358810, 28.264688, 17.720594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708272, 0.058929, 0.703476,
		-0.698307, 0.087659, -0.710411,
		-0.103530, -0.994406, -0.020936,
		38.327751, 27.966366, 17.714314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754505, 28.482761, 17.967068>,  <38.400223, 28.662451, 17.728970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754505, 28.482761, 17.967068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934055, 28.134750, 18.048616>,  <38.041786, 27.925943, 18.097546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934055, 28.134750, 18.048616>,  <37.754505, 28.482761, 17.967068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934055, 28.134750, 18.048616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544600, -0.085469, 0.834329,
		-0.708467, -0.485534, -0.512183,
		0.448870, -0.870030, 0.203870,
		38.068718, 27.873741, 18.109777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257545, 28.067560, 18.138824>,  <37.754505, 28.482761, 17.967068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257545, 28.067560, 18.138824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582882, 27.913647, 18.313372>,  <37.778084, 27.821299, 18.418100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582882, 27.913647, 18.313372>,  <37.257545, 28.067560, 18.138824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582882, 27.913647, 18.313372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492997, -0.057582, 0.868123,
		-0.308912, -0.921209, -0.236531,
		0.813343, -0.384783, 0.436366,
		37.826885, 27.798212, 18.444281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896809, 27.640625, 18.636568>,  <37.257545, 28.067560, 18.138824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896809, 27.640625, 18.636568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280048, 27.675655, 18.745655>,  <37.509991, 27.696674, 18.811108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280048, 27.675655, 18.745655>,  <36.896809, 27.640625, 18.636568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280048, 27.675655, 18.745655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276023, 0.027921, 0.960745,
		0.076532, -0.995766, 0.050926,
		0.958099, 0.087585, 0.272717,
		37.567478, 27.701929, 18.827471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936443, 27.212551, 19.164705>,  <36.896809, 27.640625, 18.636568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936443, 27.212551, 19.164705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266136, 27.431374, 19.223177>,  <37.463951, 27.562668, 19.258259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266136, 27.431374, 19.223177>,  <36.936443, 27.212551, 19.164705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266136, 27.431374, 19.223177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182689, 0.012561, 0.983091,
		0.535971, -0.837001, 0.110294,
		0.824233, 0.547058, 0.146178,
		37.513405, 27.595491, 19.267031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382210, 26.899483, 19.721706>,  <36.936443, 27.212551, 19.164705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382210, 26.899483, 19.721706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472279, 27.288986, 19.708479>,  <37.526321, 27.522688, 19.700542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472279, 27.288986, 19.708479>,  <37.382210, 26.899483, 19.721706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472279, 27.288986, 19.708479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154863, 0.069277, 0.985504,
		0.961933, -0.216788, 0.166398,
		0.225173, 0.973757, -0.033067,
		37.539829, 27.581114, 19.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683258, 27.157547, 20.381784>,  <37.382210, 26.899483, 19.721706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683258, 27.157547, 20.381784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622547, 27.524364, 20.234276>,  <37.586121, 27.744455, 20.145771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622547, 27.524364, 20.234276>,  <37.683258, 27.157547, 20.381784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622547, 27.524364, 20.234276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098101, 0.357275, 0.928833,
		0.983535, 0.177149, 0.035738,
		-0.151773, 0.917046, -0.368770,
		37.577015, 27.799479, 20.123644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129742, 27.611752, 20.819038>,  <37.683258, 27.157547, 20.381784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129742, 27.611752, 20.819038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849014, 27.816603, 20.620977>,  <37.680576, 27.939512, 20.502142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849014, 27.816603, 20.620977>,  <38.129742, 27.611752, 20.819038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849014, 27.816603, 20.620977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191124, 0.534235, 0.823447,
		0.686236, 0.672547, -0.277057,
		-0.701820, 0.512127, -0.495151,
		37.638470, 27.970242, 20.472431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303684, 28.349674, 20.891628>,  <38.129742, 27.611752, 20.819038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303684, 28.349674, 20.891628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908115, 28.331003, 20.835276>,  <37.670773, 28.319799, 20.801464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908115, 28.331003, 20.835276>,  <38.303684, 28.349674, 20.891628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908115, 28.331003, 20.835276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144943, 0.507792, 0.849199,
		0.031898, 0.860214, -0.508934,
		-0.988926, -0.046679, -0.140880,
		37.611439, 28.316999, 20.793013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085751, 28.995262, 20.888151>,  <38.303684, 28.349674, 20.891628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085751, 28.995262, 20.888151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766808, 28.775799, 20.988705>,  <37.575439, 28.644121, 21.049036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766808, 28.775799, 20.988705>,  <38.085751, 28.995262, 20.888151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766808, 28.775799, 20.988705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084396, 0.513815, 0.853740,
		-0.597575, 0.659522, -0.455999,
		-0.797360, -0.548658, 0.251382,
		37.527599, 28.611202, 21.064119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644268, 29.501764, 21.213247>,  <38.085751, 28.995262, 20.888151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644268, 29.501764, 21.213247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504890, 29.147108, 21.334873>,  <37.421265, 28.934315, 21.407848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504890, 29.147108, 21.334873>,  <37.644268, 29.501764, 21.213247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504890, 29.147108, 21.334873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061203, 0.345225, 0.936522,
		-0.935330, 0.307715, -0.174556,
		-0.348443, -0.886641, 0.304066,
		37.400356, 28.881115, 21.426092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150799, 29.649975, 21.680294>,  <37.644268, 29.501764, 21.213247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150799, 29.649975, 21.680294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216053, 29.259922, 21.740297>,  <37.255207, 29.025890, 21.776300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.216053, 29.259922, 21.740297>,  <37.150799, 29.649975, 21.680294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216053, 29.259922, 21.740297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246174, 0.107006, 0.963301,
		-0.955398, -0.194078, -0.222596,
		0.163136, -0.975133, 0.150010,
		37.264996, 28.967382, 21.785301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583755, 29.328810, 22.099230>,  <37.150799, 29.649975, 21.680294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583755, 29.328810, 22.099230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905792, 29.095608, 22.142921>,  <37.099014, 28.955687, 22.169136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.905792, 29.095608, 22.142921>,  <36.583755, 29.328810, 22.099230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905792, 29.095608, 22.142921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161902, -0.038839, 0.986042,
		-0.570625, -0.811540, -0.125658,
		0.805093, -0.583005, 0.109228,
		37.147320, 28.920706, 22.175690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400112, 28.902411, 22.649183>,  <36.583755, 29.328810, 22.099230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400112, 28.902411, 22.649183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796703, 28.857431, 22.622885>,  <37.034660, 28.830444, 22.607105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796703, 28.857431, 22.622885>,  <36.400112, 28.902411, 22.649183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796703, 28.857431, 22.622885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059511, -0.057927, 0.996545,
		-0.115873, -0.991967, -0.050742,
		0.991480, -0.112453, -0.065746,
		37.094147, 28.823696, 22.603161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513031, 28.530491, 23.184872>,  <36.400112, 28.902411, 22.649183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513031, 28.530491, 23.184872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897144, 28.630718, 23.135754>,  <37.127613, 28.690855, 23.106283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897144, 28.630718, 23.135754>,  <36.513031, 28.530491, 23.184872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897144, 28.630718, 23.135754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144878, -0.071601, 0.986855,
		0.238482, -0.965448, -0.105059,
		0.960279, 0.250568, -0.122796,
		37.185226, 28.705889, 23.098915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991673, 28.026207, 23.481684>,  <36.513031, 28.530491, 23.184872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991673, 28.026207, 23.481684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180923, 28.378574, 23.486330>,  <37.294476, 28.589994, 23.489119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180923, 28.378574, 23.486330>,  <36.991673, 28.026207, 23.481684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180923, 28.378574, 23.486330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219386, -0.130580, 0.966860,
		0.853241, -0.454900, -0.255042,
		0.473128, 0.880917, 0.011617,
		37.322861, 28.642849, 23.489815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543819, 27.935125, 23.964348>,  <36.991673, 28.026207, 23.481684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543819, 27.935125, 23.964348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490299, 28.330574, 23.936844>,  <37.458187, 28.567842, 23.920341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490299, 28.330574, 23.936844>,  <37.543819, 27.935125, 23.964348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490299, 28.330574, 23.936844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098765, 0.082342, 0.991698,
		0.986074, 0.125901, -0.108659,
		-0.133803, 0.988620, -0.068760,
		37.450157, 28.627159, 23.916216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704601, 28.107456, 24.590696>,  <37.543819, 27.935125, 23.964348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704601, 28.107456, 24.590696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577499, 28.475788, 24.500267>,  <37.501240, 28.696787, 24.446009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577499, 28.475788, 24.500267>,  <37.704601, 28.107456, 24.590696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577499, 28.475788, 24.500267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141998, 0.189530, 0.971553,
		0.937481, 0.340814, 0.070532,
		-0.317751, 0.920828, -0.226075,
		37.482174, 28.752037, 24.432444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020454, 28.529734, 25.023779>,  <37.704601, 28.107456, 24.590696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020454, 28.529734, 25.023779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701183, 28.746679, 24.918894>,  <37.509621, 28.876846, 24.855963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701183, 28.746679, 24.918894>,  <38.020454, 28.529734, 25.023779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701183, 28.746679, 24.918894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144022, 0.250847, 0.957253,
		0.584958, 0.801820, -0.122107,
		-0.798174, 0.542366, -0.262215,
		37.461731, 28.909389, 24.840229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.798569, 30.630369, 29.647665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509029, 30.849646, 29.480080>,  <40.335304, 30.981213, 29.379528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509029, 30.849646, 29.480080>,  <40.798569, 30.630369, 29.647665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509029, 30.849646, 29.480080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156916, 0.722113, 0.673743,
		0.671879, 0.421946, -0.608720,
		-0.723848, 0.548192, -0.418963,
		40.291874, 31.014103, 29.354391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078617, 31.315472, 29.621874>,  <40.798569, 30.630369, 29.647665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078617, 31.315472, 29.621874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681007, 31.348547, 29.593382>,  <40.442440, 31.368393, 29.576286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681007, 31.348547, 29.593382>,  <41.078617, 31.315472, 29.621874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681007, 31.348547, 29.593382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020649, 0.783357, 0.621229,
		0.107166, 0.616048, -0.780385,
		-0.994027, 0.082689, -0.071228,
		40.382801, 31.373354, 29.572014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046616, 32.036247, 29.434450>,  <41.078617, 31.315472, 29.621874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046616, 32.036247, 29.434450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722679, 31.880964, 29.610386>,  <40.528316, 31.787794, 29.715948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722679, 31.880964, 29.610386>,  <41.046616, 32.036247, 29.434450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722679, 31.880964, 29.610386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025404, 0.725835, 0.687400,
		-0.586105, 0.567855, -0.577946,
		-0.809837, -0.388206, 0.439841,
		40.479729, 31.764502, 29.742338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715649, 32.604389, 29.657959>,  <41.046616, 32.036247, 29.434450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715649, 32.604389, 29.657959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507046, 32.329552, 29.860317>,  <40.381882, 32.164650, 29.981731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507046, 32.329552, 29.860317>,  <40.715649, 32.604389, 29.657959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507046, 32.329552, 29.860317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318687, 0.706853, 0.631504,
		-0.791495, 0.168114, -0.587599,
		-0.521511, -0.687093, 0.505895,
		40.350594, 32.123425, 30.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008343, 32.868195, 29.728270>,  <40.715649, 32.604389, 29.657959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008343, 32.868195, 29.728270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078175, 32.610596, 30.026207>,  <40.120071, 32.456036, 30.204969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078175, 32.610596, 30.026207>,  <40.008343, 32.868195, 29.728270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078175, 32.610596, 30.026207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445748, 0.622820, 0.642965,
		-0.877970, -0.444259, -0.178330,
		0.174576, -0.643995, 0.744845,
		40.130547, 32.417397, 30.249660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350391, 32.774506, 30.080175>,  <40.008343, 32.868195, 29.728270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350391, 32.774506, 30.080175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625549, 32.671452, 30.351593>,  <39.790646, 32.609619, 30.514444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625549, 32.671452, 30.351593>,  <39.350391, 32.774506, 30.080175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625549, 32.671452, 30.351593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517057, 0.482136, 0.707246,
		-0.509363, -0.837358, 0.198447,
		0.687896, -0.257637, 0.678544,
		39.831917, 32.594162, 30.555157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985565, 32.527317, 30.689487>,  <39.350391, 32.774506, 30.080175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985565, 32.527317, 30.689487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339809, 32.608116, 30.856768>,  <39.552357, 32.656597, 30.957136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339809, 32.608116, 30.856768>,  <38.985565, 32.527317, 30.689487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339809, 32.608116, 30.856768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450547, 0.155146, 0.879169,
		0.112702, -0.967021, 0.228405,
		0.885611, 0.201992, 0.418203,
		39.605492, 32.668716, 30.982227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913132, 32.294525, 31.354868>,  <38.985565, 32.527317, 30.689487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913132, 32.294525, 31.354868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246002, 32.514175, 31.385704>,  <39.445724, 32.645966, 31.404205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246002, 32.514175, 31.385704>,  <38.913132, 32.294525, 31.354868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246002, 32.514175, 31.385704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266198, 0.273657, 0.924257,
		0.486433, -0.789669, 0.373906,
		0.832179, 0.549122, 0.077092,
		39.495655, 32.678913, 31.408833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203316, 32.090221, 31.998999>,  <38.913132, 32.294525, 31.354868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203316, 32.090221, 31.998999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315311, 32.463593, 31.909267>,  <39.382507, 32.687614, 31.855429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315311, 32.463593, 31.909267>,  <39.203316, 32.090221, 31.998999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315311, 32.463593, 31.909267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398295, 0.325563, 0.857537,
		0.873480, -0.150751, 0.462933,
		0.279988, 0.933425, -0.224329,
		39.399307, 32.743622, 31.841969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719311, 32.245377, 32.486179>,  <39.203316, 32.090221, 31.998999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719311, 32.245377, 32.486179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560997, 32.593094, 32.367733>,  <39.466007, 32.801723, 32.296665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560997, 32.593094, 32.367733>,  <39.719311, 32.245377, 32.486179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560997, 32.593094, 32.367733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010264, 0.318241, 0.947955,
		0.918285, 0.378227, -0.117032,
		-0.395786, 0.869292, -0.296118,
		39.442261, 32.853882, 32.278896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882313, 32.673637, 32.970680>,  <39.719311, 32.245377, 32.486179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882313, 32.673637, 32.970680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608875, 32.910110, 32.799473>,  <39.444813, 33.051994, 32.696747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608875, 32.910110, 32.799473>,  <39.882313, 32.673637, 32.970680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608875, 32.910110, 32.799473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140874, 0.468540, 0.872138,
		0.716142, 0.656482, -0.237006,
		-0.683590, 0.591187, -0.428023,
		39.403797, 33.087467, 32.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042427, 33.382183, 33.149456>,  <39.882313, 32.673637, 32.970680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042427, 33.382183, 33.149456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656776, 33.381268, 33.043289>,  <39.425385, 33.380718, 32.979588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.656776, 33.381268, 33.043289>,  <40.042427, 33.382183, 33.149456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656776, 33.381268, 33.043289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227464, 0.522460, 0.821763,
		0.136792, 0.852660, -0.504240,
		-0.964131, -0.002286, -0.265418,
		39.367538, 33.380581, 32.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840588, 34.070160, 33.072266>,  <40.042427, 33.382183, 33.149456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840588, 34.070160, 33.072266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531681, 33.837669, 33.174858>,  <39.346336, 33.698177, 33.236416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531681, 33.837669, 33.174858>,  <39.840588, 34.070160, 33.072266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531681, 33.837669, 33.174858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298135, 0.688069, 0.661571,
		-0.560999, 0.434442, -0.704656,
		-0.772266, -0.581223, 0.256484,
		39.300003, 33.663303, 33.251804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194569, 34.425423, 33.017864>,  <39.840588, 34.070160, 33.072266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194569, 34.425423, 33.017864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217316, 34.149433, 33.306503>,  <39.230965, 33.983841, 33.479687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217316, 34.149433, 33.306503>,  <39.194569, 34.425423, 33.017864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217316, 34.149433, 33.306503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229587, 0.694359, 0.682023,
		-0.971626, -0.204453, -0.118923,
		0.056866, -0.689974, 0.721597,
		39.234375, 33.942440, 33.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827827, 34.784252, 32.760880>,  <39.194569, 34.425423, 33.017864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827827, 34.784252, 32.760880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043327, 35.094795, 32.630028>,  <40.172626, 35.281120, 32.551517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043327, 35.094795, 32.630028>,  <39.827827, 34.784252, 32.760880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043327, 35.094795, 32.630028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128797, -0.307833, -0.942683,
		-0.832564, 0.550001, -0.065851,
		0.538747, 0.776362, -0.327129,
		40.204952, 35.327705, 32.531891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472359, 34.845234, 32.257633>,  <39.827827, 34.784252, 32.760880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472359, 34.845234, 32.257633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804832, 35.048679, 32.167793>,  <40.004318, 35.170746, 32.113888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804832, 35.048679, 32.167793>,  <39.472359, 34.845234, 32.257633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804832, 35.048679, 32.167793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116964, -0.234972, -0.964939,
		-0.543552, 0.828314, -0.135817,
		0.831186, 0.508609, -0.224602,
		40.054188, 35.201263, 32.100414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350739, 35.218555, 31.582251>,  <39.472359, 34.845234, 32.257633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350739, 35.218555, 31.582251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.746880, 35.221478, 31.637590>,  <39.984566, 35.223228, 31.670794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.746880, 35.221478, 31.637590>,  <39.350739, 35.218555, 31.582251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746880, 35.221478, 31.637590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138323, -0.108266, -0.984452,
		0.007790, 0.994095, -0.108232,
		0.990357, 0.007302, 0.138349,
		40.043987, 35.223667, 31.679094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585682, 35.813919, 31.234026>,  <39.350739, 35.218555, 31.582251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585682, 35.813919, 31.234026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889740, 35.555107, 31.257793>,  <40.072174, 35.399818, 31.272055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889740, 35.555107, 31.257793>,  <39.585682, 35.813919, 31.234026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889740, 35.555107, 31.257793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088799, -0.194039, -0.976967,
		0.643659, 0.737358, -0.204953,
		0.760143, -0.647033, 0.059418,
		40.117783, 35.360996, 31.275620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986313, 35.986832, 30.693016>,  <39.585682, 35.813919, 31.234026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986313, 35.986832, 30.693016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061817, 35.604767, 30.784267>,  <40.107121, 35.375530, 30.839018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061817, 35.604767, 30.784267>,  <39.986313, 35.986832, 30.693016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061817, 35.604767, 30.784267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009377, -0.234046, -0.972180,
		0.981978, 0.181375, -0.053136,
		0.188765, -0.955157, 0.228127,
		40.118446, 35.318218, 30.852705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531021, 35.870274, 30.155720>,  <39.986313, 35.986832, 30.693016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531021, 35.870274, 30.155720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375702, 35.522297, 30.277327>,  <40.282513, 35.313511, 30.350290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375702, 35.522297, 30.277327>,  <40.531021, 35.870274, 30.155720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375702, 35.522297, 30.277327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169574, -0.256821, -0.951466,
		0.905799, -0.421003, -0.047797,
		-0.388294, -0.869942, 0.304019,
		40.259212, 35.261314, 30.368532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703224, 35.505810, 29.554117>,  <40.531021, 35.870274, 30.155720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703224, 35.505810, 29.554117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451668, 35.269436, 29.756222>,  <40.300732, 35.127613, 29.877485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451668, 35.269436, 29.756222>,  <40.703224, 35.505810, 29.554117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451668, 35.269436, 29.756222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104164, -0.579968, -0.807953,
		0.770481, -0.560748, 0.303185,
		-0.628895, -0.590931, 0.505264,
		40.263000, 35.092155, 29.907801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955544, 34.874508, 29.428072>,  <40.703224, 35.505810, 29.554117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955544, 34.874508, 29.428072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569031, 34.828381, 29.520163>,  <40.337124, 34.800705, 29.575417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.569031, 34.828381, 29.520163>,  <40.955544, 34.874508, 29.428072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569031, 34.828381, 29.520163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148228, -0.481982, -0.863552,
		0.210553, -0.868559, 0.448635,
		-0.966280, -0.115323, 0.230227,
		40.279148, 34.793785, 29.589231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726616, 34.133141, 29.399826>,  <40.955544, 34.874508, 29.428072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726616, 34.133141, 29.399826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389141, 34.338493, 29.337046>,  <40.186657, 34.461704, 29.299377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389141, 34.338493, 29.337046>,  <40.726616, 34.133141, 29.399826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389141, 34.338493, 29.337046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141855, -0.495166, -0.857139,
		-0.517761, -0.700889, 0.490590,
		-0.843683, 0.513385, -0.156953,
		40.136036, 34.492508, 29.289961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422272, 33.771126, 28.877911>,  <40.726616, 34.133141, 29.399826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422272, 33.771126, 28.877911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158363, 34.070850, 28.855129>,  <40.000019, 34.250683, 28.841459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158363, 34.070850, 28.855129>,  <40.422272, 33.771126, 28.877911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158363, 34.070850, 28.855129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359248, -0.381071, -0.851896,
		-0.660037, -0.541591, 0.520606,
		-0.659767, 0.749309, -0.056955,
		39.960434, 34.295643, 28.838043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711185, 33.448063, 28.684460>,  <40.422272, 33.771126, 28.877911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711185, 33.448063, 28.684460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711830, 33.831158, 28.569407>,  <39.712215, 34.061016, 28.500376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.711830, 33.831158, 28.569407>,  <39.711185, 33.448063, 28.684460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711830, 33.831158, 28.569407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264492, -0.276981, -0.923756,
		-0.964386, 0.077562, 0.252869,
		0.001608, 0.957740, -0.287631,
		39.712311, 34.118481, 28.483118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075893, 33.587864, 28.346554>,  <39.711185, 33.448063, 28.684460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075893, 33.587864, 28.346554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299870, 33.892544, 28.216150>,  <39.434258, 34.075352, 28.137907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299870, 33.892544, 28.216150>,  <39.075893, 33.587864, 28.346554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299870, 33.892544, 28.216150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372764, -0.119806, -0.920160,
		-0.739940, 0.636762, 0.216848,
		0.559943, 0.761696, -0.326011,
		39.467854, 34.121052, 28.118347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572186, 33.947037, 27.924206>,  <39.075893, 33.587864, 28.346554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572186, 33.947037, 27.924206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929970, 34.070473, 27.794769>,  <39.144642, 34.144535, 27.717108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929970, 34.070473, 27.794769>,  <38.572186, 33.947037, 27.924206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929970, 34.070473, 27.794769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232423, -0.297374, -0.926039,
		-0.381997, 0.903515, -0.194265,
		0.894460, 0.308592, -0.323593,
		39.198307, 34.163052, 27.697691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490025, 34.417847, 27.323109>,  <38.572186, 33.947037, 27.924206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490025, 34.417847, 27.323109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871189, 34.303185, 27.283518>,  <39.099888, 34.234386, 27.259764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871189, 34.303185, 27.283518>,  <38.490025, 34.417847, 27.323109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871189, 34.303185, 27.283518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113258, -0.033639, -0.992996,
		0.281314, 0.957444, -0.064521,
		0.952909, -0.286651, -0.098975,
		39.157063, 34.217190, 27.253826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219742, 35.128517, 27.213839>,  <38.490025, 34.417847, 27.323109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219742, 35.128517, 27.213839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.838242, 35.178856, 27.104649>,  <37.609341, 35.209061, 27.039135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.838242, 35.178856, 27.104649>,  <38.219742, 35.128517, 27.213839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838242, 35.178856, 27.104649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222740, 0.313921, 0.922952,
		0.201843, 0.941072, -0.271373,
		-0.953754, 0.125846, -0.272977,
		37.552116, 35.216610, 27.022755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975685, 35.677536, 27.677515>,  <38.219742, 35.128517, 27.213839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975685, 35.677536, 27.677515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619770, 35.559044, 27.538652>,  <37.406219, 35.487949, 27.455336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619770, 35.559044, 27.538652>,  <37.975685, 35.677536, 27.677515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619770, 35.559044, 27.538652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443870, 0.384951, 0.809192,
		-0.106072, 0.874104, -0.474015,
		-0.889791, -0.296234, -0.347156,
		37.352833, 35.470173, 27.434505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498501, 36.247677, 27.640095>,  <37.975685, 35.677536, 27.677515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498501, 36.247677, 27.640095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293125, 35.906219, 27.675123>,  <37.169899, 35.701344, 27.696140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293125, 35.906219, 27.675123>,  <37.498501, 36.247677, 27.640095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293125, 35.906219, 27.675123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369642, 0.312110, 0.875187,
		-0.774432, 0.416985, -0.475793,
		-0.513439, -0.853646, 0.087573,
		37.139091, 35.650127, 27.701395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824299, 36.434124, 27.846462>,  <37.498501, 36.247677, 27.640095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824299, 36.434124, 27.846462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832111, 36.049164, 27.954834>,  <36.836800, 35.818188, 28.019857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.832111, 36.049164, 27.954834>,  <36.824299, 36.434124, 27.846462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832111, 36.049164, 27.954834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430403, 0.236495, 0.871104,
		-0.902425, -0.133622, -0.409602,
		0.019530, -0.962401, 0.270931,
		36.837971, 35.760445, 28.036114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172718, 36.178772, 28.089067>,  <36.824299, 36.434124, 27.846462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172718, 36.178772, 28.089067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424809, 35.922180, 28.264030>,  <36.576061, 35.768227, 28.369009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424809, 35.922180, 28.264030>,  <36.172718, 36.178772, 28.089067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424809, 35.922180, 28.264030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570558, -0.000550, 0.821257,
		-0.526577, -0.767141, -0.366347,
		0.630222, -0.641478, 0.437410,
		36.613876, 35.729736, 28.395254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741959, 35.673271, 28.523659>,  <36.172718, 36.178772, 28.089067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741959, 35.673271, 28.523659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.091175, 35.581913, 28.695999>,  <36.300705, 35.527100, 28.799404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.091175, 35.581913, 28.695999>,  <35.741959, 35.673271, 28.523659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091175, 35.581913, 28.695999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419085, 0.100335, 0.902386,
		-0.249332, -0.968384, -0.008121,
		0.873041, -0.228397, 0.430852,
		36.353088, 35.513393, 28.825254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661819, 34.951145, 29.056681>,  <35.741959, 35.673271, 28.523659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661819, 34.951145, 29.056681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984226, 35.168282, 29.151043>,  <36.177670, 35.298565, 29.207661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984226, 35.168282, 29.151043>,  <35.661819, 34.951145, 29.056681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984226, 35.168282, 29.151043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224844, -0.087875, 0.970424,
		0.547520, -0.835223, 0.051227,
		0.806019, 0.542845, 0.235908,
		36.226032, 35.331135, 29.221815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759949, 34.623837, 29.752241>,  <35.661819, 34.951145, 29.056681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759949, 34.623837, 29.752241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976299, 34.958668, 29.719341>,  <36.106110, 35.159565, 29.699600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976299, 34.958668, 29.719341>,  <35.759949, 34.623837, 29.752241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976299, 34.958668, 29.719341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097668, 0.159632, 0.982333,
		0.835415, -0.523283, 0.168095,
		0.540872, 0.837074, -0.082251,
		36.138561, 35.209789, 29.694666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244778, 34.558880, 30.184498>,  <35.759949, 34.623837, 29.752241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244778, 34.558880, 30.184498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184341, 34.952610, 30.148098>,  <36.148079, 35.188847, 30.126259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184341, 34.952610, 30.148098>,  <36.244778, 34.558880, 30.184498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184341, 34.952610, 30.148098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112506, 0.074334, 0.990867,
		0.982096, 0.159952, 0.099511,
		-0.151094, 0.984322, -0.090999,
		36.139011, 35.247906, 30.120798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743465, 34.918339, 30.685562>,  <36.244778, 34.558880, 30.184498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743465, 34.918339, 30.685562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.473286, 35.201969, 30.604588>,  <36.311176, 35.372147, 30.556002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.473286, 35.201969, 30.604588>,  <36.743465, 34.918339, 30.685562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473286, 35.201969, 30.604588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122689, 0.162639, 0.979028,
		0.727126, 0.686124, -0.022859,
		-0.675452, 0.709072, -0.202439,
		36.270649, 35.414692, 30.543856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942585, 35.393730, 31.114470>,  <36.743465, 34.918339, 30.685562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942585, 35.393730, 31.114470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564472, 35.465813, 31.005676>,  <36.337605, 35.509064, 30.940401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564472, 35.465813, 31.005676>,  <36.942585, 35.393730, 31.114470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564472, 35.465813, 31.005676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257823, 0.098274, 0.961181,
		0.199941, 0.978707, -0.046435,
		-0.945278, 0.180208, -0.271983,
		36.280888, 35.519875, 30.924082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745098, 35.786255, 31.687977>,  <36.942585, 35.393730, 31.114470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745098, 35.786255, 31.687977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383118, 35.743790, 31.523153>,  <36.165928, 35.718311, 31.424259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383118, 35.743790, 31.523153>,  <36.745098, 35.786255, 31.687977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383118, 35.743790, 31.523153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423928, 0.308507, 0.851533,
		0.036722, 0.945279, -0.324189,
		-0.904951, -0.106163, -0.412060,
		36.111633, 35.711941, 31.399536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.240540, 35.154652, 23.657120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861847, 35.035278, 23.608736>,  <37.634632, 34.963654, 23.579706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861847, 35.035278, 23.608736>,  <38.240540, 35.154652, 23.657120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861847, 35.035278, 23.608736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214976, 0.306079, 0.927416,
		-0.239752, 0.904020, -0.353932,
		-0.946734, -0.298437, -0.120959,
		37.577827, 34.945747, 23.572449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762966, 35.754581, 23.842319>,  <38.240540, 35.154652, 23.657120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762966, 35.754581, 23.842319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551632, 35.416973, 23.879169>,  <37.424831, 35.214409, 23.901279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551632, 35.416973, 23.879169>,  <37.762966, 35.754581, 23.842319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551632, 35.416973, 23.879169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242006, 0.253707, 0.936518,
		-0.813816, 0.472500, -0.338301,
		-0.528334, -0.844024, 0.092123,
		37.393131, 35.163765, 23.906807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090347, 35.959476, 24.086023>,  <37.762966, 35.754581, 23.842319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090347, 35.959476, 24.086023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143139, 35.571075, 24.165754>,  <37.174816, 35.338036, 24.213593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143139, 35.571075, 24.165754>,  <37.090347, 35.959476, 24.086023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143139, 35.571075, 24.165754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161206, 0.177385, 0.970849,
		-0.978056, -0.160266, -0.133120,
		0.131981, -0.971004, 0.199328,
		37.182732, 35.279774, 24.225554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708363, 35.781967, 24.704020>,  <37.090347, 35.959476, 24.086023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708363, 35.781967, 24.704020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946556, 35.460949, 24.689430>,  <37.089470, 35.268337, 24.680677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946556, 35.460949, 24.689430>,  <36.708363, 35.781967, 24.704020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946556, 35.460949, 24.689430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101676, -0.120323, 0.987514,
		-0.796910, -0.584336, -0.153249,
		0.595480, -0.802542, -0.036474,
		37.125198, 35.220188, 24.678488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416218, 35.219479, 25.111198>,  <36.708363, 35.781967, 24.704020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416218, 35.219479, 25.111198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808331, 35.146469, 25.080906>,  <37.043598, 35.102665, 25.062731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808331, 35.146469, 25.080906>,  <36.416218, 35.219479, 25.111198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808331, 35.146469, 25.080906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052454, -0.129152, 0.990236,
		-0.190526, -0.974681, -0.117031,
		0.980280, -0.182527, -0.075733,
		37.102413, 35.091713, 25.058186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515610, 34.602272, 25.450506>,  <36.416218, 35.219479, 25.111198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515610, 34.602272, 25.450506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884838, 34.756126, 25.451006>,  <37.106373, 34.848438, 25.451305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884838, 34.756126, 25.451006>,  <36.515610, 34.602272, 25.450506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884838, 34.756126, 25.451006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049519, -0.122057, 0.991287,
		0.381434, -0.914964, -0.131713,
		0.923069, 0.384633, 0.001249,
		37.161758, 34.871517, 25.451380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879509, 34.203457, 25.979767>,  <36.515610, 34.602272, 25.450506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879509, 34.203457, 25.979767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126938, 34.512768, 25.924044>,  <37.275394, 34.698357, 25.890610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126938, 34.512768, 25.924044>,  <36.879509, 34.203457, 25.979767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126938, 34.512768, 25.924044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191314, 0.023737, 0.981242,
		0.762083, -0.633618, -0.133257,
		0.618570, 0.773282, -0.139309,
		37.312508, 34.744751, 25.882252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444328, 34.121395, 26.434536>,  <36.879509, 34.203457, 25.979767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444328, 34.121395, 26.434536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467522, 34.508942, 26.338257>,  <37.481438, 34.741470, 26.280489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467522, 34.508942, 26.338257>,  <37.444328, 34.121395, 26.434536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467522, 34.508942, 26.338257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184110, 0.226590, 0.956431,
		0.981194, -0.099771, -0.165240,
		0.057982, 0.968867, -0.240698,
		37.484917, 34.799603, 26.266047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080933, 34.413105, 26.724806>,  <37.444328, 34.121395, 26.434536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080933, 34.413105, 26.724806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809265, 34.700394, 26.664299>,  <37.646263, 34.872768, 26.627995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809265, 34.700394, 26.664299>,  <38.080933, 34.413105, 26.724806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809265, 34.700394, 26.664299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072191, 0.270458, 0.960021,
		0.730420, 0.641100, -0.235537,
		-0.679173, 0.718222, -0.151266,
		37.605515, 34.915859, 26.618919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762783, 34.766651, 26.733252>,  <38.080933, 34.413105, 26.724806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762783, 34.766651, 26.733252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980286, 34.441757, 26.817726>,  <39.110786, 34.246819, 26.868410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980286, 34.441757, 26.817726>,  <38.762783, 34.766651, 26.733252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980286, 34.441757, 26.817726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041546, -0.277381, -0.959861,
		0.838216, 0.513154, -0.184572,
		0.543754, -0.812239, 0.211186,
		39.143414, 34.198086, 26.881083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244629, 34.770096, 26.165016>,  <38.762783, 34.766651, 26.733252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244629, 34.770096, 26.165016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304852, 34.404381, 26.315434>,  <39.340984, 34.184952, 26.405684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304852, 34.404381, 26.315434>,  <39.244629, 34.770096, 26.165016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304852, 34.404381, 26.315434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351019, -0.306155, -0.884904,
		0.924185, 0.265227, 0.274839,
		0.150557, -0.914289, 0.376044,
		39.350018, 34.130093, 26.428247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971416, 34.563972, 25.994051>,  <39.244629, 34.770096, 26.165016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971416, 34.563972, 25.994051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763611, 34.225033, 26.038063>,  <39.638927, 34.021671, 26.064470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763611, 34.225033, 26.038063>,  <39.971416, 34.563972, 25.994051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763611, 34.225033, 26.038063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343754, -0.325154, -0.880970,
		0.782262, -0.419857, 0.460202,
		-0.519518, -0.847346, 0.110029,
		39.607754, 33.970829, 26.071072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447842, 34.045906, 25.866121>,  <39.971416, 34.563972, 25.994051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447842, 34.045906, 25.866121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075478, 33.913567, 25.804237>,  <39.852058, 33.834164, 25.767107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075478, 33.913567, 25.804237>,  <40.447842, 34.045906, 25.866121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075478, 33.913567, 25.804237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242453, -0.242988, -0.939241,
		0.273158, -0.911862, 0.306418,
		-0.930914, -0.330853, -0.154710,
		39.796204, 33.814312, 25.757824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519154, 33.390930, 25.521090>,  <40.447842, 34.045906, 25.866121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519154, 33.390930, 25.521090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146049, 33.502789, 25.430096>,  <39.922188, 33.569904, 25.375500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146049, 33.502789, 25.430096>,  <40.519154, 33.390930, 25.521090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146049, 33.502789, 25.430096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133273, -0.318822, -0.938398,
		-0.334961, -0.905617, 0.260113,
		-0.932759, 0.279661, -0.227487,
		39.866222, 33.586685, 25.361851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253189, 32.874706, 25.139881>,  <40.519154, 33.390930, 25.521090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253189, 32.874706, 25.139881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018288, 33.179466, 25.030600>,  <39.877346, 33.362324, 24.965031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018288, 33.179466, 25.030600>,  <40.253189, 32.874706, 25.139881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018288, 33.179466, 25.030600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043330, -0.366646, -0.929351,
		-0.808244, -0.533924, 0.248326,
		-0.587251, 0.761903, -0.273204,
		39.842113, 33.408035, 24.948639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798687, 32.584064, 24.688622>,  <40.253189, 32.874706, 25.139881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798687, 32.584064, 24.688622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758591, 32.974236, 24.610144>,  <39.734535, 33.208340, 24.563057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758591, 32.974236, 24.610144>,  <39.798687, 32.584064, 24.688622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758591, 32.974236, 24.610144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114477, -0.207183, -0.971581,
		-0.988356, -0.074928, 0.132431,
		-0.100236, 0.975428, -0.196193,
		39.728519, 33.266865, 24.551287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227753, 32.562698, 24.200363>,  <39.798687, 32.584064, 24.688622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227753, 32.562698, 24.200363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475010, 32.873142, 24.150475>,  <39.623363, 33.059406, 24.120541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475010, 32.873142, 24.150475>,  <39.227753, 32.562698, 24.200363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475010, 32.873142, 24.150475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030127, -0.181941, -0.982848,
		-0.785485, 0.603786, -0.135848,
		0.618146, 0.776105, -0.124722,
		39.660454, 33.105972, 24.113058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026901, 32.803459, 23.653711>,  <39.227753, 32.562698, 24.200363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026901, 32.803459, 23.653711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392345, 32.965439, 23.668293>,  <39.611614, 33.062626, 23.677042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392345, 32.965439, 23.668293>,  <39.026901, 32.803459, 23.653711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392345, 32.965439, 23.668293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094488, -0.124258, -0.987741,
		-0.395452, 0.905858, -0.151786,
		0.913613, 0.404946, 0.036454,
		39.666428, 33.086922, 23.679230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105740, 33.301502, 23.057640>,  <39.026901, 32.803459, 23.653711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105740, 33.301502, 23.057640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471989, 33.191032, 23.174513>,  <39.691738, 33.124752, 23.244637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471989, 33.191032, 23.174513>,  <39.105740, 33.301502, 23.057640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471989, 33.191032, 23.174513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272109, -0.109317, -0.956037,
		0.295970, 0.954871, -0.024944,
		0.915619, -0.276171, 0.292184,
		39.746674, 33.108181, 23.262169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475586, 33.745342, 22.700460>,  <39.105740, 33.301502, 23.057640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475586, 33.745342, 22.700460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715843, 33.441509, 22.800262>,  <39.859997, 33.259209, 22.860144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715843, 33.441509, 22.800262>,  <39.475586, 33.745342, 22.700460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715843, 33.441509, 22.800262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384230, 0.000573, -0.923237,
		0.701135, 0.650407, 0.292199,
		0.600647, -0.759586, 0.249504,
		39.896038, 33.213634, 22.875114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187157, 33.789597, 22.448082>,  <39.475586, 33.745342, 22.700460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187157, 33.789597, 22.448082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180805, 33.397144, 22.525156>,  <40.176994, 33.161671, 22.571400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180805, 33.397144, 22.525156>,  <40.187157, 33.789597, 22.448082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180805, 33.397144, 22.525156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289761, -0.188955, -0.938261,
		0.956967, 0.040935, 0.287294,
		-0.015878, -0.981132, 0.192685,
		40.176041, 33.102806, 22.582962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732502, 33.562931, 22.069998>,  <40.187157, 33.789597, 22.448082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732502, 33.562931, 22.069998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509796, 33.237679, 22.137913>,  <40.376171, 33.042526, 22.178661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509796, 33.237679, 22.137913>,  <40.732502, 33.562931, 22.069998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509796, 33.237679, 22.137913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086086, -0.259781, -0.961823,
		0.826196, -0.520895, 0.214637,
		-0.556767, -0.813131, 0.169788,
		40.342766, 32.993740, 22.188848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054905, 33.053032, 21.718548>,  <40.732502, 33.562931, 22.069998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054905, 33.053032, 21.718548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703442, 32.869167, 21.770193>,  <40.492561, 32.758850, 21.801180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703442, 32.869167, 21.770193>,  <41.054905, 33.053032, 21.718548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703442, 32.869167, 21.770193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132197, -0.494073, -0.859311,
		0.458779, -0.737975, 0.494888,
		-0.878661, -0.459657, 0.129112,
		40.439842, 32.731270, 21.808928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.920979, 29.435122, 23.009470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249889, 29.657581, 22.961216>,  <34.447235, 29.791058, 22.932264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.249889, 29.657581, 22.961216>,  <33.920979, 29.435122, 23.009470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249889, 29.657581, 22.961216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024093, 0.245810, 0.969018,
		0.568572, -0.793898, 0.215524,
		0.822281, 0.556150, -0.120634,
		34.496574, 29.824427, 22.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452995, 29.173687, 23.415506>,  <33.920979, 29.435122, 23.009470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452995, 29.173687, 23.415506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562305, 29.553972, 23.356903>,  <34.627892, 29.782143, 23.321741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562305, 29.553972, 23.356903>,  <34.452995, 29.173687, 23.415506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562305, 29.553972, 23.356903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135478, 0.112750, 0.984344,
		0.952347, -0.288848, -0.097988,
		0.273278, 0.950712, -0.146510,
		34.644287, 29.839186, 23.312950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133926, 29.311720, 23.844126>,  <34.452995, 29.173687, 23.415506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133926, 29.311720, 23.844126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939030, 29.648190, 23.750299>,  <34.822094, 29.850071, 23.694004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939030, 29.648190, 23.750299>,  <35.133926, 29.311720, 23.844126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939030, 29.648190, 23.750299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050664, 0.295384, 0.954034,
		0.871798, 0.452959, -0.186540,
		-0.487239, 0.841176, -0.234566,
		34.792858, 29.900543, 23.679930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517529, 29.874170, 24.205790>,  <35.133926, 29.311720, 23.844126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517529, 29.874170, 24.205790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153957, 30.015556, 24.117327>,  <34.935814, 30.100388, 24.064249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153957, 30.015556, 24.117327>,  <35.517529, 29.874170, 24.205790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153957, 30.015556, 24.117327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134817, 0.252780, 0.958085,
		0.394553, 0.900647, -0.182106,
		-0.908929, 0.353464, -0.221157,
		34.881279, 30.121595, 24.050980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489902, 30.495884, 24.579769>,  <35.517529, 29.874170, 24.205790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489902, 30.495884, 24.579769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113640, 30.402704, 24.481064>,  <34.887882, 30.346796, 24.421841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113640, 30.402704, 24.481064>,  <35.489902, 30.495884, 24.579769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113640, 30.402704, 24.481064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326505, 0.423136, 0.845192,
		-0.092473, 0.875608, -0.474087,
		-0.940661, -0.232950, -0.246762,
		34.831440, 30.332819, 24.407036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095695, 31.141819, 24.683411>,  <35.489902, 30.495884, 24.579769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095695, 31.141819, 24.683411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844547, 30.830608, 24.691925>,  <34.693859, 30.643881, 24.697033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844547, 30.830608, 24.691925>,  <35.095695, 31.141819, 24.683411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844547, 30.830608, 24.691925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449877, 0.385096, 0.805799,
		-0.635131, 0.496361, -0.591807,
		-0.627869, -0.778028, 0.021285,
		34.656185, 30.597200, 24.698311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523090, 31.459791, 24.735163>,  <35.095695, 31.141819, 24.683411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523090, 31.459791, 24.735163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.443413, 31.088980, 24.862249>,  <34.395607, 30.866493, 24.938501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.443413, 31.088980, 24.862249>,  <34.523090, 31.459791, 24.735163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443413, 31.088980, 24.862249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514323, 0.374866, 0.771328,
		-0.834143, -0.009766, -0.551462,
		-0.199191, -0.927028, 0.317714,
		34.383656, 30.810871, 24.957563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865788, 31.501295, 24.976099>,  <34.523090, 31.459791, 24.735163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865788, 31.501295, 24.976099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013283, 31.177088, 25.158129>,  <34.101780, 30.982563, 25.267345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013283, 31.177088, 25.158129>,  <33.865788, 31.501295, 24.976099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013283, 31.177088, 25.158129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445029, 0.275879, 0.851962,
		-0.816076, -0.516674, -0.258976,
		0.368741, -0.810518, 0.455073,
		34.123905, 30.933933, 25.294651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325047, 31.180506, 25.312853>,  <33.865788, 31.501295, 24.976099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325047, 31.180506, 25.312853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.635109, 31.014711, 25.503571>,  <33.821148, 30.915236, 25.618000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.635109, 31.014711, 25.503571>,  <33.325047, 31.180506, 25.312853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635109, 31.014711, 25.503571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310911, 0.406704, 0.859027,
		-0.549966, -0.814122, 0.186393,
		0.775160, -0.414484, 0.476793,
		33.867657, 30.890366, 25.646608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071606, 31.042315, 26.042555>,  <33.325047, 31.180506, 25.312853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071606, 31.042315, 26.042555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466595, 30.997845, 26.087357>,  <33.703587, 30.971163, 26.114237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466595, 30.997845, 26.087357>,  <33.071606, 31.042315, 26.042555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466595, 30.997845, 26.087357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072898, 0.308129, 0.948547,
		-0.139967, -0.944826, 0.296164,
		0.987469, -0.111176, 0.112004,
		33.762836, 30.964493, 26.120958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171638, 30.647993, 26.606695>,  <33.071606, 31.042315, 26.042555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171638, 30.647993, 26.606695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.495964, 30.874876, 26.548916>,  <33.690559, 31.011005, 26.514248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.495964, 30.874876, 26.548916>,  <33.171638, 30.647993, 26.606695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495964, 30.874876, 26.548916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010659, 0.261057, 0.965264,
		0.585213, -0.781106, 0.217713,
		0.810809, 0.567205, -0.144449,
		33.739208, 31.045038, 26.505581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592957, 30.526058, 27.202604>,  <33.171638, 30.647993, 26.606695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592957, 30.526058, 27.202604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778931, 30.857033, 27.076628>,  <33.890514, 31.055616, 27.001041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.778931, 30.857033, 27.076628>,  <33.592957, 30.526058, 27.202604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778931, 30.857033, 27.076628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138839, 0.283182, 0.948963,
		0.874391, -0.484932, 0.016781,
		0.464934, 0.827435, -0.314940,
		33.918411, 31.105263, 26.982145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237637, 30.466976, 27.449833>,  <33.592957, 30.526058, 27.202604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237637, 30.466976, 27.449833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181961, 30.858027, 27.386747>,  <34.148556, 31.092657, 27.348896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181961, 30.858027, 27.386747>,  <34.237637, 30.466976, 27.449833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181961, 30.858027, 27.386747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314603, 0.194670, 0.929047,
		0.938963, 0.079694, -0.334659,
		-0.139187, 0.977626, -0.157716,
		34.140205, 31.151314, 27.339432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769577, 30.745735, 27.894690>,  <34.237637, 30.466976, 27.449833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769577, 30.745735, 27.894690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.549934, 31.066874, 27.801811>,  <34.418148, 31.259558, 27.746084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.549934, 31.066874, 27.801811>,  <34.769577, 30.745735, 27.894690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549934, 31.066874, 27.801811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062366, 0.316420, 0.946567,
		0.833421, 0.505286, -0.223819,
		-0.549108, 0.802847, -0.232198,
		34.385201, 31.307728, 27.732151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560535, 30.804142, 27.860792>,  <34.769577, 30.745735, 27.894690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560535, 30.804142, 27.860792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883244, 30.715067, 28.079708>,  <36.076870, 30.661623, 28.211058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883244, 30.715067, 28.079708>,  <35.560535, 30.804142, 27.860792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883244, 30.715067, 28.079708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408602, -0.458809, -0.789011,
		0.426804, 0.860177, -0.279165,
		0.806773, -0.222686, 0.547292,
		36.125275, 30.648262, 28.243896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156658, 31.088861, 27.492685>,  <35.560535, 30.804142, 27.860792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156658, 31.088861, 27.492685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298008, 30.800402, 27.731035>,  <36.382816, 30.627325, 27.874046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.298008, 30.800402, 27.731035>,  <36.156658, 31.088861, 27.492685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298008, 30.800402, 27.731035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490415, -0.399621, -0.774465,
		0.796631, 0.565901, 0.212449,
		0.353371, -0.721151, 0.595877,
		36.404018, 30.584057, 27.909798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851963, 31.026262, 27.351248>,  <36.156658, 31.088861, 27.492685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851963, 31.026262, 27.351248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765366, 30.670681, 27.512688>,  <36.713409, 30.457333, 27.609550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765366, 30.670681, 27.512688>,  <36.851963, 31.026262, 27.351248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765366, 30.670681, 27.512688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536538, -0.453709, -0.711530,
		0.815634, 0.062507, 0.575181,
		-0.216489, -0.888955, 0.403598,
		36.700420, 30.403994, 27.633768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411015, 30.509027, 27.202213>,  <36.851963, 31.026262, 27.351248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411015, 30.509027, 27.202213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107311, 30.260252, 27.278862>,  <36.925091, 30.110987, 27.324852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107311, 30.260252, 27.278862>,  <37.411015, 30.509027, 27.202213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107311, 30.260252, 27.278862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306835, -0.601773, -0.737374,
		0.573914, -0.501061, 0.647734,
		-0.759259, -0.621938, 0.191623,
		36.879532, 30.073671, 27.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671284, 29.865332, 27.138102>,  <37.411015, 30.509027, 27.202213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671284, 29.865332, 27.138102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277374, 29.799580, 27.115458>,  <37.041031, 29.760128, 27.101871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277374, 29.799580, 27.115458>,  <37.671284, 29.865332, 27.138102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277374, 29.799580, 27.115458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139032, -0.549111, -0.824104,
		0.104384, -0.819424, 0.563603,
		-0.984771, -0.164382, -0.056608,
		36.981941, 29.750265, 27.098475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528919, 29.182434, 27.102144>,  <37.671284, 29.865332, 27.138102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528919, 29.182434, 27.102144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217861, 29.370766, 26.935490>,  <37.031227, 29.483765, 26.835497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217861, 29.370766, 26.935490>,  <37.528919, 29.182434, 27.102144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217861, 29.370766, 26.935490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184505, -0.462606, -0.867153,
		-0.601018, -0.751210, 0.272874,
		-0.777647, 0.470828, -0.416637,
		36.984566, 29.512014, 26.810499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250076, 28.621458, 26.664640>,  <37.528919, 29.182434, 27.102144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250076, 28.621458, 26.664640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113853, 28.976574, 26.540802>,  <37.032120, 29.189644, 26.466499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113853, 28.976574, 26.540802>,  <37.250076, 28.621458, 26.664640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113853, 28.976574, 26.540802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013504, -0.333864, -0.942525,
		-0.940128, -0.316799, 0.125687,
		-0.340553, 0.887792, -0.309597,
		37.011688, 29.242912, 26.447924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776432, 28.435009, 26.200527>,  <37.250076, 28.621458, 26.664640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776432, 28.435009, 26.200527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853355, 28.816860, 26.109575>,  <36.899509, 29.045971, 26.055004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853355, 28.816860, 26.109575>,  <36.776432, 28.435009, 26.200527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853355, 28.816860, 26.109575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098065, -0.249241, -0.963464,
		-0.976422, 0.162988, -0.141547,
		0.192312, 0.954628, -0.227381,
		36.911049, 29.103249, 26.041361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411037, 28.506699, 25.582247>,  <36.776432, 28.435009, 26.200527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411037, 28.506699, 25.582247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668858, 28.811827, 25.602900>,  <36.823547, 28.994904, 25.615292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668858, 28.811827, 25.602900>,  <36.411037, 28.506699, 25.582247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668858, 28.811827, 25.602900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142011, -0.053087, -0.988440,
		-0.751260, 0.644430, -0.142546,
		0.644548, 0.762819, 0.051634,
		36.862221, 29.040672, 25.618389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193985, 28.984528, 25.072788>,  <36.411037, 28.506699, 25.582247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193985, 28.984528, 25.072788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583916, 29.056009, 25.126127>,  <36.817875, 29.098898, 25.158131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.583916, 29.056009, 25.126127>,  <36.193985, 28.984528, 25.072788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583916, 29.056009, 25.126127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144830, -0.052778, -0.988048,
		-0.169529, 0.982487, -0.077331,
		0.974825, 0.178703, 0.133346,
		36.876362, 29.109621, 25.166132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360733, 29.518902, 24.541561>,  <36.193985, 28.984528, 25.072788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360733, 29.518902, 24.541561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689804, 29.312057, 24.636040>,  <36.887249, 29.187950, 24.692726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689804, 29.312057, 24.636040>,  <36.360733, 29.518902, 24.541561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689804, 29.312057, 24.636040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267433, -0.014608, -0.963466,
		0.501671, 0.855792, 0.126275,
		0.822682, -0.517113, 0.236195,
		36.936607, 29.156923, 24.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828533, 29.773449, 24.037590>,  <36.360733, 29.518902, 24.541561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828533, 29.773449, 24.037590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042099, 29.464792, 24.175867>,  <37.170238, 29.279598, 24.258833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042099, 29.464792, 24.175867>,  <36.828533, 29.773449, 24.037590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042099, 29.464792, 24.175867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315466, -0.197533, -0.928150,
		0.784484, 0.604609, 0.137960,
		0.533916, -0.771641, 0.345694,
		37.202274, 29.233299, 24.279575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527348, 29.892881, 23.791103>,  <36.828533, 29.773449, 24.037590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527348, 29.892881, 23.791103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464584, 29.501211, 23.842627>,  <37.426926, 29.266209, 23.873541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.464584, 29.501211, 23.842627>,  <37.527348, 29.892881, 23.791103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464584, 29.501211, 23.842627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304068, -0.171984, -0.936997,
		0.939640, -0.107855, 0.324722,
		-0.156907, -0.979178, 0.128808,
		37.417511, 29.207458, 23.881269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200375, 29.621523, 23.526316>,  <37.527348, 29.892881, 23.791103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200375, 29.621523, 23.526316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911560, 29.345613, 23.504866>,  <37.738270, 29.180069, 23.491997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911560, 29.345613, 23.504866>,  <38.200375, 29.621523, 23.526316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911560, 29.345613, 23.504866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194826, -0.128344, -0.972404,
		0.663855, -0.712560, 0.227055,
		-0.722038, -0.689772, -0.053624,
		37.694950, 29.138681, 23.488779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509491, 29.070387, 24.014227>,  <38.200375, 29.621523, 23.526316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509491, 29.070387, 24.014227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905994, 29.018255, 24.022499>,  <39.143894, 28.986977, 24.027462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905994, 29.018255, 24.022499>,  <38.509491, 29.070387, 24.014227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905994, 29.018255, 24.022499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010937, 0.075048, 0.997120,
		-0.131505, -0.988626, 0.072967,
		0.991255, -0.130329, 0.020681,
		39.203369, 28.979156, 24.028704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642265, 28.628202, 24.650896>,  <38.509491, 29.070387, 24.014227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642265, 28.628202, 24.650896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966473, 28.841484, 24.553946>,  <39.160999, 28.969454, 24.495775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.966473, 28.841484, 24.553946>,  <38.642265, 28.628202, 24.650896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966473, 28.841484, 24.553946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111673, 0.265541, 0.957610,
		0.574963, -0.803231, 0.155682,
		0.810522, 0.533205, -0.242376,
		39.209629, 29.001446, 24.481234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185242, 28.509405, 25.226437>,  <38.642265, 28.628202, 24.650896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185242, 28.509405, 25.226437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308670, 28.839952, 25.038012>,  <39.382729, 29.038280, 24.924957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308670, 28.839952, 25.038012>,  <39.185242, 28.509405, 25.226437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308670, 28.839952, 25.038012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196190, 0.429289, 0.881601,
		0.930749, -0.364454, -0.029659,
		0.308571, 0.826368, -0.471063,
		39.401241, 29.087862, 24.896692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811119, 28.617899, 25.548445>,  <39.185242, 28.509405, 25.226437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811119, 28.617899, 25.548445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709187, 28.981720, 25.417130>,  <39.648029, 29.200012, 25.338341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709187, 28.981720, 25.417130>,  <39.811119, 28.617899, 25.548445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709187, 28.981720, 25.417130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281128, 0.394518, 0.874827,
		0.925218, 0.130641, -0.356236,
		-0.254829, 0.909554, -0.328288,
		39.632736, 29.254587, 25.318644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442265, 29.057251, 25.525637>,  <39.811119, 28.617899, 25.548445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442265, 29.057251, 25.525637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.115738, 29.285927, 25.558619>,  <39.919823, 29.423132, 25.578407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.115738, 29.285927, 25.558619>,  <40.442265, 29.057251, 25.525637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115738, 29.285927, 25.558619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434882, 0.514370, 0.739122,
		0.380135, 0.639216, -0.668506,
		-0.816318, 0.571687, 0.082453,
		39.870842, 29.457434, 25.583355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706478, 29.597088, 25.751871>,  <40.442265, 29.057251, 25.525637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706478, 29.597088, 25.751871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.323292, 29.674883, 25.836226>,  <40.093380, 29.721560, 25.886837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.323292, 29.674883, 25.836226>,  <40.706478, 29.597088, 25.751871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323292, 29.674883, 25.836226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283076, 0.521622, 0.804847,
		0.046531, 0.830714, -0.554752,
		-0.957968, 0.194487, 0.210884,
		40.035900, 29.733229, 25.899490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652119, 30.244944, 26.086124>,  <40.706478, 29.597088, 25.751871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652119, 30.244944, 26.086124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301224, 30.087955, 26.196697>,  <40.090687, 29.993763, 26.263041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301224, 30.087955, 26.196697>,  <40.652119, 30.244944, 26.086124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301224, 30.087955, 26.196697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005421, 0.567708, 0.823212,
		-0.480020, 0.723654, -0.495889,
		-0.877241, -0.392470, 0.276434,
		40.038052, 29.970215, 26.279627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275623, 30.784395, 26.238556>,  <40.652119, 30.244944, 26.086124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275623, 30.784395, 26.238556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.112583, 30.471294, 26.426668>,  <40.014759, 30.283434, 26.539536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.112583, 30.471294, 26.426668>,  <40.275623, 30.784395, 26.238556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112583, 30.471294, 26.426668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055307, 0.492895, 0.868329,
		-0.911486, 0.379937, -0.157610,
		-0.407596, -0.782753, 0.470280,
		39.990303, 30.236469, 26.567753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858753, 31.138241, 26.782228>,  <40.275623, 30.784395, 26.238556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858753, 31.138241, 26.782228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881042, 30.753279, 26.888561>,  <39.894417, 30.522301, 26.952360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881042, 30.753279, 26.888561>,  <39.858753, 31.138241, 26.782228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881042, 30.753279, 26.888561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025434, 0.267528, 0.963214,
		-0.998122, -0.046912, 0.039385,
		0.055723, -0.962408, 0.265832,
		39.897758, 30.464556, 26.968311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311317, 30.983801, 27.324017>,  <39.858753, 31.138241, 26.782228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311317, 30.983801, 27.324017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617008, 30.728584, 27.361671>,  <39.800423, 30.575455, 27.384264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617008, 30.728584, 27.361671>,  <39.311317, 30.983801, 27.324017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617008, 30.728584, 27.361671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141647, 0.308446, 0.940636,
		-0.629200, -0.705526, 0.326100,
		0.764227, -0.638039, 0.094138,
		39.846275, 30.537172, 27.389914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106052, 30.565224, 27.938395>,  <39.311317, 30.983801, 27.324017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106052, 30.565224, 27.938395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498978, 30.524794, 27.875336>,  <39.734734, 30.500536, 27.837500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.498978, 30.524794, 27.875336>,  <39.106052, 30.565224, 27.938395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498978, 30.524794, 27.875336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173252, 0.170977, 0.969923,
		-0.071081, -0.980077, 0.185463,
		0.982309, -0.101075, -0.157647,
		39.793671, 30.494471, 27.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229412, 30.094004, 28.367823>,  <39.106052, 30.565224, 27.938395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229412, 30.094004, 28.367823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554771, 30.314699, 28.294098>,  <39.749985, 30.447117, 28.249863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554771, 30.314699, 28.294098>,  <39.229412, 30.094004, 28.367823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554771, 30.314699, 28.294098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178339, 0.065063, 0.981815,
		0.553698, -0.831475, -0.045475,
		0.813396, 0.551739, -0.184310,
		39.798790, 30.480221, 28.238806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636734, 29.961756, 28.931149>,  <39.229412, 30.094004, 28.367823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636734, 29.961756, 28.931149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816654, 30.289589, 28.789183>,  <39.924606, 30.486290, 28.704002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816654, 30.289589, 28.789183>,  <39.636734, 29.961756, 28.931149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816654, 30.289589, 28.789183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126510, 0.334912, 0.933718,
		0.884126, -0.464883, 0.046956,
		0.449796, 0.819584, -0.354917,
		39.951591, 30.535463, 28.682707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302975, 30.025318, 29.333080>,  <39.636734, 29.961756, 28.931149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302975, 30.025318, 29.333080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235954, 30.383144, 29.167341>,  <40.195744, 30.597839, 29.067898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235954, 30.383144, 29.167341>,  <40.302975, 30.025318, 29.333080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235954, 30.383144, 29.167341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202094, 0.442528, 0.873686,
		0.964927, 0.062649, -0.254932,
		-0.167550, 0.894564, -0.414346,
		40.185688, 30.651514, 29.043037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.216450, 32.378273, 21.568827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820621, 32.410240, 21.520895>,  <40.583122, 32.429420, 21.492136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820621, 32.410240, 21.520895>,  <41.216450, 32.378273, 21.568827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820621, 32.410240, 21.520895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053819, -0.566539, -0.822275,
		-0.133601, -0.820151, 0.556331,
		-0.989573, 0.079916, -0.119829,
		40.523750, 32.434216, 21.484945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041817, 31.706463, 21.425150>,  <41.216450, 32.378273, 21.568827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041817, 31.706463, 21.425150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.716915, 31.900818, 21.296053>,  <40.521976, 32.017429, 21.218596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.716915, 31.900818, 21.296053>,  <41.041817, 31.706463, 21.425150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716915, 31.900818, 21.296053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016242, -0.534240, -0.845177,
		-0.583088, -0.691734, 0.426043,
		-0.812247, 0.485892, -0.322744,
		40.473240, 32.046585, 21.199230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591145, 31.245243, 20.989431>,  <41.041817, 31.706463, 21.425150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591145, 31.245243, 20.989431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407825, 31.581783, 20.874825>,  <40.297836, 31.783709, 20.806061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407825, 31.581783, 20.874825>,  <40.591145, 31.245243, 20.989431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407825, 31.581783, 20.874825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032909, -0.338206, -0.940496,
		-0.888191, -0.421594, 0.182686,
		-0.458293, 0.841353, -0.286518,
		40.270336, 31.834188, 20.788870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027283, 31.071259, 20.507748>,  <40.591145, 31.245243, 20.989431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027283, 31.071259, 20.507748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101952, 31.457006, 20.432762>,  <40.146755, 31.688456, 20.387772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101952, 31.457006, 20.432762>,  <40.027283, 31.071259, 20.507748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101952, 31.457006, 20.432762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050287, -0.181188, -0.982162,
		-0.981134, 0.192772, 0.014672,
		0.186675, 0.964370, -0.187464,
		40.157955, 31.746317, 20.376524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615746, 31.203320, 19.959415>,  <40.027283, 31.071259, 20.507748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615746, 31.203320, 19.959415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.912136, 31.471285, 19.940792>,  <40.089970, 31.632063, 19.929619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.912136, 31.471285, 19.940792>,  <39.615746, 31.203320, 19.959415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912136, 31.471285, 19.940792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088112, -0.165720, -0.982229,
		-0.665721, 0.723710, -0.181822,
		0.740980, 0.669911, -0.046556,
		40.134430, 31.672258, 19.926825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400124, 31.520849, 19.364008>,  <39.615746, 31.203320, 19.959415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400124, 31.520849, 19.364008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788555, 31.605228, 19.408739>,  <40.021614, 31.655857, 19.435577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788555, 31.605228, 19.408739>,  <39.400124, 31.520849, 19.364008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788555, 31.605228, 19.408739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135496, -0.101257, -0.985590,
		-0.196586, 0.972238, -0.126911,
		0.971079, 0.210949, 0.111829,
		40.079880, 31.668512, 19.442287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565186, 32.086525, 18.862478>,  <39.400124, 31.520849, 19.364008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565186, 32.086525, 18.862478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901325, 31.886415, 18.945950>,  <40.103008, 31.766350, 18.996033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.901325, 31.886415, 18.945950>,  <39.565186, 32.086525, 18.862478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901325, 31.886415, 18.945950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205820, -0.061652, -0.976646,
		0.501455, 0.863670, 0.051158,
		0.840346, -0.500273, 0.208676,
		40.153427, 31.736334, 19.008553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109501, 32.314964, 18.270441>,  <39.565186, 32.086525, 18.862478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109501, 32.314964, 18.270441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.224785, 31.974520, 18.445961>,  <40.293957, 31.770254, 18.551273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.224785, 31.974520, 18.445961>,  <40.109501, 32.314964, 18.270441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224785, 31.974520, 18.445961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226833, -0.384521, -0.894813,
		0.930312, 0.357430, 0.082237,
		0.288211, -0.851110, 0.438801,
		40.311249, 31.719187, 18.577600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728813, 32.090309, 17.923897>,  <40.109501, 32.314964, 18.270441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728813, 32.090309, 17.923897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573441, 31.769506, 18.105406>,  <40.480217, 31.577026, 18.214312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.573441, 31.769506, 18.105406>,  <40.728813, 32.090309, 17.923897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573441, 31.769506, 18.105406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058792, -0.513008, -0.856368,
		0.919599, -0.305964, 0.246421,
		-0.388433, -0.802003, 0.453774,
		40.456909, 31.528906, 18.241537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957111, 31.534027, 17.554676>,  <40.728813, 32.090309, 17.923897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957111, 31.534027, 17.554676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688744, 31.339787, 17.778841>,  <40.527725, 31.223242, 17.913340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688744, 31.339787, 17.778841>,  <40.957111, 31.534027, 17.554676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688744, 31.339787, 17.778841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132300, -0.665235, -0.734819,
		0.729636, -0.567145, 0.382072,
		-0.670916, -0.485602, 0.560413,
		40.487469, 31.194105, 17.946964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305531, 30.941664, 17.693920>,  <40.957111, 31.534027, 17.554676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305531, 30.941664, 17.693920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910378, 30.888668, 17.726250>,  <40.673286, 30.856871, 17.745647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910378, 30.888668, 17.726250>,  <41.305531, 30.941664, 17.693920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910378, 30.888668, 17.726250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007866, -0.562848, -0.826523,
		0.154999, -0.815872, 0.557071,
		-0.987883, -0.132492, 0.080823,
		40.614014, 30.848921, 17.750496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266815, 30.329271, 17.294586>,  <41.305531, 30.941664, 17.693920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266815, 30.329271, 17.294586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.892975, 30.461626, 17.346783>,  <40.668671, 30.541039, 17.378101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.892975, 30.461626, 17.346783>,  <41.266815, 30.329271, 17.294586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892975, 30.461626, 17.346783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281174, -0.462605, -0.840796,
		-0.217842, -0.822503, 0.525389,
		-0.934605, 0.330886, 0.130492,
		40.612595, 30.560892, 17.385929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687283, 29.764034, 17.274769>,  <41.266815, 30.329271, 17.294586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687283, 29.764034, 17.274769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539978, 30.117950, 17.160559>,  <40.451595, 30.330301, 17.092033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539978, 30.117950, 17.160559>,  <40.687283, 29.764034, 17.274769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539978, 30.117950, 17.160559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422480, -0.432827, -0.796349,
		-0.828186, -0.172637, 0.533202,
		-0.368263, 0.884792, -0.285526,
		40.429501, 30.383389, 17.074902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872524, 29.556940, 17.956141>,  <40.687283, 29.764034, 17.274769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872524, 29.556940, 17.956141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.253757, 29.671242, 17.996099>,  <41.482498, 29.739822, 18.020075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.253757, 29.671242, 17.996099>,  <40.872524, 29.556940, 17.956141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253757, 29.671242, 17.996099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131299, -0.687581, 0.714138,
		0.272754, -0.667516, -0.692840,
		0.953083, 0.285753, 0.099896,
		41.539680, 29.756968, 18.026068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227909, 29.106714, 18.498756>,  <40.872524, 29.556940, 17.956141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227909, 29.106714, 18.498756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.930805, 28.840460, 18.469809>,  <40.752544, 28.680708, 18.452440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.930805, 28.840460, 18.469809>,  <41.227909, 29.106714, 18.498756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930805, 28.840460, 18.469809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016888, -0.089429, 0.995850,
		-0.669346, 0.740899, 0.055183,
		-0.742759, -0.665636, -0.072371,
		40.707977, 28.640770, 18.448097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589970, 29.365034, 18.948788>,  <41.227909, 29.106714, 18.498756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589970, 29.365034, 18.948788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563301, 28.969191, 18.897831>,  <40.547302, 28.731684, 18.867256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563301, 28.969191, 18.897831>,  <40.589970, 29.365034, 18.948788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563301, 28.969191, 18.897831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174440, -0.114149, 0.978029,
		-0.982408, 0.087424, -0.165018,
		-0.066667, -0.989609, -0.127391,
		40.543301, 28.672308, 18.859613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976250, 29.232462, 19.341496>,  <40.589970, 29.365034, 18.948788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976250, 29.232462, 19.341496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178703, 28.889341, 19.305714>,  <40.300175, 28.683470, 19.284245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178703, 28.889341, 19.305714>,  <39.976250, 29.232462, 19.341496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178703, 28.889341, 19.305714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095941, -0.159076, 0.982593,
		-0.857100, -0.488744, -0.162813,
		0.506136, -0.857802, -0.089453,
		40.330544, 28.632000, 19.278877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574940, 28.685663, 19.674370>,  <39.976250, 29.232462, 19.341496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574940, 28.685663, 19.674370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.957409, 28.570711, 19.696798>,  <40.186890, 28.501740, 19.710255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.957409, 28.570711, 19.696798>,  <39.574940, 28.685663, 19.674370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957409, 28.570711, 19.696798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083310, -0.083435, 0.993025,
		-0.280700, -0.954175, -0.103720,
		0.956173, -0.287383, 0.056072,
		40.244263, 28.484497, 19.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541389, 28.249151, 20.234058>,  <39.574940, 28.685663, 19.674370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541389, 28.249151, 20.234058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935314, 28.310633, 20.201773>,  <40.171669, 28.347521, 20.182402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935314, 28.310633, 20.201773>,  <39.541389, 28.249151, 20.234058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935314, 28.310633, 20.201773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091026, -0.061249, 0.993963,
		0.147832, -0.986217, -0.074310,
		0.984814, 0.153704, -0.080716,
		40.230759, 28.356743, 20.177557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800018, 27.709055, 20.624296>,  <39.541389, 28.249151, 20.234058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800018, 27.709055, 20.624296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076820, 27.994989, 20.584021>,  <40.242901, 28.166550, 20.559855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076820, 27.994989, 20.584021>,  <39.800018, 27.709055, 20.624296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076820, 27.994989, 20.584021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042631, 0.098768, 0.994197,
		0.720633, -0.692281, 0.037874,
		0.692005, 0.714836, -0.100688,
		40.284420, 28.209440, 20.553814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314728, 27.541300, 21.052296>,  <39.800018, 27.709055, 20.624296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314728, 27.541300, 21.052296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377766, 27.933475, 21.005131>,  <40.415588, 28.168781, 20.976831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377766, 27.933475, 21.005131>,  <40.314728, 27.541300, 21.052296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377766, 27.933475, 21.005131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004687, 0.120143, 0.992746,
		0.987492, -0.155902, 0.023529,
		0.157598, 0.980439, -0.117910,
		40.425045, 28.227608, 20.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818562, 27.668848, 21.485008>,  <40.314728, 27.541300, 21.052296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818562, 27.668848, 21.485008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689445, 28.043594, 21.431213>,  <40.611977, 28.268442, 21.398935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689445, 28.043594, 21.431213>,  <40.818562, 27.668848, 21.485008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689445, 28.043594, 21.431213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069068, 0.118400, 0.990561,
		0.943947, 0.329033, 0.026489,
		-0.322791, 0.936867, -0.134489,
		40.592609, 28.324654, 21.390867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180611, 28.062805, 22.057899>,  <40.818562, 27.668848, 21.485008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180611, 28.062805, 22.057899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.863861, 28.277397, 21.941198>,  <40.673809, 28.406153, 21.871178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.863861, 28.277397, 21.941198>,  <41.180611, 28.062805, 22.057899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863861, 28.277397, 21.941198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228632, 0.182561, 0.956242,
		0.566266, 0.823932, -0.021910,
		-0.791878, 0.536478, -0.291755,
		40.626297, 28.438341, 21.853672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219265, 28.615698, 22.513912>,  <41.180611, 28.062805, 22.057899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219265, 28.615698, 22.513912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841072, 28.609457, 22.383793>,  <40.614155, 28.605713, 22.305721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841072, 28.609457, 22.383793>,  <41.219265, 28.615698, 22.513912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841072, 28.609457, 22.383793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317300, 0.269159, 0.909326,
		0.073369, 0.962969, -0.259437,
		-0.945483, -0.015603, -0.325298,
		40.557426, 28.604776, 22.286203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807877, 29.144636, 22.813036>,  <41.219265, 28.615698, 22.513912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807877, 29.144636, 22.813036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.501541, 28.919933, 22.687866>,  <40.317741, 28.785110, 22.612764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.501541, 28.919933, 22.687866>,  <40.807877, 29.144636, 22.813036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501541, 28.919933, 22.687866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537590, 0.292310, 0.790918,
		-0.352834, 0.773939, -0.525858,
		-0.765836, -0.561759, -0.312925,
		40.271790, 28.751406, 22.593988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227905, 29.610945, 22.712271>,  <40.807877, 29.144636, 22.813036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227905, 29.610945, 22.712271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059437, 29.251974, 22.764782>,  <39.958355, 29.036591, 22.796289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059437, 29.251974, 22.764782>,  <40.227905, 29.610945, 22.712271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059437, 29.251974, 22.764782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447861, 0.331648, 0.830319,
		-0.788690, 0.290915, -0.541605,
		-0.421175, -0.897428, 0.131278,
		39.933083, 28.982746, 22.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526337, 29.734293, 22.852793>,  <40.227905, 29.610945, 22.712271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526337, 29.734293, 22.852793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618755, 29.385296, 23.025015>,  <39.674206, 29.175898, 23.128347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618755, 29.385296, 23.025015>,  <39.526337, 29.734293, 22.852793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618755, 29.385296, 23.025015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306963, 0.354559, 0.883211,
		-0.923251, -0.336225, -0.185903,
		0.231044, -0.872491, 0.430555,
		39.688068, 29.123549, 23.154182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937027, 29.583975, 23.324678>,  <39.526337, 29.734293, 22.852793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937027, 29.583975, 23.324678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209789, 29.324181, 23.459244>,  <39.373447, 29.168304, 23.539984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209789, 29.324181, 23.459244>,  <38.937027, 29.583975, 23.324678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209789, 29.324181, 23.459244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196923, 0.279936, 0.939605,
		-0.704432, -0.706971, 0.062992,
		0.681907, -0.649483, 0.336415,
		39.414360, 29.129335, 23.560167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440098, 29.038456, 22.928471>,  <38.937027, 29.583975, 23.324678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440098, 29.038456, 22.928471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051262, 28.953430, 22.968197>,  <37.817963, 28.902414, 22.992033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051262, 28.953430, 22.968197>,  <38.440098, 29.038456, 22.928471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051262, 28.953430, 22.968197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042541, -0.256606, -0.965580,
		0.230734, -0.942852, 0.240400,
		-0.972086, -0.212565, 0.099317,
		37.759636, 28.889660, 22.997992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359261, 28.623171, 22.447147>,  <38.440098, 29.038456, 22.928471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359261, 28.623171, 22.447147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974186, 28.682199, 22.537891>,  <37.743141, 28.717617, 22.592337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974186, 28.682199, 22.537891>,  <38.359261, 28.623171, 22.447147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974186, 28.682199, 22.537891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259103, -0.260509, -0.930054,
		-0.078151, -0.954127, 0.289024,
		-0.962683, 0.147571, 0.226858,
		37.685383, 28.726471, 22.605949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109570, 28.033300, 22.200930>,  <38.359261, 28.623171, 22.447147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109570, 28.033300, 22.200930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827553, 28.316839, 22.209501>,  <37.658344, 28.486963, 22.214645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827553, 28.316839, 22.209501>,  <38.109570, 28.033300, 22.200930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827553, 28.316839, 22.209501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225686, -0.195621, -0.954358,
		-0.672301, -0.677694, 0.297897,
		-0.705037, 0.708846, 0.021430,
		37.616043, 28.529493, 22.215931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544220, 27.700304, 22.010551>,  <38.109570, 28.033300, 22.200930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544220, 27.700304, 22.010551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463356, 28.088293, 21.956470>,  <37.414837, 28.321087, 21.924023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.463356, 28.088293, 21.956470>,  <37.544220, 27.700304, 22.010551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463356, 28.088293, 21.956470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429933, -0.211937, -0.877633,
		-0.879936, -0.119297, 0.459870,
		-0.202162, 0.969975, -0.135201,
		37.402706, 28.379286, 21.915911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883038, 27.718128, 21.858990>,  <37.544220, 27.700304, 22.010551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883038, 27.718128, 21.858990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047619, 28.054258, 21.717819>,  <37.146366, 28.255938, 21.633118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047619, 28.054258, 21.717819>,  <36.883038, 27.718128, 21.858990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047619, 28.054258, 21.717819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327298, -0.225165, -0.917702,
		-0.850636, 0.493104, 0.182392,
		0.411454, 0.840327, -0.352925,
		37.171055, 28.306356, 21.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397594, 28.066639, 21.385843>,  <36.883038, 27.718128, 21.858990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397594, 28.066639, 21.385843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758877, 28.209843, 21.291153>,  <36.975647, 28.295765, 21.234339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758877, 28.209843, 21.291153>,  <36.397594, 28.066639, 21.385843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758877, 28.209843, 21.291153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151086, -0.251040, -0.956113,
		-0.401726, 0.899338, -0.172651,
		0.903211, 0.358010, -0.236727,
		37.029839, 28.317245, 21.220135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347584, 28.305193, 20.724302>,  <36.397594, 28.066639, 21.385843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347584, 28.305193, 20.724302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746845, 28.285252, 20.738209>,  <36.986401, 28.273287, 20.746553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746845, 28.285252, 20.738209>,  <36.347584, 28.305193, 20.724302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746845, 28.285252, 20.738209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021630, -0.243229, -0.969728,
		0.056800, 0.968687, -0.241701,
		0.998151, -0.049853, 0.034768,
		37.046291, 28.270296, 20.748640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059238, 28.902737, 20.461100>,  <36.347584, 28.305193, 20.724302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059238, 28.902737, 20.461100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717033, 29.079060, 20.352444>,  <35.511711, 29.184853, 20.287251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717033, 29.079060, 20.352444>,  <36.059238, 28.902737, 20.461100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717033, 29.079060, 20.352444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052293, 0.448384, 0.892310,
		0.515134, 0.777588, -0.360547,
		-0.855513, 0.440805, -0.271640,
		35.460381, 29.211302, 20.270952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096684, 29.609459, 20.651239>,  <36.059238, 28.902737, 20.461100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096684, 29.609459, 20.651239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708641, 29.515884, 20.625397>,  <35.475815, 29.459740, 20.609890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708641, 29.515884, 20.625397>,  <36.096684, 29.609459, 20.651239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708641, 29.515884, 20.625397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154568, 0.390304, 0.907619,
		-0.187110, 0.890469, -0.414794,
		-0.970102, -0.233938, -0.064609,
		35.417610, 29.445704, 20.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798183, 30.197519, 20.964260>,  <36.096684, 29.609459, 20.651239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798183, 30.197519, 20.964260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497921, 29.933243, 20.963348>,  <35.317764, 29.774677, 20.962801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497921, 29.933243, 20.963348>,  <35.798183, 30.197519, 20.964260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497921, 29.933243, 20.963348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377893, 0.426517, 0.821755,
		-0.541955, 0.617714, -0.569837,
		-0.750655, -0.660691, -0.002277,
		35.272724, 29.735035, 20.962666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117138, 30.545517, 21.110800>,  <35.798183, 30.197519, 20.964260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117138, 30.545517, 21.110800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079067, 30.158216, 21.203259>,  <35.056225, 29.925837, 21.258734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079067, 30.158216, 21.203259>,  <35.117138, 30.545517, 21.110800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079067, 30.158216, 21.203259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422244, 0.249544, 0.871457,
		-0.901471, -0.014655, -0.432591,
		-0.095180, -0.968252, 0.231145,
		35.050514, 29.867741, 21.272602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501751, 30.513243, 21.412674>,  <35.117138, 30.545517, 21.110800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501751, 30.513243, 21.412674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710312, 30.195211, 21.536604>,  <34.835449, 30.004393, 21.610962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710312, 30.195211, 21.536604>,  <34.501751, 30.513243, 21.412674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710312, 30.195211, 21.536604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354297, 0.128598, 0.926248,
		-0.776283, -0.592717, -0.214642,
		0.521400, -0.795078, 0.309826,
		34.866734, 29.956688, 21.629551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015625, 30.120642, 21.785269>,  <34.501751, 30.513243, 21.412674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015625, 30.120642, 21.785269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361553, 29.964830, 21.911983>,  <34.569111, 29.871344, 21.988012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361553, 29.964830, 21.911983>,  <34.015625, 30.120642, 21.785269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361553, 29.964830, 21.911983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323716, 0.049705, 0.944848,
		-0.383792, -0.919672, -0.083112,
		0.864819, -0.389530, 0.316789,
		34.620998, 29.847971, 22.007021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794949, 29.690067, 22.306622>,  <34.015625, 30.120642, 21.785269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794949, 29.690067, 22.306622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187199, 29.753792, 22.352207>,  <34.422550, 29.792027, 22.379559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187199, 29.753792, 22.352207>,  <33.794949, 29.690067, 22.306622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187199, 29.753792, 22.352207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149590, 0.233478, 0.960787,
		0.126456, -0.959222, 0.252787,
		0.980628, 0.159312, 0.113966,
		34.481388, 29.801586, 22.386396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.310780, 31.798481, 17.271107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692383, 31.795801, 17.390987>,  <37.921345, 31.794193, 17.462915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692383, 31.795801, 17.390987>,  <37.310780, 31.798481, 17.271107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692383, 31.795801, 17.390987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284086, 0.299001, 0.910985,
		-0.095713, -0.954229, 0.283347,
		0.954009, -0.006698, 0.299702,
		37.978584, 31.793793, 17.480898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251652, 31.651743, 17.904089>,  <37.310780, 31.798481, 17.271107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251652, 31.651743, 17.904089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623810, 31.796425, 17.880304>,  <37.847103, 31.883234, 17.866034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623810, 31.796425, 17.880304>,  <37.251652, 31.651743, 17.904089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623810, 31.796425, 17.880304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179108, 0.590117, 0.787199,
		0.319825, -0.721755, 0.613826,
		0.930394, 0.361707, -0.059462,
		37.902927, 31.904938, 17.862465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515007, 31.620495, 18.633978>,  <37.251652, 31.651743, 17.904089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515007, 31.620495, 18.633978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789257, 31.868851, 18.481970>,  <37.953808, 32.017864, 18.390766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789257, 31.868851, 18.481970>,  <37.515007, 31.620495, 18.633978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789257, 31.868851, 18.481970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034740, 0.549349, 0.834870,
		0.727124, -0.559207, 0.398218,
		0.685626, 0.620889, -0.380018,
		37.994946, 32.055119, 18.367964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991489, 31.733185, 19.240276>,  <37.515007, 31.620495, 18.633978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991489, 31.733185, 19.240276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066620, 32.026001, 18.978334>,  <38.111698, 32.201691, 18.821169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.066620, 32.026001, 18.978334>,  <37.991489, 31.733185, 19.240276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066620, 32.026001, 18.978334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099760, 0.649057, 0.754171,
		0.977123, -0.206981, 0.048881,
		0.187826, 0.732041, -0.654857,
		38.122967, 32.245613, 18.781878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595821, 32.107811, 19.516300>,  <37.991489, 31.733185, 19.240276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595821, 32.107811, 19.516300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408398, 32.366375, 19.275433>,  <38.295944, 32.521511, 19.130911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.408398, 32.366375, 19.275433>,  <38.595821, 32.107811, 19.516300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408398, 32.366375, 19.275433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083554, 0.646145, 0.758627,
		0.879471, 0.405777, -0.248749,
		-0.468562, 0.646406, -0.602170,
		38.267830, 32.560295, 19.094782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870026, 32.774109, 19.711391>,  <38.595821, 32.107811, 19.516300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870026, 32.774109, 19.711391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527714, 32.860725, 19.523458>,  <38.322327, 32.912697, 19.410698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527714, 32.860725, 19.523458>,  <38.870026, 32.774109, 19.711391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527714, 32.860725, 19.523458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152024, 0.762823, 0.628482,
		0.494492, 0.609271, -0.619892,
		-0.855784, 0.216541, -0.469834,
		38.270977, 32.925686, 19.382509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769939, 33.438148, 19.852819>,  <38.870026, 32.774109, 19.711391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769939, 33.438148, 19.852819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405735, 33.344379, 19.716578>,  <38.187210, 33.288116, 19.634832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.405735, 33.344379, 19.716578>,  <38.769939, 33.438148, 19.852819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405735, 33.344379, 19.716578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388008, 0.769076, 0.507909,
		0.142882, 0.594615, -0.791213,
		-0.910513, -0.234426, -0.340602,
		38.132580, 33.274052, 19.614397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479843, 34.080601, 19.690973>,  <38.769939, 33.438148, 19.852819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479843, 34.080601, 19.690973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173130, 33.835060, 19.766052>,  <37.989101, 33.687737, 19.811100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173130, 33.835060, 19.766052>,  <38.479843, 34.080601, 19.690973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173130, 33.835060, 19.766052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356478, 0.650392, 0.670757,
		-0.533821, 0.447416, -0.717534,
		-0.766785, -0.613848, 0.187699,
		37.943096, 33.650906, 19.822361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748085, 34.434528, 19.763975>,  <38.479843, 34.080601, 19.690973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748085, 34.434528, 19.763975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714184, 34.081841, 19.949615>,  <37.693844, 33.870228, 20.060999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.714184, 34.081841, 19.949615>,  <37.748085, 34.434528, 19.763975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714184, 34.081841, 19.949615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417082, 0.454401, 0.787123,
		-0.904908, -0.126854, -0.406263,
		-0.084757, -0.881719, 0.464100,
		37.688755, 33.817326, 20.088846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082138, 34.508373, 20.052633>,  <37.748085, 34.434528, 19.763975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082138, 34.508373, 20.052633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265408, 34.210484, 20.246731>,  <37.375370, 34.031750, 20.363190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265408, 34.210484, 20.246731>,  <37.082138, 34.508373, 20.052633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265408, 34.210484, 20.246731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283895, 0.394717, 0.873843,
		-0.842306, -0.538132, -0.030574,
		0.458175, -0.744723, 0.485246,
		37.402859, 33.987068, 20.392305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642418, 34.281246, 20.571215>,  <37.082138, 34.508373, 20.052633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642418, 34.281246, 20.571215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995213, 34.152657, 20.709057>,  <37.206890, 34.075500, 20.791761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995213, 34.152657, 20.709057>,  <36.642418, 34.281246, 20.571215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995213, 34.152657, 20.709057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236002, 0.331639, 0.913410,
		-0.407925, -0.886943, 0.216632,
		0.881986, -0.321478, 0.344605,
		37.259808, 34.056213, 20.812439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407375, 34.057182, 21.148630>,  <36.642418, 34.281246, 20.571215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407375, 34.057182, 21.148630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805836, 34.081661, 21.173729>,  <37.044910, 34.096348, 21.188787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.805836, 34.081661, 21.173729>,  <36.407375, 34.057182, 21.148630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805836, 34.081661, 21.173729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076299, 0.253153, 0.964413,
		0.043130, -0.965489, 0.256848,
		0.996152, 0.061192, 0.062747,
		37.104683, 34.100018, 21.192553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037106, 33.329342, 21.332417>,  <36.407375, 34.057182, 21.148630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037106, 33.329342, 21.332417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643509, 33.379959, 21.382605>,  <35.407349, 33.410332, 21.412718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643509, 33.379959, 21.382605>,  <36.037106, 33.329342, 21.332417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643509, 33.379959, 21.382605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172135, -0.492800, -0.852946,
		-0.046107, -0.860891, 0.506696,
		-0.983994, 0.126546, 0.125468,
		35.348312, 33.417923, 21.420244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672138, 32.675770, 21.359577>,  <36.037106, 33.329342, 21.332417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672138, 32.675770, 21.359577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409866, 32.948486, 21.229807>,  <35.252502, 33.112114, 21.151945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409866, 32.948486, 21.229807>,  <35.672138, 32.675770, 21.359577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409866, 32.948486, 21.229807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136731, -0.529791, -0.837034,
		-0.742558, -0.504465, 0.440594,
		-0.655677, 0.681789, -0.324424,
		35.213161, 33.153023, 21.132481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214481, 32.255241, 21.170942>,  <35.672138, 32.675770, 21.359577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214481, 32.255241, 21.170942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.116661, 32.599007, 20.991341>,  <35.057968, 32.805264, 20.883579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.116661, 32.599007, 20.991341>,  <35.214481, 32.255241, 21.170942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116661, 32.599007, 20.991341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205903, -0.498533, -0.842062,
		-0.947522, -0.113476, 0.298872,
		-0.244552, 0.859412, -0.449006,
		35.043297, 32.856831, 20.856638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702194, 31.975725, 20.838612>,  <35.214481, 32.255241, 21.170942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702194, 31.975725, 20.838612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.779896, 32.328320, 20.666449>,  <34.826515, 32.539875, 20.563150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.779896, 32.328320, 20.666449>,  <34.702194, 31.975725, 20.838612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779896, 32.328320, 20.666449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125077, -0.412928, -0.902134,
		-0.972945, 0.229073, 0.030043,
		0.194249, 0.881485, -0.430409,
		34.838169, 32.592766, 20.537327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262932, 32.114384, 20.273815>,  <34.702194, 31.975725, 20.838612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262932, 32.114384, 20.273815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562191, 32.367374, 20.193577>,  <34.741749, 32.519169, 20.145433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562191, 32.367374, 20.193577>,  <34.262932, 32.114384, 20.273815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562191, 32.367374, 20.193577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005524, -0.308246, -0.951291,
		-0.663505, 0.710601, -0.234108,
		0.748151, 0.632479, -0.200598,
		34.786636, 32.557117, 20.133398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066780, 32.504459, 19.785233>,  <34.262932, 32.114384, 20.273815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066780, 32.504459, 19.785233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.464832, 32.519379, 19.748737>,  <34.703663, 32.528332, 19.726841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.464832, 32.519379, 19.748737>,  <34.066780, 32.504459, 19.785233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464832, 32.519379, 19.748737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079285, -0.247010, -0.965764,
		-0.058560, 0.968295, -0.242849,
		0.995130, 0.037300, -0.091236,
		34.763371, 32.530567, 19.721367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157879, 32.771820, 19.157141>,  <34.066780, 32.504459, 19.785233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157879, 32.771820, 19.157141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.525921, 32.632797, 19.229380>,  <34.746746, 32.549385, 19.272722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.525921, 32.632797, 19.229380>,  <34.157879, 32.771820, 19.157141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525921, 32.632797, 19.229380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144468, -0.127432, -0.981270,
		0.364058, 0.928961, -0.067040,
		0.920104, -0.347554, 0.180598,
		34.801952, 32.528530, 19.283560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568264, 33.151844, 18.707298>,  <34.157879, 32.771820, 19.157141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568264, 33.151844, 18.707298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.756248, 32.806023, 18.778490>,  <34.869038, 32.598530, 18.821205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.756248, 32.806023, 18.778490>,  <34.568264, 33.151844, 18.707298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756248, 32.806023, 18.778490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062519, -0.168526, -0.983713,
		0.880470, 0.473435, -0.025150,
		0.469963, -0.864556, 0.177981,
		34.897236, 32.546658, 18.831884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022305, 33.108875, 18.255440>,  <34.568264, 33.151844, 18.707298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022305, 33.108875, 18.255440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984829, 32.727814, 18.371143>,  <34.962345, 32.499176, 18.440565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984829, 32.727814, 18.371143>,  <35.022305, 33.108875, 18.255440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984829, 32.727814, 18.371143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027460, -0.292897, -0.955750,
		0.995223, -0.081598, 0.053600,
		-0.093686, -0.952656, 0.289257,
		34.956722, 32.442017, 18.457920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535591, 32.673882, 18.018631>,  <35.022305, 33.108875, 18.255440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535591, 32.673882, 18.018631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264851, 32.392601, 18.105700>,  <35.102406, 32.223831, 18.157940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264851, 32.392601, 18.105700>,  <35.535591, 32.673882, 18.018631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264851, 32.392601, 18.105700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005628, -0.290749, -0.956783,
		0.736102, -0.648821, 0.192835,
		-0.676847, -0.703204, 0.217672,
		35.061798, 32.181641, 18.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702900, 32.113335, 17.596500>,  <35.535591, 32.673882, 18.018631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702900, 32.113335, 17.596500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.333042, 32.003727, 17.702295>,  <35.111130, 31.937962, 17.765772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.333042, 32.003727, 17.702295>,  <35.702900, 32.113335, 17.596500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333042, 32.003727, 17.702295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218554, -0.186948, -0.957750,
		0.311888, -0.943378, 0.112972,
		-0.924640, -0.274020, 0.264486,
		35.055649, 31.921520, 17.781641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638130, 31.422716, 17.222368>,  <35.702900, 32.113335, 17.596500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638130, 31.422716, 17.222368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263824, 31.511171, 17.332233>,  <35.039242, 31.564245, 17.398151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.263824, 31.511171, 17.332233>,  <35.638130, 31.422716, 17.222368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263824, 31.511171, 17.332233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346614, -0.433691, -0.831727,
		-0.064809, -0.873504, 0.482484,
		-0.935766, 0.221139, 0.274662,
		34.983093, 31.577513, 17.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257885, 30.873781, 17.138323>,  <35.638130, 31.422716, 17.222368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257885, 30.873781, 17.138323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988346, 31.169254, 17.131756>,  <34.826622, 31.346539, 17.127815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988346, 31.169254, 17.131756>,  <35.257885, 30.873781, 17.138323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988346, 31.169254, 17.131756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450797, -0.428630, -0.782980,
		-0.585412, -0.520212, 0.621830,
		-0.673851, 0.738685, -0.016415,
		34.786190, 31.390860, 17.126831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638165, 30.216911, 17.231947>,  <35.257885, 30.873781, 17.138323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638165, 30.216911, 17.231947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409111, 29.915434, 17.102930>,  <35.271679, 29.734547, 17.025520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.409111, 29.915434, 17.102930>,  <35.638165, 30.216911, 17.231947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409111, 29.915434, 17.102930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227539, -0.231858, 0.945763,
		-0.787601, 0.614968, -0.038725,
		-0.572635, -0.753695, -0.322541,
		35.237320, 29.689325, 17.006168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095238, 30.279341, 17.652643>,  <35.638165, 30.216911, 17.231947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095238, 30.279341, 17.652643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079021, 29.893003, 17.550272>,  <35.069290, 29.661201, 17.488850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079021, 29.893003, 17.550272>,  <35.095238, 30.279341, 17.652643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079021, 29.893003, 17.550272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009050, -0.256485, 0.966506,
		-0.999137, 0.036866, 0.019139,
		-0.040540, -0.965845, -0.255930,
		35.066860, 29.603251, 17.473494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491112, 29.954075, 18.061102>,  <35.095238, 30.279341, 17.652643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491112, 29.954075, 18.061102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758183, 29.678080, 17.949301>,  <34.918427, 29.512482, 17.882221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.758183, 29.678080, 17.949301>,  <34.491112, 29.954075, 18.061102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758183, 29.678080, 17.949301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081565, -0.440989, 0.893798,
		-0.739967, -0.573973, -0.350719,
		0.667680, -0.689988, -0.279501,
		34.958485, 29.471083, 17.865450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175835, 29.404627, 18.311428>,  <34.491112, 29.954075, 18.061102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175835, 29.404627, 18.311428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558556, 29.301821, 18.257069>,  <34.788189, 29.240137, 18.224453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.558556, 29.301821, 18.257069>,  <34.175835, 29.404627, 18.311428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558556, 29.301821, 18.257069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007661, -0.489562, 0.871935,
		-0.290628, -0.833231, -0.470384,
		0.956805, -0.257012, -0.135897,
		34.845596, 29.224716, 18.216299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253475, 28.862597, 18.744875>,  <34.175835, 29.404627, 18.311428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253475, 28.862597, 18.744875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.626484, 28.977043, 18.656754>,  <34.850288, 29.045712, 18.603882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.626484, 28.977043, 18.656754>,  <34.253475, 28.862597, 18.744875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626484, 28.977043, 18.656754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313075, -0.336595, 0.888081,
		0.179941, -0.897129, -0.403460,
		0.932526, 0.286116, -0.220302,
		34.906242, 29.062878, 18.590664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684860, 28.286312, 19.010950>,  <34.253475, 28.862597, 18.744875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684860, 28.286312, 19.010950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903744, 28.620014, 18.983883>,  <35.035076, 28.820234, 18.967642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903744, 28.620014, 18.983883>,  <34.684860, 28.286312, 19.010950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903744, 28.620014, 18.983883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240276, -0.079131, 0.967474,
		0.801764, -0.545672, -0.243753,
		0.547212, 0.834254, -0.067667,
		35.067909, 28.870291, 18.963583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199287, 28.164442, 19.452703>,  <34.684860, 28.286312, 19.010950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199287, 28.164442, 19.452703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.232643, 28.559614, 19.400482>,  <35.252655, 28.796717, 19.369150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.232643, 28.559614, 19.400482>,  <35.199287, 28.164442, 19.452703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232643, 28.559614, 19.400482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280828, 0.102401, 0.954280,
		0.956129, -0.116238, -0.268899,
		0.083387, 0.987929, -0.130552,
		35.257660, 28.855993, 19.361317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830471, 28.447866, 19.830597>,  <35.199287, 28.164442, 19.452703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830471, 28.447866, 19.830597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614487, 28.783791, 19.808100>,  <35.484898, 28.985346, 19.794601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.614487, 28.783791, 19.808100>,  <35.830471, 28.447866, 19.830597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614487, 28.783791, 19.808100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346333, 0.282582, 0.894540,
		0.767138, 0.463534, -0.443436,
		-0.539956, 0.839812, -0.056243,
		35.452499, 29.035734, 19.791227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580578, 28.593088, 20.030279>,  <35.830471, 28.447866, 19.830597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580578, 28.593088, 20.030279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.909313, 28.417208, 20.175190>,  <37.106556, 28.311680, 20.262136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.909313, 28.417208, 20.175190>,  <36.580578, 28.593088, 20.030279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909313, 28.417208, 20.175190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250955, -0.291479, -0.923072,
		0.511471, 0.849532, -0.129204,
		0.821839, -0.439700, 0.362277,
		37.155865, 28.285297, 20.283873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110958, 28.837265, 19.519964>,  <36.580578, 28.593088, 20.030279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110958, 28.837265, 19.519964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250011, 28.514444, 19.710886>,  <37.333443, 28.320751, 19.825439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250011, 28.514444, 19.710886>,  <37.110958, 28.837265, 19.519964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250011, 28.514444, 19.710886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445052, -0.306028, -0.841591,
		0.825277, 0.504987, 0.252796,
		0.347630, -0.807053, 0.477304,
		37.354301, 28.272329, 19.854076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816643, 28.833111, 19.530005>,  <37.110958, 28.837265, 19.519964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816643, 28.833111, 19.530005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738785, 28.445925, 19.593447>,  <37.692070, 28.213614, 19.631512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.738785, 28.445925, 19.593447>,  <37.816643, 28.833111, 19.530005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738785, 28.445925, 19.593447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539204, -0.240669, -0.807055,
		0.819372, -0.071572, 0.568776,
		-0.194649, -0.967965, 0.158605,
		37.680389, 28.155535, 19.641027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521626, 28.412048, 19.506260>,  <37.816643, 28.833111, 19.530005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521626, 28.412048, 19.506260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209103, 28.175179, 19.427382>,  <38.021587, 28.033056, 19.380054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.209103, 28.175179, 19.427382>,  <38.521626, 28.412048, 19.506260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209103, 28.175179, 19.427382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410150, -0.248975, -0.877376,
		0.470464, -0.766380, 0.437407,
		-0.781307, -0.592176, -0.197197,
		37.974712, 27.997526, 19.368223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774490, 27.712421, 19.240244>,  <38.521626, 28.412048, 19.506260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774490, 27.712421, 19.240244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.399483, 27.717396, 19.101162>,  <38.174477, 27.720381, 19.017714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.399483, 27.717396, 19.101162>,  <38.774490, 27.712421, 19.240244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399483, 27.717396, 19.101162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345449, -0.085768, -0.934510,
		-0.041441, -0.996238, 0.076115,
		-0.937522, 0.012433, -0.347704,
		38.118225, 27.721127, 18.996851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913170, 27.206900, 18.730865>,  <38.774490, 27.712421, 19.240244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913170, 27.206900, 18.730865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565754, 27.395256, 18.669031>,  <38.357304, 27.508270, 18.631931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565754, 27.395256, 18.669031>,  <38.913170, 27.206900, 18.730865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565754, 27.395256, 18.669031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175687, 0.000875, -0.984446,
		-0.463433, -0.882190, -0.083490,
		-0.868541, 0.470893, -0.154584,
		38.305191, 27.536524, 18.622656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698032, 26.761732, 18.283064>,  <38.913170, 27.206900, 18.730865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698032, 26.761732, 18.283064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.494770, 27.103540, 18.240040>,  <38.372810, 27.308626, 18.214226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.494770, 27.103540, 18.240040>,  <38.698032, 26.761732, 18.283064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494770, 27.103540, 18.240040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092806, -0.069831, -0.993233,
		-0.856249, -0.514701, -0.043819,
		-0.508158, 0.854521, -0.107560,
		38.342323, 27.359898, 18.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491322, 26.641920, 17.613333>,  <38.698032, 26.761732, 18.283064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491322, 26.641920, 17.613333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441177, 27.037136, 17.649237>,  <38.411091, 27.274265, 17.670778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441177, 27.037136, 17.649237>,  <38.491322, 26.641920, 17.613333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441177, 27.037136, 17.649237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047746, 0.084361, -0.995291,
		-0.990961, -0.129059, 0.036600,
		-0.125364, 0.988042, 0.089760,
		38.403568, 27.333549, 17.676165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965710, 26.849926, 17.088049>,  <38.491322, 26.641920, 17.613333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965710, 26.849926, 17.088049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180492, 27.173727, 17.183031>,  <38.309361, 27.368008, 17.240021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180492, 27.173727, 17.183031>,  <37.965710, 26.849926, 17.088049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180492, 27.173727, 17.183031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094049, 0.222277, -0.970437,
		-0.838351, 0.543415, 0.043220,
		0.536956, 0.809502, 0.237454,
		38.341579, 27.416578, 17.254267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.463062, 33.235966, 32.648369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842415, 33.145458, 32.559486>,  <37.070026, 33.091152, 32.506157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842415, 33.145458, 32.559486>,  <36.463062, 33.235966, 32.648369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842415, 33.145458, 32.559486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189707, 0.156724, -0.969252,
		0.254139, 0.961374, 0.105709,
		0.948380, -0.226270, -0.222210,
		37.126930, 33.077576, 32.492825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691929, 33.658253, 32.098888>,  <36.463062, 33.235966, 32.648369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691929, 33.658253, 32.098888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938309, 33.347340, 32.047607>,  <37.086136, 33.160789, 32.016838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938309, 33.347340, 32.047607>,  <36.691929, 33.658253, 32.098888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938309, 33.347340, 32.047607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370095, -0.141844, -0.918101,
		0.695443, 0.612948, -0.375038,
		0.615945, -0.777287, -0.128205,
		37.123093, 33.114155, 32.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828064, 33.705471, 31.428492>,  <36.691929, 33.658253, 32.098888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828064, 33.705471, 31.428492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939373, 33.332092, 31.519035>,  <37.006161, 33.108067, 31.573362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.939373, 33.332092, 31.519035>,  <36.828064, 33.705471, 31.428492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939373, 33.332092, 31.519035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275968, -0.303434, -0.912014,
		0.920003, 0.191322, -0.342040,
		0.278274, -0.933447, 0.226361,
		37.022854, 33.052059, 31.586945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129776, 33.424690, 30.828609>,  <36.828064, 33.705471, 31.428492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129776, 33.424690, 30.828609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024998, 33.097496, 31.033466>,  <36.962132, 32.901180, 31.156382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024998, 33.097496, 31.033466>,  <37.129776, 33.424690, 30.828609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024998, 33.097496, 31.033466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210873, -0.469339, -0.857469,
		0.941764, -0.332604, -0.049551,
		-0.261942, -0.817983, 0.512143,
		36.946415, 32.852100, 31.187109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119503, 32.857235, 30.260485>,  <37.129776, 33.424690, 30.828609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119503, 32.857235, 30.260485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925262, 32.665913, 30.553173>,  <36.808720, 32.551121, 30.728786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925262, 32.665913, 30.553173>,  <37.119503, 32.857235, 30.260485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925262, 32.665913, 30.553173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249267, -0.726527, -0.640332,
		0.837888, -0.493341, 0.233579,
		-0.485603, -0.478303, 0.731721,
		36.779583, 32.522423, 30.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412075, 32.178238, 30.197147>,  <37.119503, 32.857235, 30.260485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412075, 32.178238, 30.197147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066399, 32.128723, 30.392223>,  <36.858994, 32.099014, 30.509270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066399, 32.128723, 30.392223>,  <37.412075, 32.178238, 30.197147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066399, 32.128723, 30.392223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187748, -0.819925, -0.540809,
		0.466816, -0.558928, 0.685334,
		-0.864195, -0.123788, 0.487691,
		36.807140, 32.091587, 30.538530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387753, 31.432589, 30.401529>,  <37.412075, 32.178238, 30.197147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387753, 31.432589, 30.401529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010059, 31.563614, 30.414948>,  <36.783443, 31.642229, 30.422998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010059, 31.563614, 30.414948>,  <37.387753, 31.432589, 30.401529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010059, 31.563614, 30.414948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251668, -0.652241, -0.715014,
		-0.212332, -0.683583, 0.698305,
		-0.944235, 0.327562, 0.033544,
		36.726788, 31.661882, 30.425011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936249, 30.931519, 30.462273>,  <37.387753, 31.432589, 30.401529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936249, 30.931519, 30.462273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712860, 31.226320, 30.309990>,  <36.578827, 31.403202, 30.218620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712860, 31.226320, 30.309990>,  <36.936249, 30.931519, 30.462273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712860, 31.226320, 30.309990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145674, -0.538948, -0.829647,
		-0.816634, -0.407873, 0.408348,
		-0.558468, 0.737004, -0.380707,
		36.545319, 31.447422, 30.195778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407845, 30.624619, 30.263035>,  <36.936249, 30.931519, 30.462273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407845, 30.624619, 30.263035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380299, 30.959940, 30.046700>,  <36.363773, 31.161133, 29.916899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380299, 30.959940, 30.046700>,  <36.407845, 30.624619, 30.263035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380299, 30.959940, 30.046700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180680, -0.543638, -0.819642,
		-0.981129, 0.041277, 0.188900,
		-0.068860, 0.838304, -0.540837,
		36.359642, 31.211432, 29.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831120, 30.510870, 29.788208>,  <36.407845, 30.624619, 30.263035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831120, 30.510870, 29.788208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018620, 30.822268, 29.621246>,  <36.131119, 31.009106, 29.521070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018620, 30.822268, 29.621246>,  <35.831120, 30.510870, 29.788208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018620, 30.822268, 29.621246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132609, -0.405158, -0.904578,
		-0.873321, 0.479371, -0.086683,
		0.468749, 0.778492, -0.417402,
		36.159245, 31.055815, 29.496025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358662, 30.882647, 29.343996>,  <35.831120, 30.510870, 29.788208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358662, 30.882647, 29.343996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740139, 30.915207, 29.228176>,  <35.969025, 30.934744, 29.158684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740139, 30.915207, 29.228176>,  <35.358662, 30.882647, 29.343996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740139, 30.915207, 29.228176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239580, -0.376422, -0.894935,
		-0.181843, 0.922865, -0.339489,
		0.953695, 0.081403, -0.289550,
		36.026249, 30.939629, 29.141312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261013, 30.716959, 28.697624>,  <35.358662, 30.882647, 29.343996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261013, 30.716959, 28.697624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658157, 30.758345, 28.721375>,  <35.896442, 30.783176, 28.735624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658157, 30.758345, 28.721375>,  <35.261013, 30.716959, 28.697624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658157, 30.758345, 28.721375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091853, -0.345463, -0.933926,
		-0.076116, 0.932711, -0.352500,
		0.992859, 0.103465, 0.059377,
		35.956017, 30.789385, 28.739187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056927, 31.320200, 28.244143>,  <35.261013, 30.716959, 28.697624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056927, 31.320200, 28.244143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682045, 31.439251, 28.171415>,  <34.457115, 31.510681, 28.127779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682045, 31.439251, 28.171415>,  <35.056927, 31.320200, 28.244143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682045, 31.439251, 28.171415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110001, 0.242453, 0.963907,
		0.330969, 0.923381, -0.194490,
		-0.937208, 0.297630, -0.181817,
		34.400883, 31.528540, 28.116871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939659, 32.054169, 28.614254>,  <35.056927, 31.320200, 28.244143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939659, 32.054169, 28.614254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585857, 31.871565, 28.575773>,  <34.373577, 31.762003, 28.552685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585857, 31.871565, 28.575773>,  <34.939659, 32.054169, 28.614254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585857, 31.871565, 28.575773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286991, 0.369843, 0.883659,
		-0.367819, 0.809207, -0.458141,
		-0.884503, -0.456509, -0.096201,
		34.320507, 31.734612, 28.546913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363823, 32.557362, 28.702175>,  <34.939659, 32.054169, 28.614254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363823, 32.557362, 28.702175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196507, 32.200611, 28.770979>,  <34.096119, 31.986561, 28.812262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196507, 32.200611, 28.770979>,  <34.363823, 32.557362, 28.702175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196507, 32.200611, 28.770979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427849, 0.360514, 0.828840,
		-0.801236, 0.273100, -0.532388,
		-0.418289, -0.891878, 0.172011,
		34.071018, 31.933048, 28.822582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674541, 32.734264, 28.887468>,  <34.363823, 32.557362, 28.702175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674541, 32.734264, 28.887468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772774, 32.375088, 29.033560>,  <33.831715, 32.159584, 29.121216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772774, 32.375088, 29.033560>,  <33.674541, 32.734264, 28.887468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772774, 32.375088, 29.033560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350272, 0.269114, 0.897155,
		-0.903880, -0.348257, -0.248433,
		0.245584, -0.897940, 0.365231,
		33.846447, 32.105705, 29.143129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176949, 32.625622, 29.419306>,  <33.674541, 32.734264, 28.887468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176949, 32.625622, 29.419306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431328, 32.335255, 29.524084>,  <33.583954, 32.161034, 29.586952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431328, 32.335255, 29.524084>,  <33.176949, 32.625622, 29.419306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431328, 32.335255, 29.524084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235671, 0.140538, 0.961617,
		-0.734866, -0.673273, -0.081702,
		0.635949, -0.725915, 0.261948,
		33.622112, 32.117481, 29.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807331, 32.129089, 29.813829>,  <33.176949, 32.625622, 29.419306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807331, 32.129089, 29.813829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195797, 32.106907, 29.906586>,  <33.428875, 32.093597, 29.962238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.195797, 32.106907, 29.906586>,  <32.807331, 32.129089, 29.813829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195797, 32.106907, 29.906586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231979, 0.004894, 0.972709,
		-0.055075, -0.998449, -0.008111,
		0.971160, -0.055454, 0.231889,
		33.487144, 32.090271, 29.976152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795162, 31.714724, 30.448063>,  <32.807331, 32.129089, 29.813829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795162, 31.714724, 30.448063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168930, 31.857189, 30.448893>,  <33.393192, 31.942669, 30.449390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168930, 31.857189, 30.448893>,  <32.795162, 31.714724, 30.448063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168930, 31.857189, 30.448893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048777, -0.133729, 0.989817,
		0.352813, -0.924805, -0.142332,
		0.934422, 0.356163, 0.002072,
		33.449257, 31.964039, 30.449514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200500, 31.296450, 30.968134>,  <32.795162, 31.714724, 30.448063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200500, 31.296450, 30.968134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380482, 31.652397, 30.937992>,  <33.488472, 31.865965, 30.919907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380482, 31.652397, 30.937992>,  <33.200500, 31.296450, 30.968134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380482, 31.652397, 30.937992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283100, -0.062101, 0.957078,
		0.846993, -0.451973, -0.279864,
		0.449953, 0.889867, -0.075354,
		33.515469, 31.919357, 30.915386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762417, 31.231213, 31.503181>,  <33.200500, 31.296450, 30.968134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762417, 31.231213, 31.503181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784538, 31.621689, 31.419281>,  <33.797813, 31.855974, 31.368940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784538, 31.621689, 31.419281>,  <33.762417, 31.231213, 31.503181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784538, 31.621689, 31.419281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278374, 0.186667, 0.942159,
		0.958879, -0.110496, -0.261422,
		0.055306, 0.976189, -0.209751,
		33.801128, 31.914545, 31.356356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338226, 31.483521, 31.788822>,  <33.762417, 31.231213, 31.503181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338226, 31.483521, 31.788822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162041, 31.839334, 31.740290>,  <34.056328, 32.052822, 31.711170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162041, 31.839334, 31.740290>,  <34.338226, 31.483521, 31.788822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162041, 31.839334, 31.740290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255671, 0.253838, 0.932844,
		0.860594, 0.379865, -0.339235,
		-0.440466, 0.889533, -0.121331,
		34.029900, 32.106194, 31.703890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834991, 32.000469, 32.106686>,  <34.338226, 31.483521, 31.788822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834991, 32.000469, 32.106686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468960, 32.161453, 32.096428>,  <34.249340, 32.258041, 32.090275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468960, 32.161453, 32.096428>,  <34.834991, 32.000469, 32.106686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468960, 32.161453, 32.096428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104553, 0.298182, 0.948765,
		0.389483, 0.865515, -0.314939,
		-0.915080, 0.402456, -0.025644,
		34.194435, 32.282188, 32.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975651, 32.629372, 32.336430>,  <34.834991, 32.000469, 32.106686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975651, 32.629372, 32.336430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596806, 32.545773, 32.433830>,  <34.369499, 32.495613, 32.492271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596806, 32.545773, 32.433830>,  <34.975651, 32.629372, 32.336430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596806, 32.545773, 32.433830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166967, 0.327040, 0.930144,
		-0.274034, 0.921609, -0.274848,
		-0.947115, -0.209000, 0.243498,
		34.312672, 32.483074, 32.506878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607979, 33.231392, 32.550137>,  <34.975651, 32.629372, 32.336430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607979, 33.231392, 32.550137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418121, 32.920311, 32.715012>,  <34.304207, 32.733662, 32.813938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418121, 32.920311, 32.715012>,  <34.607979, 33.231392, 32.550137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418121, 32.920311, 32.715012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133340, 0.399360, 0.907046,
		-0.870022, 0.485480, -0.085854,
		-0.474639, -0.777702, 0.412186,
		34.275730, 32.687000, 32.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250950, 33.520287, 33.019756>,  <34.607979, 33.231392, 32.550137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250950, 33.520287, 33.019756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221844, 33.136414, 33.128353>,  <34.204380, 32.906090, 33.193512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221844, 33.136414, 33.128353>,  <34.250950, 33.520287, 33.019756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221844, 33.136414, 33.128353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019653, 0.270780, 0.962441,
		-0.997155, 0.075369, -0.000843,
		-0.072766, -0.959687, 0.271491,
		34.200012, 32.848507, 33.209801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667896, 33.989067, 32.679787>,  <34.250950, 33.520287, 33.019756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667896, 33.989067, 32.679787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630173, 34.372288, 32.571533>,  <34.607536, 34.602219, 32.506580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630173, 34.372288, 32.571533>,  <34.667896, 33.989067, 32.679787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630173, 34.372288, 32.571533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522832, -0.279002, -0.805484,
		-0.847202, 0.065526, 0.527214,
		-0.094313, 0.958052, -0.270630,
		34.601879, 34.659702, 32.490345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059002, 34.055111, 32.249451>,  <34.667896, 33.989067, 32.679787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059002, 34.055111, 32.249451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.284878, 34.361359, 32.126190>,  <34.420403, 34.545109, 32.052235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.284878, 34.361359, 32.126190>,  <34.059002, 34.055111, 32.249451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284878, 34.361359, 32.126190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531503, 0.051719, -0.845476,
		-0.631375, 0.641212, 0.436134,
		0.564685, 0.765619, -0.308152,
		34.454285, 34.591045, 32.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614300, 34.684784, 31.979296>,  <34.059002, 34.055111, 32.249451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614300, 34.684784, 31.979296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973358, 34.684502, 31.803009>,  <34.188793, 34.684334, 31.697237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973358, 34.684502, 31.803009>,  <33.614300, 34.684784, 31.979296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973358, 34.684502, 31.803009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432842, 0.186795, -0.881904,
		0.082947, 0.982399, 0.167370,
		0.897646, -0.000706, -0.440717,
		34.242653, 34.684288, 31.670794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621971, 35.254871, 31.500319>,  <33.614300, 34.684784, 31.979296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621971, 35.254871, 31.500319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 34.994038, 31.380699>,  <34.067844, 34.837536, 31.308928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 34.994038, 31.380699>,  <33.621971, 35.254871, 31.500319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900642, 34.994038, 31.380699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245518, 0.174961, -0.953472,
		0.674067, 0.737681, -0.038208,
		0.696673, -0.652085, -0.299050,
		34.109646, 34.798412, 31.290985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030437, 35.607971, 31.011272>,  <33.621971, 35.254871, 31.500319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030437, 35.607971, 31.011272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079536, 35.215828, 30.949530>,  <34.108997, 34.980541, 30.912483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079536, 35.215828, 30.949530>,  <34.030437, 35.607971, 31.011272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079536, 35.215828, 30.949530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187894, 0.129765, -0.973579,
		0.974489, 0.148511, -0.168275,
		0.122751, -0.980360, -0.154359,
		34.116364, 34.921719, 30.903221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307758, 35.580940, 30.332153>,  <34.030437, 35.607971, 31.011272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307758, 35.580940, 30.332153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185211, 35.202438, 30.373608>,  <34.111683, 34.975338, 30.398481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185211, 35.202438, 30.373608>,  <34.307758, 35.580940, 30.332153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185211, 35.202438, 30.373608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047628, -0.093498, -0.994480,
		0.950720, -0.309617, -0.016423,
		-0.306372, -0.946253, 0.103637,
		34.093300, 34.918564, 30.404699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669781, 35.254269, 29.801216>,  <34.307758, 35.580940, 30.332153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669781, 35.254269, 29.801216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384644, 34.982185, 29.869526>,  <34.213562, 34.818935, 29.910511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384644, 34.982185, 29.869526>,  <34.669781, 35.254269, 29.801216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384644, 34.982185, 29.869526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105176, -0.137061, -0.984963,
		0.693390, -0.720087, 0.026161,
		-0.712845, -0.680212, 0.170773,
		34.170792, 34.778122, 29.920757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898121, 34.645699, 29.525099>,  <34.669781, 35.254269, 29.801216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898121, 34.645699, 29.525099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499336, 34.634663, 29.554220>,  <34.260063, 34.628040, 29.571693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499336, 34.634663, 29.554220>,  <34.898121, 34.645699, 29.525099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499336, 34.634663, 29.554220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064125, -0.239287, -0.968829,
		0.044155, -0.970557, 0.236791,
		-0.996965, -0.027594, 0.072803,
		34.200249, 34.626385, 29.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589233, 33.999939, 29.447805>,  <34.898121, 34.645699, 29.525099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589233, 33.999939, 29.447805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300243, 34.252506, 29.335138>,  <34.126850, 34.404049, 29.267538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300243, 34.252506, 29.335138>,  <34.589233, 33.999939, 29.447805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300243, 34.252506, 29.335138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136559, -0.529683, -0.837131,
		-0.677778, -0.566340, 0.468908,
		-0.722474, 0.631423, -0.281669,
		34.083500, 34.441933, 29.250637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254925, 33.589935, 28.918438>,  <34.589233, 33.999939, 29.447805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254925, 33.589935, 28.918438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103607, 33.953686, 28.849241>,  <34.012817, 34.171936, 28.807724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.103607, 33.953686, 28.849241>,  <34.254925, 33.589935, 28.918438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103607, 33.953686, 28.849241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044870, -0.204672, -0.977802,
		-0.924598, -0.362133, 0.118229,
		-0.378292, 0.909378, -0.172991,
		33.990120, 34.226498, 28.797344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721931, 33.534573, 28.488613>,  <34.254925, 33.589935, 28.918438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721931, 33.534573, 28.488613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766418, 33.929752, 28.445560>,  <33.793110, 34.166859, 28.419729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766418, 33.929752, 28.445560>,  <33.721931, 33.534573, 28.488613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766418, 33.929752, 28.445560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043169, -0.103399, -0.993702,
		-0.992858, 0.115162, 0.031149,
		0.111216, 0.987950, -0.107632,
		33.799782, 34.226139, 28.413271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324654, 33.708862, 27.869865>,  <33.721931, 33.534573, 28.488613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324654, 33.708862, 27.869865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494392, 34.070164, 27.895340>,  <33.596237, 34.286945, 27.910625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494392, 34.070164, 27.895340>,  <33.324654, 33.708862, 27.869865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494392, 34.070164, 27.895340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046105, 0.048690, -0.997749,
		-0.904324, 0.426331, -0.020983,
		0.424350, 0.903256, 0.063688,
		33.621696, 34.341141, 27.914446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906376, 34.275425, 27.493217>,  <33.324654, 33.708862, 27.869865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906376, 34.275425, 27.493217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298409, 34.352287, 27.513290>,  <33.533627, 34.398403, 27.525333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298409, 34.352287, 27.513290>,  <32.906376, 34.275425, 27.493217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298409, 34.352287, 27.513290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074895, -0.123590, -0.989503,
		-0.183936, 0.973551, -0.135520,
		0.980081, 0.192155, 0.050181,
		33.592434, 34.409935, 27.528345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113140, 34.808826, 27.038889>,  <32.906376, 34.275425, 27.493217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113140, 34.808826, 27.038889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469925, 34.639042, 27.101152>,  <33.683994, 34.537170, 27.138510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.469925, 34.639042, 27.101152>,  <33.113140, 34.808826, 27.038889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469925, 34.639042, 27.101152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197870, 0.056940, -0.978573,
		0.406508, 0.903652, 0.134777,
		0.891964, -0.424466, 0.155659,
		33.737514, 34.511703, 27.147850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456924, 35.072147, 26.556551>,  <33.113140, 34.808826, 27.038889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456924, 35.072147, 26.556551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722473, 34.790211, 26.656528>,  <33.881802, 34.621048, 26.716515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722473, 34.790211, 26.656528>,  <33.456924, 35.072147, 26.556551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722473, 34.790211, 26.656528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286569, -0.068947, -0.955576,
		0.690758, 0.706011, 0.156212,
		0.663876, -0.704837, 0.249946,
		33.921635, 34.578758, 26.731512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141373, 35.268745, 26.248348>,  <33.456924, 35.072147, 26.556551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141373, 35.268745, 26.248348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189526, 34.879269, 26.325745>,  <34.218418, 34.645584, 26.372183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189526, 34.879269, 26.325745>,  <34.141373, 35.268745, 26.248348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189526, 34.879269, 26.325745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276344, -0.154336, -0.948585,
		0.953490, 0.167659, 0.250494,
		0.120379, -0.973689, 0.193490,
		34.225639, 34.587162, 26.383791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839340, 35.132320, 26.082832>,  <34.141373, 35.268745, 26.248348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839340, 35.132320, 26.082832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616032, 34.801273, 26.059582>,  <34.482048, 34.602646, 26.045631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616032, 34.801273, 26.059582>,  <34.839340, 35.132320, 26.082832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616032, 34.801273, 26.059582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402959, -0.209238, -0.890979,
		0.725231, -0.520829, 0.450308,
		-0.558269, -0.827621, -0.058127,
		34.448551, 34.552986, 26.042143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245129, 34.501030, 25.956596>,  <34.839340, 35.132320, 26.082832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245129, 34.501030, 25.956596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882530, 34.381886, 25.836905>,  <34.664970, 34.310398, 25.765089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882530, 34.381886, 25.836905>,  <35.245129, 34.501030, 25.956596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882530, 34.381886, 25.836905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383676, -0.285353, -0.878275,
		0.176216, -0.910963, 0.372954,
		-0.906499, -0.297860, -0.299231,
		34.610580, 34.292526, 25.747135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342712, 33.817329, 25.668289>,  <35.245129, 34.501030, 25.956596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342712, 33.817329, 25.668289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983994, 33.921463, 25.525188>,  <34.768764, 33.983944, 25.439327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983994, 33.921463, 25.525188>,  <35.342712, 33.817329, 25.668289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983994, 33.921463, 25.525188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240527, -0.391808, -0.888050,
		-0.371351, -0.882450, 0.288757,
		-0.896797, 0.260325, -0.357751,
		34.714954, 33.999561, 25.417862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011250, 33.222015, 25.308109>,  <35.342712, 33.817329, 25.668289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011250, 33.222015, 25.308109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831268, 33.543610, 25.152597>,  <34.723282, 33.736565, 25.059290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831268, 33.543610, 25.152597>,  <35.011250, 33.222015, 25.308109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831268, 33.543610, 25.152597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107095, -0.383620, -0.917260,
		-0.886609, -0.454358, 0.086507,
		-0.449950, 0.803987, -0.388780,
		34.696281, 33.784805, 25.035963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600533, 32.992176, 24.723047>,  <35.011250, 33.222015, 25.308109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600533, 32.992176, 24.723047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657955, 33.382103, 24.654783>,  <34.692410, 33.616058, 24.613825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.657955, 33.382103, 24.654783>,  <34.600533, 32.992176, 24.723047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657955, 33.382103, 24.654783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181772, -0.195484, -0.963714,
		-0.972806, 0.107324, -0.205257,
		0.143555, 0.974817, -0.170660,
		34.701023, 33.674549, 24.603586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225273, 32.990795, 24.136993>,  <34.600533, 32.992176, 24.723047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225273, 32.990795, 24.136993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419811, 33.340271, 24.141647>,  <34.536533, 33.549957, 24.144440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419811, 33.340271, 24.141647>,  <34.225273, 32.990795, 24.136993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419811, 33.340271, 24.141647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348280, -0.181627, -0.919626,
		-0.801354, 0.451310, -0.392622,
		0.486347, 0.873688, 0.011635,
		34.565716, 33.602379, 24.145138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890739, 33.326717, 23.549160>,  <34.225273, 32.990795, 24.136993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890739, 33.326717, 23.549160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236935, 33.503609, 23.643276>,  <34.444653, 33.609745, 23.699745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236935, 33.503609, 23.643276>,  <33.890739, 33.326717, 23.549160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236935, 33.503609, 23.643276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304780, -0.092122, -0.947957,
		-0.397539, 0.892158, -0.214514,
		0.865489, 0.442230, 0.235290,
		34.496582, 33.636276, 23.713863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942020, 33.838467, 23.020010>,  <33.890739, 33.326717, 23.549160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942020, 33.838467, 23.020010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309822, 33.807579, 23.174179>,  <34.530502, 33.789047, 23.266680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.309822, 33.807579, 23.174179>,  <33.942020, 33.838467, 23.020010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309822, 33.807579, 23.174179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385693, -0.011969, -0.922549,
		0.075848, 0.996943, 0.018776,
		0.919504, -0.077215, 0.385422,
		34.585674, 33.784416, 23.289806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247066, 34.442245, 22.781773>,  <33.942020, 33.838467, 23.020010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247066, 34.442245, 22.781773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523167, 34.160328, 22.847290>,  <34.688828, 33.991177, 22.886600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523167, 34.160328, 22.847290>,  <34.247066, 34.442245, 22.781773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523167, 34.160328, 22.847290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334414, 0.109991, -0.935986,
		0.641659, 0.700836, 0.311613,
		0.690247, -0.704792, 0.163792,
		34.730240, 33.948891, 22.896427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871094, 34.643307, 22.410158>,  <34.247066, 34.442245, 22.781773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871094, 34.643307, 22.410158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913822, 34.254131, 22.492113>,  <34.939457, 34.020626, 22.541286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913822, 34.254131, 22.492113>,  <34.871094, 34.643307, 22.410158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913822, 34.254131, 22.492113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376502, -0.151143, -0.914004,
		0.920237, 0.174772, 0.350169,
		0.106817, -0.972939, 0.204890,
		34.945866, 33.962250, 22.553579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478642, 34.521595, 22.155165>,  <34.871094, 34.643307, 22.410158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478642, 34.521595, 22.155165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318382, 34.156933, 22.191759>,  <35.222225, 33.938137, 22.213717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318382, 34.156933, 22.191759>,  <35.478642, 34.521595, 22.155165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318382, 34.156933, 22.191759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283796, -0.218417, -0.933678,
		0.871172, -0.348113, 0.346232,
		-0.400649, -0.911653, 0.091486,
		35.198189, 33.883438, 22.219204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921467, 34.105816, 21.714279>,  <35.478642, 34.521595, 22.155165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921467, 34.105816, 21.714279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576046, 33.908878, 21.757874>,  <35.368793, 33.790714, 21.784029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576046, 33.908878, 21.757874>,  <35.921467, 34.105816, 21.714279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576046, 33.908878, 21.757874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048942, -0.296935, -0.953643,
		0.501885, -0.818183, 0.280514,
		-0.863549, -0.492348, 0.108984,
		35.316982, 33.761173, 21.790569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584145, 33.599777, 21.752287>,  <35.921467, 34.105816, 21.714279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584145, 33.599777, 21.752287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881840, 33.864964, 21.719831>,  <37.060459, 34.024075, 21.700357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881840, 33.864964, 21.719831>,  <36.584145, 33.599777, 21.752287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881840, 33.864964, 21.719831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018278, 0.141652, 0.989748,
		0.667663, -0.735126, 0.117540,
		0.744240, 0.662966, -0.081139,
		37.105110, 34.063854, 21.695490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990875, 33.526203, 22.351955>,  <36.584145, 33.599777, 21.752287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990875, 33.526203, 22.351955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157848, 33.866123, 22.223215>,  <37.258030, 34.070076, 22.145971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157848, 33.866123, 22.223215>,  <36.990875, 33.526203, 22.351955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157848, 33.866123, 22.223215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049234, 0.332514, 0.941812,
		0.907374, -0.408987, 0.096963,
		0.417431, 0.849802, -0.321851,
		37.283077, 34.121063, 22.126659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504333, 33.602036, 22.786184>,  <36.990875, 33.526203, 22.351955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504333, 33.602036, 22.786184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462563, 33.970192, 22.635468>,  <37.437500, 34.191086, 22.545038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.462563, 33.970192, 22.635468>,  <37.504333, 33.602036, 22.786184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462563, 33.970192, 22.635468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188793, 0.390320, 0.901115,
		0.976449, 0.022963, -0.214523,
		-0.104425, 0.920393, -0.376792,
		37.431236, 34.246311, 22.522430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049030, 33.976227, 23.016407>,  <37.504333, 33.602036, 22.786184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049030, 33.976227, 23.016407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.776939, 34.252060, 22.916992>,  <37.613686, 34.417561, 22.857344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.776939, 34.252060, 22.916992>,  <38.049030, 33.976227, 23.016407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776939, 34.252060, 22.916992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091414, 0.416228, 0.904654,
		0.727280, 0.592649, -0.346166,
		-0.680226, 0.689581, -0.248538,
		37.572872, 34.458935, 22.842430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343464, 34.638344, 23.156303>,  <38.049030, 33.976227, 23.016407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343464, 34.638344, 23.156303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946930, 34.690842, 23.158546>,  <37.709011, 34.722340, 23.159893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946930, 34.690842, 23.158546>,  <38.343464, 34.638344, 23.156303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946930, 34.690842, 23.158546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047453, 0.317974, 0.946911,
		0.122492, 0.938972, -0.321447,
		-0.991334, 0.131242, 0.005608,
		37.649529, 34.730213, 23.160229>
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
