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
	<24.274624, 35.727459, 35.299530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218283, 35.438717, 35.028507>,  <24.184479, 35.265472, 34.865894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218283, 35.438717, 35.028507>,  <24.274624, 35.727459, 35.299530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218283, 35.438717, 35.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917448, -0.352383, 0.184704,
		-0.372089, -0.595605, 0.711902,
		-0.140852, -0.721859, -0.677554,
		24.176027, 35.222160, 34.825241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172337, 35.072258, 35.641979>,  <24.274624, 35.727459, 35.299530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172337, 35.072258, 35.641979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394741, 35.132042, 35.314930>,  <24.528183, 35.167912, 35.118698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394741, 35.132042, 35.314930>,  <24.172337, 35.072258, 35.641979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394741, 35.132042, 35.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830922, -0.124198, 0.542350,
		-0.020486, -0.980936, -0.193247,
		0.556011, 0.149462, -0.817626,
		24.561544, 35.176880, 35.069641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704210, 34.555305, 35.638245>,  <24.172337, 35.072258, 35.641979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704210, 34.555305, 35.638245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816935, 34.863445, 35.409458>,  <24.884569, 35.048328, 35.272186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816935, 34.863445, 35.409458>,  <24.704210, 34.555305, 35.638245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816935, 34.863445, 35.409458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860627, 0.060572, 0.505621,
		0.424151, -0.634737, -0.645915,
		0.281812, 0.770351, -0.571963,
		24.901478, 35.094551, 35.237869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339521, 34.443130, 35.904922>,  <24.704210, 34.555305, 35.638245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339521, 34.443130, 35.904922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366640, 34.428852, 35.506100>,  <25.382912, 34.420284, 35.266804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366640, 34.428852, 35.506100>,  <25.339521, 34.443130, 35.904922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366640, 34.428852, 35.506100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270787, -0.962506, 0.016050,
		-0.960249, 0.268903, -0.074923,
		0.067798, -0.035700, -0.997060,
		25.386980, 34.418140, 35.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910130, 33.780399, 35.665012>,  <25.339521, 34.443130, 35.904922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910130, 33.780399, 35.665012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156189, 33.869762, 35.362576>,  <25.303825, 33.923382, 35.181114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156189, 33.869762, 35.362576>,  <24.910130, 33.780399, 35.665012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156189, 33.869762, 35.362576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267247, -0.843150, -0.466558,
		-0.741734, 0.489067, -0.458959,
		0.615150, 0.223407, -0.756095,
		25.340734, 33.936783, 35.135746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472095, 33.621815, 35.111946>,  <24.910130, 33.780399, 35.665012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472095, 33.621815, 35.111946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859398, 33.601116, 35.014126>,  <25.091780, 33.588696, 34.955433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859398, 33.601116, 35.014126>,  <24.472095, 33.621815, 35.111946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859398, 33.601116, 35.014126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167040, -0.861772, -0.479007,
		-0.185956, 0.504650, -0.843059,
		0.968255, -0.051750, -0.244548,
		25.149874, 33.585590, 34.940762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473911, 33.388290, 34.393398>,  <24.472095, 33.621815, 35.111946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473911, 33.388290, 34.393398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830963, 33.292618, 34.546238>,  <25.045195, 33.235214, 34.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830963, 33.292618, 34.546238>,  <24.473911, 33.388290, 34.393398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830963, 33.292618, 34.546238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027312, -0.874769, -0.483769,
		0.449959, 0.421392, -0.787379,
		0.892632, -0.239181, 0.382101,
		25.098753, 33.220863, 34.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845383, 33.061314, 33.892227>,  <24.473911, 33.388290, 34.393398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845383, 33.061314, 33.892227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039066, 32.942734, 34.221508>,  <25.155277, 32.871586, 34.419075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039066, 32.942734, 34.221508>,  <24.845383, 33.061314, 33.892227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039066, 32.942734, 34.221508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173883, -0.889480, -0.422600,
		0.857500, 0.347767, -0.379147,
		0.484210, -0.296452, 0.823200,
		25.184330, 32.853798, 34.468468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451157, 32.623150, 33.638313>,  <24.845383, 33.061314, 33.892227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451157, 32.623150, 33.638313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426619, 32.520092, 34.024029>,  <25.411896, 32.458260, 34.255459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426619, 32.520092, 34.024029>,  <25.451157, 32.623150, 33.638313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426619, 32.520092, 34.024029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105629, -0.962362, -0.250405,
		0.992512, 0.086496, 0.086250,
		-0.061345, -0.257640, 0.964292,
		25.408215, 32.442799, 34.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057535, 32.073906, 33.764267>,  <25.451157, 32.623150, 33.638313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057535, 32.073906, 33.764267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760210, 32.036804, 34.029259>,  <25.581814, 32.014542, 34.188255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760210, 32.036804, 34.029259>,  <26.057535, 32.073906, 33.764267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760210, 32.036804, 34.029259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011726, -0.991995, -0.125734,
		0.668840, -0.085692, 0.738451,
		-0.743314, -0.092754, 0.662481,
		25.537216, 32.008976, 34.228004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207859, 31.565203, 34.258381>,  <26.057535, 32.073906, 33.764267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207859, 31.565203, 34.258381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810022, 31.566122, 34.299908>,  <25.571320, 31.566673, 34.324825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810022, 31.566122, 34.299908>,  <26.207859, 31.565203, 34.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810022, 31.566122, 34.299908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013128, -0.988955, 0.147633,
		0.103014, 0.148198, 0.983578,
		-0.994593, 0.002296, 0.103821,
		25.511644, 31.566811, 34.331055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048193, 31.188198, 34.925308>,  <26.207859, 31.565203, 34.258381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048193, 31.188198, 34.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705362, 31.214142, 34.720871>,  <25.499664, 31.229708, 34.598209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705362, 31.214142, 34.720871>,  <26.048193, 31.188198, 34.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705362, 31.214142, 34.720871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304822, -0.863611, 0.401572,
		-0.415338, 0.499970, 0.759950,
		-0.857075, 0.064861, -0.511092,
		25.448240, 31.233601, 34.567543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577473, 30.870073, 35.396141>,  <26.048193, 31.188198, 34.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577473, 30.870073, 35.396141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396864, 30.882944, 35.039471>,  <25.288498, 30.890667, 34.825466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396864, 30.882944, 35.039471>,  <25.577473, 30.870073, 35.396141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396864, 30.882944, 35.039471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408202, -0.896085, 0.174364,
		-0.793410, 0.442715, 0.417737,
		-0.451521, 0.032179, -0.891680,
		25.261408, 30.892597, 34.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818651, 30.720875, 35.433540>,  <25.577473, 30.870073, 35.396141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818651, 30.720875, 35.433540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922020, 30.606352, 35.064487>,  <24.984041, 30.537638, 34.843056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922020, 30.606352, 35.064487>,  <24.818651, 30.720875, 35.433540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922020, 30.606352, 35.064487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409852, -0.897349, 0.163665,
		-0.874779, 0.335847, -0.349239,
		0.258423, -0.286307, -0.922630,
		24.999546, 30.520460, 34.787697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183134, 30.314167, 35.178913>,  <24.818651, 30.720875, 35.433540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183134, 30.314167, 35.178913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513542, 30.235510, 34.967625>,  <24.711786, 30.188316, 34.840851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513542, 30.235510, 34.967625>,  <24.183134, 30.314167, 35.178913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513542, 30.235510, 34.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172953, -0.980385, 0.094511,
		-0.536449, 0.013290, -0.843828,
		0.826020, -0.196643, -0.528225,
		24.761349, 30.176517, 34.809158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990499, 29.920000, 34.505505>,  <24.183134, 30.314167, 35.178913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990499, 29.920000, 34.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372946, 29.813553, 34.554539>,  <24.602413, 29.749683, 34.583958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372946, 29.813553, 34.554539>,  <23.990499, 29.920000, 34.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372946, 29.813553, 34.554539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245568, -0.956055, -0.160172,
		0.159823, 0.123039, -0.979448,
		0.956114, -0.266120, 0.122585,
		24.659781, 29.733717, 34.591312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.974497, 29.168722, 34.157001>,  <23.990499, 29.920000, 34.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.974497, 29.168722, 34.157001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348112, 29.225130, 34.288265>,  <24.572281, 29.258974, 34.367023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348112, 29.225130, 34.288265>,  <23.974497, 29.168722, 34.157001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348112, 29.225130, 34.288265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220534, -0.950407, -0.219296,
		0.280957, 0.277200, -0.918816,
		0.934039, 0.141018, 0.328156,
		24.628325, 29.267435, 34.386711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568798, 28.938665, 33.557899>,  <23.974497, 29.168722, 34.157001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568798, 28.938665, 33.557899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716337, 28.933073, 33.929653>,  <24.804861, 28.929718, 34.152706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716337, 28.933073, 33.929653>,  <24.568798, 28.938665, 33.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716337, 28.933073, 33.929653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250667, -0.961344, -0.113946,
		0.895051, 0.274994, -0.351086,
		0.368849, -0.013982, 0.929384,
		24.826992, 28.928879, 34.208469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167669, 28.522657, 33.560165>,  <24.568798, 28.938665, 33.557899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167669, 28.522657, 33.560165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070848, 28.502136, 33.947727>,  <25.012756, 28.489822, 34.180264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070848, 28.502136, 33.947727>,  <25.167669, 28.522657, 33.560165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070848, 28.502136, 33.947727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100468, -0.994558, -0.027564,
		0.965048, 0.090672, 0.245888,
		-0.242051, -0.051305, 0.968906,
		24.998234, 28.486744, 34.238400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647141, 28.072208, 33.781925>,  <25.167669, 28.522657, 33.560165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647141, 28.072208, 33.781925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356600, 28.073444, 34.056850>,  <25.182276, 28.074186, 34.221806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356600, 28.073444, 34.056850>,  <25.647141, 28.072208, 33.781925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356600, 28.073444, 34.056850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003628, -0.999959, 0.008332,
		0.687313, 0.008545, 0.726311,
		-0.726352, 0.003092, 0.687316,
		25.138695, 28.074371, 34.263046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874359, 27.699406, 34.355797>,  <25.647141, 28.072208, 33.781925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874359, 27.699406, 34.355797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475723, 27.709682, 34.387173>,  <25.236542, 27.715849, 34.405998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475723, 27.709682, 34.387173>,  <25.874359, 27.699406, 34.355797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475723, 27.709682, 34.387173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013300, -0.987888, 0.154598,
		0.081465, 0.153027, 0.984859,
		-0.996588, 0.025693, 0.078443,
		25.176746, 27.717390, 34.410706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651834, 27.351887, 35.036743>,  <25.874359, 27.699406, 34.355797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651834, 27.351887, 35.036743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338760, 27.334591, 34.788376>,  <25.150915, 27.324213, 34.639355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338760, 27.334591, 34.788376>,  <25.651834, 27.351887, 35.036743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338760, 27.334591, 34.788376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087978, -0.979883, 0.179134,
		-0.616169, 0.194832, 0.763136,
		-0.782685, -0.043238, -0.620915,
		25.103954, 27.321619, 34.602100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408094, 26.659748, 35.095242>,  <25.651834, 27.351887, 35.036743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408094, 26.659748, 35.095242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174288, 26.791098, 34.798454>,  <25.034004, 26.869907, 34.620384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174288, 26.791098, 34.798454>,  <25.408094, 26.659748, 35.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174288, 26.791098, 34.798454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375401, -0.920133, -0.111488,
		-0.719315, 0.213367, 0.661105,
		-0.584517, 0.328375, -0.741964,
		24.998932, 26.889610, 34.575867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724579, 26.502636, 35.326389>,  <25.408094, 26.659748, 35.095242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724579, 26.502636, 35.326389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755514, 26.514160, 34.927753>,  <24.774075, 26.521074, 34.688572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755514, 26.514160, 34.927753>,  <24.724579, 26.502636, 35.326389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755514, 26.514160, 34.927753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414207, -0.908307, -0.058400,
		-0.906891, 0.417310, -0.058312,
		0.077336, 0.028809, -0.996589,
		24.778715, 26.522802, 34.628777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.092102, 26.175257, 35.010120>,  <24.724579, 26.502636, 35.326389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.092102, 26.175257, 35.010120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405531, 26.144558, 34.763504>,  <24.593588, 26.126139, 34.615536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405531, 26.144558, 34.763504>,  <24.092102, 26.175257, 35.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405531, 26.144558, 34.763504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109715, -0.993839, -0.015722,
		-0.611536, 0.079963, -0.787166,
		0.783573, -0.076749, -0.616541,
		24.640602, 26.121532, 34.578541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873617, 25.943878, 34.287643>,  <24.092102, 26.175257, 35.010120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873617, 25.943878, 34.287643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225525, 25.845989, 34.450676>,  <24.436668, 25.787256, 34.548496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225525, 25.845989, 34.450676>,  <23.873617, 25.943878, 34.287643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225525, 25.845989, 34.450676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271503, -0.962403, 0.008187,
		0.390251, -0.117862, -0.913133,
		0.879767, -0.244723, 0.407579,
		24.489454, 25.772572, 34.572948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452959, 25.399868, 33.976791>,  <23.873617, 25.943878, 34.287643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452959, 25.399868, 33.976791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413774, 25.409752, 34.374744>,  <24.390265, 25.415682, 34.613518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413774, 25.409752, 34.374744>,  <24.452959, 25.399868, 33.976791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413774, 25.409752, 34.374744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483396, -0.875020, -0.025866,
		0.869904, -0.483456, 0.097662,
		-0.097962, 0.024709, 0.994884,
		24.384386, 25.417164, 34.673210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793636, 25.157362, 34.566711>,  <24.452959, 25.399868, 33.976791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793636, 25.157362, 34.566711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085741, 25.194090, 34.837502>,  <25.261003, 25.216127, 34.999973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085741, 25.194090, 34.837502>,  <24.793636, 25.157362, 34.566711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085741, 25.194090, 34.837502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150112, -0.945144, 0.290120,
		0.666474, -0.313485, -0.676417,
		0.730260, 0.091819, 0.676971,
		25.304819, 25.221636, 35.040592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963163, 24.853207, 33.894775>,  <24.793636, 25.157362, 34.566711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963163, 24.853207, 33.894775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110800, 24.998602, 33.552631>,  <25.199381, 25.085840, 33.347343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110800, 24.998602, 33.552631>,  <24.963163, 24.853207, 33.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110800, 24.998602, 33.552631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928802, -0.111432, 0.353426,
		0.033152, -0.924909, -0.378739,
		0.369091, 0.363491, -0.855363,
		25.221527, 25.107649, 33.296021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612841, 24.479897, 33.794296>,  <24.963163, 24.853207, 33.894775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612841, 24.479897, 33.794296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616693, 24.808691, 33.566528>,  <25.619005, 25.005968, 33.429867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616693, 24.808691, 33.566528>,  <25.612841, 24.479897, 33.794296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616693, 24.808691, 33.566528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982537, 0.098039, 0.158145,
		0.185819, -0.561002, -0.806689,
		0.009633, 0.821988, -0.569423,
		25.619583, 25.055288, 33.395702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246202, 24.380499, 33.318462>,  <25.612841, 24.479897, 33.794296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246202, 24.380499, 33.318462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158239, 24.767290, 33.369999>,  <26.105461, 24.999365, 33.400921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158239, 24.767290, 33.369999>,  <26.246202, 24.380499, 33.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158239, 24.767290, 33.369999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970813, 0.203969, 0.126167,
		0.095722, 0.152821, -0.983607,
		-0.219906, 0.966976, 0.128837,
		26.092268, 25.057383, 33.408649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861435, 24.615919, 33.113453>,  <26.246202, 24.380499, 33.318462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861435, 24.615919, 33.113453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129730, 24.389774, 33.305485>,  <27.290707, 24.254087, 33.420704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129730, 24.389774, 33.305485>,  <26.861435, 24.615919, 33.113453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129730, 24.389774, 33.305485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486300, 0.823950, 0.290894,
		-0.560021, 0.038348, 0.827591,
		0.670738, -0.565364, 0.480078,
		27.330952, 24.220165, 33.449509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870077, 24.643501, 33.948345>,  <26.861435, 24.615919, 33.113453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870077, 24.643501, 33.948345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205229, 24.592367, 33.736076>,  <27.406321, 24.561687, 33.608715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205229, 24.592367, 33.736076>,  <26.870077, 24.643501, 33.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205229, 24.592367, 33.736076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255373, 0.951037, 0.174109,
		0.482433, -0.281402, 0.829500,
		0.837880, -0.127836, -0.530674,
		27.456593, 24.554016, 33.576874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327099, 24.952763, 34.320568>,  <26.870077, 24.643501, 33.948345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327099, 24.952763, 34.320568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480856, 24.964945, 33.951500>,  <27.573111, 24.972254, 33.730061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480856, 24.964945, 33.951500>,  <27.327099, 24.952763, 34.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480856, 24.964945, 33.951500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223836, 0.966558, 0.125154,
		0.895623, -0.254634, 0.364720,
		0.384391, 0.030454, -0.922668,
		27.596174, 24.974081, 33.674698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013645, 25.219652, 34.294464>,  <27.327099, 24.952763, 34.320568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013645, 25.219652, 34.294464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810995, 25.299248, 33.958908>,  <27.689405, 25.347006, 33.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810995, 25.299248, 33.958908>,  <28.013645, 25.219652, 34.294464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810995, 25.299248, 33.958908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175037, 0.976477, 0.125917,
		0.844211, -0.083044, -0.529539,
		-0.506626, 0.198990, -0.838888,
		27.659008, 25.358944, 33.707241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408983, 25.599037, 33.818920>,  <28.013645, 25.219652, 34.294464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408983, 25.599037, 33.818920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029619, 25.687740, 33.728283>,  <27.802002, 25.740961, 33.673901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029619, 25.687740, 33.728283>,  <28.408983, 25.599037, 33.818920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029619, 25.687740, 33.728283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193911, 0.971150, 0.138801,
		0.250840, 0.087700, -0.964047,
		-0.948408, 0.221757, -0.226597,
		27.745096, 25.754267, 33.660305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481195, 26.267895, 33.678909>,  <28.408983, 25.599037, 33.818920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481195, 26.267895, 33.678909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084888, 26.223185, 33.709591>,  <27.847103, 26.196360, 33.728001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084888, 26.223185, 33.709591>,  <28.481195, 26.267895, 33.678909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084888, 26.223185, 33.709591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086646, 0.957305, 0.275790,
		-0.104259, 0.266597, -0.958152,
		-0.990769, -0.111773, 0.076708,
		27.787659, 26.189653, 33.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178370, 26.831974, 33.235943>,  <28.481195, 26.267895, 33.678909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178370, 26.831974, 33.235943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905533, 26.715181, 33.504120>,  <27.741831, 26.645105, 33.665028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905533, 26.715181, 33.504120>,  <28.178370, 26.831974, 33.235943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905533, 26.715181, 33.504120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023929, 0.925248, 0.378608,
		-0.730873, 0.242203, -0.638092,
		-0.682093, -0.291983, 0.670443,
		27.700905, 26.627586, 33.705254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720695, 27.428225, 33.228905>,  <28.178370, 26.831974, 33.235943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720695, 27.428225, 33.228905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642656, 27.227676, 33.566086>,  <27.595833, 27.107347, 33.768394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642656, 27.227676, 33.566086>,  <27.720695, 27.428225, 33.228905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642656, 27.227676, 33.566086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085872, 0.864897, 0.494549,
		-0.977017, 0.024100, -0.211795,
		-0.195099, -0.501371, 0.842950,
		27.584127, 27.077265, 33.818970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935680, 27.543480, 33.361202>,  <27.720695, 27.428225, 33.228905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935680, 27.543480, 33.361202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165651, 27.477711, 33.681808>,  <27.303635, 27.438250, 33.874172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165651, 27.477711, 33.681808>,  <26.935680, 27.543480, 33.361202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165651, 27.477711, 33.681808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235979, 0.904652, 0.354850,
		-0.783437, -0.393153, 0.481309,
		0.574927, -0.164424, 0.801513,
		27.338129, 27.428383, 33.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640455, 28.001373, 33.868015>,  <26.935680, 27.543480, 33.361202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640455, 28.001373, 33.868015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985485, 27.896170, 34.040890>,  <27.192503, 27.833048, 34.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985485, 27.896170, 34.040890>,  <26.640455, 28.001373, 33.868015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985485, 27.896170, 34.040890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027020, 0.829084, 0.558471,
		-0.505204, -0.493402, 0.708042,
		0.862577, -0.263010, 0.432188,
		27.244259, 27.817266, 34.170547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512554, 28.086452, 34.571350>,  <26.640455, 28.001373, 33.868015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512554, 28.086452, 34.571350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906555, 28.109880, 34.506435>,  <27.142956, 28.123938, 34.467487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906555, 28.109880, 34.506435>,  <26.512554, 28.086452, 34.571350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906555, 28.109880, 34.506435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003428, 0.947076, 0.320992,
		0.172500, -0.315622, 0.933074,
		0.985003, 0.058569, -0.162288,
		27.202057, 28.127451, 34.457748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862621, 28.397751, 35.225006>,  <26.512554, 28.086452, 34.571350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862621, 28.397751, 35.225006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122820, 28.438280, 34.923920>,  <27.278938, 28.462597, 34.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122820, 28.438280, 34.923920>,  <26.862621, 28.397751, 35.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122820, 28.438280, 34.923920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241063, 0.912274, 0.331126,
		0.720237, -0.396850, 0.569007,
		0.650498, 0.101323, -0.752719,
		27.317968, 28.468678, 34.698105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325748, 28.780827, 35.608715>,  <26.862621, 28.397751, 35.225006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325748, 28.780827, 35.608715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400429, 28.826347, 35.218395>,  <27.445238, 28.853661, 34.984203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400429, 28.826347, 35.218395>,  <27.325748, 28.780827, 35.608715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400429, 28.826347, 35.218395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303805, 0.937893, 0.167509,
		0.934261, -0.327728, 0.140535,
		0.186704, 0.113802, -0.975803,
		27.456440, 28.860489, 34.925655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018909, 29.190994, 35.487835>,  <27.325748, 28.780827, 35.608715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018909, 29.190994, 35.487835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849117, 29.253271, 35.131054>,  <27.747242, 29.290638, 34.916985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849117, 29.253271, 35.131054>,  <28.018909, 29.190994, 35.487835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849117, 29.253271, 35.131054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358241, 0.933599, -0.007524,
		0.831554, -0.322727, -0.452069,
		-0.424479, 0.155693, -0.891952,
		27.721773, 29.299978, 34.863468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366121, 29.668169, 35.198864>,  <28.018909, 29.190994, 35.487835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366121, 29.668169, 35.198864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044704, 29.721382, 34.966785>,  <27.851854, 29.753309, 34.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044704, 29.721382, 34.966785>,  <28.366121, 29.668169, 35.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044704, 29.721382, 34.966785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156969, 0.987562, 0.009043,
		0.574181, -0.083806, -0.814428,
		-0.803540, 0.133032, -0.580195,
		27.803642, 29.761292, 34.792728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562122, 30.181728, 34.873013>,  <28.366121, 29.668169, 35.198864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562122, 30.181728, 34.873013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171173, 30.181948, 34.788406>,  <27.936604, 30.182079, 34.737644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171173, 30.181948, 34.788406>,  <28.562122, 30.181728, 34.873013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171173, 30.181948, 34.788406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024910, 0.993335, -0.112536,
		0.210045, -0.115259, -0.970874,
		-0.977374, 0.000547, -0.211516,
		27.877960, 30.182112, 34.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464565, 30.585445, 34.150757>,  <28.562122, 30.181728, 34.873013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464565, 30.585445, 34.150757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115969, 30.608461, 34.345566>,  <27.906811, 30.622271, 34.462452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115969, 30.608461, 34.345566>,  <28.464565, 30.585445, 34.150757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115969, 30.608461, 34.345566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005675, 0.991843, -0.127336,
		-0.490376, -0.113737, -0.864058,
		-0.871493, 0.057539, 0.487021,
		27.854521, 30.625723, 34.491673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017139, 31.146454, 33.846043>,  <28.464565, 30.585445, 34.150757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017139, 31.146454, 33.846043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826784, 31.094643, 34.194008>,  <27.712570, 31.063555, 34.402786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826784, 31.094643, 34.194008>,  <28.017139, 31.146454, 33.846043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826784, 31.094643, 34.194008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219668, 0.975253, 0.025045,
		-0.851631, -0.179174, -0.492566,
		-0.475889, -0.129530, 0.869915,
		27.684017, 31.055784, 34.454983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351831, 31.501011, 33.810581>,  <28.017139, 31.146454, 33.846043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351831, 31.501011, 33.810581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475065, 31.462204, 34.189140>,  <27.549006, 31.438919, 34.416275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475065, 31.462204, 34.189140>,  <27.351831, 31.501011, 33.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475065, 31.462204, 34.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179833, 0.970914, 0.158071,
		-0.934208, -0.218893, 0.281675,
		0.308082, -0.097017, 0.946400,
		27.567490, 31.433100, 34.473061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900339, 32.019207, 34.309639>,  <27.351831, 31.501011, 33.810581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900339, 32.019207, 34.309639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215752, 31.912176, 34.531132>,  <27.404999, 31.847958, 34.664028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215752, 31.912176, 34.531132>,  <26.900339, 32.019207, 34.309639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215752, 31.912176, 34.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060367, 0.862362, 0.502681,
		-0.612027, -0.429806, 0.663845,
		0.788530, -0.267580, 0.553734,
		27.452311, 31.831902, 34.697250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696466, 32.132725, 35.015850>,  <26.900339, 32.019207, 34.309639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696466, 32.132725, 35.015850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094816, 32.118683, 34.982380>,  <27.333826, 32.110256, 34.962296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094816, 32.118683, 34.982380>,  <26.696466, 32.132725, 35.015850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094816, 32.118683, 34.982380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063901, 0.926038, 0.371982,
		0.064431, -0.375795, 0.924460,
		0.995874, -0.035107, -0.083680,
		27.393578, 32.108150, 34.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943085, 32.471199, 35.612606>,  <26.696466, 32.132725, 35.015850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943085, 32.471199, 35.612606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256433, 32.479057, 35.364109>,  <27.444443, 32.483772, 35.215012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256433, 32.479057, 35.364109>,  <26.943085, 32.471199, 35.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256433, 32.479057, 35.364109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223613, 0.923667, 0.311185,
		0.579935, -0.382691, 0.719182,
		0.783373, 0.019649, -0.621242,
		27.491446, 32.484951, 35.177738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410999, 32.697170, 36.019722>,  <26.943085, 32.471199, 35.612606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410999, 32.697170, 36.019722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535494, 32.780083, 35.648743>,  <27.610191, 32.829830, 35.426155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535494, 32.780083, 35.648743>,  <27.410999, 32.697170, 36.019722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535494, 32.780083, 35.648743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002879, 0.976125, 0.217190,
		0.950328, -0.064928, 0.304404,
		0.311238, 0.207279, -0.927452,
		27.628864, 32.842266, 35.370506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916275, 33.226116, 36.132587>,  <27.410999, 32.697170, 36.019722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916275, 33.226116, 36.132587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837860, 33.258614, 35.741695>,  <27.790812, 33.278111, 35.507160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837860, 33.258614, 35.741695>,  <27.916275, 33.226116, 36.132587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837860, 33.258614, 35.741695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007358, 0.996412, 0.084312,
		0.980569, 0.023719, -0.194735,
		-0.196036, 0.081241, -0.977226,
		27.779049, 33.282986, 35.448528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333145, 33.785530, 35.978218>,  <27.916275, 33.226116, 36.132587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333145, 33.785530, 35.978218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079962, 33.768799, 35.668995>,  <27.928053, 33.758759, 35.483463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079962, 33.768799, 35.668995>,  <28.333145, 33.785530, 35.978218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079962, 33.768799, 35.668995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006300, 0.998228, -0.059173,
		0.774162, -0.042324, -0.631572,
		-0.632957, -0.041831, -0.773056,
		27.890076, 33.756248, 35.437077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654261, 34.058052, 35.407501>,  <28.333145, 33.785530, 35.978218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654261, 34.058052, 35.407501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263847, 34.104870, 35.334114>,  <28.029600, 34.132961, 35.290081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263847, 34.104870, 35.334114>,  <28.654261, 34.058052, 35.407501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263847, 34.104870, 35.334114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142308, 0.981094, -0.131161,
		0.164649, -0.154127, -0.974236,
		-0.976033, 0.117046, -0.183469,
		27.971037, 34.139984, 35.279072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895744, 34.462143, 34.724243>,  <28.654261, 34.058052, 35.407501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895744, 34.462143, 34.724243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039976, 34.500084, 34.353085>,  <29.126516, 34.522850, 34.130390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039976, 34.500084, 34.353085>,  <28.895744, 34.462143, 34.724243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039976, 34.500084, 34.353085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863837, -0.409184, 0.293859,
		-0.351804, -0.907508, -0.229485,
		0.360581, 0.094856, -0.927892,
		29.148149, 34.528542, 34.074718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138416, 33.769455, 34.534889>,  <28.895744, 34.462143, 34.724243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138416, 33.769455, 34.534889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332615, 34.056656, 34.335381>,  <29.449135, 34.228977, 34.215675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332615, 34.056656, 34.335381>,  <29.138416, 33.769455, 34.534889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332615, 34.056656, 34.335381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845963, -0.529760, 0.060838,
		-0.220547, -0.451477, -0.864597,
		0.485496, 0.717999, -0.498770,
		29.478264, 34.272057, 34.185749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877487, 33.694958, 33.844803>,  <29.138416, 33.769455, 34.534889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877487, 33.694958, 33.844803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108164, 33.832714, 33.548473>,  <29.246569, 33.915367, 33.370674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108164, 33.832714, 33.548473>,  <28.877487, 33.694958, 33.844803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108164, 33.832714, 33.548473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783719, 0.022839, 0.620695,
		0.230680, -0.938550, -0.256733,
		0.576690, 0.344389, -0.740828,
		29.281170, 33.936031, 33.326225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540232, 33.289989, 33.687412>,  <28.877487, 33.694958, 33.844803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540232, 33.289989, 33.687412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626596, 33.664612, 33.576969>,  <29.678415, 33.889385, 33.510704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626596, 33.664612, 33.576969>,  <29.540232, 33.289989, 33.687412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626596, 33.664612, 33.576969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882971, -0.066563, 0.464685,
		0.416827, -0.344127, -0.841327,
		0.215912, 0.936561, -0.276109,
		29.691370, 33.945580, 33.494137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170137, 33.301476, 33.222721>,  <29.540232, 33.289989, 33.687412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170137, 33.301476, 33.222721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098545, 33.621353, 33.451965>,  <30.055590, 33.813278, 33.589512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098545, 33.621353, 33.451965>,  <30.170137, 33.301476, 33.222721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098545, 33.621353, 33.451965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843978, -0.174582, 0.507171,
		0.505636, 0.574469, -0.643675,
		-0.178980, 0.799691, 0.573114,
		30.044851, 33.861259, 33.623901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805019, 33.716228, 33.297207>,  <30.170137, 33.301476, 33.222721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805019, 33.716228, 33.297207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586525, 33.800838, 33.621399>,  <30.455429, 33.851604, 33.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586525, 33.800838, 33.621399>,  <30.805019, 33.716228, 33.297207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586525, 33.800838, 33.621399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769486, -0.255558, 0.585305,
		0.330935, 0.943369, -0.023174,
		-0.546236, 0.211529, 0.810482,
		30.422653, 33.864296, 33.864544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177462, 34.085632, 33.884315>,  <30.805019, 33.716228, 33.297207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177462, 34.085632, 33.884315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887005, 33.900665, 34.087841>,  <30.712730, 33.789684, 34.209957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887005, 33.900665, 34.087841>,  <31.177462, 34.085632, 33.884315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887005, 33.900665, 34.087841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651956, -0.228084, 0.723140,
		-0.218338, 0.856826, 0.467094,
		-0.726142, -0.462414, 0.508814,
		30.669163, 33.761940, 34.240486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018312, 34.254513, 34.673683>,  <31.177462, 34.085632, 33.884315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018312, 34.254513, 34.673683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916519, 33.876183, 34.593037>,  <30.855444, 33.649185, 34.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916519, 33.876183, 34.593037>,  <31.018312, 34.254513, 34.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916519, 33.876183, 34.593037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697089, -0.323908, 0.639649,
		-0.670302, 0.022234, 0.741755,
		-0.254482, -0.945828, -0.201617,
		30.840174, 33.592434, 34.532551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424732, 33.592834, 34.742104>,  <31.018312, 34.254513, 34.673683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424732, 33.592834, 34.742104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807165, 33.494076, 34.678925>,  <32.036625, 33.434822, 34.641018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807165, 33.494076, 34.678925>,  <31.424732, 33.592834, 34.742104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807165, 33.494076, 34.678925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059725, -0.363464, 0.929692,
		-0.286943, -0.898297, -0.332757,
		0.956084, -0.246894, -0.157944,
		32.093990, 33.420006, 34.631542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548521, 32.895096, 34.826672>,  <31.424732, 33.592834, 34.742104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548521, 32.895096, 34.826672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893747, 33.079975, 34.908150>,  <32.100883, 33.190903, 34.957039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893747, 33.079975, 34.908150>,  <31.548521, 32.895096, 34.826672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893747, 33.079975, 34.908150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064282, -0.500520, 0.863335,
		0.500987, -0.732019, -0.461692,
		0.863064, 0.462198, 0.203699,
		32.152668, 33.218636, 34.969261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097858, 32.320030, 35.107098>,  <31.548521, 32.895096, 34.826672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097858, 32.320030, 35.107098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252186, 32.669617, 35.225300>,  <32.344784, 32.879368, 35.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252186, 32.669617, 35.225300>,  <32.097858, 32.320030, 35.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252186, 32.669617, 35.225300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387787, -0.444269, 0.807617,
		0.837115, -0.197003, -0.510322,
		0.385823, 0.873965, 0.295510,
		32.367931, 32.931805, 35.313953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799564, 32.188713, 35.330864>,  <32.097858, 32.320030, 35.107098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799564, 32.188713, 35.330864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672653, 32.524120, 35.508053>,  <32.596504, 32.725365, 35.614365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672653, 32.524120, 35.508053>,  <32.799564, 32.188713, 35.330864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672653, 32.524120, 35.508053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423856, -0.292464, 0.857212,
		0.848339, 0.459731, -0.262617,
		-0.317281, 0.838518, 0.442968,
		32.577469, 32.775677, 35.640942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284031, 32.316719, 35.775913>,  <32.799564, 32.188713, 35.330864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284031, 32.316719, 35.775913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004532, 32.568562, 35.911762>,  <32.836830, 32.719666, 35.993271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004532, 32.568562, 35.911762>,  <33.284031, 32.316719, 35.775913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004532, 32.568562, 35.911762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376869, -0.079542, 0.922845,
		0.608042, 0.772833, -0.181699,
		-0.698752, 0.629605, 0.339621,
		32.794907, 32.757442, 36.013649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557644, 32.845539, 36.340099>,  <33.284031, 32.316719, 35.775913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557644, 32.845539, 36.340099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165970, 32.800240, 36.407467>,  <32.930965, 32.773060, 36.447887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165970, 32.800240, 36.407467>,  <33.557644, 32.845539, 36.340099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165970, 32.800240, 36.407467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195274, -0.299646, 0.933852,
		-0.055293, 0.947305, 0.315525,
		-0.979189, -0.113249, 0.168416,
		32.872211, 32.766266, 36.457993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490414, 33.162766, 36.966228>,  <33.557644, 32.845539, 36.340099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490414, 33.162766, 36.966228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156807, 32.942371, 36.954697>,  <32.956642, 32.810135, 36.947777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156807, 32.942371, 36.954697>,  <33.490414, 33.162766, 36.966228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156807, 32.942371, 36.954697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087446, -0.183601, 0.979103,
		-0.544762, 0.814069, 0.201308,
		-0.834019, -0.550982, -0.028832,
		32.906601, 32.777077, 36.946049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968258, 33.448616, 37.462086>,  <33.490414, 33.162766, 36.966228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968258, 33.448616, 37.462086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855499, 33.071609, 37.390316>,  <32.787842, 32.845406, 37.347252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855499, 33.071609, 37.390316>,  <32.968258, 33.448616, 37.462086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855499, 33.071609, 37.390316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122187, -0.220757, 0.967645,
		-0.951631, 0.250857, 0.177395,
		-0.281901, -0.942517, -0.179428,
		32.770927, 32.788853, 37.336487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529133, 33.176678, 37.987022>,  <32.968258, 33.448616, 37.462086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529133, 33.176678, 37.987022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653912, 32.824200, 37.844933>,  <32.728779, 32.612713, 37.759678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653912, 32.824200, 37.844933>,  <32.529133, 33.176678, 37.987022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653912, 32.824200, 37.844933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186416, -0.309849, 0.932332,
		-0.931631, -0.357061, 0.067612,
		0.311950, -0.881193, -0.355227,
		32.747498, 32.559841, 37.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199574, 32.628319, 38.443485>,  <32.529133, 33.176678, 37.987022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199574, 32.628319, 38.443485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504829, 32.462498, 38.245186>,  <32.687984, 32.363003, 38.126205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504829, 32.462498, 38.245186>,  <32.199574, 32.628319, 38.443485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504829, 32.462498, 38.245186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216187, -0.559158, 0.800378,
		-0.609006, -0.717971, -0.337091,
		0.763135, -0.414560, -0.495747,
		32.733772, 32.338131, 38.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060249, 31.954836, 38.600361>,  <32.199574, 32.628319, 38.443485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060249, 31.954836, 38.600361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442364, 31.968508, 38.482876>,  <32.671631, 31.976711, 38.412384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442364, 31.968508, 38.482876>,  <32.060249, 31.954836, 38.600361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442364, 31.968508, 38.482876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243008, -0.656671, 0.713954,
		-0.168467, -0.753402, -0.635613,
		0.955283, 0.034181, -0.293710,
		32.728951, 31.978762, 38.394764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315643, 31.218943, 38.632397>,  <32.060249, 31.954836, 38.600361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315643, 31.218943, 38.632397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616653, 31.480793, 38.661156>,  <32.797260, 31.637903, 38.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616653, 31.480793, 38.661156>,  <32.315643, 31.218943, 38.632397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616653, 31.480793, 38.661156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376505, -0.517220, 0.768588,
		0.540324, -0.551313, -0.635692,
		0.752525, 0.654628, 0.071895,
		32.842411, 31.677181, 38.682724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714684, 30.859619, 39.123489>,  <32.315643, 31.218943, 38.632397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714684, 30.859619, 39.123489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889854, 31.218454, 39.100002>,  <32.994957, 31.433756, 39.085911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889854, 31.218454, 39.100002>,  <32.714684, 30.859619, 39.123489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889854, 31.218454, 39.100002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506956, -0.192481, 0.840207,
		0.742437, -0.397721, -0.539078,
		0.437930, 0.897089, -0.058722,
		33.021233, 31.487581, 39.082386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525143, 30.813934, 39.147224>,  <32.714684, 30.859619, 39.123489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525143, 30.813934, 39.147224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402893, 31.174889, 39.268745>,  <33.329544, 31.391460, 39.341660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402893, 31.174889, 39.268745>,  <33.525143, 30.813934, 39.147224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402893, 31.174889, 39.268745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391004, -0.171983, 0.904178,
		0.868166, 0.395124, -0.300275,
		-0.305620, 0.902385, 0.303804,
		33.311207, 31.445604, 39.359886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975464, 30.800617, 39.682705>,  <33.525143, 30.813934, 39.147224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975464, 30.800617, 39.682705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719315, 31.099342, 39.754482>,  <33.565624, 31.278578, 39.797546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719315, 31.099342, 39.754482>,  <33.975464, 30.800617, 39.682705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719315, 31.099342, 39.754482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181411, -0.079949, 0.980152,
		0.746334, 0.660213, -0.084283,
		-0.640371, 0.746811, 0.179439,
		33.527203, 31.323385, 39.808315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341354, 31.226130, 40.149799>,  <33.975464, 30.800617, 39.682705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341354, 31.226130, 40.149799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948914, 31.291283, 40.191563>,  <33.713448, 31.330374, 40.216621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948914, 31.291283, 40.191563>,  <34.341354, 31.226130, 40.149799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948914, 31.291283, 40.191563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084320, -0.125735, 0.988474,
		0.174134, 0.978601, 0.109625,
		-0.981105, 0.162883, 0.104410,
		33.654583, 31.340147, 40.222885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257854, 31.739090, 40.611141>,  <34.341354, 31.226130, 40.149799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257854, 31.739090, 40.611141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910355, 31.541031, 40.615097>,  <33.701855, 31.422195, 40.617470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910355, 31.541031, 40.615097>,  <34.257854, 31.739090, 40.611141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910355, 31.541031, 40.615097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003565, 0.013719, 0.999900,
		-0.495233, 0.868701, -0.010153,
		-0.868753, -0.495147, 0.009891,
		33.649727, 31.392487, 40.618065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881523, 32.008347, 41.196445>,  <34.257854, 31.739090, 40.611141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881523, 32.008347, 41.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692123, 31.662300, 41.130276>,  <33.578484, 31.454672, 41.090576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692123, 31.662300, 41.130276>,  <33.881523, 32.008347, 41.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692123, 31.662300, 41.130276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095732, -0.136149, 0.986052,
		-0.875575, 0.482733, -0.018353,
		-0.473501, -0.865120, -0.165422,
		33.550072, 31.402763, 41.080650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542881, 31.914885, 41.740788>,  <33.881523, 32.008347, 41.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542881, 31.914885, 41.740788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446159, 31.547115, 41.616726>,  <33.388126, 31.326454, 41.542290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446159, 31.547115, 41.616726>,  <33.542881, 31.914885, 41.740788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446159, 31.547115, 41.616726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320758, -0.225928, 0.919822,
		-0.915775, 0.321902, -0.240281,
		-0.241807, -0.919422, -0.310151,
		33.373619, 31.271290, 41.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866821, 31.800936, 41.928497>,  <33.542881, 31.914885, 41.740788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866821, 31.800936, 41.928497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034069, 31.441668, 41.874138>,  <33.134418, 31.226107, 41.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034069, 31.441668, 41.874138>,  <32.866821, 31.800936, 41.928497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034069, 31.441668, 41.874138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327361, -0.288532, 0.899769,
		-0.847353, -0.331727, -0.414668,
		0.418123, -0.898168, -0.135894,
		33.159508, 31.172216, 41.833370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375713, 31.337542, 42.061550>,  <32.866821, 31.800936, 41.928497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375713, 31.337542, 42.061550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738911, 31.176159, 42.106762>,  <32.956829, 31.079329, 42.133888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738911, 31.176159, 42.106762>,  <32.375713, 31.337542, 42.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738911, 31.176159, 42.106762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274009, -0.367711, 0.888655,
		-0.316967, -0.837863, -0.444429,
		0.907993, -0.403452, 0.113030,
		33.011307, 31.055122, 42.140671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230888, 30.664124, 42.312725>,  <32.375713, 31.337542, 42.061550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230888, 30.664124, 42.312725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624844, 30.658491, 42.381767>,  <32.861217, 30.655111, 42.423191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624844, 30.658491, 42.381767>,  <32.230888, 30.664124, 42.312725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624844, 30.658491, 42.381767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164672, -0.384677, 0.908244,
		0.053609, -0.922944, -0.381183,
		0.984890, -0.014080, 0.172605,
		32.920311, 30.654266, 42.433548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469467, 29.999624, 42.512833>,  <32.230888, 30.664124, 42.312725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469467, 29.999624, 42.512833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723808, 30.261126, 42.676926>,  <32.876415, 30.418026, 42.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723808, 30.261126, 42.676926>,  <32.469467, 29.999624, 42.512833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723808, 30.261126, 42.676926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149257, -0.417335, 0.896412,
		0.757239, -0.631219, -0.167787,
		0.635855, 0.653754, 0.410236,
		32.914566, 30.457253, 42.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872990, 29.578304, 42.875786>,  <32.469467, 29.999624, 42.512833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872990, 29.578304, 42.875786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961395, 29.935846, 43.031826>,  <33.014439, 30.150372, 43.125450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961395, 29.935846, 43.031826>,  <32.872990, 29.578304, 42.875786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961395, 29.935846, 43.031826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126959, -0.422958, 0.897211,
		0.966972, -0.148767, -0.206961,
		0.221012, 0.893854, 0.390101,
		33.027699, 30.204002, 43.148857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445526, 29.506929, 43.430660>,  <32.872990, 29.578304, 42.875786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445526, 29.506929, 43.430660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287270, 29.869005, 43.492764>,  <33.192318, 30.086250, 43.530025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287270, 29.869005, 43.492764>,  <33.445526, 29.506929, 43.430660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287270, 29.869005, 43.492764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030843, -0.155858, 0.987298,
		0.917889, 0.395400, 0.033745,
		-0.395637, 0.905189, 0.155256,
		33.168579, 30.140562, 43.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914104, 29.866261, 43.895893>,  <33.445526, 29.506929, 43.430660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914104, 29.866261, 43.895893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540146, 30.007557, 43.909698>,  <33.315769, 30.092335, 43.917980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540146, 30.007557, 43.909698>,  <33.914104, 29.866261, 43.895893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540146, 30.007557, 43.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032439, -0.181879, 0.982786,
		0.353438, 0.917682, 0.181497,
		-0.934895, 0.353242, 0.034515,
		33.259678, 30.113529, 43.920052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796665, 30.408361, 44.433586>,  <33.914104, 29.866261, 43.895893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796665, 30.408361, 44.433586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434631, 30.260548, 44.349430>,  <33.217411, 30.171860, 44.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434631, 30.260548, 44.349430>,  <33.796665, 30.408361, 44.433586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434631, 30.260548, 44.349430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244621, 0.047763, 0.968442,
		-0.347825, 0.927988, -0.133626,
		-0.905084, -0.369536, -0.210392,
		33.163105, 30.149687, 44.286312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309437, 30.863518, 44.753429>,  <33.796665, 30.408361, 44.433586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309437, 30.863518, 44.753429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076080, 30.543398, 44.698029>,  <32.936066, 30.351326, 44.664787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076080, 30.543398, 44.698029>,  <33.309437, 30.863518, 44.753429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076080, 30.543398, 44.698029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430380, 0.159989, 0.888356,
		-0.688791, 0.577864, -0.437768,
		-0.583387, -0.800298, -0.138503,
		32.901066, 30.303308, 44.656479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677528, 31.066456, 44.944157>,  <33.309437, 30.863518, 44.753429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677528, 31.066456, 44.944157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636425, 30.674644, 45.013401>,  <32.611763, 30.439558, 45.054947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636425, 30.674644, 45.013401>,  <32.677528, 31.066456, 44.944157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636425, 30.674644, 45.013401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424198, 0.200565, 0.883079,
		-0.899720, 0.017316, -0.436125,
		-0.102763, -0.979527, 0.173107,
		32.605595, 30.380787, 45.065334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925234, 30.958899, 45.156330>,  <32.677528, 31.066456, 44.944157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925234, 30.958899, 45.156330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175861, 30.678877, 45.293346>,  <32.326237, 30.510864, 45.375557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175861, 30.678877, 45.293346>,  <31.925234, 30.958899, 45.156330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175861, 30.678877, 45.293346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471230, 0.009780, 0.881956,
		-0.620769, -0.714020, -0.323760,
		0.626568, -0.700056, 0.342539,
		32.363831, 30.468861, 45.396107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519560, 30.524897, 45.628647>,  <31.925234, 30.958899, 45.156330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519560, 30.524897, 45.628647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900133, 30.515375, 45.751419>,  <32.128479, 30.509663, 45.825081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900133, 30.515375, 45.751419>,  <31.519560, 30.524897, 45.628647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900133, 30.515375, 45.751419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305623, 0.046638, 0.951010,
		-0.036950, -0.998628, 0.037098,
		0.951436, -0.023802, 0.306927,
		32.185562, 30.508234, 45.843498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496035, 30.186811, 46.199440>,  <31.519560, 30.524897, 45.628647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496035, 30.186811, 46.199440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850712, 30.366590, 46.242844>,  <32.063519, 30.474457, 46.268887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850712, 30.366590, 46.242844>,  <31.496035, 30.186811, 46.199440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850712, 30.366590, 46.242844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034069, -0.170542, 0.984761,
		0.461103, -0.876877, -0.135906,
		0.886692, 0.449446, 0.108511,
		32.116718, 30.501425, 46.275398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567719, 29.866392, 46.694736>,  <31.496035, 30.186811, 46.199440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567719, 29.866392, 46.694736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877041, 30.119850, 46.685863>,  <32.062634, 30.271925, 46.680542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877041, 30.119850, 46.685863>,  <31.567719, 29.866392, 46.694736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877041, 30.119850, 46.685863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251898, -0.274937, 0.927878,
		0.581848, -0.723120, -0.372224,
		0.773305, 0.633646, -0.022181,
		32.109032, 30.309944, 46.679211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218262, 29.455423, 46.732864>,  <31.567719, 29.866392, 46.694736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218262, 29.455423, 46.732864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262272, 29.823542, 46.883038>,  <32.288677, 30.044413, 46.973141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262272, 29.823542, 46.883038>,  <32.218262, 29.455423, 46.732864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262272, 29.823542, 46.883038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152220, -0.388870, 0.908630,
		0.982203, -0.042822, -0.182873,
		0.110023, 0.920297, 0.375431,
		32.295280, 30.099630, 46.995667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725647, 29.416584, 47.176998>,  <32.218262, 29.455423, 46.732864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725647, 29.416584, 47.176998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567745, 29.768492, 47.282959>,  <32.473003, 29.979635, 47.346535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567745, 29.768492, 47.282959>,  <32.725647, 29.416584, 47.176998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567745, 29.768492, 47.282959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059308, -0.263319, 0.962884,
		0.916868, 0.395818, 0.051770,
		-0.394759, 0.879768, 0.264904,
		32.449318, 30.032421, 47.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080772, 29.577215, 47.721142>,  <32.725647, 29.416584, 47.176998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080772, 29.577215, 47.721142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751350, 29.799429, 47.766994>,  <32.553696, 29.932756, 47.794506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751350, 29.799429, 47.766994>,  <33.080772, 29.577215, 47.721142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751350, 29.799429, 47.766994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032054, -0.247343, 0.968398,
		0.566330, 0.793854, 0.221508,
		-0.823555, 0.555533, 0.114632,
		32.504284, 29.966089, 47.801384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028263, 29.672207, 48.417645>,  <33.080772, 29.577215, 47.721142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028263, 29.672207, 48.417645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674908, 29.827076, 48.312031>,  <32.462894, 29.919998, 48.248661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674908, 29.827076, 48.312031>,  <33.028263, 29.672207, 48.417645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674908, 29.827076, 48.312031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377030, -0.252561, 0.891101,
		0.278325, 0.886742, 0.369086,
		-0.883393, 0.387173, -0.264034,
		32.409889, 29.943228, 48.232819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884735, 30.214111, 48.964760>,  <33.028263, 29.672207, 48.417645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884735, 30.214111, 48.964760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563572, 30.050318, 48.791485>,  <32.370872, 29.952042, 48.687519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563572, 30.050318, 48.791485>,  <32.884735, 30.214111, 48.964760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563572, 30.050318, 48.791485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351606, -0.261496, 0.898884,
		-0.481358, 0.874037, 0.065981,
		-0.802912, -0.409486, -0.433190,
		32.322697, 29.927471, 48.661530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322216, 30.246597, 49.428032>,  <32.884735, 30.214111, 48.964760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322216, 30.246597, 49.428032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167526, 29.987398, 49.165569>,  <32.074711, 29.831879, 49.008091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167526, 29.987398, 49.165569>,  <32.322216, 30.246597, 49.428032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167526, 29.987398, 49.165569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396885, -0.525303, 0.752688,
		-0.832420, 0.551504, -0.054031,
		-0.386728, -0.647997, -0.656157,
		32.051506, 29.792999, 48.968723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671295, 30.176287, 49.708664>,  <32.322216, 30.246597, 49.428032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671295, 30.176287, 49.708664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754768, 29.866768, 49.469437>,  <31.804853, 29.681057, 49.325901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754768, 29.866768, 49.469437>,  <31.671295, 30.176287, 49.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754768, 29.866768, 49.469437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242663, -0.633381, 0.734809,
		-0.947399, -0.008214, -0.319949,
		0.208685, -0.773797, -0.598071,
		31.817373, 29.634628, 49.290016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139502, 29.712690, 49.723797>,  <31.671295, 30.176287, 49.708664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139502, 29.712690, 49.723797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463264, 29.503956, 49.616058>,  <31.657522, 29.378716, 49.551414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463264, 29.503956, 49.616058>,  <31.139502, 29.712690, 49.723797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463264, 29.503956, 49.616058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202576, -0.678619, 0.706002,
		-0.551203, -0.516879, -0.654990,
		0.809406, -0.521836, -0.269349,
		31.706087, 29.347404, 49.535252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945955, 28.916672, 49.787090>,  <31.139502, 29.712690, 49.723797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945955, 28.916672, 49.787090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343962, 28.956516, 49.785450>,  <31.582766, 28.980423, 49.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343962, 28.956516, 49.785450>,  <30.945955, 28.916672, 49.787090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343962, 28.956516, 49.785450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070443, -0.673386, 0.735927,
		0.070545, -0.732550, -0.677048,
		0.995018, 0.099609, -0.004099,
		31.642467, 28.986399, 49.784222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486727, 28.246237, 49.611423>,  <30.945955, 28.916672, 49.787090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486727, 28.246237, 49.611423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620075, 28.516596, 49.874336>,  <31.700085, 28.678812, 50.032085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620075, 28.516596, 49.874336>,  <31.486727, 28.246237, 49.611423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620075, 28.516596, 49.874336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049483, -0.683662, 0.728120,
		0.941497, -0.275257, -0.194466,
		0.333369, 0.675900, 0.657286,
		31.720085, 28.719366, 50.071522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026798, 27.991949, 50.111523>,  <31.486727, 28.246237, 49.611423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026798, 27.991949, 50.111523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820307, 28.291344, 50.278030>,  <31.696411, 28.470980, 50.377934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820307, 28.291344, 50.278030>,  <32.026798, 27.991949, 50.111523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820307, 28.291344, 50.278030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237749, -0.592174, 0.769939,
		0.822790, 0.298497, 0.483648,
		-0.516228, 0.748485, 0.416268,
		31.665438, 28.515888, 50.402912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242363, 28.031961, 50.811886>,  <32.026798, 27.991949, 50.111523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242363, 28.031961, 50.811886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876907, 28.186831, 50.762310>,  <31.657635, 28.279753, 50.732563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876907, 28.186831, 50.762310>,  <32.242363, 28.031961, 50.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876907, 28.186831, 50.762310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338178, -0.554655, 0.760259,
		0.225608, 0.736516, 0.637688,
		-0.913640, 0.387172, -0.123939,
		31.602816, 28.302982, 50.725128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227245, 27.252748, 50.920948>,  <32.242363, 28.031961, 50.811886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227245, 27.252748, 50.920948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031448, 27.163391, 51.258110>,  <31.913969, 27.109777, 51.460407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031448, 27.163391, 51.258110>,  <32.227245, 27.252748, 50.920948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031448, 27.163391, 51.258110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110847, 0.942846, 0.314251,
		-0.864933, 0.247258, -0.436755,
		-0.489494, -0.223394, 0.842906,
		31.884600, 27.096373, 51.510983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760509, 27.190119, 50.442154>,  <32.227245, 27.252748, 50.920948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760509, 27.190119, 50.442154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144188, 27.117666, 50.528988>,  <33.374397, 27.074194, 50.581089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144188, 27.117666, 50.528988>,  <32.760509, 27.190119, 50.442154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144188, 27.117666, 50.528988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238991, 0.109205, -0.964861,
		0.151059, 0.977377, 0.148038,
		0.959200, -0.181131, 0.217088,
		33.431950, 27.063328, 50.594112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311840, 27.820339, 50.363911>,  <32.760509, 27.190119, 50.442154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311840, 27.820339, 50.363911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440563, 27.463089, 50.238205>,  <33.517799, 27.248739, 50.162781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440563, 27.463089, 50.238205>,  <33.311840, 27.820339, 50.363911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440563, 27.463089, 50.238205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104019, 0.296562, -0.949332,
		0.941073, 0.338194, 0.002535,
		0.321810, -0.893127, -0.314265,
		33.537106, 27.195150, 50.143925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903049, 27.960596, 49.968513>,  <33.311840, 27.820339, 50.363911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903049, 27.960596, 49.968513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742073, 27.618477, 49.837971>,  <33.645489, 27.413206, 49.759647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742073, 27.618477, 49.837971>,  <33.903049, 27.960596, 49.968513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742073, 27.618477, 49.837971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098074, 0.394726, -0.913550,
		0.910177, -0.335643, -0.242736,
		-0.402441, -0.855298, -0.326353,
		33.621342, 27.361887, 49.740067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289799, 27.726162, 49.302635>,  <33.903049, 27.960596, 49.968513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289799, 27.726162, 49.302635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908722, 27.614229, 49.350071>,  <33.680077, 27.547070, 49.378532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908722, 27.614229, 49.350071>,  <34.289799, 27.726162, 49.302635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908722, 27.614229, 49.350071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203439, 0.297267, -0.932869,
		0.225792, -0.912867, -0.340134,
		-0.952697, -0.279831, 0.118592,
		33.622913, 27.530279, 49.385647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242558, 27.156481, 48.877853>,  <34.289799, 27.726162, 49.302635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242558, 27.156481, 48.877853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903934, 27.360714, 48.938046>,  <33.700760, 27.483253, 48.974163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903934, 27.360714, 48.938046>,  <34.242558, 27.156481, 48.877853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903934, 27.360714, 48.938046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148768, 0.044491, -0.987871,
		-0.511085, -0.858677, 0.038294,
		-0.846558, 0.510583, 0.150482,
		33.649967, 27.513889, 48.983189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690445, 26.807384, 48.546062>,  <34.242558, 27.156481, 48.877853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690445, 26.807384, 48.546062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543484, 27.178301, 48.574776>,  <33.455307, 27.400850, 48.592003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543484, 27.178301, 48.574776>,  <33.690445, 26.807384, 48.546062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543484, 27.178301, 48.574776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230404, -0.015973, -0.972964,
		-0.901072, -0.374005, 0.219520,
		-0.367400, 0.927289, 0.071779,
		33.433262, 27.456488, 48.596310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029232, 26.800776, 48.216366>,  <33.690445, 26.807384, 48.546062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029232, 26.800776, 48.216366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101009, 27.194279, 48.214706>,  <33.144077, 27.430382, 48.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101009, 27.194279, 48.214706>,  <33.029232, 26.800776, 48.216366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101009, 27.194279, 48.214706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369307, 0.063458, -0.927139,
		-0.911818, 0.167900, 0.374696,
		0.179444, 0.983760, -0.004145,
		33.154842, 27.489407, 48.213463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506710, 27.094494, 47.858940>,  <33.029232, 26.800776, 48.216366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506710, 27.094494, 47.858940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809299, 27.355219, 47.837452>,  <32.990852, 27.511654, 47.824558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809299, 27.355219, 47.837452>,  <32.506710, 27.094494, 47.858940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809299, 27.355219, 47.837452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199648, 0.151927, -0.968018,
		-0.622804, 0.743007, 0.245062,
		0.756476, 0.651812, -0.053719,
		33.036243, 27.550762, 47.821335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285248, 27.791399, 47.426525>,  <32.506710, 27.094494, 47.858940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285248, 27.791399, 47.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683105, 27.750954, 47.417961>,  <32.921822, 27.726686, 47.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683105, 27.750954, 47.417961>,  <32.285248, 27.791399, 47.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683105, 27.750954, 47.417961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008235, 0.128998, -0.991611,
		0.103026, 0.986476, 0.127475,
		0.994645, -0.101112, -0.021413,
		32.981499, 27.720619, 47.411537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444092, 28.283072, 46.951000>,  <32.285248, 27.791399, 47.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444092, 28.283072, 46.951000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787560, 28.078274, 46.960316>,  <32.993641, 27.955395, 46.965904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787560, 28.078274, 46.960316>,  <32.444092, 28.283072, 46.951000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787560, 28.078274, 46.960316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145012, 0.199110, -0.969189,
		0.491579, 0.835595, 0.245216,
		0.858674, -0.511993, 0.023293,
		33.045162, 27.924677, 46.967304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947567, 28.748861, 46.723621>,  <32.444092, 28.283072, 46.951000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947567, 28.748861, 46.723621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087090, 28.379454, 46.659813>,  <33.170803, 28.157808, 46.621529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087090, 28.379454, 46.659813>,  <32.947567, 28.748861, 46.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087090, 28.379454, 46.659813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244501, 0.253984, -0.935795,
		0.904739, 0.287411, 0.314393,
		0.348809, -0.923519, -0.159516,
		33.191730, 28.102398, 46.611958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384823, 28.872066, 46.164780>,  <32.947567, 28.748861, 46.723621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384823, 28.872066, 46.164780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410526, 28.474945, 46.205208>,  <33.425949, 28.236673, 46.229465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410526, 28.474945, 46.205208>,  <33.384823, 28.872066, 46.164780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410526, 28.474945, 46.205208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372978, -0.070043, -0.925193,
		0.925612, 0.097152, 0.365792,
		0.064263, -0.992802, 0.101068,
		33.429806, 28.177105, 46.235527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130127, 28.610254, 46.082600>,  <33.384823, 28.872066, 46.164780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130127, 28.610254, 46.082600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849365, 28.355099, 45.955837>,  <33.680908, 28.202005, 45.879780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849365, 28.355099, 45.955837>,  <34.130127, 28.610254, 46.082600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849365, 28.355099, 45.955837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349803, 0.078860, -0.933498,
		0.620461, -0.766079, 0.167784,
		-0.701902, -0.637890, -0.316907,
		33.638794, 28.163733, 45.860764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469051, 28.100784, 45.742981>,  <34.130127, 28.610254, 46.082600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469051, 28.100784, 45.742981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109264, 28.006115, 45.596043>,  <33.893391, 27.949314, 45.507877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109264, 28.006115, 45.596043>,  <34.469051, 28.100784, 45.742981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109264, 28.006115, 45.596043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357288, 0.085715, -0.930053,
		0.251607, -0.967801, 0.007463,
		-0.899466, -0.236674, -0.367350,
		33.839424, 27.935112, 45.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597786, 27.606983, 45.239773>,  <34.469051, 28.100784, 45.742981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597786, 27.606983, 45.239773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246113, 27.774010, 45.147972>,  <34.035107, 27.874226, 45.092892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246113, 27.774010, 45.147972>,  <34.597786, 27.606983, 45.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246113, 27.774010, 45.147972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254390, 0.004094, -0.967093,
		-0.402887, -0.908637, -0.109824,
		-0.879186, 0.417567, -0.229499,
		33.982357, 27.899281, 45.079121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463551, 27.188904, 44.588131>,  <34.597786, 27.606983, 45.239773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463551, 27.188904, 44.588131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204502, 27.492184, 44.557896>,  <34.049072, 27.674152, 44.539753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204502, 27.492184, 44.557896>,  <34.463551, 27.188904, 44.588131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204502, 27.492184, 44.557896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362845, 0.219641, -0.905594,
		-0.670019, -0.613913, -0.417355,
		-0.647625, 0.758201, -0.075592,
		34.010216, 27.719645, 44.535217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136002, 27.108641, 44.030922>,  <34.463551, 27.188904, 44.588131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136002, 27.108641, 44.030922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085041, 27.496527, 44.114273>,  <34.054466, 27.729259, 44.164284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085041, 27.496527, 44.114273>,  <34.136002, 27.108641, 44.030922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085041, 27.496527, 44.114273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242159, 0.234140, -0.941561,
		-0.961836, -0.069493, -0.264655,
		-0.127398, 0.969716, 0.208376,
		34.046822, 27.787441, 44.176785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791847, 27.366674, 43.453884>,  <34.136002, 27.108641, 44.030922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791847, 27.366674, 43.453884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940838, 27.679226, 43.654167>,  <34.030231, 27.866756, 43.774338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940838, 27.679226, 43.654167>,  <33.791847, 27.366674, 43.453884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940838, 27.679226, 43.654167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065875, 0.515913, -0.854105,
		-0.925702, 0.351116, 0.140690,
		0.372473, 0.781378, 0.500711,
		34.052578, 27.913639, 43.804382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441574, 27.932354, 43.305470>,  <33.791847, 27.366674, 43.453884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441574, 27.932354, 43.305470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800121, 28.067711, 43.420017>,  <34.015251, 28.148926, 43.488747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800121, 28.067711, 43.420017>,  <33.441574, 27.932354, 43.305470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800121, 28.067711, 43.420017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166774, 0.341124, -0.925106,
		-0.410739, 0.876997, 0.249338,
		0.896370, 0.338394, 0.286373,
		34.069031, 28.169230, 43.505928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554760, 28.515459, 42.940281>,  <33.441574, 27.932354, 43.305470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554760, 28.515459, 42.940281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924664, 28.426140, 43.063549>,  <34.146606, 28.372547, 43.137508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924664, 28.426140, 43.063549>,  <33.554760, 28.515459, 42.940281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924664, 28.426140, 43.063549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368937, 0.327401, -0.869882,
		0.093350, 0.918121, 0.385148,
		0.924755, -0.223299, 0.308166,
		34.202091, 28.359150, 43.155998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849514, 29.065695, 42.782650>,  <33.554760, 28.515459, 42.940281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849514, 29.065695, 42.782650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147827, 28.799536, 42.795666>,  <34.326813, 28.639839, 42.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147827, 28.799536, 42.795666>,  <33.849514, 29.065695, 42.782650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147827, 28.799536, 42.795666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406200, 0.415471, -0.813871,
		0.528030, 0.620185, 0.580134,
		0.745779, -0.665398, 0.032538,
		34.371559, 28.599916, 42.805428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422844, 29.496555, 42.591450>,  <33.849514, 29.065695, 42.782650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422844, 29.496555, 42.591450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498280, 29.107885, 42.534477>,  <34.543541, 28.874683, 42.500294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498280, 29.107885, 42.534477>,  <34.422844, 29.496555, 42.591450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498280, 29.107885, 42.534477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457018, 0.215206, -0.863030,
		0.869235, 0.097661, 0.484657,
		0.188585, -0.971673, -0.142432,
		34.554855, 28.816383, 42.491749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079197, 29.545614, 42.315239>,  <34.422844, 29.496555, 42.591450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079197, 29.545614, 42.315239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918648, 29.192751, 42.216698>,  <34.822319, 28.981033, 42.157574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918648, 29.192751, 42.216698>,  <35.079197, 29.545614, 42.315239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918648, 29.192751, 42.216698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370937, 0.089366, -0.924348,
		0.837439, -0.462392, 0.291357,
		-0.401374, -0.882161, -0.246357,
		34.798237, 28.928102, 42.142792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542931, 29.236609, 41.699806>,  <35.079197, 29.545614, 42.315239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542931, 29.236609, 41.699806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205902, 29.022394, 41.676941>,  <35.003685, 28.893866, 41.663219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205902, 29.022394, 41.676941>,  <35.542931, 29.236609, 41.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205902, 29.022394, 41.676941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100591, -0.052206, -0.993557,
		0.529101, -0.842897, 0.097858,
		-0.842576, -0.535535, -0.057166,
		34.953129, 28.861734, 41.659790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682175, 28.646814, 41.308601>,  <35.542931, 29.236609, 41.699806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682175, 28.646814, 41.308601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288643, 28.712545, 41.280094>,  <35.052525, 28.751984, 41.262989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288643, 28.712545, 41.280094>,  <35.682175, 28.646814, 41.308601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288643, 28.712545, 41.280094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055297, -0.099816, -0.993468,
		-0.170369, -0.981342, 0.089115,
		-0.983828, 0.164328, -0.071271,
		34.993496, 28.761843, 41.258713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435524, 28.223860, 40.731316>,  <35.682175, 28.646814, 41.308601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435524, 28.223860, 40.731316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157806, 28.502882, 40.802162>,  <34.991177, 28.670296, 40.844669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157806, 28.502882, 40.802162>,  <35.435524, 28.223860, 40.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157806, 28.502882, 40.802162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147811, 0.102643, -0.983675,
		-0.704349, -0.709139, 0.031842,
		-0.694293, 0.697557, 0.177115,
		34.949520, 28.712149, 40.855297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875317, 27.925802, 40.395100>,  <35.435524, 28.223860, 40.731316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875317, 27.925802, 40.395100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799294, 28.315430, 40.444199>,  <34.753681, 28.549206, 40.473660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799294, 28.315430, 40.444199>,  <34.875317, 27.925802, 40.395100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799294, 28.315430, 40.444199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232056, 0.076916, -0.969657,
		-0.953954, -0.212775, 0.211420,
		-0.190057, 0.974069, 0.122750,
		34.742275, 28.607651, 40.481022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228859, 28.083942, 39.967995>,  <34.875317, 27.925802, 40.395100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228859, 28.083942, 39.967995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481873, 28.384651, 40.042553>,  <34.633678, 28.565077, 40.087288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481873, 28.384651, 40.042553>,  <34.228859, 28.083942, 39.967995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481873, 28.384651, 40.042553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043776, 0.274970, -0.960456,
		-0.773297, 0.599358, 0.206837,
		0.632531, 0.751772, 0.186396,
		34.671631, 28.610184, 40.098473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926376, 28.585575, 39.479698>,  <34.228859, 28.083942, 39.967995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926376, 28.585575, 39.479698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293591, 28.717039, 39.568413>,  <34.513920, 28.795918, 39.621639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293591, 28.717039, 39.568413>,  <33.926376, 28.585575, 39.479698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293591, 28.717039, 39.568413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004677, 0.550350, -0.834921,
		-0.396465, 0.767527, 0.503705,
		0.918038, 0.328661, 0.221784,
		34.569000, 28.815638, 39.634949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805477, 29.308851, 39.453125>,  <33.926376, 28.585575, 39.479698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805477, 29.308851, 39.453125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201160, 29.275723, 39.404789>,  <34.438572, 29.255844, 39.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201160, 29.275723, 39.404789>,  <33.805477, 29.308851, 39.453125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201160, 29.275723, 39.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036029, 0.661978, -0.748657,
		0.141999, 0.744933, 0.651852,
		0.989211, -0.082823, -0.120840,
		34.497925, 29.250875, 39.368538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984024, 29.936163, 39.203846>,  <33.805477, 29.308851, 39.453125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984024, 29.936163, 39.203846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312115, 29.725676, 39.114105>,  <34.508968, 29.599384, 39.060261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312115, 29.725676, 39.114105>,  <33.984024, 29.936163, 39.203846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312115, 29.725676, 39.114105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059791, 0.468901, -0.881225,
		0.568912, 0.709386, 0.416066,
		0.820222, -0.526216, -0.224349,
		34.558182, 29.567810, 39.046803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445122, 30.420023, 38.924118>,  <33.984024, 29.936163, 39.203846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445122, 30.420023, 38.924118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596729, 30.071384, 38.799755>,  <34.687695, 29.862202, 38.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596729, 30.071384, 38.799755>,  <34.445122, 30.420023, 38.924118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596729, 30.071384, 38.799755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003967, 0.337501, -0.941317,
		0.925379, 0.355546, 0.131378,
		0.379022, -0.871596, -0.310906,
		34.710434, 29.809906, 38.706482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125549, 30.574654, 38.738190>,  <34.445122, 30.420023, 38.924118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125549, 30.574654, 38.738190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003494, 30.245441, 38.546558>,  <34.930264, 30.047915, 38.431580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003494, 30.245441, 38.546558>,  <35.125549, 30.574654, 38.738190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003494, 30.245441, 38.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241321, 0.419819, -0.874938,
		0.921226, -0.382584, 0.070513,
		-0.305134, -0.823032, -0.479074,
		34.911953, 29.998531, 38.402836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678253, 30.478357, 38.240334>,  <35.125549, 30.574654, 38.738190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678253, 30.478357, 38.240334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362385, 30.270460, 38.109924>,  <35.172863, 30.145721, 38.031677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362385, 30.270460, 38.109924>,  <35.678253, 30.478357, 38.240334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362385, 30.270460, 38.109924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232726, 0.237929, -0.942989,
		0.567683, -0.820522, -0.066927,
		-0.789667, -0.519743, -0.326025,
		35.125484, 30.114536, 38.012115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898029, 30.112986, 37.638897>,  <35.678253, 30.478357, 38.240334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898029, 30.112986, 37.638897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501320, 30.163342, 37.629589>,  <35.263294, 30.193556, 37.624004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501320, 30.163342, 37.629589>,  <35.898029, 30.112986, 37.638897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501320, 30.163342, 37.629589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078418, 0.453695, -0.887700,
		-0.101197, -0.882220, -0.459834,
		-0.991771, 0.125892, -0.023270,
		35.203789, 30.201109, 37.622608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779541, 29.838341, 36.966888>,  <35.898029, 30.112986, 37.638897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779541, 29.838341, 36.966888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441219, 30.031988, 37.056549>,  <35.238228, 30.148176, 37.110344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441219, 30.031988, 37.056549>,  <35.779541, 29.838341, 36.966888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441219, 30.031988, 37.056549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044607, 0.482861, -0.874560,
		-0.531626, -0.729707, -0.430001,
		-0.845804, 0.484120, 0.224151,
		35.187477, 30.177225, 37.123795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268711, 29.682318, 36.402660>,  <35.779541, 29.838341, 36.966888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268711, 29.682318, 36.402660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196232, 30.019489, 36.605297>,  <35.152744, 30.221792, 36.726879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196232, 30.019489, 36.605297>,  <35.268711, 29.682318, 36.402660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196232, 30.019489, 36.605297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013740, 0.517241, -0.855730,
		-0.983351, -0.148096, -0.105305,
		-0.181198, 0.842929, 0.506594,
		35.141872, 30.272367, 36.757275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613194, 29.719532, 36.105831>,  <35.268711, 29.682318, 36.402660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613194, 29.719532, 36.105831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778400, 30.050032, 36.259052>,  <34.877525, 30.248331, 36.350983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778400, 30.050032, 36.259052>,  <34.613194, 29.719532, 36.105831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778400, 30.050032, 36.259052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106935, 0.461689, -0.880572,
		-0.904422, 0.322732, 0.279041,
		0.413020, 0.826249, 0.383051,
		34.902306, 30.297907, 36.373966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123844, 30.244413, 35.868679>,  <34.613194, 29.719532, 36.105831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123844, 30.244413, 35.868679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460411, 30.440500, 35.959637>,  <34.662350, 30.558153, 36.014214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460411, 30.440500, 35.959637>,  <34.123844, 30.244413, 35.868679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460411, 30.440500, 35.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132899, 0.595593, -0.792216,
		-0.523796, 0.636360, 0.566289,
		0.841413, 0.490219, 0.227397,
		34.712833, 30.587566, 36.027855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910660, 30.940145, 35.752388>,  <34.123844, 30.244413, 35.868679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910660, 30.940145, 35.752388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308090, 30.902542, 35.727192>,  <34.546547, 30.879980, 35.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308090, 30.902542, 35.727192>,  <33.910660, 30.940145, 35.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308090, 30.902542, 35.727192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006020, 0.511911, -0.859018,
		0.113001, 0.853879, 0.508056,
		0.993577, -0.094011, -0.062987,
		34.606163, 30.874338, 35.708298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204765, 31.614769, 35.617874>,  <33.910660, 30.940145, 35.752388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204765, 31.614769, 35.617874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500355, 31.370255, 35.504566>,  <34.677708, 31.223545, 35.436581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500355, 31.370255, 35.504566>,  <34.204765, 31.614769, 35.617874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500355, 31.370255, 35.504566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052414, 0.471332, -0.880397,
		0.671688, 0.635747, 0.380344,
		0.738978, -0.611288, -0.283266,
		34.722050, 31.186869, 35.419586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782009, 32.087902, 35.406567>,  <34.204765, 31.614769, 35.617874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782009, 32.087902, 35.406567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839729, 31.737789, 35.221935>,  <34.874363, 31.527721, 35.111156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839729, 31.737789, 35.221935>,  <34.782009, 32.087902, 35.406567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839729, 31.737789, 35.221935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220989, 0.483186, -0.847169,
		0.964541, 0.020247, 0.263154,
		0.144304, -0.875284, -0.461578,
		34.883022, 31.475204, 35.083462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425655, 32.247311, 35.106949>,  <34.782009, 32.087902, 35.406567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425655, 32.247311, 35.106949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267471, 31.938957, 34.907211>,  <35.172562, 31.753944, 34.787369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267471, 31.938957, 34.907211>,  <35.425655, 32.247311, 35.106949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267471, 31.938957, 34.907211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081167, 0.512204, -0.855020,
		0.914889, -0.378658, -0.139986,
		-0.395461, -0.770886, -0.499345,
		35.148834, 31.707691, 34.757408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130249, 32.087551, 35.421391>,  <35.425655, 32.247311, 35.106949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130249, 32.087551, 35.421391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480003, 32.072803, 35.227856>,  <36.689854, 32.063953, 35.111736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480003, 32.072803, 35.227856>,  <36.130249, 32.087551, 35.421391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480003, 32.072803, 35.227856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422545, -0.432352, 0.796573,
		-0.238557, -0.900951, -0.362461,
		0.874383, -0.036871, -0.483833,
		36.742317, 32.061741, 35.082706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416656, 31.413143, 35.324718>,  <36.130249, 32.087551, 35.421391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416656, 31.413143, 35.324718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728767, 31.661821, 35.352028>,  <36.916035, 31.811029, 35.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728767, 31.661821, 35.352028>,  <36.416656, 31.413143, 35.324718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728767, 31.661821, 35.352028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416588, -0.598038, 0.684694,
		0.466501, -0.505809, -0.725627,
		0.780276, 0.621698, 0.068272,
		36.962849, 31.848331, 35.372509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071133, 31.076990, 35.239594>,  <36.416656, 31.413143, 35.324718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071133, 31.076990, 35.239594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143623, 31.410048, 35.448921>,  <37.187119, 31.609882, 35.574516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143623, 31.410048, 35.448921>,  <37.071133, 31.076990, 35.239594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143623, 31.410048, 35.448921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372630, -0.550588, 0.746994,
		0.910113, 0.059630, -0.410048,
		0.181223, 0.832645, 0.523317,
		37.197990, 31.659842, 35.605915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613560, 30.836775, 35.596733>,  <37.071133, 31.076990, 35.239594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613560, 30.836775, 35.596733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482029, 31.150700, 35.806854>,  <37.403111, 31.339054, 35.932926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482029, 31.150700, 35.806854>,  <37.613560, 30.836775, 35.596733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482029, 31.150700, 35.806854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275654, -0.452246, 0.848227,
		0.903264, 0.423724, -0.067625,
		-0.328831, 0.784813, 0.525298,
		37.383381, 31.386143, 35.964443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130394, 30.991501, 35.965763>,  <37.613560, 30.836775, 35.596733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130394, 30.991501, 35.965763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854530, 31.187937, 36.178631>,  <37.689011, 31.305799, 36.306351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854530, 31.187937, 36.178631>,  <38.130394, 30.991501, 35.965763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854530, 31.187937, 36.178631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402790, -0.350562, 0.845498,
		0.601774, 0.797455, 0.043961,
		-0.689658, 0.491092, 0.532166,
		37.647633, 31.335264, 36.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417286, 31.359457, 36.519310>,  <38.130394, 30.991501, 35.965763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417286, 31.359457, 36.519310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043575, 31.313118, 36.654190>,  <37.819347, 31.285315, 36.735119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043575, 31.313118, 36.654190>,  <38.417286, 31.359457, 36.519310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043575, 31.313118, 36.654190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342965, -0.550569, 0.761084,
		0.097484, 0.826712, 0.554116,
		-0.934276, -0.115849, 0.337205,
		37.763294, 31.278364, 36.755352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502754, 31.510176, 37.133778>,  <38.417286, 31.359457, 36.519310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502754, 31.510176, 37.133778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151466, 31.324474, 37.179718>,  <37.940693, 31.213053, 37.207283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151466, 31.324474, 37.179718>,  <38.502754, 31.510176, 37.133778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151466, 31.324474, 37.179718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334475, -0.424580, 0.841343,
		-0.341833, 0.777303, 0.528158,
		-0.878223, -0.464255, 0.114853,
		37.888000, 31.185198, 37.214172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407330, 31.502941, 37.872055>,  <38.502754, 31.510176, 37.133778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407330, 31.502941, 37.872055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138771, 31.231724, 37.752396>,  <37.977638, 31.068993, 37.680599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138771, 31.231724, 37.752396>,  <38.407330, 31.502941, 37.872055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138771, 31.231724, 37.752396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243008, -0.582754, 0.775464,
		-0.700127, 0.447947, 0.556027,
		-0.671394, -0.678043, -0.299147,
		37.937351, 31.028311, 37.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984859, 31.374126, 38.489929>,  <38.407330, 31.502941, 37.872055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984859, 31.374126, 38.489929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931702, 31.059191, 38.249119>,  <37.899807, 30.870230, 38.104633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931702, 31.059191, 38.249119>,  <37.984859, 31.374126, 38.489929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931702, 31.059191, 38.249119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176927, -0.616502, 0.767218,
		-0.975211, -0.004558, 0.221229,
		-0.132891, -0.787341, -0.602026,
		37.891834, 30.822989, 38.068512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472939, 30.994974, 38.811848>,  <37.984859, 31.374126, 38.489929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472939, 30.994974, 38.811848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660763, 30.739326, 38.568195>,  <37.773457, 30.585938, 38.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660763, 30.739326, 38.568195>,  <37.472939, 30.994974, 38.811848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660763, 30.739326, 38.568195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062588, -0.664090, 0.745028,
		-0.880678, -0.387961, -0.271830,
		0.469562, -0.639117, -0.609131,
		37.801632, 30.547592, 38.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133247, 30.451069, 38.762905>,  <37.472939, 30.994974, 38.811848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133247, 30.451069, 38.762905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497162, 30.315081, 38.667656>,  <37.715511, 30.233488, 38.610504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497162, 30.315081, 38.667656>,  <37.133247, 30.451069, 38.762905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497162, 30.315081, 38.667656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035374, -0.635121, 0.771603,
		-0.413559, -0.693573, -0.589853,
		0.909790, -0.339969, -0.238125,
		37.770100, 30.213091, 38.596218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140869, 29.778809, 39.047798>,  <37.133247, 30.451069, 38.762905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140869, 29.778809, 39.047798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523945, 29.817490, 38.939365>,  <37.753788, 29.840698, 38.874306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523945, 29.817490, 38.939365>,  <37.140869, 29.778809, 39.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523945, 29.817490, 38.939365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283484, -0.479675, 0.830391,
		-0.049730, -0.872101, -0.486792,
		0.957687, 0.096703, -0.271081,
		37.811253, 29.846500, 38.858040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422634, 29.076761, 38.994171>,  <37.140869, 29.778809, 39.047798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422634, 29.076761, 38.994171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689438, 29.354513, 39.102196>,  <37.849522, 29.521164, 39.167011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689438, 29.354513, 39.102196>,  <37.422634, 29.076761, 38.994171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689438, 29.354513, 39.102196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059117, -0.410655, 0.909872,
		0.742698, -0.590931, -0.314961,
		0.667012, 0.694380, 0.270059,
		37.889542, 29.562828, 39.183212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979603, 28.707420, 39.157360>,  <37.422634, 29.076761, 38.994171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979603, 28.707420, 39.157360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013569, 29.062914, 39.337559>,  <38.033947, 29.276209, 39.445679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013569, 29.062914, 39.337559>,  <37.979603, 28.707420, 39.157360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013569, 29.062914, 39.337559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019466, -0.453521, 0.891033,
		0.996198, -0.066890, -0.055810,
		0.084912, 0.888732, 0.450495,
		38.039043, 29.329533, 39.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364754, 28.590446, 39.707829>,  <37.979603, 28.707420, 39.157360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364754, 28.590446, 39.707829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183891, 28.935919, 39.796925>,  <38.075375, 29.143202, 39.850384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183891, 28.935919, 39.796925>,  <38.364754, 28.590446, 39.707829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183891, 28.935919, 39.796925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080544, -0.288245, 0.954163,
		0.888296, 0.413488, 0.199895,
		-0.452154, 0.863680, 0.222743,
		38.048244, 29.195023, 39.863747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599888, 28.845192, 40.405071>,  <38.364754, 28.590446, 39.707829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599888, 28.845192, 40.405071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262848, 29.057735, 40.370010>,  <38.060623, 29.185261, 40.348972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262848, 29.057735, 40.370010>,  <38.599888, 28.845192, 40.405071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262848, 29.057735, 40.370010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240628, -0.225850, 0.943976,
		0.481793, 0.816486, 0.318160,
		-0.842599, 0.531359, -0.087656,
		38.010067, 29.217144, 40.343712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598866, 29.301388, 40.978970>,  <38.599888, 28.845192, 40.405071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598866, 29.301388, 40.978970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214928, 29.304365, 40.866802>,  <37.984566, 29.306150, 40.799500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214928, 29.304365, 40.866802>,  <38.598866, 29.301388, 40.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214928, 29.304365, 40.866802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278137, -0.155257, 0.947911,
		-0.036483, 0.987846, 0.151094,
		-0.959848, 0.007442, -0.280421,
		37.926971, 29.306599, 40.782677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332150, 29.758152, 41.487457>,  <38.598866, 29.301388, 40.978970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332150, 29.758152, 41.487457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039192, 29.551405, 41.310165>,  <37.863419, 29.427357, 41.203789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039192, 29.551405, 41.310165>,  <38.332150, 29.758152, 41.487457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039192, 29.551405, 41.310165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501251, -0.031277, 0.864737,
		-0.460815, 0.855495, -0.236173,
		-0.732391, -0.516865, -0.443230,
		37.819473, 29.396345, 41.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755135, 30.073425, 41.836273>,  <38.332150, 29.758152, 41.487457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755135, 30.073425, 41.836273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677444, 29.706371, 41.697582>,  <37.630829, 29.486139, 41.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677444, 29.706371, 41.697582>,  <37.755135, 30.073425, 41.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677444, 29.706371, 41.697582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507757, -0.208381, 0.835919,
		-0.839321, 0.338409, -0.425463,
		-0.194224, -0.917636, -0.346729,
		37.619179, 29.431080, 41.593563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122391, 30.110929, 41.915649>,  <37.755135, 30.073425, 41.836273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122391, 30.110929, 41.915649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209770, 29.721432, 41.890034>,  <37.262199, 29.487734, 41.874664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209770, 29.721432, 41.890034>,  <37.122391, 30.110929, 41.915649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209770, 29.721432, 41.890034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463064, -0.161202, 0.871542,
		-0.858983, -0.160734, -0.486120,
		0.218449, -0.973745, -0.064040,
		37.275307, 29.429308, 41.870823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509014, 29.790148, 41.998047>,  <37.122391, 30.110929, 41.915649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509014, 29.790148, 41.998047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788231, 29.515766, 42.080223>,  <36.955761, 29.351137, 42.129528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788231, 29.515766, 42.080223>,  <36.509014, 29.790148, 41.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788231, 29.515766, 42.080223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519603, -0.287822, 0.804470,
		-0.492697, -0.668302, -0.557335,
		0.698042, -0.685952, 0.205442,
		36.997643, 29.309980, 42.141857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116215, 29.266075, 42.233509>,  <36.509014, 29.790148, 41.998047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116215, 29.266075, 42.233509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 29.156902, 42.351082>,  <36.702477, 29.091400, 42.421627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482628, 29.156902, 42.351082>,  <36.116215, 29.266075, 42.233509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482628, 29.156902, 42.351082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328449, -0.089768, 0.940246,
		-0.230239, -0.957835, -0.171875,
		0.916030, -0.272934, 0.293931,
		36.757439, 29.075024, 42.439262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035439, 28.622822, 42.628567>,  <36.116215, 29.266075, 42.233509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035439, 28.622822, 42.628567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378113, 28.789669, 42.749966>,  <36.583717, 28.889778, 42.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378113, 28.789669, 42.749966>,  <36.035439, 28.622822, 42.628567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378113, 28.789669, 42.749966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143403, -0.372580, 0.916853,
		0.495512, -0.828974, -0.259367,
		0.856682, 0.417118, 0.303495,
		36.635117, 28.914804, 42.841015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341167, 28.164328, 43.029762>,  <36.035439, 28.622822, 42.628567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341167, 28.164328, 43.029762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466236, 28.530399, 43.131489>,  <36.541279, 28.750042, 43.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466236, 28.530399, 43.131489>,  <36.341167, 28.164328, 43.029762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466236, 28.530399, 43.131489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171916, -0.208798, 0.962730,
		0.934173, -0.344742, 0.092049,
		0.312674, 0.915181, 0.254320,
		36.560040, 28.804955, 43.207787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716698, 28.124434, 43.720551>,  <36.341167, 28.164328, 43.029762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716698, 28.124434, 43.720551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634491, 28.512468, 43.668869>,  <36.585167, 28.745289, 43.637859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634491, 28.512468, 43.668869>,  <36.716698, 28.124434, 43.720551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634491, 28.512468, 43.668869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052791, 0.120839, 0.991267,
		0.977229, 0.210539, 0.026378,
		-0.205513, 0.970088, -0.129202,
		36.572838, 28.803495, 43.630108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087502, 28.489389, 44.150658>,  <36.716698, 28.124434, 43.720551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087502, 28.489389, 44.150658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807037, 28.762924, 44.069920>,  <36.638760, 28.927046, 44.021477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807037, 28.762924, 44.069920>,  <37.087502, 28.489389, 44.150658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807037, 28.762924, 44.069920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108798, 0.177164, 0.978149,
		0.704655, 0.707799, -0.049820,
		-0.701159, 0.683838, -0.201846,
		36.596691, 28.968075, 44.009365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181919, 28.982914, 44.678589>,  <37.087502, 28.489389, 44.150658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181919, 28.982914, 44.678589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812679, 29.065531, 44.548836>,  <36.591137, 29.115101, 44.470985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812679, 29.065531, 44.548836>,  <37.181919, 28.982914, 44.678589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812679, 29.065531, 44.548836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148427, 0.586799, 0.796013,
		0.354759, 0.782947, -0.511018,
		-0.923101, 0.206544, -0.324383,
		36.535748, 29.127495, 44.451519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056507, 29.729256, 44.908260>,  <37.181919, 28.982914, 44.678589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056507, 29.729256, 44.908260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703621, 29.561668, 44.822327>,  <36.491890, 29.461115, 44.770767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703621, 29.561668, 44.822327>,  <37.056507, 29.729256, 44.908260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703621, 29.561668, 44.822327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375872, 0.351887, 0.857261,
		-0.283568, 0.837043, -0.467920,
		-0.882219, -0.418969, -0.214837,
		36.438953, 29.435978, 44.757877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575909, 30.207403, 45.198818>,  <37.056507, 29.729256, 44.908260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575909, 30.207403, 45.198818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374416, 29.870737, 45.120991>,  <36.253521, 29.668737, 45.074295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374416, 29.870737, 45.120991>,  <36.575909, 30.207403, 45.198818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374416, 29.870737, 45.120991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485465, 0.089504, 0.869663,
		-0.714549, 0.532533, -0.453684,
		-0.503730, -0.841664, -0.194571,
		36.223297, 29.618238, 45.062618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857441, 30.377218, 45.259445>,  <36.575909, 30.207403, 45.198818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857441, 30.377218, 45.259445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926231, 29.988825, 45.325920>,  <35.967506, 29.755789, 45.365807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926231, 29.988825, 45.325920>,  <35.857441, 30.377218, 45.259445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926231, 29.988825, 45.325920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362418, 0.094510, 0.927211,
		-0.916012, -0.219688, -0.335648,
		0.171975, -0.970982, 0.166192,
		35.977825, 29.697531, 45.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317341, 30.245255, 45.590897>,  <35.857441, 30.377218, 45.259445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317341, 30.245255, 45.590897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561306, 29.941885, 45.682812>,  <35.707684, 29.759863, 45.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561306, 29.941885, 45.682812>,  <35.317341, 30.245255, 45.590897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561306, 29.941885, 45.682812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197060, 0.135710, 0.970953,
		-0.767579, -0.637476, -0.066684,
		0.609910, -0.758424, 0.229790,
		35.744278, 29.714357, 45.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974411, 29.870693, 46.142307>,  <35.317341, 30.245255, 45.590897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974411, 29.870693, 46.142307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347229, 29.727707, 46.166012>,  <35.570919, 29.641914, 46.180237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347229, 29.727707, 46.166012>,  <34.974411, 29.870693, 46.142307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347229, 29.727707, 46.166012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062373, 0.002841, 0.998049,
		-0.356938, -0.933921, -0.019648,
		0.932043, -0.357467, 0.059265,
		35.626842, 29.620466, 46.183792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971516, 29.411537, 46.650806>,  <34.974411, 29.870693, 46.142307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971516, 29.411537, 46.650806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345810, 29.551811, 46.635723>,  <35.570385, 29.635975, 46.626671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345810, 29.551811, 46.635723>,  <34.971516, 29.411537, 46.650806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345810, 29.551811, 46.635723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051163, 0.240751, 0.969238,
		0.348975, -0.905019, 0.243221,
		0.935734, 0.350684, -0.037713,
		35.626530, 29.657017, 46.624409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454170, 28.975706, 47.196102>,  <34.971516, 29.411537, 46.650806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454170, 28.975706, 47.196102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679955, 29.295004, 47.112007>,  <35.815426, 29.486582, 47.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679955, 29.295004, 47.112007>,  <35.454170, 28.975706, 47.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679955, 29.295004, 47.112007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170909, 0.136152, 0.975834,
		0.807576, -0.586747, -0.059575,
		0.564456, 0.798242, -0.210234,
		35.849293, 29.534477, 47.048939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081497, 28.967901, 47.560741>,  <35.454170, 28.975706, 47.196102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081497, 28.967901, 47.560741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056553, 29.355362, 47.464550>,  <36.041584, 29.587837, 47.406837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056553, 29.355362, 47.464550>,  <36.081497, 28.967901, 47.560741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056553, 29.355362, 47.464550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302571, 0.247954, 0.920310,
		0.951084, -0.015367, -0.308548,
		-0.062363, 0.968650, -0.240475,
		36.037846, 29.645956, 47.392406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625340, 29.336281, 47.816925>,  <36.081497, 28.967901, 47.560741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625340, 29.336281, 47.816925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368858, 29.640545, 47.776413>,  <36.214970, 29.823103, 47.752106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368858, 29.640545, 47.776413>,  <36.625340, 29.336281, 47.816925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368858, 29.640545, 47.776413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274302, 0.350460, 0.895509,
		0.716672, 0.546420, -0.433366,
		-0.641201, 0.760659, -0.101281,
		36.176498, 29.868742, 47.746029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012218, 29.957729, 48.090630>,  <36.625340, 29.336281, 47.816925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012218, 29.957729, 48.090630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618084, 30.025711, 48.084522>,  <36.381603, 30.066500, 48.080860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618084, 30.025711, 48.084522>,  <37.012218, 29.957729, 48.090630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618084, 30.025711, 48.084522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017124, 0.187494, 0.982116,
		0.169776, 0.967451, -0.187654,
		-0.985334, 0.169953, -0.015266,
		36.322483, 30.076696, 48.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844944, 30.608953, 48.496536>,  <37.012218, 29.957729, 48.090630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844944, 30.608953, 48.496536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515343, 30.382328, 48.498371>,  <36.317581, 30.246353, 48.499474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515343, 30.382328, 48.498371>,  <36.844944, 30.608953, 48.496536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515343, 30.382328, 48.498371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156032, 0.234701, 0.959463,
		-0.544673, 0.789887, -0.281797,
		-0.824006, -0.566563, 0.004588,
		36.268143, 30.212358, 48.499748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956337, 30.606134, 49.316978>,  <36.844944, 30.608953, 48.496536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956337, 30.606134, 49.316978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594467, 30.639605, 49.484100>,  <36.377346, 30.659687, 49.584373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594467, 30.639605, 49.484100>,  <36.956337, 30.606134, 49.316978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594467, 30.639605, 49.484100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415160, -0.393895, -0.820054,
		0.095956, -0.915339, 0.391084,
		-0.904674, 0.083673, 0.417809,
		36.323067, 30.664707, 49.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732960, 31.028246, 49.849342>,  <36.956337, 30.606134, 49.316978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732960, 31.028246, 49.849342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995708, 31.274927, 50.022869>,  <37.153358, 31.422935, 50.126984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995708, 31.274927, 50.022869>,  <36.732960, 31.028246, 49.849342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995708, 31.274927, 50.022869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445852, 0.146293, -0.883071,
		-0.608056, 0.773484, -0.178862,
		0.656875, 0.616702, 0.433814,
		37.192772, 31.459938, 50.153011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784046, 31.747164, 49.388798>,  <36.732960, 31.028246, 49.849342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784046, 31.747164, 49.388798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122234, 31.688484, 49.594189>,  <37.325146, 31.653276, 49.717422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122234, 31.688484, 49.594189>,  <36.784046, 31.747164, 49.388798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122234, 31.688484, 49.594189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529432, 0.104427, -0.841901,
		0.069885, 0.983654, 0.165956,
		0.845469, -0.146699, 0.513479,
		37.375874, 31.644474, 49.748234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305397, 32.247528, 49.143463>,  <36.784046, 31.747164, 49.388798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305397, 32.247528, 49.143463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515915, 31.939653, 49.288013>,  <37.642227, 31.754929, 49.374744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515915, 31.939653, 49.288013>,  <37.305397, 32.247528, 49.143463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515915, 31.939653, 49.288013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673411, 0.117799, -0.729823,
		0.519165, 0.627459, 0.580313,
		0.526294, -0.769688, 0.361380,
		37.673801, 31.708748, 49.396427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003231, 32.377243, 49.136349>,  <37.305397, 32.247528, 49.143463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003231, 32.377243, 49.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012741, 31.978655, 49.168537>,  <38.018448, 31.739502, 49.187851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012741, 31.978655, 49.168537>,  <38.003231, 32.377243, 49.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012741, 31.978655, 49.168537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580269, -0.051795, -0.812776,
		0.814078, 0.066018, 0.576991,
		0.023773, -0.996473, 0.080474,
		38.019875, 31.679712, 49.192680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737301, 32.122295, 49.060024>,  <38.003231, 32.377243, 49.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737301, 32.122295, 49.060024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550426, 31.778137, 48.978584>,  <38.438301, 31.571642, 48.929722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550426, 31.778137, 48.978584>,  <38.737301, 32.122295, 49.060024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550426, 31.778137, 48.978584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575154, -0.120851, -0.809069,
		0.671516, -0.495087, 0.551321,
		-0.467187, -0.860397, -0.203598,
		38.410271, 31.520018, 48.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273708, 31.790997, 48.705696>,  <38.737301, 32.122295, 49.060024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273708, 31.790997, 48.705696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928909, 31.610607, 48.613106>,  <38.722031, 31.502373, 48.557552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928909, 31.610607, 48.613106>,  <39.273708, 31.790997, 48.705696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928909, 31.610607, 48.613106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369372, -0.246070, -0.896110,
		0.347165, -0.857946, 0.378690,
		-0.861998, -0.450975, -0.231474,
		38.670311, 31.475315, 48.543663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474152, 31.162674, 48.310688>,  <39.273708, 31.790997, 48.705696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474152, 31.162674, 48.310688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097176, 31.277317, 48.241795>,  <38.870991, 31.346104, 48.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097176, 31.277317, 48.241795>,  <39.474152, 31.162674, 48.310688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097176, 31.277317, 48.241795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180318, 0.001842, -0.983607,
		-0.281594, -0.958045, -0.053417,
		-0.942438, 0.286610, -0.172235,
		38.814445, 31.363300, 48.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375290, 30.725733, 47.673710>,  <39.474152, 31.162674, 48.310688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375290, 30.725733, 47.673710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104637, 31.016787, 47.718826>,  <38.942245, 31.191420, 47.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104637, 31.016787, 47.718826>,  <39.375290, 30.725733, 47.673710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104637, 31.016787, 47.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004637, 0.157385, -0.987526,
		-0.736310, -0.667665, -0.109865,
		-0.676628, 0.727635, 0.112788,
		38.901649, 31.235077, 47.752663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883015, 30.441404, 47.341320>,  <39.375290, 30.725733, 47.673710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883015, 30.441404, 47.341320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772251, 30.825760, 47.339664>,  <38.705791, 31.056374, 47.338673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772251, 30.825760, 47.339664>,  <38.883015, 30.441404, 47.341320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772251, 30.825760, 47.339664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254234, -0.077416, -0.964039,
		-0.926653, -0.265900, 0.265727,
		-0.276909, 0.960887, -0.004137,
		38.689178, 31.114025, 47.338425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252647, 30.386148, 46.955956>,  <38.883015, 30.441404, 47.341320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252647, 30.386148, 46.955956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383045, 30.764013, 46.941299>,  <38.461285, 30.990732, 46.932507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383045, 30.764013, 46.941299>,  <38.252647, 30.386148, 46.955956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383045, 30.764013, 46.941299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337163, 0.079967, -0.938044,
		-0.883203, 0.318154, 0.344574,
		0.325996, 0.944661, -0.036643,
		38.480843, 31.047411, 46.930305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834335, 30.739653, 46.451862>,  <38.252647, 30.386148, 46.955956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834335, 30.739653, 46.451862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144955, 30.990105, 46.479973>,  <38.331326, 31.140375, 46.496838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144955, 30.990105, 46.479973>,  <37.834335, 30.739653, 46.451862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144955, 30.990105, 46.479973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021377, 0.137650, -0.990250,
		-0.629697, 0.767473, 0.120276,
		0.776546, 0.626129, 0.070272,
		38.377918, 31.177944, 46.501053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624775, 31.300123, 46.096146>,  <37.834335, 30.739653, 46.451862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624775, 31.300123, 46.096146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023945, 31.275143, 46.089775>,  <38.263447, 31.260155, 46.085953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023945, 31.275143, 46.089775>,  <37.624775, 31.300123, 46.096146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023945, 31.275143, 46.089775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003718, 0.190890, -0.981604,
		0.064341, 0.979623, 0.190261,
		0.997921, -0.062450, -0.015925,
		38.323322, 31.256407, 46.084999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776627, 31.780046, 45.730858>,  <37.624775, 31.300123, 46.096146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776627, 31.780046, 45.730858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 31.519468, 45.712364>,  <38.261288, 31.363121, 45.701267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 31.519468, 45.712364>,  <37.776627, 31.780046, 45.730858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079540, 31.519468, 45.712364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087558, 0.171426, -0.981299,
		0.647188, 0.739075, 0.186858,
		0.757285, -0.651446, -0.046233,
		38.306725, 31.324034, 45.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285110, 32.121132, 45.280388>,  <37.776627, 31.780046, 45.730858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285110, 32.121132, 45.280388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402092, 31.738867, 45.266689>,  <38.472282, 31.509506, 45.258472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402092, 31.738867, 45.266689>,  <38.285110, 32.121132, 45.280388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402092, 31.738867, 45.266689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250083, 0.110997, -0.961841,
		0.923000, 0.272731, 0.271458,
		0.292455, -0.955666, -0.034245,
		38.489830, 31.452168, 45.256416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030617, 32.142185, 44.960766>,  <38.285110, 32.121132, 45.280388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030617, 32.142185, 44.960766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916527, 31.762291, 44.909161>,  <38.848072, 31.534353, 44.878197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916527, 31.762291, 44.909161>,  <39.030617, 32.142185, 44.960766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916527, 31.762291, 44.909161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301594, 0.038832, -0.952645,
		0.909775, -0.310623, 0.275360,
		-0.285221, -0.949740, -0.129010,
		38.830959, 31.477369, 44.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478756, 31.800018, 44.580101>,  <39.030617, 32.142185, 44.960766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478756, 31.800018, 44.580101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176140, 31.548166, 44.509430>,  <38.994572, 31.397055, 44.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176140, 31.548166, 44.509430>,  <39.478756, 31.800018, 44.580101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176140, 31.548166, 44.509430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241428, -0.017839, -0.970255,
		0.607749, -0.776691, 0.165506,
		-0.756540, -0.629629, -0.176673,
		38.949177, 31.359278, 44.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703560, 31.223480, 44.167931>,  <39.478756, 31.800018, 44.580101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703560, 31.223480, 44.167931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311523, 31.246801, 44.092003>,  <39.076302, 31.260794, 44.046448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311523, 31.246801, 44.092003>,  <39.703560, 31.223480, 44.167931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311523, 31.246801, 44.092003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184926, -0.080233, -0.979472,
		-0.072314, -0.995071, 0.067858,
		-0.980088, 0.058281, -0.189816,
		39.017498, 31.264292, 44.035057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654652, 30.784603, 43.579273>,  <39.703560, 31.223480, 44.167931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654652, 30.784603, 43.579273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300259, 30.966522, 43.543049>,  <39.087624, 31.075674, 43.521313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300259, 30.966522, 43.543049>,  <39.654652, 30.784603, 43.579273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300259, 30.966522, 43.543049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088081, -0.026695, -0.995755,
		-0.455285, -0.890194, -0.016407,
		-0.885978, 0.454798, -0.090563,
		39.034466, 31.102962, 43.515881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347637, 30.386131, 43.100929>,  <39.654652, 30.784603, 43.579273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347637, 30.386131, 43.100929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151642, 30.734034, 43.124367>,  <39.034042, 30.942776, 43.138428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151642, 30.734034, 43.124367>,  <39.347637, 30.386131, 43.100929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151642, 30.734034, 43.124367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185748, 0.169839, -0.967808,
		-0.851709, -0.463333, -0.244775,
		-0.489990, 0.869757, 0.058590,
		39.004646, 30.994961, 43.141945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908478, 30.357883, 42.468071>,  <39.347637, 30.386131, 43.100929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908478, 30.357883, 42.468071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868275, 30.739912, 42.579597>,  <38.844154, 30.969130, 42.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868275, 30.739912, 42.579597>,  <38.908478, 30.357883, 42.468071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868275, 30.739912, 42.579597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049653, 0.275075, -0.960140,
		-0.993697, -0.110346, 0.019775,
		-0.100508, 0.955070, 0.278820,
		38.838123, 31.026432, 42.663242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252361, 30.606796, 42.193520>,  <38.908478, 30.357883, 42.468071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252361, 30.606796, 42.193520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483654, 30.926600, 42.258549>,  <38.622429, 31.118481, 42.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483654, 30.926600, 42.258549>,  <38.252361, 30.606796, 42.193520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483654, 30.926600, 42.258549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059186, 0.157634, -0.985722,
		-0.813721, 0.579601, 0.043830,
		0.578235, 0.799509, 0.162575,
		38.657124, 31.166452, 42.307320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996468, 31.127611, 41.675636>,  <38.252361, 30.606796, 42.193520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996468, 31.127611, 41.675636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357628, 31.268499, 41.774189>,  <38.574326, 31.353033, 41.833321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357628, 31.268499, 41.774189>,  <37.996468, 31.127611, 41.675636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357628, 31.268499, 41.774189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134886, 0.312062, -0.940438,
		-0.408128, 0.882359, 0.234253,
		0.902905, 0.352221, 0.246379,
		38.628498, 31.374166, 41.848103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016735, 31.612085, 41.241879>,  <37.996468, 31.127611, 41.675636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016735, 31.612085, 41.241879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401218, 31.584398, 41.348675>,  <38.631908, 31.567785, 41.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401218, 31.584398, 41.348675>,  <38.016735, 31.612085, 41.241879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401218, 31.584398, 41.348675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275554, 0.282983, -0.918690,
		-0.011964, 0.956624, 0.291079,
		0.961211, -0.069217, 0.266987,
		38.689583, 31.563633, 41.428772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369400, 32.269478, 41.107159>,  <38.016735, 31.612085, 41.241879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369400, 32.269478, 41.107159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615864, 31.955082, 41.086876>,  <38.763744, 31.766445, 41.074707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615864, 31.955082, 41.086876>,  <38.369400, 32.269478, 41.107159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615864, 31.955082, 41.086876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265767, 0.268087, -0.926012,
		0.741426, 0.557097, 0.374074,
		0.616162, -0.785985, -0.050709,
		38.800713, 31.719286, 41.071663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013420, 32.473228, 40.818249>,  <38.369400, 32.269478, 41.107159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013420, 32.473228, 40.818249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076221, 32.081230, 40.769318>,  <39.113903, 31.846031, 40.739960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076221, 32.081230, 40.769318>,  <39.013420, 32.473228, 40.818249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076221, 32.081230, 40.769318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432262, 0.179558, -0.883690,
		0.887975, 0.085864, 0.451805,
		0.157003, -0.979993, -0.122327,
		39.123322, 31.787231, 40.732620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690529, 32.384159, 40.648930>,  <39.013420, 32.473228, 40.818249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690529, 32.384159, 40.648930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512939, 32.053722, 40.510101>,  <39.406384, 31.855461, 40.426804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512939, 32.053722, 40.510101>,  <39.690529, 32.384159, 40.648930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512939, 32.053722, 40.510101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559035, 0.047336, -0.827792,
		0.700262, -0.561543, 0.440798,
		-0.443975, -0.826092, -0.347070,
		39.379745, 31.805895, 40.405979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185223, 31.984001, 40.376423>,  <39.690529, 32.384159, 40.648930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185223, 31.984001, 40.376423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848705, 31.840477, 40.214691>,  <39.646793, 31.754362, 40.117653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848705, 31.840477, 40.214691>,  <40.185223, 31.984001, 40.376423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848705, 31.840477, 40.214691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455489, -0.067714, -0.887662,
		0.291124, -0.930951, 0.220401,
		-0.841295, -0.358810, -0.404325,
		39.596317, 31.732834, 40.093395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398052, 31.532286, 39.819344>,  <40.185223, 31.984001, 40.376423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398052, 31.532286, 39.819344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025162, 31.616077, 39.701317>,  <39.801426, 31.666353, 39.630501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025162, 31.616077, 39.701317>,  <40.398052, 31.532286, 39.819344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025162, 31.616077, 39.701317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316022, 0.074036, -0.945859,
		-0.176292, -0.975006, -0.135218,
		-0.932229, 0.209480, -0.295071,
		39.745491, 31.678921, 39.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382885, 31.291397, 39.136227>,  <40.398052, 31.532286, 39.819344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382885, 31.291397, 39.136227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063381, 31.532021, 39.140312>,  <39.871677, 31.676395, 39.142765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063381, 31.532021, 39.140312>,  <40.382885, 31.291397, 39.136227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063381, 31.532021, 39.140312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117231, 0.172274, -0.978048,
		-0.590114, -0.780031, -0.208128,
		-0.798763, 0.601559, 0.010218,
		39.823753, 31.712488, 39.143379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970184, 31.054148, 38.554241>,  <40.382885, 31.291397, 39.136227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970184, 31.054148, 38.554241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863007, 31.425211, 38.658287>,  <39.798698, 31.647848, 38.720715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863007, 31.425211, 38.658287>,  <39.970184, 31.054148, 38.554241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863007, 31.425211, 38.658287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014645, 0.266035, -0.963852,
		-0.963323, -0.262069, -0.057698,
		-0.267945, 0.927656, 0.260116,
		39.782623, 31.703508, 38.736320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646152, 31.211031, 38.056248>,  <39.970184, 31.054148, 38.554241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646152, 31.211031, 38.056248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716022, 31.568048, 38.222553>,  <39.757946, 31.782259, 38.322334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716022, 31.568048, 38.222553>,  <39.646152, 31.211031, 38.056248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716022, 31.568048, 38.222553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108726, 0.402187, -0.909079,
		-0.978605, 0.203997, -0.026791,
		0.174675, 0.892542, 0.415762,
		39.768425, 31.835812, 38.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460121, 31.714010, 37.606609>,  <39.646152, 31.211031, 38.056248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460121, 31.714010, 37.606609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652328, 31.970364, 37.846066>,  <39.767654, 32.124176, 37.989738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652328, 31.970364, 37.846066>,  <39.460121, 31.714010, 37.606609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652328, 31.970364, 37.846066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122135, 0.627054, -0.769342,
		-0.868438, 0.442798, 0.223036,
		0.480518, 0.640885, 0.598638,
		39.796486, 32.162628, 38.025658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091068, 32.410568, 37.519253>,  <39.460121, 31.714010, 37.606609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091068, 32.410568, 37.519253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464481, 32.473263, 37.648216>,  <39.688530, 32.510880, 37.725594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464481, 32.473263, 37.648216>,  <39.091068, 32.410568, 37.519253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464481, 32.473263, 37.648216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205754, 0.502217, -0.839907,
		-0.293568, 0.850418, 0.436586,
		0.933533, 0.156740, 0.322412,
		39.744541, 32.520287, 37.744942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224937, 33.143543, 37.483212>,  <39.091068, 32.410568, 37.519253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224937, 33.143543, 37.483212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581322, 32.962177, 37.493042>,  <39.795151, 32.853355, 37.498940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581322, 32.962177, 37.493042>,  <39.224937, 33.143543, 37.483212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581322, 32.962177, 37.493042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299398, 0.545897, -0.782532,
		0.341396, 0.704563, 0.622125,
		0.890960, -0.453416, 0.024578,
		39.848610, 32.826153, 37.500416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718189, 33.692513, 37.471077>,  <39.224937, 33.143543, 37.483212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718189, 33.692513, 37.471077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922695, 33.370213, 37.351498>,  <40.045399, 33.176830, 37.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922695, 33.370213, 37.351498>,  <39.718189, 33.692513, 37.471077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922695, 33.370213, 37.351498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361966, 0.517375, -0.775438,
		0.779481, 0.288243, 0.556171,
		0.511263, -0.805754, -0.298949,
		40.076073, 33.128487, 37.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345676, 33.924454, 37.411148>,  <39.718189, 33.692513, 37.471077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345676, 33.924454, 37.411148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376450, 33.585320, 37.201290>,  <40.394913, 33.381840, 37.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376450, 33.585320, 37.201290>,  <40.345676, 33.924454, 37.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376450, 33.585320, 37.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528173, 0.480962, -0.699792,
		0.845645, -0.223266, 0.484807,
		0.076934, -0.847837, -0.524646,
		40.399529, 33.330967, 37.043896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918831, 34.007137, 37.002533>,  <40.345676, 33.924454, 37.411148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918831, 34.007137, 37.002533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736256, 33.696915, 36.828094>,  <40.626713, 33.510780, 36.723431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736256, 33.696915, 36.828094>,  <40.918831, 34.007137, 37.002533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736256, 33.696915, 36.828094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179801, 0.399626, -0.898872,
		0.871401, -0.488687, -0.042957,
		-0.456434, -0.775554, -0.436101,
		40.599327, 33.464249, 36.697266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390083, 33.670322, 36.554028>,  <40.918831, 34.007137, 37.002533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390083, 33.670322, 36.554028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031548, 33.575417, 36.404209>,  <40.816425, 33.518475, 36.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031548, 33.575417, 36.404209>,  <41.390083, 33.670322, 36.554028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031548, 33.575417, 36.404209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222301, 0.490419, -0.842657,
		0.383616, -0.838567, -0.386838,
		-0.896337, -0.237262, -0.374547,
		40.762646, 33.504238, 36.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513058, 33.423386, 35.876480>,  <41.390083, 33.670322, 36.554028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513058, 33.423386, 35.876480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122021, 33.497498, 35.836517>,  <40.887398, 33.541965, 35.812538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122021, 33.497498, 35.836517>,  <41.513058, 33.423386, 35.876480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122021, 33.497498, 35.836517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134769, 0.186306, -0.973205,
		-0.161700, -0.964864, -0.207102,
		-0.977594, 0.185278, -0.099908,
		40.828743, 33.553082, 35.806545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225712, 33.034546, 35.361259>,  <41.513058, 33.423386, 35.876480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225712, 33.034546, 35.361259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979980, 33.348209, 35.396351>,  <40.832542, 33.536407, 35.417408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979980, 33.348209, 35.396351>,  <41.225712, 33.034546, 35.361259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979980, 33.348209, 35.396351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073889, 0.053528, -0.995829,
		-0.785582, -0.618250, 0.025056,
		-0.614330, 0.784157, 0.087733,
		40.795681, 33.583458, 35.422672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588974, 33.058044, 34.920822>,  <41.225712, 33.034546, 35.361259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588974, 33.058044, 34.920822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688641, 33.437351, 34.999512>,  <40.748440, 33.664936, 35.046726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688641, 33.437351, 34.999512>,  <40.588974, 33.058044, 34.920822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688641, 33.437351, 34.999512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179053, 0.244730, -0.952915,
		-0.951765, 0.202211, 0.230769,
		0.249166, 0.948271, 0.196719,
		40.763390, 33.721832, 35.058529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184830, 33.519539, 34.715065>,  <40.588974, 33.058044, 34.920822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184830, 33.519539, 34.715065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535709, 33.710133, 34.691422>,  <40.746235, 33.824490, 34.677235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535709, 33.710133, 34.691422>,  <40.184830, 33.519539, 34.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535709, 33.710133, 34.691422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196889, 0.244694, -0.949400,
		-0.437909, 0.844446, 0.308459,
		0.877195, 0.476483, -0.059108,
		40.798866, 33.853077, 34.673691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096237, 34.259945, 34.529358>,  <40.184830, 33.519539, 34.715065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096237, 34.259945, 34.529358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448627, 34.111206, 34.412319>,  <40.660061, 34.021961, 34.342098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448627, 34.111206, 34.412319>,  <40.096237, 34.259945, 34.529358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448627, 34.111206, 34.412319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262839, 0.129601, -0.956096,
		0.393445, 0.919201, 0.016438,
		0.880975, -0.371850, -0.292593,
		40.712921, 33.999649, 34.324543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513493, 34.713951, 34.056602>,  <40.096237, 34.259945, 34.529358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513493, 34.713951, 34.056602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639954, 34.347305, 33.958740>,  <40.715832, 34.127316, 33.900021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639954, 34.347305, 33.958740>,  <40.513493, 34.713951, 34.056602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639954, 34.347305, 33.958740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006746, 0.260052, -0.965571,
		0.948683, 0.303620, 0.088400,
		0.316156, -0.916618, -0.244659,
		40.734802, 34.072319, 33.885342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852200, 35.169449, 33.720356>,  <40.513493, 34.713951, 34.056602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852200, 35.169449, 33.720356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155251, 35.193462, 33.460388>,  <41.337082, 35.207870, 33.304409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155251, 35.193462, 33.460388>,  <40.852200, 35.169449, 33.720356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155251, 35.193462, 33.460388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400761, 0.743155, 0.535828,
		0.515158, -0.666421, 0.538976,
		0.757629, 0.060035, -0.649918,
		41.382538, 35.211472, 33.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514286, 35.199329, 34.109676>,  <40.852200, 35.169449, 33.720356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514286, 35.199329, 34.109676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552654, 35.358673, 33.744797>,  <41.575676, 35.454281, 33.525867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552654, 35.358673, 33.744797>,  <41.514286, 35.199329, 34.109676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552654, 35.358673, 33.744797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361134, 0.840055, 0.404833,
		0.927567, -0.368257, -0.063284,
		0.095921, 0.398364, -0.912198,
		41.581432, 35.478184, 33.471138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153370, 35.385609, 33.962410>,  <41.514286, 35.199329, 34.109676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153370, 35.385609, 33.962410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958553, 35.650539, 33.734688>,  <41.841663, 35.809498, 33.598053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958553, 35.650539, 33.734688>,  <42.153370, 35.385609, 33.962410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958553, 35.650539, 33.734688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437116, 0.749183, 0.497649,
		0.756123, -0.006477, -0.654398,
		-0.487041, 0.662331, -0.569305,
		41.812443, 35.849239, 33.563896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536160, 35.801323, 33.548439>,  <42.153370, 35.385609, 33.962410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536160, 35.801323, 33.548439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210842, 35.966209, 33.712704>,  <42.015652, 36.065140, 33.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210842, 35.966209, 33.712704>,  <42.536160, 35.801323, 33.548439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210842, 35.966209, 33.712704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561050, 0.742620, 0.365701,
		-0.154217, 0.527821, -0.835238,
		-0.813289, 0.412213, 0.410659,
		41.966854, 36.089874, 33.835903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938137, 35.685295, 34.189941>,  <42.536160, 35.801323, 33.548439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938137, 35.685295, 34.189941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332706, 35.739807, 34.226601>,  <43.569447, 35.772514, 34.248596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332706, 35.739807, 34.226601>,  <42.938137, 35.685295, 34.189941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332706, 35.739807, 34.226601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163269, 0.753536, 0.636809,
		0.017720, -0.643127, 0.765555,
		0.986422, 0.136275, 0.091650,
		43.628632, 35.780689, 34.254097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034950, 35.931923, 34.886635>,  <42.938137, 35.685295, 34.189941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034950, 35.931923, 34.886635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364552, 36.037441, 34.686062>,  <43.562313, 36.100750, 34.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364552, 36.037441, 34.686062>,  <43.034950, 35.931923, 34.886635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364552, 36.037441, 34.686062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009018, 0.891000, 0.453914,
		0.566516, -0.369503, 0.736564,
		0.824001, 0.263792, -0.501433,
		43.611752, 36.116577, 34.535633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531555, 36.274090, 35.377880>,  <43.034950, 35.931923, 34.886635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531555, 36.274090, 35.377880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633320, 36.423168, 35.020920>,  <43.694378, 36.512615, 34.806744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633320, 36.423168, 35.020920>,  <43.531555, 36.274090, 35.377880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633320, 36.423168, 35.020920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026838, 0.925124, 0.378715,
		0.966725, -0.072397, 0.245360,
		0.254406, 0.372699, -0.892397,
		43.709641, 36.534977, 34.753201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976639, 36.842182, 35.501869>,  <43.531555, 36.274090, 35.377880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976639, 36.842182, 35.501869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903038, 36.911953, 35.114941>,  <43.858879, 36.953815, 34.882782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903038, 36.911953, 35.114941>,  <43.976639, 36.842182, 35.501869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903038, 36.911953, 35.114941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143447, 0.968827, 0.201985,
		0.972402, 0.175926, -0.153245,
		-0.184002, 0.174428, -0.967325,
		43.847836, 36.964283, 34.824741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441753, 37.378895, 35.346821>,  <43.976639, 36.842182, 35.501869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441753, 37.378895, 35.346821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179440, 37.396229, 35.045341>,  <44.022049, 37.406628, 34.864452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179440, 37.396229, 35.045341>,  <44.441753, 37.378895, 35.346821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179440, 37.396229, 35.045341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052557, 0.993309, 0.102837,
		0.753114, 0.107052, -0.649122,
		-0.655787, 0.043332, -0.753701,
		43.982704, 37.409229, 34.819233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718937, 37.877716, 34.687561>,  <44.441753, 37.378895, 35.346821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718937, 37.877716, 34.687561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321472, 37.835522, 34.703102>,  <44.082993, 37.810204, 34.712425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321472, 37.835522, 34.703102>,  <44.718937, 37.877716, 34.687561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321472, 37.835522, 34.703102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099295, 0.985638, 0.136595,
		-0.052700, 0.131871, -0.989865,
		-0.993662, -0.105487, 0.038849,
		44.023373, 37.803875, 34.714756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491024, 38.389664, 34.264683>,  <44.718937, 37.877716, 34.687561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491024, 38.389664, 34.264683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160675, 38.332443, 34.482849>,  <43.962467, 38.298111, 34.613747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160675, 38.332443, 34.482849>,  <44.491024, 38.389664, 34.264683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160675, 38.332443, 34.482849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002244, 0.968109, 0.250521,
		-0.563856, 0.205674, -0.799853,
		-0.825870, -0.143053, 0.545412,
		43.912914, 38.289528, 34.646473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203690, 39.012333, 34.292828>,  <44.491024, 38.389664, 34.264683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203690, 39.012333, 34.292828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973824, 38.824902, 34.561211>,  <43.835903, 38.712440, 34.722240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973824, 38.824902, 34.561211>,  <44.203690, 39.012333, 34.292828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973824, 38.824902, 34.561211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212409, 0.877162, 0.430661,
		-0.790341, 0.104969, -0.603608,
		-0.574668, -0.468581, 0.670960,
		43.801422, 38.684326, 34.762497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575260, 39.389851, 34.277996>,  <44.203690, 39.012333, 34.292828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575260, 39.389851, 34.277996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623524, 39.189785, 34.620991>,  <43.652481, 39.069744, 34.826786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623524, 39.189785, 34.620991>,  <43.575260, 39.389851, 34.277996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623524, 39.189785, 34.620991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090979, 0.854587, 0.511277,
		-0.988517, -0.139701, 0.057605,
		0.120655, -0.500165, 0.857483,
		43.659721, 39.039734, 34.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227409, 39.750526, 34.703266>,  <43.575260, 39.389851, 34.277996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227409, 39.750526, 34.703266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429848, 39.536976, 34.974216>,  <43.551311, 39.408844, 35.136787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429848, 39.536976, 34.974216>,  <43.227409, 39.750526, 34.703266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429848, 39.536976, 34.974216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019977, 0.792431, 0.609634,
		-0.862243, -0.295004, 0.411715,
		0.506100, -0.533878, 0.677375,
		43.581676, 39.376812, 35.177429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883823, 39.839745, 35.413532>,  <43.227409, 39.750526, 34.703266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883823, 39.839745, 35.413532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247540, 39.706223, 35.512939>,  <43.465771, 39.626110, 35.572586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247540, 39.706223, 35.512939>,  <42.883823, 39.839745, 35.413532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247540, 39.706223, 35.512939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004042, 0.590058, 0.807351,
		-0.416143, -0.735121, 0.535185,
		0.909290, -0.333810, 0.248520,
		43.520325, 39.606079, 35.587494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862297, 39.575626, 36.109035>,  <42.883823, 39.839745, 35.413532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862297, 39.575626, 36.109035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245907, 39.661278, 36.034832>,  <43.476074, 39.712669, 35.990311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245907, 39.661278, 36.034832>,  <42.862297, 39.575626, 36.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245907, 39.661278, 36.034832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047618, 0.523630, 0.850614,
		0.279278, -0.824597, 0.491980,
		0.959029, 0.214131, -0.185504,
		43.533615, 39.725517, 35.979179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160679, 39.584515, 36.829449>,  <42.862297, 39.575626, 36.109035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160679, 39.584515, 36.829449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425201, 39.774990, 36.597614>,  <43.583916, 39.889275, 36.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425201, 39.774990, 36.597614>,  <43.160679, 39.584515, 36.829449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425201, 39.774990, 36.597614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134833, 0.684615, 0.716326,
		0.737896, -0.551859, 0.388536,
		0.661308, 0.476186, -0.579583,
		43.623592, 39.917847, 36.423740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774502, 39.709423, 37.229107>,  <43.160679, 39.584515, 36.829449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774502, 39.709423, 37.229107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850365, 39.976624, 36.941273>,  <43.895882, 40.136944, 36.768574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850365, 39.976624, 36.941273>,  <43.774502, 39.709423, 37.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850365, 39.976624, 36.941273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255878, 0.673934, 0.693065,
		0.947923, -0.315569, -0.043113,
		0.189655, 0.668004, -0.719585,
		43.907261, 40.177025, 36.725399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510437, 39.962299, 37.249699>,  <43.774502, 39.709423, 37.229107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510437, 39.962299, 37.249699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.267555, 40.234997, 37.086464>,  <44.121826, 40.398613, 36.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.267555, 40.234997, 37.086464>,  <44.510437, 39.962299, 37.249699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267555, 40.234997, 37.086464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233389, 0.643991, 0.728564,
		0.759496, 0.347142, -0.550143,
		-0.607203, 0.681739, -0.408089,
		44.085396, 40.439518, 36.964039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865837, 40.638237, 37.209988>,  <44.510437, 39.962299, 37.249699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865837, 40.638237, 37.209988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478268, 40.735268, 37.190594>,  <44.245728, 40.793488, 37.178959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478268, 40.735268, 37.190594>,  <44.865837, 40.638237, 37.209988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478268, 40.735268, 37.190594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103154, 0.574335, 0.812095,
		0.224844, 0.781853, -0.581507,
		-0.968919, 0.242579, -0.048485,
		44.187592, 40.808041, 37.176048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780170, 41.267029, 37.579746>,  <44.865837, 40.638237, 37.209988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780170, 41.267029, 37.579746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396393, 41.159252, 37.546616>,  <44.166126, 41.094585, 37.526737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396393, 41.159252, 37.546616>,  <44.780170, 41.267029, 37.579746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396393, 41.159252, 37.546616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186507, 0.386467, 0.903249,
		-0.211364, 0.882068, -0.421048,
		-0.959448, -0.269443, -0.082826,
		44.108559, 41.078419, 37.521767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491756, 41.879658, 37.678871>,  <44.780170, 41.267029, 37.579746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491756, 41.879658, 37.678871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216694, 41.597687, 37.748386>,  <44.051655, 41.428505, 37.790096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216694, 41.597687, 37.748386>,  <44.491756, 41.879658, 37.678871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216694, 41.597687, 37.748386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308100, 0.500076, 0.809320,
		-0.657422, 0.502989, -0.561069,
		-0.687656, -0.704930, 0.173790,
		44.010399, 41.386208, 37.800522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870823, 42.223511, 37.954559>,  <44.491756, 41.879658, 37.678871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870823, 42.223511, 37.954559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809586, 41.845753, 38.070961>,  <43.772842, 41.619099, 38.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809586, 41.845753, 38.070961>,  <43.870823, 42.223511, 37.954559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809586, 41.845753, 38.070961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492440, 0.328216, 0.806087,
		-0.856776, -0.019899, -0.515304,
		-0.153091, -0.944393, 0.291007,
		43.763657, 41.562435, 38.158264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200451, 42.258560, 38.081306>,  <43.870823, 42.223511, 37.954559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200451, 42.258560, 38.081306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362644, 41.963779, 38.297634>,  <43.459961, 41.786911, 38.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362644, 41.963779, 38.297634>,  <43.200451, 42.258560, 38.081306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362644, 41.963779, 38.297634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587812, 0.242879, 0.771678,
		-0.700042, -0.630805, -0.334703,
		0.405487, -0.736949, 0.540820,
		43.484291, 41.742695, 38.459881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704941, 41.899250, 38.450569>,  <43.200451, 42.258560, 38.081306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704941, 41.899250, 38.450569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032375, 41.803795, 38.659554>,  <43.228836, 41.746521, 38.784943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032375, 41.803795, 38.659554>,  <42.704941, 41.899250, 38.450569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032375, 41.803795, 38.659554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520927, 0.074738, 0.850323,
		-0.241965, -0.968229, -0.063133,
		0.818589, -0.238636, 0.522460,
		43.277950, 41.732204, 38.816292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403229, 41.806236, 39.007168>,  <42.704941, 41.899250, 38.450569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403229, 41.806236, 39.007168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789127, 41.819809, 39.111561>,  <43.020668, 41.827953, 39.174198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789127, 41.819809, 39.111561>,  <42.403229, 41.806236, 39.007168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789127, 41.819809, 39.111561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257529, 0.326087, 0.909586,
		-0.054238, -0.944731, 0.323330,
		0.964747, 0.033933, 0.260981,
		43.078552, 41.829990, 39.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487141, 41.427025, 39.619442>,  <42.403229, 41.806236, 39.007168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487141, 41.427025, 39.619442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800850, 41.672661, 39.584103>,  <42.989075, 41.820042, 39.562901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800850, 41.672661, 39.584103>,  <42.487141, 41.427025, 39.619442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800850, 41.672661, 39.584103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248012, 0.440850, 0.862636,
		0.568685, -0.654633, 0.498050,
		0.784276, 0.614090, -0.088348,
		43.036133, 41.856888, 39.557598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913040, 41.003441, 39.959785>,  <42.487141, 41.427025, 39.619442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913040, 41.003441, 39.959785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657795, 40.727089, 40.095722>,  <42.504646, 40.561279, 40.177284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657795, 40.727089, 40.095722>,  <42.913040, 41.003441, 39.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657795, 40.727089, 40.095722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757728, -0.485217, 0.436362,
		-0.136579, 0.535956, 0.833125,
		-0.638117, -0.690880, 0.339839,
		42.466358, 40.519825, 40.197674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022099, 40.851353, 40.666004>,  <42.913040, 41.003441, 39.959785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022099, 40.851353, 40.666004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910168, 40.524261, 40.464806>,  <42.843010, 40.328007, 40.344086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910168, 40.524261, 40.464806>,  <43.022099, 40.851353, 40.666004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910168, 40.524261, 40.464806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698899, -0.532718, 0.477233,
		-0.658206, -0.218001, 0.720583,
		-0.279830, -0.817733, -0.502999,
		42.826218, 40.278942, 40.313908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787277, 40.372025, 41.177200>,  <43.022099, 40.851353, 40.666004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787277, 40.372025, 41.177200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939438, 40.230709, 40.835327>,  <43.030735, 40.145920, 40.630203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939438, 40.230709, 40.835327>,  <42.787277, 40.372025, 41.177200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939438, 40.230709, 40.835327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716747, -0.471398, 0.513866,
		-0.584440, -0.808065, 0.073902,
		0.380400, -0.353293, -0.854681,
		43.053558, 40.124722, 40.578922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682594, 39.694065, 41.129139>,  <42.787277, 40.372025, 41.177200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682594, 39.694065, 41.129139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002544, 39.768635, 40.900948>,  <43.194515, 39.813377, 40.764034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002544, 39.768635, 40.900948>,  <42.682594, 39.694065, 41.129139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002544, 39.768635, 40.900948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559325, -0.576197, 0.595946,
		-0.217604, -0.795764, -0.565162,
		0.799878, 0.186429, -0.570474,
		43.242508, 39.824562, 40.729805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819481, 39.670677, 41.825260>,  <42.682594, 39.694065, 41.129139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819481, 39.670677, 41.825260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842983, 40.065434, 41.765133>,  <42.857086, 40.302288, 41.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842983, 40.065434, 41.765133>,  <42.819481, 39.670677, 41.825260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842983, 40.065434, 41.765133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947280, 0.102633, 0.303525,
		0.314973, 0.124562, 0.940891,
		0.058759, 0.986890, -0.150322,
		42.860611, 40.361500, 41.720036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555752, 39.332108, 41.637074>,  <42.819481, 39.670677, 41.825260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555752, 39.332108, 41.637074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415672, 39.020962, 41.845798>,  <43.331623, 38.834274, 41.971031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415672, 39.020962, 41.845798>,  <43.555752, 39.332108, 41.637074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415672, 39.020962, 41.845798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189681, -0.486653, -0.852754,
		0.917269, -0.397610, 0.022878,
		-0.350198, -0.777866, 0.521811,
		43.310612, 38.787601, 42.002342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972095, 38.801346, 41.458683>,  <43.555752, 39.332108, 41.637074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972095, 38.801346, 41.458683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597542, 38.703159, 41.559032>,  <43.372810, 38.644245, 41.619240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597542, 38.703159, 41.559032>,  <43.972095, 38.801346, 41.458683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597542, 38.703159, 41.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143412, -0.384789, -0.911795,
		0.320352, -0.889765, 0.325105,
		-0.936380, -0.245471, 0.250870,
		43.316628, 38.629517, 41.634293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930389, 38.113567, 41.449490>,  <43.972095, 38.801346, 41.458683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930389, 38.113567, 41.449490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553368, 38.233788, 41.391163>,  <43.327156, 38.305920, 41.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553368, 38.233788, 41.391163>,  <43.930389, 38.113567, 41.449490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553368, 38.233788, 41.391163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021928, -0.491221, -0.870759,
		-0.333332, -0.817541, 0.469593,
		-0.942554, 0.300549, -0.145813,
		43.270603, 38.323952, 41.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556374, 37.535168, 41.240608>,  <43.930389, 38.113567, 41.449490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556374, 37.535168, 41.240608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321045, 37.836540, 41.123161>,  <43.179848, 38.017365, 41.052692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321045, 37.836540, 41.123161>,  <43.556374, 37.535168, 41.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321045, 37.836540, 41.123161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090925, -0.422438, -0.901820,
		-0.803497, -0.503866, 0.317037,
		-0.588324, 0.753436, -0.293613,
		43.144547, 38.062572, 41.035076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868320, 37.219807, 40.846397>,  <43.556374, 37.535168, 41.240608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868320, 37.219807, 40.846397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923454, 37.600281, 40.735947>,  <42.956535, 37.828568, 40.669678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923454, 37.600281, 40.735947>,  <42.868320, 37.219807, 40.846397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923454, 37.600281, 40.735947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288520, -0.228134, -0.929899,
		-0.947501, 0.207841, 0.242991,
		0.137837, 0.951187, -0.276124,
		42.964806, 37.885635, 40.653111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198475, 37.427250, 40.485764>,  <42.868320, 37.219807, 40.846397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198475, 37.427250, 40.485764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527870, 37.629761, 40.383354>,  <42.725506, 37.751266, 40.321907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527870, 37.629761, 40.383354>,  <42.198475, 37.427250, 40.485764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527870, 37.629761, 40.383354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117057, -0.289942, -0.949858,
		-0.555126, 0.812167, -0.179501,
		0.823488, 0.506279, -0.256024,
		42.774918, 37.781643, 40.306545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027412, 37.648392, 39.768826>,  <42.198475, 37.427250, 40.485764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027412, 37.648392, 39.768826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424236, 37.687511, 39.800442>,  <42.662331, 37.710983, 39.819412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424236, 37.687511, 39.800442>,  <42.027412, 37.648392, 39.768826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424236, 37.687511, 39.800442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110346, -0.375724, -0.920139,
		-0.060289, 0.921557, -0.383533,
		0.992063, 0.097795, 0.079038,
		42.721855, 37.716850, 39.824154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284676, 37.832874, 39.058964>,  <42.027412, 37.648392, 39.768826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284676, 37.832874, 39.058964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618393, 37.740059, 39.259007>,  <42.818623, 37.684372, 39.379032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618393, 37.740059, 39.259007>,  <42.284676, 37.832874, 39.058964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618393, 37.740059, 39.259007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415911, -0.330549, -0.847204,
		0.361891, 0.914821, -0.179270,
		0.834297, -0.232035, 0.500107,
		42.868683, 37.670448, 39.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794865, 38.179424, 38.729759>,  <42.284676, 37.832874, 39.058964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794865, 38.179424, 38.729759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980324, 37.880898, 38.920776>,  <43.091599, 37.701782, 39.035385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980324, 37.880898, 38.920776>,  <42.794865, 38.179424, 38.729759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980324, 37.880898, 38.920776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398699, -0.305585, -0.864672,
		0.791248, 0.591295, 0.155873,
		0.463644, -0.746316, 0.477542,
		43.119415, 37.657001, 39.064037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338989, 38.085964, 38.332127>,  <42.794865, 38.179424, 38.729759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338989, 38.085964, 38.332127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376747, 37.755497, 38.554310>,  <43.399403, 37.557217, 38.687618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376747, 37.755497, 38.554310>,  <43.338989, 38.085964, 38.332127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376747, 37.755497, 38.554310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354545, -0.493468, -0.794221,
		0.930262, 0.271903, 0.246335,
		0.094393, -0.826171, 0.555456,
		43.405064, 37.507645, 38.720947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983982, 37.887894, 38.200813>,  <43.338989, 38.085964, 38.332127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983982, 37.887894, 38.200813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755810, 37.577156, 38.307491>,  <43.618908, 37.390713, 38.371498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.755810, 37.577156, 38.307491>,  <43.983982, 37.887894, 38.200813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755810, 37.577156, 38.307491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337944, -0.517932, -0.785837,
		0.748603, -0.358134, 0.557972,
		-0.570427, -0.776844, 0.266696,
		43.584682, 37.344105, 38.387501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404335, 37.243999, 38.237625>,  <43.983982, 37.887894, 38.200813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404335, 37.243999, 38.237625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042793, 37.072914, 38.241753>,  <43.825867, 36.970261, 38.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042793, 37.072914, 38.241753>,  <44.404335, 37.243999, 38.237625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042793, 37.072914, 38.241753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297267, -0.645170, -0.703838,
		0.307700, -0.633100, 0.710286,
		-0.903855, -0.427715, 0.010319,
		43.771637, 36.944599, 38.244850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433918, 36.588531, 38.443119>,  <44.404335, 37.243999, 38.237625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433918, 36.588531, 38.443119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111675, 36.605030, 38.206715>,  <43.918327, 36.614929, 38.064873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111675, 36.605030, 38.206715>,  <44.433918, 36.588531, 38.443119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111675, 36.605030, 38.206715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466635, -0.570459, -0.675891,
		-0.365022, -0.820290, 0.440322,
		-0.805612, 0.041246, -0.591007,
		43.869991, 36.617405, 38.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403465, 35.913094, 38.255993>,  <44.433918, 36.588531, 38.443119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403465, 35.913094, 38.255993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173286, 36.125145, 38.006893>,  <44.035179, 36.252377, 37.857433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173286, 36.125145, 38.006893>,  <44.403465, 35.913094, 38.255993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173286, 36.125145, 38.006893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337570, -0.539608, -0.771278,
		-0.744919, -0.654055, 0.131562,
		-0.575450, 0.530128, -0.622753,
		44.000652, 36.284184, 37.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020573, 35.354481, 37.759808>,  <44.403465, 35.913094, 38.255993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020573, 35.354481, 37.759808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040447, 35.706341, 37.570599>,  <44.052372, 35.917458, 37.457073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040447, 35.706341, 37.570599>,  <44.020573, 35.354481, 37.759808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040447, 35.706341, 37.570599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506696, -0.430338, -0.747040,
		-0.860691, -0.202558, -0.467098,
		0.049691, 0.879647, -0.473024,
		44.055355, 35.970234, 37.428692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805237, 35.229065, 37.127037>,  <44.020573, 35.354481, 37.759808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805237, 35.229065, 37.127037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006668, 35.567719, 37.058201>,  <44.127525, 35.770912, 37.016899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006668, 35.567719, 37.058201>,  <43.805237, 35.229065, 37.127037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006668, 35.567719, 37.058201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487156, -0.442768, -0.752752,
		-0.713504, 0.295233, -0.635413,
		0.503578, 0.846637, -0.172092,
		44.157742, 35.821709, 37.006573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673809, 35.380672, 36.405895>,  <43.805237, 35.229065, 37.127037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673809, 35.380672, 36.405895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991608, 35.606022, 36.496574>,  <44.182285, 35.741234, 36.550980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991608, 35.606022, 36.496574>,  <43.673809, 35.380672, 36.405895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991608, 35.606022, 36.496574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429767, -0.257875, -0.865333,
		-0.429048, 0.784926, -0.447000,
		0.794492, 0.563375, 0.226695,
		44.229954, 35.775036, 36.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880005, 35.860653, 35.861649>,  <43.673809, 35.380672, 36.405895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880005, 35.860653, 35.861649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233524, 35.808384, 36.041351>,  <44.445637, 35.777023, 36.149174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233524, 35.808384, 36.041351>,  <43.880005, 35.860653, 35.861649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233524, 35.808384, 36.041351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392126, -0.316924, -0.863595,
		0.255231, 0.939406, -0.228854,
		0.883795, -0.130677, 0.449254,
		44.498665, 35.769180, 36.176128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379826, 36.156151, 35.363766>,  <43.880005, 35.860653, 35.861649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379826, 36.156151, 35.363766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609573, 35.948643, 35.617058>,  <44.747421, 35.824139, 35.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609573, 35.948643, 35.617058>,  <44.379826, 36.156151, 35.363766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609573, 35.948643, 35.617058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632700, -0.209495, -0.745521,
		0.519413, 0.828848, 0.207899,
		0.574370, -0.518771, 0.633227,
		44.781883, 35.793011, 35.807026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035896, 36.403107, 35.175228>,  <44.379826, 36.156151, 35.363766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035896, 36.403107, 35.175228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088989, 36.061172, 35.375885>,  <45.120846, 35.856014, 35.496281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088989, 36.061172, 35.375885>,  <45.035896, 36.403107, 35.175228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088989, 36.061172, 35.375885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535704, -0.363951, -0.761946,
		0.833908, 0.369870, 0.409627,
		0.132736, -0.854831, 0.501642,
		45.128811, 35.804722, 35.526379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709885, 36.225681, 35.121758>,  <45.035896, 36.403107, 35.175228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709885, 36.225681, 35.121758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552826, 35.871124, 35.219856>,  <45.458591, 35.658390, 35.278713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552826, 35.871124, 35.219856>,  <45.709885, 36.225681, 35.121758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552826, 35.871124, 35.219856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637315, -0.454491, -0.622308,
		0.663068, -0.088048, 0.743363,
		-0.392645, -0.886389, 0.245244,
		45.435032, 35.605209, 35.293430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267429, 35.753376, 35.108501>,  <45.709885, 36.225681, 35.121758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267429, 35.753376, 35.108501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949547, 35.511082, 35.092869>,  <45.758820, 35.365704, 35.083488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.949547, 35.511082, 35.092869>,  <46.267429, 35.753376, 35.108501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949547, 35.511082, 35.092869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517603, -0.642626, -0.564906,
		0.317072, -0.469160, 0.824229,
		-0.794702, -0.605740, -0.039080,
		45.711136, 35.329361, 35.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535637, 35.099178, 35.291637>,  <46.267429, 35.753376, 35.108501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535637, 35.099178, 35.291637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196548, 35.021408, 35.094223>,  <45.993095, 34.974747, 34.975777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196548, 35.021408, 35.094223>,  <46.535637, 35.099178, 35.291637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196548, 35.021408, 35.094223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492325, -0.634732, -0.595593,
		-0.197462, -0.747873, 0.633794,
		-0.847718, -0.194425, -0.493532,
		45.942234, 34.963081, 34.946163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276493, 35.008579, 35.917538>,  <46.535637, 35.099178, 35.291637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276493, 35.008579, 35.917538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371471, 34.701645, 35.679272>,  <46.428459, 34.517483, 35.536312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371471, 34.701645, 35.679272>,  <46.276493, 35.008579, 35.917538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371471, 34.701645, 35.679272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593273, 0.600105, -0.536564,
		0.769186, -0.225986, 0.597732,
		0.237445, -0.767336, -0.595664,
		46.442703, 34.471443, 35.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934570, 34.880268, 36.041325>,  <46.276493, 35.008579, 35.917538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934570, 34.880268, 36.041325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897999, 34.764942, 35.660061>,  <46.876057, 34.695747, 35.431301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897999, 34.764942, 35.660061>,  <46.934570, 34.880268, 36.041325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897999, 34.764942, 35.660061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667156, 0.692864, -0.273575,
		0.739286, -0.660919, 0.129004,
		-0.091429, -0.288316, -0.953160,
		46.870571, 34.678448, 35.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595409, 35.008877, 35.747036>,  <46.934570, 34.880268, 36.041325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595409, 35.008877, 35.747036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338223, 34.964684, 35.443882>,  <47.183910, 34.938168, 35.261990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338223, 34.964684, 35.443882>,  <47.595409, 35.008877, 35.747036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338223, 34.964684, 35.443882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589922, 0.559648, -0.582054,
		0.488455, -0.821333, -0.294659,
		-0.642965, -0.110481, -0.757885,
		47.145332, 34.931538, 35.216518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.914528, 34.528763, 35.239666>,  <47.595409, 35.008877, 35.747036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.914528, 34.528763, 35.239666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685879, 34.839409, 35.133751>,  <47.548687, 35.025795, 35.070202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685879, 34.839409, 35.133751>,  <47.914528, 34.528763, 35.239666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685879, 34.839409, 35.133751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814790, 0.499221, -0.294782,
		-0.096746, -0.384249, -0.918147,
		-0.571627, 0.776616, -0.264784,
		47.514389, 35.072395, 35.054317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.105843, 34.127438, 42.842735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716244, 34.039417, 42.821163>,  <34.482483, 33.986607, 42.808220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716244, 34.039417, 42.821163>,  <35.105843, 34.127438, 42.842735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716244, 34.039417, 42.821163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116135, -0.280550, -0.952788,
		0.194532, -0.934275, 0.298810,
		-0.973997, -0.220050, -0.053926,
		34.424046, 33.973404, 42.804985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027275, 33.481419, 42.513702>,  <35.105843, 34.127438, 42.842735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027275, 33.481419, 42.513702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653313, 33.614647, 42.464680>,  <34.428936, 33.694584, 42.435265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653313, 33.614647, 42.464680>,  <35.027275, 33.481419, 42.513702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653313, 33.614647, 42.464680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074342, -0.521447, -0.850039,
		-0.347030, -0.785593, 0.512264,
		-0.934903, 0.333072, -0.122556,
		34.372841, 33.714569, 42.427914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763599, 32.841537, 42.330345>,  <35.027275, 33.481419, 42.513702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763599, 32.841537, 42.330345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560246, 33.173553, 42.238628>,  <34.438232, 33.372765, 42.183598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560246, 33.173553, 42.238628>,  <34.763599, 32.841537, 42.330345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560246, 33.173553, 42.238628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230299, -0.125517, -0.964991,
		-0.829763, -0.543393, -0.127347,
		-0.508385, 0.830042, -0.229293,
		34.407730, 33.422565, 42.169842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271999, 32.667271, 41.840553>,  <34.763599, 32.841537, 42.330345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271999, 32.667271, 41.840553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319572, 33.061611, 41.793320>,  <34.348118, 33.298218, 41.764980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319572, 33.061611, 41.793320>,  <34.271999, 32.667271, 41.840553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319572, 33.061611, 41.793320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056439, -0.125446, -0.990494,
		-0.991297, 0.111142, -0.070561,
		0.118937, 0.985855, -0.118081,
		34.355255, 33.357368, 41.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875622, 32.761330, 41.336277>,  <34.271999, 32.667271, 41.840553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875622, 32.761330, 41.336277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089123, 33.099144, 41.353516>,  <34.217224, 33.301834, 41.363857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089123, 33.099144, 41.353516>,  <33.875622, 32.761330, 41.336277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089123, 33.099144, 41.353516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059953, 0.088627, -0.994259,
		-0.843510, 0.528108, 0.097938,
		0.533756, 0.844539, 0.043096,
		34.249249, 33.352505, 41.366444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611397, 33.114700, 40.756966>,  <33.875622, 32.761330, 41.336277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611397, 33.114700, 40.756966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954201, 33.295238, 40.856415>,  <34.159885, 33.403561, 40.916084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954201, 33.295238, 40.856415>,  <33.611397, 33.114700, 40.756966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954201, 33.295238, 40.856415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209635, 0.135371, -0.968364,
		-0.470726, 0.882020, 0.021396,
		0.857013, 0.451349, 0.248625,
		34.211304, 33.430641, 40.931004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610435, 33.786266, 40.482967>,  <33.611397, 33.114700, 40.756966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610435, 33.786266, 40.482967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.001812, 33.713589, 40.522232>,  <34.236637, 33.669983, 40.545792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.001812, 33.713589, 40.522232>,  <33.610435, 33.786266, 40.482967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001812, 33.713589, 40.522232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117085, 0.096515, -0.988421,
		0.170114, 0.978608, 0.115708,
		0.978444, -0.181692, 0.098162,
		34.295345, 33.659081, 40.551682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885086, 34.203678, 40.013622>,  <33.610435, 33.786266, 40.482967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885086, 34.203678, 40.013622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181637, 33.952034, 40.107079>,  <34.359566, 33.801048, 40.163151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181637, 33.952034, 40.107079>,  <33.885086, 34.203678, 40.013622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181637, 33.952034, 40.107079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325718, 0.032929, -0.944893,
		0.586748, 0.776619, 0.229325,
		0.741374, -0.629109, 0.233638,
		34.404049, 33.763302, 40.177170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538700, 34.546124, 39.707424>,  <33.885086, 34.203678, 40.013622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538700, 34.546124, 39.707424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618191, 34.156864, 39.753899>,  <34.665886, 33.923309, 39.781784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618191, 34.156864, 39.753899>,  <34.538700, 34.546124, 39.707424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618191, 34.156864, 39.753899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451067, -0.014428, -0.892374,
		0.870085, 0.229740, 0.436086,
		0.198722, -0.973145, 0.116182,
		34.677807, 33.864922, 39.788754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194939, 34.524971, 39.409855>,  <34.538700, 34.546124, 39.707424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194939, 34.524971, 39.409855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036896, 34.157761, 39.423279>,  <34.942070, 33.937435, 39.431332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036896, 34.157761, 39.423279>,  <35.194939, 34.524971, 39.409855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036896, 34.157761, 39.423279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425971, -0.215451, -0.878709,
		0.813905, -0.332887, 0.476177,
		-0.395103, -0.918024, 0.033557,
		34.918365, 33.882355, 39.433346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753086, 34.151192, 39.346230>,  <35.194939, 34.524971, 39.409855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753086, 34.151192, 39.346230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442402, 33.929249, 39.226990>,  <35.255993, 33.796085, 39.155445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442402, 33.929249, 39.226990>,  <35.753086, 34.151192, 39.346230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442402, 33.929249, 39.226990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439705, -0.138784, -0.887355,
		0.450981, -0.820290, 0.351767,
		-0.776708, -0.554854, -0.298097,
		35.209389, 33.762794, 39.137562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087219, 33.655315, 38.982174>,  <35.753086, 34.151192, 39.346230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087219, 33.655315, 38.982174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717976, 33.693977, 38.833298>,  <35.496429, 33.717175, 38.743973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717976, 33.693977, 38.833298>,  <36.087219, 33.655315, 38.982174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717976, 33.693977, 38.833298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358285, -0.135300, -0.923756,
		-0.139688, -0.986074, 0.090248,
		-0.923103, 0.096704, -0.372196,
		35.441044, 33.722973, 38.721642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140461, 33.260551, 38.352638>,  <36.087219, 33.655315, 38.982174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140461, 33.260551, 38.352638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782333, 33.431091, 38.301041>,  <35.567459, 33.533413, 38.270081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.782333, 33.431091, 38.301041>,  <36.140461, 33.260551, 38.352638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782333, 33.431091, 38.301041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232100, 0.199355, -0.952044,
		-0.380184, -0.882319, -0.277440,
		-0.895316, 0.426346, -0.128995,
		35.513741, 33.558994, 38.262341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848206, 32.990570, 37.749329>,  <36.140461, 33.260551, 38.352638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848206, 32.990570, 37.749329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694889, 33.357079, 37.795856>,  <35.602898, 33.576984, 37.823772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694889, 33.357079, 37.795856>,  <35.848206, 32.990570, 37.749329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694889, 33.357079, 37.795856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288637, 0.238453, -0.927270,
		-0.877368, -0.321843, -0.355868,
		-0.383293, 0.916274, 0.116315,
		35.579903, 33.631962, 37.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677151, 33.163975, 37.051846>,  <35.848206, 32.990570, 37.749329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677151, 33.163975, 37.051846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624210, 33.514172, 37.237747>,  <35.592445, 33.724289, 37.349289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.624210, 33.514172, 37.237747>,  <35.677151, 33.163975, 37.051846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624210, 33.514172, 37.237747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241922, 0.483231, -0.841405,
		-0.961227, 0.001074, -0.275756,
		-0.132351, 0.875492, 0.464755,
		35.584507, 33.776821, 37.377174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082386, 33.628201, 36.678867>,  <35.677151, 33.163975, 37.051846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082386, 33.628201, 36.678867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337856, 33.876373, 36.860920>,  <35.491138, 34.025276, 36.970154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337856, 33.876373, 36.860920>,  <35.082386, 33.628201, 36.678867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337856, 33.876373, 36.860920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224744, 0.415287, -0.881491,
		-0.735920, 0.665280, 0.125797,
		0.638680, 0.620434, 0.455136,
		35.529461, 34.062504, 36.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899467, 34.292946, 36.346413>,  <35.082386, 33.628201, 36.678867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899467, 34.292946, 36.346413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257599, 34.330814, 36.520504>,  <35.472477, 34.353535, 36.624958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257599, 34.330814, 36.520504>,  <34.899467, 34.292946, 36.346413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257599, 34.330814, 36.520504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293289, 0.610099, -0.736044,
		-0.335213, 0.786649, 0.518474,
		0.895329, 0.094669, 0.435228,
		35.526199, 34.359215, 36.651073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071175, 35.028049, 36.320286>,  <34.899467, 34.292946, 36.346413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071175, 35.028049, 36.320286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431927, 34.860203, 36.361324>,  <35.648380, 34.759495, 36.385948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431927, 34.860203, 36.361324>,  <35.071175, 35.028049, 36.320286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431927, 34.860203, 36.361324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355012, 0.584666, -0.729474,
		0.246118, 0.694323, 0.676271,
		0.901883, -0.419621, 0.102596,
		35.702492, 34.734318, 36.392101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493412, 35.551765, 36.287251>,  <35.071175, 35.028049, 36.320286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493412, 35.551765, 36.287251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750988, 35.252510, 36.223217>,  <35.905533, 35.072956, 36.184795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750988, 35.252510, 36.223217>,  <35.493412, 35.551765, 36.287251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750988, 35.252510, 36.223217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385868, 0.498267, -0.776425,
		0.660640, 0.438199, 0.609537,
		0.643941, -0.748139, -0.160088,
		35.944172, 35.028069, 36.175190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134003, 35.809639, 36.271404>,  <35.493412, 35.551765, 36.287251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134003, 35.809639, 36.271404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131794, 35.472446, 36.056240>,  <36.130470, 35.270130, 35.927143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131794, 35.472446, 36.056240>,  <36.134003, 35.809639, 36.271404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131794, 35.472446, 36.056240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326598, 0.506898, -0.797740,
		0.945147, -0.180085, 0.272518,
		-0.005522, -0.842985, -0.537909,
		36.130138, 35.219551, 35.894867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840500, 35.817924, 35.790485>,  <36.134003, 35.809639, 36.271404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840500, 35.817924, 35.790485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604382, 35.537235, 35.630917>,  <36.462711, 35.368820, 35.535175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.604382, 35.537235, 35.630917>,  <36.840500, 35.817924, 35.790485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604382, 35.537235, 35.630917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299985, 0.268094, -0.915497,
		0.749373, -0.660083, 0.052252,
		-0.590296, -0.701723, -0.398917,
		36.427292, 35.326717, 35.511242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365032, 35.431046, 35.379166>,  <36.840500, 35.817924, 35.790485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365032, 35.431046, 35.379166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000626, 35.334015, 35.245777>,  <36.781982, 35.275795, 35.165745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000626, 35.334015, 35.245777>,  <37.365032, 35.431046, 35.379166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000626, 35.334015, 35.245777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297971, 0.171766, -0.938994,
		0.285059, -0.954804, -0.084200,
		-0.911018, -0.242580, -0.333468,
		36.727322, 35.261242, 35.145737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770428, 35.147545, 35.836739>,  <37.365032, 35.431046, 35.379166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770428, 35.147545, 35.836739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167969, 35.187504, 35.855831>,  <38.406494, 35.211479, 35.867287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167969, 35.187504, 35.855831>,  <37.770428, 35.147545, 35.836739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167969, 35.187504, 35.855831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042789, -0.051047, 0.997779,
		0.102111, -0.993688, -0.046459,
		0.993852, 0.099896, 0.047731,
		38.466125, 35.217472, 35.870152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997593, 34.637146, 36.261349>,  <37.770428, 35.147545, 35.836739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997593, 34.637146, 36.261349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306625, 34.890835, 36.273224>,  <38.492046, 35.043049, 36.280350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306625, 34.890835, 36.273224>,  <37.997593, 34.637146, 36.261349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306625, 34.890835, 36.273224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007563, -0.055951, 0.998405,
		0.634872, -0.771123, -0.048023,
		0.772580, 0.634222, 0.029690,
		38.538399, 35.081100, 36.282131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538593, 34.308762, 36.704346>,  <37.997593, 34.637146, 36.261349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538593, 34.308762, 36.704346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602386, 34.703487, 36.715328>,  <38.640663, 34.940323, 36.721916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602386, 34.703487, 36.715328>,  <38.538593, 34.308762, 36.704346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602386, 34.703487, 36.715328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187490, 0.002972, 0.982262,
		0.969233, -0.161801, 0.185493,
		0.159482, 0.986819, 0.027455,
		38.650230, 34.999535, 36.723564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944817, 34.422417, 37.264065>,  <38.538593, 34.308762, 36.704346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944817, 34.422417, 37.264065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810684, 34.794907, 37.206963>,  <38.730206, 35.018402, 37.172703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810684, 34.794907, 37.206963>,  <38.944817, 34.422417, 37.264065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810684, 34.794907, 37.206963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088782, 0.119617, 0.988843,
		0.937909, 0.344259, 0.042565,
		-0.335327, 0.931224, -0.142754,
		38.710087, 35.074272, 37.164135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369015, 34.869522, 37.765919>,  <38.944817, 34.422417, 37.264065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369015, 34.869522, 37.765919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027565, 35.053024, 37.667225>,  <38.822697, 35.163124, 37.608009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.027565, 35.053024, 37.667225>,  <39.369015, 34.869522, 37.765919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027565, 35.053024, 37.667225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130653, 0.269976, 0.953962,
		0.504245, 0.846558, -0.170519,
		-0.853620, 0.458752, -0.246739,
		38.771481, 35.190651, 37.593204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417622, 35.650505, 37.889610>,  <39.369015, 34.869522, 37.765919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417622, 35.650505, 37.889610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028996, 35.559826, 37.916962>,  <38.795822, 35.505421, 37.933372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028996, 35.559826, 37.916962>,  <39.417622, 35.650505, 37.889610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028996, 35.559826, 37.916962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015901, 0.350611, 0.936386,
		-0.236250, 0.908670, -0.344245,
		-0.971562, -0.226695, 0.068383,
		38.737526, 35.491817, 37.937477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133041, 36.145077, 38.369045>,  <39.417622, 35.650505, 37.889610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133041, 36.145077, 38.369045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827991, 35.891998, 38.315239>,  <38.644962, 35.740150, 38.282955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827991, 35.891998, 38.315239>,  <39.133041, 36.145077, 38.369045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827991, 35.891998, 38.315239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446786, 0.364868, 0.816856,
		-0.467739, 0.683058, -0.560938,
		-0.762629, -0.632695, -0.134517,
		38.599201, 35.702190, 38.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521950, 36.529652, 38.661736>,  <39.133041, 36.145077, 38.369045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521950, 36.529652, 38.661736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465561, 36.133781, 38.672039>,  <38.431728, 35.896259, 38.678223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.465561, 36.133781, 38.672039>,  <38.521950, 36.529652, 38.661736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465561, 36.133781, 38.672039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373401, 0.077252, 0.924448,
		-0.916896, 0.120703, -0.380437,
		-0.140973, -0.989678, 0.025761,
		38.423267, 35.836880, 38.679768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799244, 36.404816, 38.849194>,  <38.521950, 36.529652, 38.661736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799244, 36.404816, 38.849194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985714, 36.058193, 38.920475>,  <38.097595, 35.850220, 38.963242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985714, 36.058193, 38.920475>,  <37.799244, 36.404816, 38.849194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985714, 36.058193, 38.920475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478483, -0.077540, 0.874666,
		-0.744132, -0.493015, -0.450781,
		0.466177, -0.866559, 0.178199,
		38.125568, 35.798225, 38.973934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312496, 36.165649, 39.235039>,  <37.799244, 36.404816, 38.849194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312496, 36.165649, 39.235039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601551, 35.897469, 39.302315>,  <37.774986, 35.736561, 39.342682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601551, 35.897469, 39.302315>,  <37.312496, 36.165649, 39.235039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601551, 35.897469, 39.302315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306820, -0.093089, 0.947204,
		-0.619395, -0.736093, -0.272977,
		0.722642, -0.670448, 0.168189,
		37.818344, 35.696335, 39.352772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050110, 35.436138, 39.290264>,  <37.312496, 36.165649, 39.235039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050110, 35.436138, 39.290264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 35.472061, 39.478241>,  <37.612103, 35.493614, 39.591026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 35.472061, 39.478241>,  <37.050110, 35.436138, 39.290264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401356, 35.472061, 39.478241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453587, -0.156207, 0.877416,
		0.152207, -0.983633, -0.096432,
		0.878118, 0.089808, 0.469939,
		37.664791, 35.499004, 39.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904068, 35.181942, 39.846088>,  <37.050110, 35.436138, 39.290264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904068, 35.181942, 39.846088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254559, 35.321602, 39.978943>,  <37.464855, 35.405399, 40.058655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254559, 35.321602, 39.978943>,  <36.904068, 35.181942, 39.846088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254559, 35.321602, 39.978943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296406, -0.152947, 0.942736,
		0.379959, -0.924500, -0.030526,
		0.876228, 0.349152, 0.332141,
		37.517426, 35.426346, 40.078587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281853, 34.623749, 40.306545>,  <36.904068, 35.181942, 39.846088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281853, 34.623749, 40.306545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444675, 34.975708, 40.404591>,  <37.542370, 35.186886, 40.463417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444675, 34.975708, 40.404591>,  <37.281853, 34.623749, 40.306545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444675, 34.975708, 40.404591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292516, -0.128642, 0.947568,
		0.865299, -0.457411, 0.205022,
		0.407054, 0.879901, 0.245114,
		37.566792, 35.239677, 40.478127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788223, 34.560036, 40.811234>,  <37.281853, 34.623749, 40.306545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788223, 34.560036, 40.811234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715923, 34.951797, 40.847233>,  <37.672543, 35.186855, 40.868832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715923, 34.951797, 40.847233>,  <37.788223, 34.560036, 40.811234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715923, 34.951797, 40.847233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143577, -0.116799, 0.982723,
		0.972993, 0.164704, 0.161731,
		-0.180748, 0.979403, 0.089997,
		37.661697, 35.245617, 40.874233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236206, 34.803017, 41.349640>,  <37.788223, 34.560036, 40.811234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236206, 34.803017, 41.349640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941326, 35.071026, 41.314751>,  <37.764400, 35.231831, 41.293819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941326, 35.071026, 41.314751>,  <38.236206, 34.803017, 41.349640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941326, 35.071026, 41.314751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148679, -0.034938, 0.988268,
		0.659117, 0.741516, 0.125374,
		-0.737197, 0.670025, -0.087220,
		37.720165, 35.272034, 41.288586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337334, 35.262501, 41.892693>,  <38.236206, 34.803017, 41.349640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337334, 35.262501, 41.892693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950401, 35.277748, 41.792439>,  <37.718243, 35.286896, 41.732285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950401, 35.277748, 41.792439>,  <38.337334, 35.262501, 41.892693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950401, 35.277748, 41.792439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252570, -0.230384, 0.939751,
		-0.021924, 0.972353, 0.232484,
		-0.967330, 0.038116, -0.250638,
		37.660202, 35.289185, 41.717247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007881, 35.774807, 42.456131>,  <38.337334, 35.262501, 41.892693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007881, 35.774807, 42.456131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697739, 35.583019, 42.291725>,  <37.511654, 35.467945, 42.193081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697739, 35.583019, 42.291725>,  <38.007881, 35.774807, 42.456131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697739, 35.583019, 42.291725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330054, -0.247216, 0.911015,
		-0.538417, 0.842015, 0.033428,
		-0.775353, -0.479472, -0.411016,
		37.465134, 35.439178, 42.168419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460781, 35.957211, 42.800797>,  <38.007881, 35.774807, 42.456131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460781, 35.957211, 42.800797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327526, 35.616760, 42.638508>,  <37.247574, 35.412491, 42.541134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327526, 35.616760, 42.638508>,  <37.460781, 35.957211, 42.800797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327526, 35.616760, 42.638508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266556, -0.327729, 0.906389,
		-0.904415, 0.410101, -0.117692,
		-0.333140, -0.851124, -0.405718,
		37.227585, 35.361423, 42.516792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.920891, 35.876385, 43.281567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944992, 35.522934, 43.095852>,  <36.959454, 35.310863, 42.984421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944992, 35.522934, 43.095852>,  <36.920891, 35.876385, 43.281567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944992, 35.522934, 43.095852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364742, -0.452460, 0.813783,
		-0.929157, 0.120313, -0.349560,
		0.060254, -0.883631, -0.464289,
		36.963070, 35.257843, 42.956566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217804, 35.451206, 43.387337>,  <36.920891, 35.876385, 43.281567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217804, 35.451206, 43.387337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522724, 35.203991, 43.310467>,  <36.705677, 35.055660, 43.264343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522724, 35.203991, 43.310467>,  <36.217804, 35.451206, 43.387337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522724, 35.203991, 43.310467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251971, -0.556881, 0.791451,
		-0.596168, -0.554897, -0.580236,
		0.762296, -0.618040, -0.192177,
		36.751415, 35.018581, 43.252815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986359, 34.691784, 43.253864>,  <36.217804, 35.451206, 43.387337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986359, 34.691784, 43.253864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364277, 34.647217, 43.377113>,  <36.591030, 34.620476, 43.451065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364277, 34.647217, 43.377113>,  <35.986359, 34.691784, 43.253864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364277, 34.647217, 43.377113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306372, -0.633796, 0.710238,
		0.116154, -0.765433, -0.632946,
		0.944798, -0.111420, 0.308125,
		36.647717, 34.613792, 43.469551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027931, 34.013142, 43.429691>,  <35.986359, 34.691784, 43.253864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027931, 34.013142, 43.429691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342434, 34.181263, 43.610863>,  <36.531136, 34.282135, 43.719566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342434, 34.181263, 43.610863>,  <36.027931, 34.013142, 43.429691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342434, 34.181263, 43.610863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173284, -0.553610, 0.814548,
		0.593101, -0.718931, -0.362449,
		0.786260, 0.420302, 0.452926,
		36.578312, 34.307354, 43.746742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178780, 33.467644, 43.813011>,  <36.027931, 34.013142, 43.429691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178780, 33.467644, 43.813011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392002, 33.759808, 43.983822>,  <36.519936, 33.935104, 44.086308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392002, 33.759808, 43.983822>,  <36.178780, 33.467644, 43.813011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392002, 33.759808, 43.983822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225339, -0.363924, 0.903760,
		0.815517, -0.577985, -0.029405,
		0.533061, 0.730406, 0.427029,
		36.551922, 33.978928, 44.111931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606373, 33.140984, 44.281792>,  <36.178780, 33.467644, 43.813011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606373, 33.140984, 44.281792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545887, 33.514515, 44.411465>,  <36.509594, 33.738636, 44.489269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545887, 33.514515, 44.411465>,  <36.606373, 33.140984, 44.281792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545887, 33.514515, 44.411465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327010, -0.356743, 0.875099,
		0.932844, 0.026320, 0.359318,
		-0.151217, 0.933831, 0.324179,
		36.500523, 33.794666, 44.508717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873116, 33.106567, 44.921024>,  <36.606373, 33.140984, 44.281792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873116, 33.106567, 44.921024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638039, 33.429932, 44.934162>,  <36.496990, 33.623951, 44.942043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638039, 33.429932, 44.934162>,  <36.873116, 33.106567, 44.921024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638039, 33.429932, 44.934162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312662, -0.264360, 0.912335,
		0.746227, 0.525908, 0.408125,
		-0.587697, 0.808415, 0.032841,
		36.461731, 33.672455, 44.944016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166637, 33.571777, 45.433056>,  <36.873116, 33.106567, 44.921024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166637, 33.571777, 45.433056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777351, 33.636909, 45.368141>,  <36.543781, 33.675987, 45.329193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777351, 33.636909, 45.368141>,  <37.166637, 33.571777, 45.433056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777351, 33.636909, 45.368141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152461, 0.071204, 0.985741,
		0.172065, 0.984081, -0.044472,
		-0.973216, 0.162832, -0.162286,
		36.485386, 33.685760, 45.319454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903484, 33.884274, 45.939732>,  <37.166637, 33.571777, 45.433056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903484, 33.884274, 45.939732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533691, 33.804588, 45.809719>,  <36.311817, 33.756779, 45.731712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533691, 33.804588, 45.809719>,  <36.903484, 33.884274, 45.939732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533691, 33.804588, 45.809719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336512, 0.025812, 0.941325,
		-0.179136, 0.979616, -0.090901,
		-0.924484, -0.199214, -0.325029,
		36.256348, 33.744823, 45.712212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458183, 34.510223, 46.185600>,  <36.903484, 33.884274, 45.939732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458183, 34.510223, 46.185600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219379, 34.199944, 46.103756>,  <36.076096, 34.013775, 46.054649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219379, 34.199944, 46.103756>,  <36.458183, 34.510223, 46.185600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219379, 34.199944, 46.103756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486420, 0.147190, 0.861238,
		-0.637946, 0.613696, -0.465191,
		-0.597010, -0.775701, -0.204615,
		36.040276, 33.967232, 46.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799660, 34.637882, 46.355289>,  <36.458183, 34.510223, 46.185600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799660, 34.637882, 46.355289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758167, 34.240108, 46.362720>,  <35.733273, 34.001446, 46.367180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758167, 34.240108, 46.362720>,  <35.799660, 34.637882, 46.355289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758167, 34.240108, 46.362720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278018, 0.046927, 0.959429,
		-0.954959, 0.094357, -0.281338,
		-0.103731, -0.994432, 0.018580,
		35.727047, 33.941780, 46.368294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168602, 34.449055, 46.716614>,  <35.799660, 34.637882, 46.355289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168602, 34.449055, 46.716614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392761, 34.119339, 46.748856>,  <35.527256, 33.921509, 46.768200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392761, 34.119339, 46.748856>,  <35.168602, 34.449055, 46.716614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392761, 34.119339, 46.748856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327291, -0.130995, 0.935800,
		-0.760815, -0.550799, -0.343193,
		0.560394, -0.824294, 0.080609,
		35.560879, 33.872051, 46.773037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747036, 34.012840, 47.134514>,  <35.168602, 34.449055, 46.716614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747036, 34.012840, 47.134514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112885, 33.851112, 47.134926>,  <35.332394, 33.754074, 47.135174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112885, 33.851112, 47.134926>,  <34.747036, 34.012840, 47.134514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112885, 33.851112, 47.134926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114007, -0.255451, 0.960077,
		-0.387915, -0.878220, -0.279735,
		0.914617, -0.404320, 0.001030,
		35.387268, 33.729816, 47.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672966, 33.388126, 47.527802>,  <34.747036, 34.012840, 47.134514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672966, 33.388126, 47.527802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058479, 33.494488, 47.535973>,  <35.289787, 33.558304, 47.540874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058479, 33.494488, 47.535973>,  <34.672966, 33.388126, 47.527802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058479, 33.494488, 47.535973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046743, -0.243829, 0.968691,
		0.262556, -0.932654, -0.247427,
		0.963784, 0.265901, 0.020423,
		35.347614, 33.574257, 47.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075611, 32.890617, 47.740253>,  <34.672966, 33.388126, 47.527802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075611, 32.890617, 47.740253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329723, 33.191849, 47.808708>,  <35.482193, 33.372585, 47.849781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329723, 33.191849, 47.808708>,  <35.075611, 32.890617, 47.740253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329723, 33.191849, 47.808708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178684, -0.358923, 0.916104,
		0.751323, -0.551407, -0.362581,
		0.635285, 0.753077, 0.171139,
		35.520309, 33.417770, 47.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602222, 32.577145, 48.125031>,  <35.075611, 32.890617, 47.740253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602222, 32.577145, 48.125031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643356, 32.971100, 48.180763>,  <35.668037, 33.207474, 48.214203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.643356, 32.971100, 48.180763>,  <35.602222, 32.577145, 48.125031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643356, 32.971100, 48.180763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227078, -0.159616, 0.960707,
		0.968432, -0.067156, -0.240061,
		0.102835, 0.984892, 0.139328,
		35.674206, 33.266567, 48.222561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009834, 32.568485, 48.655201>,  <35.602222, 32.577145, 48.125031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009834, 32.568485, 48.655201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892769, 32.950729, 48.668758>,  <35.822529, 33.180077, 48.676891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892769, 32.950729, 48.668758>,  <36.009834, 32.568485, 48.655201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892769, 32.950729, 48.668758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268847, 0.048221, 0.961975,
		0.917643, 0.290647, -0.271026,
		-0.292664, 0.955615, 0.033890,
		35.804970, 33.237415, 48.678925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589817, 32.930141, 48.984295>,  <36.009834, 32.568485, 48.655201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589817, 32.930141, 48.984295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244053, 33.128368, 49.018242>,  <36.036594, 33.247303, 49.038609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244053, 33.128368, 49.018242>,  <36.589817, 32.930141, 48.984295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244053, 33.128368, 49.018242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086606, -0.019512, 0.996052,
		0.495268, 0.868350, -0.026053,
		-0.864413, 0.495569, 0.084868,
		35.984730, 33.277039, 49.043701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770416, 33.511528, 49.332619>,  <36.589817, 32.930141, 48.984295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770416, 33.511528, 49.332619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377132, 33.442638, 49.356743>,  <36.141163, 33.401306, 49.371220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.377132, 33.442638, 49.356743>,  <36.770416, 33.511528, 49.332619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377132, 33.442638, 49.356743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049795, 0.064750, 0.996658,
		-0.175551, 0.982928, -0.055087,
		-0.983210, -0.172221, 0.060312,
		36.082169, 33.390972, 49.374836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567554, 34.026382, 49.745838>,  <36.770416, 33.511528, 49.332619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567554, 34.026382, 49.745838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305950, 33.724377, 49.764702>,  <36.148987, 33.543175, 49.776020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305950, 33.724377, 49.764702>,  <36.567554, 34.026382, 49.745838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305950, 33.724377, 49.764702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042317, 0.025724, 0.998773,
		-0.755301, 0.655204, 0.015127,
		-0.654011, -0.755014, 0.047156,
		36.109749, 33.497871, 49.778851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083885, 34.104832, 50.351482>,  <36.567554, 34.026382, 49.745838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083885, 34.104832, 50.351482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020584, 33.724998, 50.243229>,  <35.982605, 33.497097, 50.178276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.020584, 33.724998, 50.243229>,  <36.083885, 34.104832, 50.351482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020584, 33.724998, 50.243229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006879, -0.273022, 0.961983,
		-0.987375, 0.154094, 0.036673,
		-0.158248, -0.949586, -0.270635,
		35.973110, 33.440121, 50.162037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488789, 33.859463, 50.666027>,  <36.083885, 34.104832, 50.351482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488789, 33.859463, 50.666027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687122, 33.518333, 50.600491>,  <35.806122, 33.313656, 50.561169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687122, 33.518333, 50.600491>,  <35.488789, 33.859463, 50.666027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687122, 33.518333, 50.600491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039323, -0.166424, 0.985270,
		-0.867526, -0.494974, -0.048983,
		0.495835, -0.852821, -0.163841,
		35.835873, 33.262486, 50.551338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087784, 33.256538, 51.050056>,  <35.488789, 33.859463, 50.666027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087784, 33.256538, 51.050056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482960, 33.211277, 51.007793>,  <35.720066, 33.184120, 50.982437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482960, 33.211277, 51.007793>,  <35.087784, 33.256538, 51.050056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482960, 33.211277, 51.007793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092007, -0.119710, 0.988536,
		-0.124565, -0.986333, -0.107849,
		0.987936, -0.113214, -0.105662,
		35.779343, 33.177330, 50.976097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819260, 32.541004, 50.972626>,  <35.087784, 33.256538, 51.050056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819260, 32.541004, 50.972626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460285, 32.364586, 50.968681>,  <34.244900, 32.258736, 50.966316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460285, 32.364586, 50.968681>,  <34.819260, 32.541004, 50.972626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460285, 32.364586, 50.968681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016848, 0.056603, -0.998255,
		0.440831, -0.895699, -0.058228,
		-0.897432, -0.441042, -0.009862,
		34.191055, 32.232273, 50.965721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807152, 32.055206, 50.402988>,  <34.819260, 32.541004, 50.972626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807152, 32.055206, 50.402988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417152, 32.098446, 50.480640>,  <34.183151, 32.124390, 50.527229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417152, 32.098446, 50.480640>,  <34.807152, 32.055206, 50.402988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417152, 32.098446, 50.480640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185645, 0.083763, -0.979040,
		-0.122097, -0.990605, -0.061600,
		-0.975002, 0.108103, 0.194128,
		34.124653, 32.130875, 50.538879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431061, 31.615904, 49.920414>,  <34.807152, 32.055206, 50.402988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431061, 31.615904, 49.920414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137024, 31.862669, 50.032879>,  <33.960602, 32.010727, 50.100357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137024, 31.862669, 50.032879>,  <34.431061, 31.615904, 49.920414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137024, 31.862669, 50.032879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389266, -0.044524, -0.920049,
		-0.555073, -0.785770, 0.272873,
		-0.735096, 0.616915, 0.281159,
		33.916496, 32.047745, 50.117226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850693, 31.288115, 49.756306>,  <34.431061, 31.615904, 49.920414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850693, 31.288115, 49.756306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796146, 31.684229, 49.745464>,  <33.763416, 31.921898, 49.738960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796146, 31.684229, 49.745464>,  <33.850693, 31.288115, 49.756306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796146, 31.684229, 49.745464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325535, -0.070636, -0.942888,
		-0.935644, -0.119758, 0.332006,
		-0.136370, 0.990287, -0.027105,
		33.755234, 31.981316, 49.737331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227791, 31.348328, 49.352161>,  <33.850693, 31.288115, 49.756306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227791, 31.348328, 49.352161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356686, 31.725876, 49.381203>,  <33.434025, 31.952404, 49.398628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356686, 31.725876, 49.381203>,  <33.227791, 31.348328, 49.352161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356686, 31.725876, 49.381203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240510, 0.155810, -0.958060,
		-0.915596, 0.291263, 0.277219,
		0.322241, 0.943869, 0.072608,
		33.453358, 32.009037, 49.402985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790157, 31.671011, 48.935646>,  <33.227791, 31.348328, 49.352161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790157, 31.671011, 48.935646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098305, 31.925062, 48.958076>,  <33.283192, 32.077492, 48.971535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098305, 31.925062, 48.958076>,  <32.790157, 31.671011, 48.935646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098305, 31.925062, 48.958076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119258, 0.229924, -0.965874,
		-0.626346, 0.737392, 0.252870,
		0.770369, 0.635128, 0.056072,
		33.329414, 32.115601, 48.974899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536739, 32.306290, 48.605186>,  <32.790157, 31.671011, 48.935646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536739, 32.306290, 48.605186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935421, 32.338219, 48.599464>,  <33.174629, 32.357376, 48.596031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935421, 32.338219, 48.599464>,  <32.536739, 32.306290, 48.605186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935421, 32.338219, 48.599464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046942, 0.424119, -0.904389,
		-0.066121, 0.902082, 0.426469,
		0.996707, 0.079818, -0.014302,
		33.234432, 32.362164, 48.595173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606930, 32.860535, 48.342659>,  <32.536739, 32.306290, 48.605186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606930, 32.860535, 48.342659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953575, 32.679073, 48.259537>,  <33.161564, 32.570198, 48.209663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953575, 32.679073, 48.259537>,  <32.606930, 32.860535, 48.342659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953575, 32.679073, 48.259537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019793, 0.447389, -0.894120,
		0.498590, 0.770742, 0.396692,
		0.866612, -0.453651, -0.207809,
		33.213558, 32.542976, 48.197193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855228, 33.264553, 47.868019>,  <32.606930, 32.860535, 48.342659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855228, 33.264553, 47.868019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131336, 32.980854, 47.810753>,  <33.297001, 32.810635, 47.776394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131336, 32.980854, 47.810753>,  <32.855228, 33.264553, 47.868019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131336, 32.980854, 47.810753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258948, 0.426907, -0.866427,
		0.675630, 0.560995, 0.478339,
		0.690268, -0.709249, -0.143162,
		33.338417, 32.768078, 47.767803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497353, 33.594635, 47.574905>,  <32.855228, 33.264553, 47.868019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497353, 33.594635, 47.574905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449261, 33.209671, 47.477493>,  <33.420406, 32.978691, 47.419048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449261, 33.209671, 47.477493>,  <33.497353, 33.594635, 47.574905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449261, 33.209671, 47.477493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077588, 0.235448, -0.968785,
		0.989710, -0.135367, 0.046365,
		-0.120225, -0.962414, -0.243528,
		33.413193, 32.920948, 47.404434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050594, 33.507748, 47.211563>,  <33.497353, 33.594635, 47.574905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050594, 33.507748, 47.211563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784042, 33.231331, 47.099567>,  <33.624111, 33.065479, 47.032368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784042, 33.231331, 47.099567>,  <34.050594, 33.507748, 47.211563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784042, 33.231331, 47.099567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312883, 0.081688, -0.946272,
		0.676791, -0.718179, 0.161781,
		-0.666377, -0.691047, -0.279992,
		33.584129, 33.024017, 47.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393246, 32.955379, 46.794197>,  <34.050594, 33.507748, 47.211563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393246, 32.955379, 46.794197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009224, 32.937145, 46.683765>,  <33.778812, 32.926205, 46.617508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009224, 32.937145, 46.683765>,  <34.393246, 32.955379, 46.794197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009224, 32.937145, 46.683765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276818, -0.010620, -0.960864,
		0.040875, -0.998904, 0.022817,
		-0.960053, -0.045591, -0.276081,
		33.721207, 32.923470, 46.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475075, 32.647171, 46.205254>,  <34.393246, 32.955379, 46.794197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475075, 32.647171, 46.205254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100281, 32.786907, 46.207153>,  <33.875404, 32.870747, 46.208294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100281, 32.786907, 46.207153>,  <34.475075, 32.647171, 46.205254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100281, 32.786907, 46.207153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111363, 0.311538, -0.943685,
		-0.331145, -0.883690, -0.330810,
		-0.936985, 0.349337, 0.004754,
		33.819183, 32.891708, 46.208580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140076, 32.340733, 45.606281>,  <34.475075, 32.647171, 46.205254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140076, 32.340733, 45.606281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921375, 32.666561, 45.683773>,  <33.790154, 32.862061, 45.730267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921375, 32.666561, 45.683773>,  <34.140076, 32.340733, 45.606281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921375, 32.666561, 45.683773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018819, 0.219360, -0.975463,
		-0.837082, -0.536983, -0.104606,
		-0.546754, 0.814574, 0.193727,
		33.757351, 32.910934, 45.741890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534687, 32.372196, 45.150093>,  <34.140076, 32.340733, 45.606281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534687, 32.372196, 45.150093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559303, 32.754803, 45.264141>,  <33.574074, 32.984367, 45.332569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559303, 32.754803, 45.264141>,  <33.534687, 32.372196, 45.150093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559303, 32.754803, 45.264141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042934, 0.287930, -0.956689,
		-0.997181, 0.046637, 0.058788,
		0.061544, 0.956515, 0.285116,
		33.577766, 33.041756, 45.349674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197266, 32.664646, 44.645390>,  <33.534687, 32.372196, 45.150093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197266, 32.664646, 44.645390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379192, 32.976517, 44.817547>,  <33.488346, 33.163639, 44.920841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379192, 32.976517, 44.817547>,  <33.197266, 32.664646, 44.645390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379192, 32.976517, 44.817547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171547, 0.397526, -0.901413,
		-0.873908, 0.483809, 0.047049,
		0.454815, 0.779680, 0.430397,
		33.515636, 33.210423, 44.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890972, 33.268215, 44.438198>,  <33.197266, 32.664646, 44.645390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890972, 33.268215, 44.438198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257740, 33.377621, 44.554440>,  <33.477802, 33.443264, 44.624184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257740, 33.377621, 44.554440>,  <32.890972, 33.268215, 44.438198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257740, 33.377621, 44.554440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194812, 0.328759, -0.924103,
		-0.348294, 0.903940, 0.248161,
		0.916918, 0.273515, 0.290603,
		33.532814, 33.459675, 44.641621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000179, 33.771252, 44.011856>,  <32.890972, 33.268215, 44.438198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000179, 33.771252, 44.011856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363914, 33.745384, 44.176258>,  <33.582153, 33.729866, 44.274902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363914, 33.745384, 44.176258>,  <33.000179, 33.771252, 44.011856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363914, 33.745384, 44.176258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412213, 0.274130, -0.868869,
		-0.056485, 0.959516, 0.275931,
		0.909335, -0.064664, 0.411010,
		33.636715, 33.725986, 44.299561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408855, 34.527737, 44.039341>,  <33.000179, 33.771252, 44.011856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408855, 34.527737, 44.039341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649509, 34.208344, 44.030739>,  <33.793903, 34.016708, 44.025578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.649509, 34.208344, 44.030739>,  <33.408855, 34.527737, 44.039341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649509, 34.208344, 44.030739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366857, 0.300128, -0.880533,
		0.709543, 0.521872, 0.473496,
		0.601635, -0.798482, -0.021501,
		33.830002, 33.968800, 44.024288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961678, 34.811474, 43.597008>,  <33.408855, 34.527737, 44.039341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961678, 34.811474, 43.597008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033291, 34.418610, 43.619980>,  <34.076260, 34.182892, 43.633762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033291, 34.418610, 43.619980>,  <33.961678, 34.811474, 43.597008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033291, 34.418610, 43.619980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331239, 0.005207, -0.943532,
		0.926406, 0.187948, 0.326264,
		0.179034, -0.982165, 0.057432,
		34.087002, 34.123959, 43.637211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652920, 34.713318, 43.315578>,  <33.961678, 34.811474, 43.597008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652920, 34.713318, 43.315578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436970, 34.380444, 43.264988>,  <34.307400, 34.180717, 43.234634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.436970, 34.380444, 43.264988>,  <34.652920, 34.713318, 43.315578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436970, 34.380444, 43.264988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372615, -0.101537, -0.922414,
		0.754782, -0.545115, 0.364904,
		-0.539873, -0.832190, -0.126480,
		34.275009, 34.130787, 43.227043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.859314, 40.542648, 39.098019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752476, 40.865376, 38.887226>,  <43.688374, 41.059013, 38.760750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752476, 40.865376, 38.887226>,  <43.859314, 40.542648, 39.098019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752476, 40.865376, 38.887226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153312, -0.504305, -0.849807,
		-0.951398, -0.307768, 0.011000,
		-0.267091, 0.806818, -0.526980,
		43.672348, 41.107422, 38.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717316, 40.304165, 38.367081>,  <43.859314, 40.542648, 39.098019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717316, 40.304165, 38.367081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704063, 40.700039, 38.311317>,  <43.696114, 40.937561, 38.277859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704063, 40.700039, 38.311317>,  <43.717316, 40.304165, 38.367081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704063, 40.700039, 38.311317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040540, -0.138038, -0.989597,
		-0.998629, -0.038433, -0.035549,
		-0.033126, 0.989681, -0.139407,
		43.694126, 40.996944, 38.269497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223965, 40.417225, 37.948261>,  <43.717316, 40.304165, 38.367081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223965, 40.417225, 37.948261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445610, 40.747051, 37.902573>,  <43.578598, 40.944946, 37.875160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445610, 40.747051, 37.902573>,  <43.223965, 40.417225, 37.948261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445610, 40.747051, 37.902573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121212, -0.055831, -0.991055,
		-0.823571, 0.562999, 0.069011,
		0.554110, 0.824570, -0.114223,
		43.611843, 40.994423, 37.868305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843113, 40.783333, 37.434761>,  <43.223965, 40.417225, 37.948261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843113, 40.783333, 37.434761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225807, 40.899029, 37.447338>,  <43.455425, 40.968445, 37.454884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225807, 40.899029, 37.447338>,  <42.843113, 40.783333, 37.434761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225807, 40.899029, 37.447338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100357, -0.226649, -0.968792,
		-0.273089, 0.930037, -0.245871,
		0.956740, 0.289241, 0.031440,
		43.512829, 40.985802, 37.456772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964916, 41.219608, 36.850380>,  <42.843113, 40.783333, 37.434761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964916, 41.219608, 36.850380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.323093, 41.067730, 36.943340>,  <43.538002, 40.976604, 36.999115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.323093, 41.067730, 36.943340>,  <42.964916, 41.219608, 36.850380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323093, 41.067730, 36.943340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122315, -0.292115, -0.948529,
		0.428038, 0.877783, -0.215131,
		0.895446, -0.379693, 0.232402,
		43.591728, 40.953823, 37.013062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310566, 41.279049, 36.270401>,  <42.964916, 41.219608, 36.850380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310566, 41.279049, 36.270401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540977, 41.045040, 36.498768>,  <43.679222, 40.904636, 36.635788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540977, 41.045040, 36.498768>,  <43.310566, 41.279049, 36.270401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540977, 41.045040, 36.498768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178132, -0.591805, -0.786153,
		0.797786, 0.554543, -0.236685,
		0.576027, -0.585021, 0.570915,
		43.713787, 40.869534, 36.670044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890118, 41.151035, 35.901203>,  <43.310566, 41.279049, 36.270401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890118, 41.151035, 35.901203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892323, 40.841785, 36.154896>,  <43.893646, 40.656235, 36.307114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892323, 40.841785, 36.154896>,  <43.890118, 41.151035, 35.901203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892323, 40.841785, 36.154896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164581, -0.624894, -0.763165,
		0.986348, 0.108592, 0.123795,
		0.005515, -0.773120, 0.634235,
		43.893978, 40.609848, 36.345165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377731, 40.662994, 35.640236>,  <43.890118, 41.151035, 35.901203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377731, 40.662994, 35.640236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168392, 40.434383, 35.893047>,  <44.042789, 40.297218, 36.044735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168392, 40.434383, 35.893047>,  <44.377731, 40.662994, 35.640236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168392, 40.434383, 35.893047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109399, -0.780645, -0.615325,
		0.845068, -0.252884, 0.471072,
		-0.523346, -0.571527, 0.632033,
		44.011387, 40.262924, 36.082657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750511, 40.053501, 35.718597>,  <44.377731, 40.662994, 35.640236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750511, 40.053501, 35.718597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369030, 39.970062, 35.805264>,  <44.140141, 39.919998, 35.857265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369030, 39.970062, 35.805264>,  <44.750511, 40.053501, 35.718597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369030, 39.970062, 35.805264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052313, -0.824464, -0.563491,
		0.296177, -0.526066, 0.797204,
		-0.953699, -0.208597, 0.216668,
		44.082920, 39.907482, 35.870262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770683, 39.362198, 35.772362>,  <44.750511, 40.053501, 35.718597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770683, 39.362198, 35.772362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382351, 39.444588, 35.723286>,  <44.149349, 39.494022, 35.693840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382351, 39.444588, 35.723286>,  <44.770683, 39.362198, 35.772362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382351, 39.444588, 35.723286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139675, -0.901860, -0.408827,
		-0.194860, -0.379767, 0.904326,
		-0.970835, 0.205976, -0.122693,
		44.091099, 39.506382, 35.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308636, 38.770630, 36.113037>,  <44.770683, 39.362198, 35.772362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308636, 38.770630, 36.113037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108089, 38.959713, 35.823158>,  <43.987762, 39.073162, 35.649231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108089, 38.959713, 35.823158>,  <44.308636, 38.770630, 36.113037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108089, 38.959713, 35.823158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078909, -0.859056, -0.505763,
		-0.861638, -0.196380, 0.467991,
		-0.501352, 0.472714, -0.724699,
		43.957680, 39.101524, 35.605751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811508, 38.345112, 36.026714>,  <44.308636, 38.770630, 36.113037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811508, 38.345112, 36.026714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774235, 38.559963, 35.691380>,  <43.751869, 38.688873, 35.490177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774235, 38.559963, 35.691380>,  <43.811508, 38.345112, 36.026714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774235, 38.559963, 35.691380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222524, -0.831940, -0.508290,
		-0.970464, 0.139187, 0.197046,
		-0.093183, 0.537125, -0.838340,
		43.746281, 38.721100, 35.439877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100555, 38.244961, 35.768005>,  <43.811508, 38.345112, 36.026714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100555, 38.244961, 35.768005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328491, 38.382278, 35.469360>,  <43.465252, 38.464668, 35.290173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328491, 38.382278, 35.469360>,  <43.100555, 38.244961, 35.768005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328491, 38.382278, 35.469360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274408, -0.776915, -0.566661,
		-0.774587, 0.527782, -0.348514,
		0.569839, 0.343293, -0.746615,
		43.499443, 38.485268, 35.245377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734409, 38.132248, 35.188362>,  <43.100555, 38.244961, 35.768005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734409, 38.132248, 35.188362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115059, 38.155087, 35.067600>,  <43.343449, 38.168789, 34.995144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115059, 38.155087, 35.067600>,  <42.734409, 38.132248, 35.188362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115059, 38.155087, 35.067600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097300, -0.876020, -0.472358,
		-0.291445, 0.478884, -0.828088,
		0.951626, 0.057094, -0.301907,
		43.400547, 38.172215, 34.977028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729370, 37.704769, 34.601852>,  <42.734409, 38.132248, 35.188362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729370, 37.704769, 34.601852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125088, 37.739582, 34.648701>,  <43.362518, 37.760468, 34.676811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125088, 37.739582, 34.648701>,  <42.729370, 37.704769, 34.601852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125088, 37.739582, 34.648701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123737, -0.925775, -0.357252,
		0.077339, 0.367921, -0.926635,
		0.989297, 0.087029, 0.117124,
		43.421875, 37.765690, 34.683838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039089, 37.509514, 33.914326>,  <42.729370, 37.704769, 34.601852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039089, 37.509514, 33.914326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.343506, 37.478199, 34.171913>,  <43.526154, 37.459408, 34.326466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.343506, 37.478199, 34.171913>,  <43.039089, 37.509514, 33.914326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343506, 37.478199, 34.171913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214927, -0.906193, -0.364172,
		0.612067, 0.415554, -0.672821,
		0.761039, -0.078290, 0.643964,
		43.571819, 37.454712, 34.365101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558365, 37.183846, 33.578030>,  <43.039089, 37.509514, 33.914326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558365, 37.183846, 33.578030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641258, 37.115685, 33.963364>,  <43.690994, 37.074787, 34.194565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641258, 37.115685, 33.963364>,  <43.558365, 37.183846, 33.578030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641258, 37.115685, 33.963364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301153, -0.925784, -0.228542,
		0.930786, 0.337473, -0.140534,
		0.207231, -0.170402, 0.963337,
		43.703426, 37.064564, 34.252365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240784, 36.878632, 33.645252>,  <43.558365, 37.183846, 33.578030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240784, 36.878632, 33.645252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047413, 36.768394, 33.977600>,  <43.931393, 36.702251, 34.177010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047413, 36.768394, 33.977600>,  <44.240784, 36.878632, 33.645252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047413, 36.768394, 33.977600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209540, -0.957987, -0.195841,
		0.849937, 0.079426, 0.520863,
		-0.483425, -0.275594, 0.830872,
		43.902386, 36.685715, 34.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733040, 36.484554, 33.954823>,  <44.240784, 36.878632, 33.645252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733040, 36.484554, 33.954823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386745, 36.377743, 34.124149>,  <44.178970, 36.313656, 34.225746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386745, 36.377743, 34.124149>,  <44.733040, 36.484554, 33.954823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386745, 36.377743, 34.124149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220396, -0.962763, -0.156564,
		0.449365, -0.042245, 0.892349,
		-0.865735, -0.267025, 0.423321,
		44.127026, 36.297634, 34.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945728, 35.937351, 34.400837>,  <44.733040, 36.484554, 33.954823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945728, 35.937351, 34.400837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553196, 35.909908, 34.328976>,  <44.317677, 35.893444, 34.285858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.553196, 35.909908, 34.328976>,  <44.945728, 35.937351, 34.400837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553196, 35.909908, 34.328976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127166, -0.932293, -0.338614,
		-0.144256, -0.355139, 0.923616,
		-0.981336, -0.068605, -0.179651,
		44.258797, 35.889328, 34.275082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733131, 35.370068, 34.795803>,  <44.945728, 35.937351, 34.400837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733131, 35.370068, 34.795803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495911, 35.424152, 34.478313>,  <44.353577, 35.456604, 34.287819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495911, 35.424152, 34.478313>,  <44.733131, 35.370068, 34.795803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495911, 35.424152, 34.478313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243393, -0.909571, -0.336808,
		-0.767493, -0.392934, 0.506515,
		-0.593055, 0.135215, -0.793727,
		44.317993, 35.464718, 34.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832764, 34.722866, 34.283852>,  <44.733131, 35.370068, 34.795803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832764, 34.722866, 34.283852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171970, 34.772190, 34.490021>,  <45.375496, 34.801785, 34.613724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171970, 34.772190, 34.490021>,  <44.832764, 34.722866, 34.283852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171970, 34.772190, 34.490021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517973, 0.398596, 0.756852,
		-0.112119, -0.908799, 0.401887,
		0.848018, 0.123309, 0.515423,
		45.426376, 34.809181, 34.644650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739479, 34.471867, 34.943970>,  <44.832764, 34.722866, 34.283852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739479, 34.471867, 34.943970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035572, 34.735386, 34.997692>,  <45.213226, 34.893497, 35.029926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.035572, 34.735386, 34.997692>,  <44.739479, 34.471867, 34.943970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035572, 34.735386, 34.997692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386515, 0.253509, 0.886758,
		0.550150, -0.708317, 0.442292,
		0.740230, 0.658802, 0.134307,
		45.257641, 34.933025, 35.037983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012268, 34.425343, 35.642910>,  <44.739479, 34.471867, 34.943970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012268, 34.425343, 35.642910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136353, 34.792580, 35.544224>,  <45.210804, 35.012924, 35.485012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136353, 34.792580, 35.544224>,  <45.012268, 34.425343, 35.642910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136353, 34.792580, 35.544224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374890, 0.356627, 0.855730,
		0.873629, -0.172964, 0.454815,
		0.310210, 0.918096, -0.246717,
		45.229416, 35.068008, 35.470207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153336, 34.684780, 36.245972>,  <45.012268, 34.425343, 35.642910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153336, 34.684780, 36.245972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211670, 35.027470, 36.048084>,  <45.246670, 35.233086, 35.929352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211670, 35.027470, 36.048084>,  <45.153336, 34.684780, 36.245972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211670, 35.027470, 36.048084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520853, 0.491642, 0.697854,
		0.841097, 0.155902, 0.517929,
		0.145839, 0.856728, -0.494721,
		45.255421, 35.284489, 35.899670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526867, 35.171764, 36.691204>,  <45.153336, 34.684780, 36.245972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526867, 35.171764, 36.691204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.324909, 35.377724, 36.414085>,  <45.203735, 35.501297, 36.247814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.324909, 35.377724, 36.414085>,  <45.526867, 35.171764, 36.691204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324909, 35.377724, 36.414085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490945, 0.488846, 0.721112,
		0.709965, 0.704212, 0.005967,
		-0.504898, 0.514894, -0.692793,
		45.173439, 35.532192, 36.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474060, 35.856918, 36.956841>,  <45.526867, 35.171764, 36.691204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474060, 35.856918, 36.956841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176510, 35.837288, 36.690235>,  <44.997978, 35.825508, 36.530273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.176510, 35.837288, 36.690235>,  <45.474060, 35.856918, 36.956841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176510, 35.837288, 36.690235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573166, 0.559730, 0.598484,
		0.343692, 0.827221, -0.444502,
		-0.743880, -0.049080, -0.666509,
		44.953346, 35.822563, 36.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243847, 36.498585, 36.833935>,  <45.474060, 35.856918, 36.956841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243847, 36.498585, 36.833935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930241, 36.267666, 36.742680>,  <44.742077, 36.129112, 36.687927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.930241, 36.267666, 36.742680>,  <45.243847, 36.498585, 36.833935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930241, 36.267666, 36.742680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558784, 0.496304, 0.664412,
		-0.270340, 0.648387, -0.711695,
		-0.784014, -0.577301, -0.228137,
		44.695038, 36.094475, 36.674240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703266, 37.011158, 36.791283>,  <45.243847, 36.498585, 36.833935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703266, 37.011158, 36.791283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558674, 36.646942, 36.871529>,  <44.471920, 36.428413, 36.919678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558674, 36.646942, 36.871529>,  <44.703266, 37.011158, 36.791283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558674, 36.646942, 36.871529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588846, 0.389770, 0.708053,
		-0.722908, 0.137811, -0.677062,
		-0.361476, -0.910542, 0.200618,
		44.450230, 36.373779, 36.931713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945332, 37.088821, 36.792107>,  <44.703266, 37.011158, 36.791283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945332, 37.088821, 36.792107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012756, 36.750271, 36.994190>,  <44.053211, 36.547142, 37.115440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012756, 36.750271, 36.994190>,  <43.945332, 37.088821, 36.792107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012756, 36.750271, 36.994190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538858, 0.350043, 0.766226,
		-0.825359, -0.401393, -0.397071,
		0.168566, -0.846376, 0.505205,
		44.063328, 36.496357, 37.145752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227028, 36.937786, 36.962490>,  <43.945332, 37.088821, 36.792107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227028, 36.937786, 36.962490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459557, 36.721832, 37.205997>,  <43.599072, 36.592262, 37.352100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459557, 36.721832, 37.205997>,  <43.227028, 36.937786, 36.962490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459557, 36.721832, 37.205997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531127, 0.315018, 0.786554,
		-0.616419, -0.780571, -0.103620,
		0.581319, -0.539882, 0.608765,
		43.633953, 36.559868, 37.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749283, 36.574940, 37.442307>,  <43.227028, 36.937786, 36.962490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749283, 36.574940, 37.442307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113262, 36.598114, 37.606571>,  <43.331650, 36.612019, 37.705128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113262, 36.598114, 37.606571>,  <42.749283, 36.574940, 37.442307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113262, 36.598114, 37.606571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400641, 0.378671, 0.834323,
		-0.107164, -0.923716, 0.367784,
		0.909946, 0.057940, 0.410659,
		43.386246, 36.615498, 37.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561211, 36.596848, 38.132751>,  <42.749283, 36.574940, 37.442307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561211, 36.596848, 38.132751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949440, 36.674820, 38.189301>,  <43.182377, 36.721603, 38.223228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949440, 36.674820, 38.189301>,  <42.561211, 36.596848, 38.132751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949440, 36.674820, 38.189301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198241, 0.313550, 0.928648,
		0.136696, -0.929348, 0.342967,
		0.970574, 0.194932, 0.141374,
		43.240612, 36.733299, 38.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644531, 36.455410, 38.780418>,  <42.561211, 36.596848, 38.132751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644531, 36.455410, 38.780418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951729, 36.690456, 38.678524>,  <43.136047, 36.831482, 38.617386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951729, 36.690456, 38.678524>,  <42.644531, 36.455410, 38.780418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951729, 36.690456, 38.678524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080434, 0.483093, 0.871867,
		0.635382, -0.649102, 0.418279,
		0.767998, 0.587612, -0.254738,
		43.182129, 36.866741, 38.602104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288200, 36.369881, 39.296295>,  <42.644531, 36.455410, 38.780418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288200, 36.369881, 39.296295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300434, 36.723007, 39.108810>,  <43.307774, 36.934883, 38.996319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300434, 36.723007, 39.108810>,  <43.288200, 36.369881, 39.296295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300434, 36.723007, 39.108810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077017, 0.465458, 0.881713,
		0.996561, -0.063063, -0.053757,
		0.030582, 0.882820, -0.468714,
		43.309608, 36.987854, 38.968197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794117, 36.781643, 39.635147>,  <43.288200, 36.369881, 39.296295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794117, 36.781643, 39.635147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566265, 37.057236, 39.455891>,  <43.429554, 37.222591, 39.348335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566265, 37.057236, 39.455891>,  <43.794117, 36.781643, 39.635147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566265, 37.057236, 39.455891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079164, 0.496721, 0.864292,
		0.818082, 0.527801, -0.228403,
		-0.569627, 0.688980, -0.448141,
		43.395378, 37.263931, 39.321449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974083, 37.336388, 40.024570>,  <43.794117, 36.781643, 39.635147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974083, 37.336388, 40.024570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632439, 37.428043, 39.837814>,  <43.427452, 37.483036, 39.725761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632439, 37.428043, 39.837814>,  <43.974083, 37.336388, 40.024570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632439, 37.428043, 39.837814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236805, 0.627930, 0.741369,
		0.463053, 0.743774, -0.482060,
		-0.854111, 0.229139, -0.466894,
		43.376205, 37.496784, 39.697746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965027, 38.019440, 40.049114>,  <43.974083, 37.336388, 40.024570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965027, 38.019440, 40.049114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590851, 37.902050, 39.970299>,  <43.366344, 37.831615, 39.923012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590851, 37.902050, 39.970299>,  <43.965027, 38.019440, 40.049114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590851, 37.902050, 39.970299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347069, 0.656834, 0.669412,
		-0.067038, 0.694580, -0.716285,
		-0.935440, -0.293476, -0.197035,
		43.310219, 37.814007, 39.911190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668941, 38.658710, 39.997398>,  <43.965027, 38.019440, 40.049114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668941, 38.658710, 39.997398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391941, 38.383034, 40.082676>,  <43.225739, 38.217628, 40.133842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391941, 38.383034, 40.082676>,  <43.668941, 38.658710, 39.997398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391941, 38.383034, 40.082676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209971, 0.475287, 0.854409,
		-0.690181, 0.546917, -0.473848,
		-0.692504, -0.689191, 0.213198,
		43.184189, 38.176277, 40.146637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189899, 39.064972, 40.213902>,  <43.668941, 38.658710, 39.997398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189899, 39.064972, 40.213902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.117382, 38.697803, 40.355068>,  <43.073872, 38.477501, 40.439766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.117382, 38.697803, 40.355068>,  <43.189899, 39.064972, 40.213902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117382, 38.697803, 40.355068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253064, 0.390319, 0.885217,
		-0.950312, 0.071172, -0.303055,
		-0.181291, -0.917925, 0.352914,
		43.062996, 38.422424, 40.460941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489296, 39.058739, 40.570324>,  <43.189899, 39.064972, 40.213902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489296, 39.058739, 40.570324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696259, 38.756950, 40.731850>,  <42.820435, 38.575878, 40.828766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696259, 38.756950, 40.731850>,  <42.489296, 39.058739, 40.570324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696259, 38.756950, 40.731850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244363, 0.321971, 0.914670,
		-0.820110, -0.571930, -0.017776,
		0.517404, -0.754474, 0.403810,
		42.851479, 38.530609, 40.852993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040363, 38.737934, 41.144432>,  <42.489296, 39.058739, 40.570324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040363, 38.737934, 41.144432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.420841, 38.640152, 41.219769>,  <42.649128, 38.581482, 41.264973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.420841, 38.640152, 41.219769>,  <42.040363, 38.737934, 41.144432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420841, 38.640152, 41.219769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109226, 0.304124, 0.946350,
		-0.288624, -0.920733, 0.262579,
		0.951192, -0.244458, 0.188346,
		42.706200, 38.566814, 41.276272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.556313, 35.818737, 40.788723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257801, 35.701328, 40.549755>,  <38.078693, 35.630882, 40.406372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257801, 35.701328, 40.549755>,  <38.556313, 35.818737, 40.788723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257801, 35.701328, 40.549755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656680, -0.177939, -0.732878,
		0.108809, -0.939247, 0.325540,
		-0.746279, -0.293519, -0.597423,
		38.033916, 35.613274, 40.370529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881893, 35.514587, 40.246876>,  <38.556313, 35.818737, 40.788723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881893, 35.514587, 40.246876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520805, 35.535744, 40.076088>,  <38.304153, 35.548439, 39.973618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520805, 35.535744, 40.076088>,  <38.881893, 35.514587, 40.246876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520805, 35.535744, 40.076088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418673, -0.120468, -0.900111,
		-0.099040, -0.991307, 0.086607,
		-0.902720, 0.052887, -0.426965,
		38.249989, 35.551613, 39.947998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930691, 35.052864, 39.703716>,  <38.881893, 35.514587, 40.246876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930691, 35.052864, 39.703716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580761, 35.214779, 39.597260>,  <38.370804, 35.311928, 39.533386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580761, 35.214779, 39.597260>,  <38.930691, 35.052864, 39.703716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580761, 35.214779, 39.597260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224220, -0.148653, -0.963134,
		-0.429427, -0.902247, 0.039284,
		-0.874825, 0.404788, -0.266138,
		38.318314, 35.336216, 39.517418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673973, 34.631985, 39.196438>,  <38.930691, 35.052864, 39.703716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673973, 34.631985, 39.196438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512325, 34.991451, 39.128223>,  <38.415337, 35.207130, 39.087296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512325, 34.991451, 39.128223>,  <38.673973, 34.631985, 39.196438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512325, 34.991451, 39.128223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226057, -0.082538, -0.970611,
		-0.886332, -0.430796, -0.169795,
		-0.404121, 0.898667, -0.170540,
		38.391090, 35.261051, 39.077061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136631, 34.545864, 38.783283>,  <38.673973, 34.631985, 39.196438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136631, 34.545864, 38.783283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230347, 34.929523, 38.719864>,  <38.286575, 35.159721, 38.681812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230347, 34.929523, 38.719864>,  <38.136631, 34.545864, 38.783283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230347, 34.929523, 38.719864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071789, -0.145571, -0.986740,
		-0.969513, 0.242562, 0.034752,
		0.234287, 0.959152, -0.158546,
		38.300632, 35.217270, 38.672298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797100, 34.722736, 38.187122>,  <38.136631, 34.545864, 38.783283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797100, 34.722736, 38.187122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027042, 35.046989, 38.231693>,  <38.165009, 35.241539, 38.258438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027042, 35.046989, 38.231693>,  <37.797100, 34.722736, 38.187122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027042, 35.046989, 38.231693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014131, 0.145996, -0.989184,
		-0.818130, 0.567067, 0.095383,
		0.574860, 0.810629, 0.111431,
		38.199501, 35.290176, 38.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520832, 35.289433, 37.767399>,  <37.797100, 34.722736, 38.187122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520832, 35.289433, 37.767399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903824, 35.392387, 37.819527>,  <38.133621, 35.454159, 37.850803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903824, 35.392387, 37.819527>,  <37.520832, 35.289433, 37.767399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903824, 35.392387, 37.819527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050128, 0.296427, -0.953739,
		-0.284106, 0.919720, 0.270921,
		0.957481, 0.257383, 0.130321,
		38.191067, 35.469601, 37.858624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617092, 35.917027, 37.405174>,  <37.520832, 35.289433, 37.767399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617092, 35.917027, 37.405174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968243, 35.728680, 37.440102>,  <38.178932, 35.615673, 37.461060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968243, 35.728680, 37.440102>,  <37.617092, 35.917027, 37.405174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968243, 35.728680, 37.440102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153649, 0.104240, -0.982612,
		0.453576, 0.876025, 0.163858,
		0.877873, -0.470865, 0.087320,
		38.231606, 35.587421, 37.466297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130695, 36.201679, 36.982155>,  <37.617092, 35.917027, 37.405174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130695, 36.201679, 36.982155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293606, 35.837738, 37.013893>,  <38.391350, 35.619373, 37.032936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293606, 35.837738, 37.013893>,  <38.130695, 36.201679, 36.982155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293606, 35.837738, 37.013893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200331, 0.004230, -0.979719,
		0.891065, 0.414909, 0.183994,
		0.407272, -0.909853, 0.079350,
		38.415787, 35.564781, 37.037697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819885, 36.251900, 36.660904>,  <38.130695, 36.201679, 36.982155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819885, 36.251900, 36.660904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745575, 35.859673, 36.686096>,  <38.700989, 35.624336, 36.701210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745575, 35.859673, 36.686096>,  <38.819885, 36.251900, 36.660904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745575, 35.859673, 36.686096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415453, -0.136471, -0.899319,
		0.890441, -0.140911, 0.432735,
		-0.185779, -0.980571, 0.062977,
		38.689842, 35.565502, 36.704990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437359, 35.981564, 36.438450>,  <38.819885, 36.251900, 36.660904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437359, 35.981564, 36.438450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146076, 35.713852, 36.379429>,  <38.971306, 35.553223, 36.344017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146076, 35.713852, 36.379429>,  <39.437359, 35.981564, 36.438450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146076, 35.713852, 36.379429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398345, -0.238135, -0.885784,
		0.557703, -0.703812, 0.440017,
		-0.728209, -0.669283, -0.147551,
		38.927612, 35.513065, 36.335163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717911, 35.653465, 35.893497>,  <39.437359, 35.981564, 36.438450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717911, 35.653465, 35.893497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331882, 35.548744, 35.889545>,  <39.100266, 35.485912, 35.887177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331882, 35.548744, 35.889545>,  <39.717911, 35.653465, 35.893497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331882, 35.548744, 35.889545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053198, -0.158913, -0.985858,
		0.256533, -0.951948, 0.167290,
		-0.965070, -0.261804, -0.009876,
		39.042362, 35.470203, 35.886581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658066, 35.028477, 35.701225>,  <39.717911, 35.653465, 35.893497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658066, 35.028477, 35.701225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337135, 35.229290, 35.572079>,  <39.144577, 35.349777, 35.494591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337135, 35.229290, 35.572079>,  <39.658066, 35.028477, 35.701225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337135, 35.229290, 35.572079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162800, -0.336347, -0.927560,
		-0.574258, -0.796766, 0.188129,
		-0.802324, 0.502031, -0.322864,
		39.096439, 35.379898, 35.475220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961777, 35.153324, 36.347439>,  <39.658066, 35.028477, 35.701225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961777, 35.153324, 36.347439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262623, 35.065681, 36.596058>,  <40.443130, 35.013096, 36.745228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262623, 35.065681, 36.596058>,  <39.961777, 35.153324, 36.347439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262623, 35.065681, 36.596058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366197, 0.923059, -0.117732,
		-0.547930, 0.316156, 0.774479,
		0.752112, -0.219103, 0.621548,
		40.488255, 34.999950, 36.782524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056725, 34.455952, 35.953484>,  <39.961777, 35.153324, 36.347439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056725, 34.455952, 35.953484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234024, 34.166916, 35.741299>,  <40.340405, 33.993496, 35.613987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234024, 34.166916, 35.741299>,  <40.056725, 34.455952, 35.953484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234024, 34.166916, 35.741299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075504, -0.619769, 0.781143,
		-0.893212, -0.306190, -0.329272,
		0.443251, -0.722588, -0.530467,
		40.367001, 33.950138, 35.582157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599712, 33.823986, 35.844681>,  <40.056725, 34.455952, 35.953484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599712, 33.823986, 35.844681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986347, 33.723911, 35.822369>,  <40.218330, 33.663868, 35.808983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986347, 33.723911, 35.822369>,  <39.599712, 33.823986, 35.844681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986347, 33.723911, 35.822369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134508, -0.680299, 0.720486,
		-0.218199, -0.688913, -0.691223,
		0.966590, -0.250184, -0.055776,
		40.276325, 33.648857, 35.805637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584412, 33.132854, 35.946918>,  <39.599712, 33.823986, 35.844681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584412, 33.132854, 35.946918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960663, 33.240036, 36.030273>,  <40.186413, 33.304344, 36.080288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960663, 33.240036, 36.030273>,  <39.584412, 33.132854, 35.946918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960663, 33.240036, 36.030273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031359, -0.542687, 0.839349,
		0.337993, -0.796049, -0.502063,
		0.940626, 0.267950, 0.208388,
		40.242851, 33.320419, 36.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965694, 32.540623, 36.116180>,  <39.584412, 33.132854, 35.946918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965694, 32.540623, 36.116180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179367, 32.822975, 36.302246>,  <40.307571, 32.992386, 36.413883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179367, 32.822975, 36.302246>,  <39.965694, 32.540623, 36.116180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179367, 32.822975, 36.302246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135308, -0.471759, 0.871284,
		0.834469, -0.528366, -0.156494,
		0.534184, 0.705885, 0.465160,
		40.339622, 33.034740, 36.441795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363735, 32.133625, 36.455013>,  <39.965694, 32.540623, 36.116180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363735, 32.133625, 36.455013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388294, 32.488636, 36.637676>,  <40.403030, 32.701641, 36.747272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388294, 32.488636, 36.637676>,  <40.363735, 32.133625, 36.455013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388294, 32.488636, 36.637676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175089, -0.440848, 0.880339,
		0.982637, -0.134002, 0.128330,
		0.061394, 0.887523, 0.456655,
		40.406712, 32.754894, 36.774673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828358, 32.095085, 37.004456>,  <40.363735, 32.133625, 36.455013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828358, 32.095085, 37.004456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590054, 32.408001, 37.077221>,  <40.447071, 32.595753, 37.120880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590054, 32.408001, 37.077221>,  <40.828358, 32.095085, 37.004456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590054, 32.408001, 37.077221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140038, -0.324199, 0.935566,
		0.790862, 0.531895, 0.302695,
		-0.595757, 0.782293, 0.181912,
		40.411327, 32.642689, 37.131794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051521, 32.298996, 37.629780>,  <40.828358, 32.095085, 37.004456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051521, 32.298996, 37.629780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 32.454132, 37.578781>,  <40.467289, 32.547215, 37.548183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 32.454132, 37.578781>,  <41.051521, 32.298996, 37.629780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686375, 32.454132, 37.578781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238155, -0.252224, 0.937905,
		0.331604, 0.886544, 0.322613,
		-0.912864, 0.387844, -0.127496,
		40.412514, 32.570484, 37.540531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969170, 32.762165, 38.156002>,  <41.051521, 32.298996, 37.629780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969170, 32.762165, 38.156002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601192, 32.668850, 38.029972>,  <40.380405, 32.612862, 37.954353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601192, 32.668850, 38.029972>,  <40.969170, 32.762165, 38.156002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601192, 32.668850, 38.029972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285448, -0.152318, 0.946213,
		-0.268735, 0.960403, 0.073532,
		-0.919946, -0.233291, -0.315078,
		40.325207, 32.598862, 37.935448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608589, 32.999683, 38.622986>,  <40.969170, 32.762165, 38.156002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608589, 32.999683, 38.622986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362602, 32.736694, 38.448833>,  <40.215012, 32.578903, 38.344341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362602, 32.736694, 38.448833>,  <40.608589, 32.999683, 38.622986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362602, 32.736694, 38.448833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339566, -0.277517, 0.898709,
		-0.711699, 0.700513, -0.052591,
		-0.614963, -0.657469, -0.435380,
		40.178112, 32.539455, 38.318218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027794, 32.974293, 38.938305>,  <40.608589, 32.999683, 38.622986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027794, 32.974293, 38.938305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964790, 32.629539, 38.745495>,  <39.926987, 32.422688, 38.629810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964790, 32.629539, 38.745495>,  <40.027794, 32.974293, 38.938305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964790, 32.629539, 38.745495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583547, -0.312541, 0.749527,
		-0.796657, 0.399342, -0.453721,
		-0.157511, -0.861884, -0.482023,
		39.917538, 32.370975, 38.600887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360584, 32.899956, 38.931545>,  <40.027794, 32.974293, 38.938305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360584, 32.899956, 38.931545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531525, 32.539509, 38.902290>,  <39.634090, 32.323238, 38.884735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531525, 32.539509, 38.902290>,  <39.360584, 32.899956, 38.931545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531525, 32.539509, 38.902290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504140, -0.304676, 0.808094,
		-0.750475, -0.308468, -0.584496,
		0.427353, -0.901121, -0.073141,
		39.659729, 32.269173, 38.880348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843544, 32.533081, 39.149860>,  <39.360584, 32.899956, 38.931545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843544, 32.533081, 39.149860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140915, 32.265564, 39.147507>,  <39.319336, 32.105053, 39.146095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140915, 32.265564, 39.147507>,  <38.843544, 32.533081, 39.149860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140915, 32.265564, 39.147507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441709, -0.497567, 0.746539,
		-0.502227, -0.552379, -0.665316,
		0.743411, -0.668808, -0.005901,
		39.363941, 32.064926, 39.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475826, 31.890978, 39.368771>,  <38.843544, 32.533081, 39.149860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475826, 31.890978, 39.368771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861713, 31.805275, 39.429966>,  <39.093246, 31.753853, 39.466682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861713, 31.805275, 39.429966>,  <38.475826, 31.890978, 39.368771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861713, 31.805275, 39.429966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233569, -0.428381, 0.872889,
		-0.121483, -0.877829, -0.463313,
		0.964721, -0.214257, 0.152993,
		39.151131, 31.740997, 39.475864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578754, 31.139244, 39.507294>,  <38.475826, 31.890978, 39.368771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578754, 31.139244, 39.507294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873791, 31.328939, 39.699566>,  <39.050812, 31.442757, 39.814930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873791, 31.328939, 39.699566>,  <38.578754, 31.139244, 39.507294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873791, 31.328939, 39.699566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379703, -0.297362, 0.876015,
		0.558375, -0.828659, -0.039263,
		0.737593, 0.474236, 0.480683,
		39.095070, 31.471210, 39.843769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781906, 30.482996, 39.373058>,  <38.578754, 31.139244, 39.507294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781906, 30.482996, 39.373058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515644, 30.188587, 39.323780>,  <38.355888, 30.011942, 39.294212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515644, 30.188587, 39.323780>,  <38.781906, 30.482996, 39.373058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515644, 30.188587, 39.323780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009009, 0.173001, -0.984880,
		0.746206, -0.654480, -0.121790,
		-0.665654, -0.736021, -0.123198,
		38.315948, 29.967781, 39.286819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010761, 30.015156, 38.826221>,  <38.781906, 30.482996, 39.373058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010761, 30.015156, 38.826221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610779, 30.015339, 38.822361>,  <38.370789, 30.015450, 38.820045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610779, 30.015339, 38.822361>,  <39.010761, 30.015156, 38.826221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610779, 30.015339, 38.822361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009610, 0.155510, -0.987788,
		0.001046, -0.987834, -0.155507,
		-0.999953, 0.000461, -0.009655,
		38.310791, 30.015476, 38.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873947, 29.919104, 38.086708>,  <39.010761, 30.015156, 38.826221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873947, 29.919104, 38.086708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523216, 29.999453, 38.261444>,  <38.312778, 30.047663, 38.366287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523216, 29.999453, 38.261444>,  <38.873947, 29.919104, 38.086708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523216, 29.999453, 38.261444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352732, 0.348677, -0.868334,
		-0.326740, -0.915464, -0.234874,
		-0.876824, 0.200872, 0.436840,
		38.260170, 30.059713, 38.392498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316811, 29.645035, 37.608295>,  <38.873947, 29.919104, 38.086708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316811, 29.645035, 37.608295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167366, 29.920698, 37.856644>,  <38.077702, 30.086096, 38.005653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167366, 29.920698, 37.856644>,  <38.316811, 29.645035, 37.608295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167366, 29.920698, 37.856644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250674, 0.569419, -0.782895,
		-0.893073, -0.448131, -0.039985,
		-0.373608, 0.689159, 0.620868,
		38.055283, 30.127445, 38.042904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749657, 29.878244, 37.226681>,  <38.316811, 29.645035, 37.608295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749657, 29.878244, 37.226681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783905, 30.163475, 37.505016>,  <37.804455, 30.334614, 37.672016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783905, 30.163475, 37.505016>,  <37.749657, 29.878244, 37.226681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783905, 30.163475, 37.505016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464009, 0.646579, -0.605501,
		-0.881683, -0.271034, 0.386232,
		0.085618, 0.713075, 0.695840,
		37.809589, 30.377398, 37.713768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108150, 30.061161, 37.281494>,  <37.749657, 29.878244, 37.226681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108150, 30.061161, 37.281494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364468, 30.348375, 37.390167>,  <37.518257, 30.520704, 37.455372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364468, 30.348375, 37.390167>,  <37.108150, 30.061161, 37.281494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364468, 30.348375, 37.390167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371076, 0.599484, -0.709170,
		-0.672081, 0.353612, 0.650589,
		0.640789, 0.718037, 0.271685,
		37.556705, 30.563786, 37.471672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726135, 30.602680, 37.099800>,  <37.108150, 30.061161, 37.281494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726135, 30.602680, 37.099800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084843, 30.773699, 37.145424>,  <37.300068, 30.876310, 37.172798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084843, 30.773699, 37.145424>,  <36.726135, 30.602680, 37.099800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084843, 30.773699, 37.145424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311888, 0.793560, -0.522484,
		-0.313895, 0.432975, 0.844987,
		0.896769, 0.427546, 0.114055,
		37.353874, 30.901962, 37.179642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511242, 31.247410, 37.127254>,  <36.726135, 30.602680, 37.099800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511242, 31.247410, 37.127254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899780, 31.250647, 37.032238>,  <37.132904, 31.252588, 36.975227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899780, 31.250647, 37.032238>,  <36.511242, 31.247410, 37.127254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899780, 31.250647, 37.032238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155193, 0.778561, -0.608077,
		0.180022, 0.627517, 0.757506,
		0.971343, 0.008093, -0.237544,
		37.191185, 31.253075, 36.960976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775890, 32.016537, 37.029949>,  <36.511242, 31.247410, 37.127254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775890, 32.016537, 37.029949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044201, 31.802719, 36.824299>,  <37.205185, 31.674429, 36.700909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044201, 31.802719, 36.824299>,  <36.775890, 32.016537, 37.029949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044201, 31.802719, 36.824299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, 0.542948, -0.817138,
		0.715942, 0.647663, 0.260691,
		0.670772, -0.534546, -0.514125,
		37.245434, 31.642355, 36.670063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050091, 32.457272, 36.636234>,  <36.775890, 32.016537, 37.029949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050091, 32.457272, 36.636234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127155, 32.124050, 36.428810>,  <37.173393, 31.924118, 36.304356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127155, 32.124050, 36.428810>,  <37.050091, 32.457272, 36.636234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127155, 32.124050, 36.428810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233524, 0.474349, -0.848799,
		0.953072, 0.284630, -0.103147,
		0.192666, -0.833054, -0.518557,
		37.184956, 31.874134, 36.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550247, 32.747723, 36.203983>,  <37.050091, 32.457272, 36.636234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550247, 32.747723, 36.203983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406288, 32.416626, 36.031792>,  <37.319912, 32.217968, 35.928478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406288, 32.416626, 36.031792>,  <37.550247, 32.747723, 36.203983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406288, 32.416626, 36.031792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045280, 0.476347, -0.878091,
		0.931892, -0.296533, -0.208917,
		-0.359900, -0.827745, -0.430477,
		37.298317, 32.168301, 35.902649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919521, 32.701096, 35.541744>,  <37.550247, 32.747723, 36.203983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919521, 32.701096, 35.541744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595501, 32.468510, 35.511501>,  <37.401089, 32.328957, 35.493355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595501, 32.468510, 35.511501>,  <37.919521, 32.701096, 35.541744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595501, 32.468510, 35.511501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224992, 0.427301, -0.875667,
		0.541479, -0.692322, -0.476960,
		-0.810049, -0.581467, -0.075607,
		37.352486, 32.294071, 35.488819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.963009, 28.939350, 42.839561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580624, 28.975597, 42.727898>,  <37.351192, 28.997345, 42.660900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580624, 28.975597, 42.727898>,  <37.963009, 28.939350, 42.839561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580624, 28.975597, 42.727898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259851, -0.180883, -0.948556,
		-0.136444, -0.979322, 0.149372,
		-0.955960, 0.090610, -0.279158,
		37.293835, 29.002783, 42.644150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797436, 28.352184, 42.436279>,  <37.963009, 28.939350, 42.839561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797436, 28.352184, 42.436279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575233, 28.674665, 42.354843>,  <37.441910, 28.868155, 42.305981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575233, 28.674665, 42.354843>,  <37.797436, 28.352184, 42.436279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575233, 28.674665, 42.354843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257967, -0.065668, -0.963920,
		-0.790483, -0.587985, -0.171494,
		-0.555509, 0.806202, -0.203589,
		37.408581, 28.916527, 42.293766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516037, 28.124378, 41.815941>,  <37.797436, 28.352184, 42.436279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516037, 28.124378, 41.815941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456860, 28.519335, 41.838455>,  <37.421352, 28.756310, 41.851963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456860, 28.519335, 41.838455>,  <37.516037, 28.124378, 41.815941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456860, 28.519335, 41.838455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265515, 0.094479, -0.959466,
		-0.952688, -0.127000, -0.276145,
		-0.147942, 0.987393, 0.056288,
		37.412476, 28.815552, 41.855343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060818, 28.279736, 41.305176>,  <37.516037, 28.124378, 41.815941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060818, 28.279736, 41.305176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262901, 28.620691, 41.359131>,  <37.384151, 28.825264, 41.391502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262901, 28.620691, 41.359131>,  <37.060818, 28.279736, 41.305176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262901, 28.620691, 41.359131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095642, 0.100036, -0.990376,
		-0.857678, 0.513252, -0.030984,
		0.505213, 0.852388, 0.134887,
		37.414467, 28.876408, 41.399597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747459, 28.733881, 40.877846>,  <37.060818, 28.279736, 41.305176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747459, 28.733881, 40.877846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089565, 28.924555, 40.959129>,  <37.294830, 29.038960, 41.007900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089565, 28.924555, 40.959129>,  <36.747459, 28.733881, 40.877846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089565, 28.924555, 40.959129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068975, 0.283944, -0.956357,
		-0.513580, 0.831955, 0.209968,
		0.855265, 0.476683, 0.203213,
		37.346146, 29.067560, 41.020092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668983, 29.314758, 40.479637>,  <36.747459, 28.733881, 40.877846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668983, 29.314758, 40.479637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055637, 29.317881, 40.582047>,  <37.287632, 29.319754, 40.643494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055637, 29.317881, 40.582047>,  <36.668983, 29.314758, 40.479637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055637, 29.317881, 40.582047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247362, 0.231023, -0.940978,
		-0.066493, 0.972917, 0.221385,
		0.966639, 0.007806, 0.256024,
		37.345631, 29.320223, 40.658855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970596, 29.927073, 40.031815>,  <36.668983, 29.314758, 40.479637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970596, 29.927073, 40.031815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297443, 29.735872, 40.160706>,  <37.493553, 29.621153, 40.238041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297443, 29.735872, 40.160706>,  <36.970596, 29.927073, 40.031815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297443, 29.735872, 40.160706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464175, 0.214106, -0.859476,
		0.341838, 0.851866, 0.396826,
		0.817122, -0.477999, 0.322226,
		37.542580, 29.592472, 40.257374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581409, 30.389767, 40.164093>,  <36.970596, 29.927073, 40.031815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581409, 30.389767, 40.164093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692440, 30.020411, 40.058037>,  <37.759060, 29.798798, 39.994404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.692440, 30.020411, 40.058037>,  <37.581409, 30.389767, 40.164093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692440, 30.020411, 40.058037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405311, 0.362786, -0.839112,
		0.871018, 0.125456, 0.474962,
		0.277581, -0.923389, -0.265144,
		37.775715, 29.743393, 39.978493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263084, 30.521067, 39.896622>,  <37.581409, 30.389767, 40.164093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263084, 30.521067, 39.896622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211723, 30.146818, 39.765095>,  <38.180908, 29.922268, 39.686180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211723, 30.146818, 39.765095>,  <38.263084, 30.521067, 39.896622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211723, 30.146818, 39.765095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154212, 0.308692, -0.938577,
		0.979659, -0.171223, 0.104647,
		-0.128403, -0.935623, -0.328818,
		38.173203, 29.866131, 39.666451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876049, 30.682959, 40.061207>,  <38.263084, 30.521067, 39.896622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876049, 30.682959, 40.061207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051826, 31.017151, 40.193184>,  <39.157291, 31.217667, 40.272369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051826, 31.017151, 40.193184>,  <38.876049, 30.682959, 40.061207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051826, 31.017151, 40.193184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164383, -0.286312, 0.943930,
		0.883102, -0.469039, 0.011522,
		0.439441, 0.835481, 0.329945,
		39.183659, 31.267796, 40.292168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267075, 30.522600, 40.653858>,  <38.876049, 30.682959, 40.061207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267075, 30.522600, 40.653858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 30.920557, 40.672859>,  <39.210087, 31.159332, 40.684261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 30.920557, 40.672859>,  <39.267075, 30.522600, 40.653858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231457, 30.920557, 40.672859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177042, -0.062744, 0.982201,
		0.980167, 0.079050, 0.181725,
		-0.089045, 0.994894, 0.047505,
		39.204742, 31.219025, 40.687111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763718, 30.772648, 41.166630>,  <39.267075, 30.522600, 40.653858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763718, 30.772648, 41.166630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487976, 31.058487, 41.119064>,  <39.322533, 31.229990, 41.090527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.487976, 31.058487, 41.119064>,  <39.763718, 30.772648, 41.166630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487976, 31.058487, 41.119064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150418, 0.019377, 0.988433,
		0.708636, 0.699267, 0.094131,
		-0.689355, 0.714597, -0.118914,
		39.281170, 31.272865, 41.083389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963306, 31.273476, 41.635353>,  <39.763718, 30.772648, 41.166630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963306, 31.273476, 41.635353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572662, 31.326540, 41.567657>,  <39.338276, 31.358379, 41.527039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572662, 31.326540, 41.567657>,  <39.963306, 31.273476, 41.635353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572662, 31.326540, 41.567657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191638, -0.179906, 0.964836,
		0.097551, 0.974697, 0.201121,
		-0.976606, 0.132663, -0.169239,
		39.279682, 31.366339, 41.516884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824165, 31.818655, 42.071587>,  <39.963306, 31.273476, 41.635353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824165, 31.818655, 42.071587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.457844, 31.679007, 41.992176>,  <39.238049, 31.595217, 41.944530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.457844, 31.679007, 41.992176>,  <39.824165, 31.818655, 42.071587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457844, 31.679007, 41.992176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271626, 0.174311, 0.946486,
		-0.295835, 0.920722, -0.254466,
		-0.915806, -0.349123, -0.198525,
		39.183102, 31.574270, 41.932617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398388, 32.264320, 42.307083>,  <39.824165, 31.818655, 42.071587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398388, 32.264320, 42.307083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179375, 31.930220, 42.327339>,  <39.047966, 31.729759, 42.339493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179375, 31.930220, 42.327339>,  <39.398388, 32.264320, 42.307083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179375, 31.930220, 42.327339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148598, 0.156611, 0.976418,
		-0.823485, 0.527094, -0.209866,
		-0.547531, -0.835252, 0.050642,
		39.015114, 31.679644, 42.342533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947834, 32.317135, 42.913319>,  <39.398388, 32.264320, 42.307083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947834, 32.317135, 42.913319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924637, 31.924044, 42.843029>,  <38.910717, 31.688189, 42.800854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924637, 31.924044, 42.843029>,  <38.947834, 32.317135, 42.913319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924637, 31.924044, 42.843029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064150, -0.171990, 0.983008,
		-0.996253, 0.068285, -0.053067,
		-0.057998, -0.982729, -0.175726,
		38.907238, 31.629225, 42.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334812, 32.100620, 43.230759>,  <38.947834, 32.317135, 42.913319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334812, 32.100620, 43.230759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556583, 31.769819, 43.193512>,  <38.689648, 31.571339, 43.171165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556583, 31.769819, 43.193512>,  <38.334812, 32.100620, 43.230759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556583, 31.769819, 43.193512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084389, -0.167176, 0.982309,
		-0.827939, -0.536766, -0.162478,
		0.554433, -0.827003, -0.093115,
		38.722912, 31.521719, 43.165577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861156, 31.635397, 43.452126>,  <38.334812, 32.100620, 43.230759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861156, 31.635397, 43.452126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235695, 31.498791, 43.484688>,  <38.460419, 31.416826, 43.504227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235695, 31.498791, 43.484688>,  <37.861156, 31.635397, 43.452126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235695, 31.498791, 43.484688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184884, -0.282538, 0.941271,
		-0.298463, -0.896402, -0.327694,
		0.936343, -0.341520, 0.081403,
		38.516598, 31.396336, 43.509109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774628, 31.054470, 43.839500>,  <37.861156, 31.635397, 43.452126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774628, 31.054470, 43.839500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150757, 31.180872, 43.889980>,  <38.376434, 31.256714, 43.920269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150757, 31.180872, 43.889980>,  <37.774628, 31.054470, 43.839500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150757, 31.180872, 43.889980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047653, -0.244933, 0.968368,
		0.336919, -0.916596, -0.215259,
		0.940327, 0.316004, 0.126201,
		38.432854, 31.275673, 43.927841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855808, 30.719616, 44.462811>,  <37.774628, 31.054470, 43.839500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855808, 30.719616, 44.462811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211525, 30.900862, 44.438030>,  <38.424957, 31.009609, 44.423161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211525, 30.900862, 44.438030>,  <37.855808, 30.719616, 44.462811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211525, 30.900862, 44.438030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176644, -0.215376, 0.960422,
		0.421840, -0.865043, -0.271574,
		0.889296, 0.453116, -0.061951,
		38.478313, 31.036797, 44.419445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340889, 30.288637, 44.645603>,  <37.855808, 30.719616, 44.462811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340889, 30.288637, 44.645603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495396, 30.646471, 44.735508>,  <38.588100, 30.861172, 44.789452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495396, 30.646471, 44.735508>,  <38.340889, 30.288637, 44.645603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495396, 30.646471, 44.735508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017414, -0.250707, 0.967907,
		0.922225, -0.369951, -0.112417,
		0.386262, 0.894585, 0.224766,
		38.611275, 30.914846, 44.802937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732933, 30.212667, 45.218445>,  <38.340889, 30.288637, 44.645603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732933, 30.212667, 45.218445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.695774, 30.610395, 45.239231>,  <38.673477, 30.849031, 45.251701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.695774, 30.610395, 45.239231>,  <38.732933, 30.212667, 45.218445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695774, 30.610395, 45.239231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004214, -0.051796, 0.998649,
		0.995666, 0.092995, 0.000622,
		-0.092901, 0.994318, 0.051964,
		38.667904, 30.908691, 45.254822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297310, 30.460602, 45.731247>,  <38.732933, 30.212667, 45.218445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297310, 30.460602, 45.731247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998371, 30.722301, 45.684891>,  <38.819008, 30.879320, 45.657078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998371, 30.722301, 45.684891>,  <39.297310, 30.460602, 45.731247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998371, 30.722301, 45.684891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064313, 0.102366, 0.992665,
		0.661312, 0.749320, -0.034427,
		-0.747349, 0.654248, -0.115887,
		38.774166, 30.918575, 45.650124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.043003, 30.644323, 43.992805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409801, 30.484770, 43.994144>,  <32.629879, 30.389038, 43.994949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409801, 30.484770, 43.994144>,  <32.043003, 30.644323, 43.992805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409801, 30.484770, 43.994144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223372, 0.506514, -0.832796,
		0.330494, 0.764417, 0.553571,
		0.916994, -0.398886, 0.003349,
		32.684898, 30.365105, 43.995148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416077, 31.194370, 43.741726>,  <32.043003, 30.644323, 43.992805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416077, 31.194370, 43.741726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656078, 30.879349, 43.685501>,  <32.800079, 30.690336, 43.651764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.656078, 30.879349, 43.685501>,  <32.416077, 31.194370, 43.741726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656078, 30.879349, 43.685501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327654, 0.402211, -0.854909,
		0.729823, 0.466890, 0.499372,
		0.600001, -0.787553, -0.140564,
		32.836079, 30.643084, 43.643333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147774, 31.400568, 43.668007>,  <32.416077, 31.194370, 43.741726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147774, 31.400568, 43.668007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112720, 31.040575, 43.497196>,  <33.091686, 30.824579, 43.394711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112720, 31.040575, 43.497196>,  <33.147774, 31.400568, 43.668007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112720, 31.040575, 43.497196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368912, 0.368876, -0.853132,
		0.925323, -0.232301, 0.299688,
		-0.087636, -0.899982, -0.427028,
		33.086430, 30.770580, 43.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791912, 31.292587, 43.226574>,  <33.147774, 31.400568, 43.668007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791912, 31.292587, 43.226574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515182, 31.035580, 43.094791>,  <33.349144, 30.881374, 43.015720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515182, 31.035580, 43.094791>,  <33.791912, 31.292587, 43.226574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515182, 31.035580, 43.094791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318549, 0.137882, -0.937825,
		0.647998, -0.753761, 0.109284,
		-0.691828, -0.642520, -0.329458,
		33.307632, 30.842823, 42.995953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183052, 30.739805, 42.741936>,  <33.791912, 31.292587, 43.226574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183052, 30.739805, 42.741936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795765, 30.750040, 42.642414>,  <33.563393, 30.756182, 42.582703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795765, 30.750040, 42.642414>,  <34.183052, 30.739805, 42.741936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795765, 30.750040, 42.642414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249722, 0.043367, -0.967346,
		-0.013965, -0.998731, -0.048379,
		-0.968217, 0.025591, -0.248799,
		33.505299, 30.757717, 42.567776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160988, 30.382780, 42.261425>,  <34.183052, 30.739805, 42.741936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160988, 30.382780, 42.261425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798443, 30.546452, 42.219334>,  <33.580914, 30.644653, 42.194077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798443, 30.546452, 42.219334>,  <34.160988, 30.382780, 42.261425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798443, 30.546452, 42.219334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172172, 0.130262, -0.976416,
		-0.385819, -0.903109, -0.188514,
		-0.906367, 0.409177, -0.105233,
		33.526531, 30.669205, 42.187763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867500, 30.079805, 41.686813>,  <34.160988, 30.382780, 42.261425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867500, 30.079805, 41.686813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651348, 30.412836, 41.735477>,  <33.521656, 30.612654, 41.764675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651348, 30.412836, 41.735477>,  <33.867500, 30.079805, 41.686813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651348, 30.412836, 41.735477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047104, 0.174294, -0.983566,
		-0.840100, -0.525772, -0.133403,
		-0.540383, 0.832578, 0.121658,
		33.489235, 30.662609, 41.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446487, 30.063999, 41.107548>,  <33.867500, 30.079805, 41.686813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446487, 30.063999, 41.107548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425034, 30.436468, 41.251793>,  <33.412159, 30.659948, 41.338341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425034, 30.436468, 41.251793>,  <33.446487, 30.063999, 41.107548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425034, 30.436468, 41.251793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090451, 0.364183, -0.926925,
		-0.994455, -0.017100, -0.103760,
		-0.053638, 0.931171, 0.360617,
		33.408943, 30.715818, 41.359978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922417, 30.297213, 40.770458>,  <33.446487, 30.063999, 41.107548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922417, 30.297213, 40.770458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116158, 30.629204, 40.881119>,  <33.232403, 30.828398, 40.947517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116158, 30.629204, 40.881119>,  <32.922417, 30.297213, 40.770458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116158, 30.629204, 40.881119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070426, 0.352186, -0.933277,
		-0.872031, 0.432555, 0.229035,
		0.484357, 0.829977, 0.276654,
		33.261463, 30.878197, 40.964115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454086, 30.876755, 40.733025>,  <32.922417, 30.297213, 40.770458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454086, 30.876755, 40.733025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813759, 31.048740, 40.700527>,  <33.029564, 31.151932, 40.681030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813759, 31.048740, 40.700527>,  <32.454086, 30.876755, 40.733025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813759, 31.048740, 40.700527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205819, 0.251751, -0.945653,
		-0.386144, 0.867037, 0.314865,
		0.899184, 0.429964, -0.081240,
		33.083515, 31.177729, 40.676155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341072, 31.590450, 40.385929>,  <32.454086, 30.876755, 40.733025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341072, 31.590450, 40.385929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731621, 31.526823, 40.327423>,  <32.965950, 31.488647, 40.292320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731621, 31.526823, 40.327423>,  <32.341072, 31.590450, 40.385929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731621, 31.526823, 40.327423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074289, 0.388543, -0.918431,
		0.202925, 0.907596, 0.367546,
		0.976372, -0.159068, -0.146269,
		33.024532, 31.479103, 40.283543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526535, 32.107147, 40.049877>,  <32.341072, 31.590450, 40.385929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526535, 32.107147, 40.049877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847691, 31.883188, 39.968014>,  <33.040382, 31.748814, 39.918896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847691, 31.883188, 39.968014>,  <32.526535, 32.107147, 40.049877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847691, 31.883188, 39.968014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038209, 0.390948, -0.919619,
		0.594903, 0.730532, 0.335281,
		0.802889, -0.559895, -0.204663,
		33.088558, 31.715219, 39.906616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037586, 32.628780, 39.803547>,  <32.526535, 32.107147, 40.049877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037586, 32.628780, 39.803547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129475, 32.268841, 39.655220>,  <33.184608, 32.052876, 39.566223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129475, 32.268841, 39.655220>,  <33.037586, 32.628780, 39.803547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129475, 32.268841, 39.655220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059829, 0.393339, -0.917445,
		0.971416, 0.188568, 0.144194,
		0.229718, -0.899848, -0.370814,
		33.198391, 31.998886, 39.543976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507973, 32.699577, 39.217491>,  <33.037586, 32.628780, 39.803547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507973, 32.699577, 39.217491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348640, 32.336658, 39.163616>,  <33.253040, 32.118908, 39.131290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348640, 32.336658, 39.163616>,  <33.507973, 32.699577, 39.217491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348640, 32.336658, 39.163616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023901, 0.157060, -0.987300,
		0.916932, -0.390049, -0.084246,
		-0.398328, -0.907300, -0.134691,
		33.229141, 32.064468, 39.123207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245625, 32.830956, 39.394894>,  <33.507973, 32.699577, 39.217491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245625, 32.830956, 39.394894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493992, 33.144291, 39.406551>,  <34.643013, 33.332291, 39.413548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493992, 33.144291, 39.406551>,  <34.245625, 32.830956, 39.394894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493992, 33.144291, 39.406551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024431, -0.017826, 0.999543,
		0.783496, -0.621344, 0.008069,
		0.620916, 0.783335, 0.029147,
		34.680267, 33.379292, 39.415295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820213, 32.594036, 39.879715>,  <34.245625, 32.830956, 39.394894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820213, 32.594036, 39.879715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818932, 32.993500, 39.859043>,  <34.818161, 33.233177, 39.846638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818932, 32.993500, 39.859043>,  <34.820213, 32.594036, 39.879715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818932, 32.993500, 39.859043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001080, 0.051686, 0.998663,
		0.999994, 0.003147, -0.001245,
		-0.003207, 0.998658, -0.051682,
		34.817970, 33.293098, 39.843540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357277, 32.935459, 40.319080>,  <34.820213, 32.594036, 39.879715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357277, 32.935459, 40.319080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063622, 33.204483, 40.281757>,  <34.887428, 33.365898, 40.259365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063622, 33.204483, 40.281757>,  <35.357277, 32.935459, 40.319080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063622, 33.204483, 40.281757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047724, 0.188182, 0.980974,
		0.677321, 0.715717, -0.170248,
		-0.734138, 0.672559, -0.093303,
		34.843380, 33.406250, 40.253765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574543, 33.410900, 40.818489>,  <35.357277, 32.935459, 40.319080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574543, 33.410900, 40.818489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191025, 33.489079, 40.736019>,  <34.960915, 33.535988, 40.686539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191025, 33.489079, 40.736019>,  <35.574543, 33.410900, 40.818489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191025, 33.489079, 40.736019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156021, 0.244216, 0.957087,
		0.237414, 0.949820, -0.203660,
		-0.958797, 0.195451, -0.206172,
		34.903385, 33.547714, 40.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396832, 34.035854, 41.113037>,  <35.574543, 33.410900, 40.818489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396832, 34.035854, 41.113037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032215, 33.878929, 41.063755>,  <34.813446, 33.784775, 41.034184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032215, 33.878929, 41.063755>,  <35.396832, 34.035854, 41.113037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032215, 33.878929, 41.063755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262957, 0.325772, 0.908144,
		-0.316141, 0.860210, -0.400117,
		-0.911542, -0.392315, -0.123209,
		34.758751, 33.761234, 41.026791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922226, 34.502277, 41.432003>,  <35.396832, 34.035854, 41.113037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922226, 34.502277, 41.432003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724834, 34.154484, 41.423267>,  <34.606400, 33.945808, 41.418026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724834, 34.154484, 41.423267>,  <34.922226, 34.502277, 41.432003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724834, 34.154484, 41.423267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345605, 0.172982, 0.922298,
		-0.798144, 0.462684, -0.385861,
		-0.493480, -0.869483, -0.021842,
		34.576790, 33.893639, 41.416714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315128, 34.660828, 41.691006>,  <34.922226, 34.502277, 41.432003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315128, 34.660828, 41.691006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302086, 34.261082, 41.696812>,  <34.294262, 34.021236, 41.700294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302086, 34.261082, 41.696812>,  <34.315128, 34.660828, 41.691006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302086, 34.261082, 41.696812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276813, 0.022988, 0.960649,
		-0.960371, 0.027304, -0.277386,
		-0.032606, -0.999363, 0.014519,
		34.292305, 33.961273, 41.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753181, 34.533070, 42.022125>,  <34.315128, 34.660828, 41.691006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753181, 34.533070, 42.022125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.949203, 34.185299, 42.047226>,  <34.066818, 33.976635, 42.062286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.949203, 34.185299, 42.047226>,  <33.753181, 34.533070, 42.022125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949203, 34.185299, 42.047226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302475, -0.102088, 0.947675,
		-0.817529, -0.483396, -0.313010,
		0.490056, -0.869429, 0.062755,
		34.096222, 33.924469, 42.066051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220734, 34.141697, 42.248714>,  <33.753181, 34.533070, 42.022125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220734, 34.141697, 42.248714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575802, 33.974499, 42.325985>,  <33.788845, 33.874180, 42.372349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575802, 33.974499, 42.325985>,  <33.220734, 34.141697, 42.248714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575802, 33.974499, 42.325985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248728, -0.082193, 0.965080,
		-0.387518, -0.904724, -0.176927,
		0.887673, -0.417992, 0.193179,
		33.842102, 33.849102, 42.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192822, 33.590195, 42.722286>,  <33.220734, 34.141697, 42.248714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192822, 33.590195, 42.722286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572689, 33.714371, 42.739021>,  <33.800610, 33.788876, 42.749062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572689, 33.714371, 42.739021>,  <33.192822, 33.590195, 42.722286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572689, 33.714371, 42.739021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040359, -0.253723, 0.966435,
		0.310633, -0.916108, -0.253482,
		0.949672, 0.310437, 0.041841,
		33.857590, 33.807503, 42.751575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480488, 33.088478, 43.239906>,  <33.192822, 33.590195, 42.722286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480488, 33.088478, 43.239906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762959, 33.368572, 43.197994>,  <33.932442, 33.536629, 43.172848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762959, 33.368572, 43.197994>,  <33.480488, 33.088478, 43.239906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762959, 33.368572, 43.197994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175070, -0.029293, 0.984120,
		0.686049, -0.713308, -0.143277,
		0.706178, 0.700239, -0.104782,
		33.974812, 33.578644, 43.166561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088951, 32.829372, 43.642647>,  <33.480488, 33.088478, 43.239906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088951, 32.829372, 43.642647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103870, 33.229012, 43.634468>,  <34.112820, 33.468796, 43.629562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103870, 33.229012, 43.634468>,  <34.088951, 32.829372, 43.642647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103870, 33.229012, 43.634468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121594, 0.015773, 0.992455,
		0.991879, -0.039500, -0.120895,
		0.037295, 0.999095, -0.020448,
		34.115059, 33.528740, 43.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711395, 33.065903, 44.030598>,  <34.088951, 32.829372, 43.642647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711395, 33.065903, 44.030598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412971, 33.332241, 44.027874>,  <34.233917, 33.492043, 44.026241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412971, 33.332241, 44.027874>,  <34.711395, 33.065903, 44.030598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412971, 33.332241, 44.027874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071440, -0.069872, 0.994995,
		0.662038, 0.742810, 0.099697,
		-0.746058, 0.665846, -0.006808,
		34.189156, 33.531994, 44.025833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833019, 33.398308, 44.639904>,  <34.711395, 33.065903, 44.030598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833019, 33.398308, 44.639904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457424, 33.487534, 44.535175>,  <34.232067, 33.541069, 44.472336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457424, 33.487534, 44.535175>,  <34.833019, 33.398308, 44.639904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457424, 33.487534, 44.535175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290711, -0.107825, 0.950716,
		0.183839, 0.968822, 0.166094,
		-0.938983, 0.223064, -0.261825,
		34.175728, 33.554451, 44.456627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279808, 33.942280, 44.725533>,  <34.833019, 33.398308, 44.639904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279808, 33.942280, 44.725533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616432, 33.890484, 44.935299>,  <35.818405, 33.859406, 45.061161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.616432, 33.890484, 44.935299>,  <35.279808, 33.942280, 44.725533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616432, 33.890484, 44.935299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525230, 0.422914, -0.738429,
		-0.126162, 0.896870, 0.423920,
		0.841556, -0.129494, 0.524418,
		35.868900, 33.851635, 45.092625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559116, 34.549137, 44.765141>,  <35.279808, 33.942280, 44.725533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559116, 34.549137, 44.765141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847496, 34.280415, 44.833153>,  <36.020523, 34.119183, 44.873959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847496, 34.280415, 44.833153>,  <35.559116, 34.549137, 44.765141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847496, 34.280415, 44.833153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622274, 0.519626, -0.585461,
		0.304964, 0.527892, 0.792671,
		0.720952, -0.671803, 0.170027,
		36.063782, 34.078873, 44.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223946, 34.978237, 44.986870>,  <35.559116, 34.549137, 44.765141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223946, 34.978237, 44.986870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288433, 34.627907, 44.804909>,  <36.327126, 34.417709, 44.695732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.288433, 34.627907, 44.804909>,  <36.223946, 34.978237, 44.986870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288433, 34.627907, 44.804909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732114, 0.415230, -0.539994,
		0.661830, -0.245982, 0.708148,
		0.161215, -0.875829, -0.454898,
		36.336796, 34.365158, 44.668438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965511, 35.055748, 44.750603>,  <36.223946, 34.978237, 44.986870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965511, 35.055748, 44.750603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844311, 34.731556, 44.550079>,  <36.771591, 34.537041, 44.429764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844311, 34.731556, 44.550079>,  <36.965511, 35.055748, 44.750603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844311, 34.731556, 44.550079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628218, 0.225689, -0.744585,
		0.716611, -0.540545, 0.440773,
		-0.303004, -0.810479, -0.501311,
		36.753410, 34.488411, 44.399685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568363, 34.848789, 44.336010>,  <36.965511, 35.055748, 44.750603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568363, 34.848789, 44.336010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255596, 34.666847, 44.165497>,  <37.067936, 34.557682, 44.063190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255596, 34.666847, 44.165497>,  <37.568363, 34.848789, 44.336010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255596, 34.666847, 44.165497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400532, 0.157417, -0.902659,
		0.477687, -0.876540, 0.059099,
		-0.781914, -0.454860, -0.426278,
		37.021023, 34.530388, 44.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862976, 34.463776, 43.780357>,  <37.568363, 34.848789, 44.336010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862976, 34.463776, 43.780357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478336, 34.521950, 43.687252>,  <37.247555, 34.556854, 43.631390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478336, 34.521950, 43.687252>,  <37.862976, 34.463776, 43.780357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478336, 34.521950, 43.687252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270641, 0.361384, -0.892275,
		-0.045647, -0.921005, -0.386866,
		-0.961598, 0.145432, -0.232765,
		37.189857, 34.565578, 43.617424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722427, 34.137321, 43.100296>,  <37.862976, 34.463776, 43.780357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722427, 34.137321, 43.100296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446949, 34.421886, 43.156265>,  <37.281662, 34.592625, 43.189846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446949, 34.421886, 43.156265>,  <37.722427, 34.137321, 43.100296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446949, 34.421886, 43.156265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179209, 0.354021, -0.917907,
		-0.702549, -0.607088, -0.371307,
		-0.688701, 0.711416, 0.139922,
		37.240337, 34.635311, 43.198242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209885, 34.008007, 42.573738>,  <37.722427, 34.137321, 43.100296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209885, 34.008007, 42.573738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135246, 34.389751, 42.667019>,  <37.090462, 34.618797, 42.722988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135246, 34.389751, 42.667019>,  <37.209885, 34.008007, 42.573738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135246, 34.389751, 42.667019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066443, 0.249084, -0.966200,
		-0.980187, -0.164794, -0.109888,
		-0.186596, 0.954359, 0.233200,
		37.079269, 34.676060, 42.736980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803833, 34.276920, 42.036266>,  <37.209885, 34.008007, 42.573738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803833, 34.276920, 42.036266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931820, 34.617268, 42.202950>,  <37.008610, 34.821476, 42.302959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.931820, 34.617268, 42.202950>,  <36.803833, 34.276920, 42.036266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931820, 34.617268, 42.202950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177964, 0.378020, -0.908531,
		-0.930565, 0.364856, -0.030471,
		0.319964, 0.850871, 0.416704,
		37.027809, 34.872528, 42.327961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485050, 34.735538, 41.692951>,  <36.803833, 34.276920, 42.036266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485050, 34.735538, 41.692951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792542, 34.933922, 41.854488>,  <36.977036, 35.052952, 41.951412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792542, 34.933922, 41.854488>,  <36.485050, 34.735538, 41.692951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792542, 34.933922, 41.854488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191144, 0.424414, -0.885063,
		-0.610347, 0.757564, 0.231460,
		0.768726, 0.495954, 0.403844,
		37.023159, 35.082706, 41.975643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360786, 35.394642, 41.512653>,  <36.485050, 34.735538, 41.692951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360786, 35.394642, 41.512653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754890, 35.382576, 41.580009>,  <36.991352, 35.375336, 41.620422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754890, 35.382576, 41.580009>,  <36.360786, 35.394642, 41.512653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754890, 35.382576, 41.580009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164067, 0.445306, -0.880219,
		-0.048431, 0.894870, 0.443691,
		0.985260, -0.030165, 0.168386,
		37.050468, 35.373528, 41.630524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638298, 36.022198, 41.213806>,  <36.360786, 35.394642, 41.512653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638298, 36.022198, 41.213806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972397, 35.804077, 41.242107>,  <37.172855, 35.673206, 41.259087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972397, 35.804077, 41.242107>,  <36.638298, 36.022198, 41.213806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972397, 35.804077, 41.242107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293833, 0.333856, -0.895658,
		0.464783, 0.768886, 0.439080,
		0.835248, -0.545303, 0.070753,
		37.222973, 35.640488, 41.263332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305176, 36.462238, 41.115234>,  <36.638298, 36.022198, 41.213806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305176, 36.462238, 41.115234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409737, 36.086380, 41.026928>,  <37.472473, 35.860867, 40.973942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409737, 36.086380, 41.026928>,  <37.305176, 36.462238, 41.115234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409737, 36.086380, 41.026928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519841, 0.329767, -0.788048,
		0.813287, 0.091232, 0.574667,
		0.261401, -0.939644, -0.220769,
		37.488155, 35.804485, 40.960697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039242, 36.403347, 40.924068>,  <37.305176, 36.462238, 41.115234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039242, 36.403347, 40.924068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897648, 36.054108, 40.789963>,  <37.812691, 35.844566, 40.709499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.897648, 36.054108, 40.789963>,  <38.039242, 36.403347, 40.924068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897648, 36.054108, 40.789963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476402, 0.140151, -0.867986,
		0.804821, -0.466973, 0.366333,
		-0.353983, -0.873095, -0.335264,
		37.791454, 35.792179, 40.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.497398, 26.238848, 33.911400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602671, 26.514166, 33.640999>,  <25.665834, 26.679358, 33.478756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602671, 26.514166, 33.640999>,  <25.497398, 26.238848, 33.911400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602671, 26.514166, 33.640999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690981, 0.623483, 0.365807,
		0.673262, 0.370836, 0.639687,
		0.263180, 0.688295, -0.676008,
		25.681625, 26.720655, 33.438198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945456, 26.513964, 33.377575>,  <25.497398, 26.238848, 33.911400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945456, 26.513964, 33.377575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.811197, 26.540291, 33.753448>,  <24.730642, 26.556087, 33.978973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.811197, 26.540291, 33.753448>,  <24.945456, 26.513964, 33.377575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811197, 26.540291, 33.753448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240469, 0.970491, 0.017918,
		-0.910778, 0.231979, -0.341569,
		-0.335646, 0.065817, 0.939686,
		24.710503, 26.560036, 34.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447721, 27.112400, 33.446671>,  <24.945456, 26.513964, 33.377575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447721, 27.112400, 33.446671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.554699, 27.048002, 33.826683>,  <24.618885, 27.009363, 34.054691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.554699, 27.048002, 33.826683>,  <24.447721, 27.112400, 33.446671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554699, 27.048002, 33.826683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092991, 0.977029, 0.191750,
		-0.959076, -0.139626, 0.246328,
		0.267443, -0.160996, 0.950029,
		24.634932, 26.999702, 34.111691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.092901, 27.498285, 33.837845>,  <24.447721, 27.112400, 33.446671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.092901, 27.498285, 33.837845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.382404, 27.424259, 34.103756>,  <24.556107, 27.379843, 34.263302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.382404, 27.424259, 34.103756>,  <24.092901, 27.498285, 33.837845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382404, 27.424259, 34.103756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027887, 0.954734, 0.296150,
		-0.689491, -0.232879, 0.685835,
		0.723758, -0.185067, 0.664775,
		24.599531, 27.368740, 34.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906149, 27.844719, 34.541668>,  <24.092901, 27.498285, 33.837845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906149, 27.844719, 34.541668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.301077, 27.787580, 34.513966>,  <24.538033, 27.753298, 34.497345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.301077, 27.787580, 34.513966>,  <23.906149, 27.844719, 34.541668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301077, 27.787580, 34.513966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158228, 0.920879, 0.356294,
		0.012882, -0.362735, 0.931804,
		0.987319, -0.142848, -0.069257,
		24.597273, 27.744726, 34.493187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225466, 28.068407, 35.158245>,  <23.906149, 27.844719, 34.541668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225466, 28.068407, 35.158245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.538393, 28.057961, 34.909313>,  <24.726149, 28.051693, 34.759953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.538393, 28.057961, 34.909313>,  <24.225466, 28.068407, 35.158245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538393, 28.057961, 34.909313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259786, 0.921754, 0.287890,
		0.566120, -0.386894, 0.727888,
		0.782317, -0.026115, -0.622333,
		24.773088, 28.050127, 34.722614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843981, 28.339142, 35.494839>,  <24.225466, 28.068407, 35.158245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843981, 28.339142, 35.494839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877220, 28.394077, 35.100025>,  <24.897163, 28.427038, 34.863136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877220, 28.394077, 35.100025>,  <24.843981, 28.339142, 35.494839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877220, 28.394077, 35.100025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233784, 0.960130, 0.153279,
		0.968731, -0.243490, 0.047676,
		0.083097, 0.137340, -0.987032,
		24.902149, 28.435280, 34.803917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304008, 28.835516, 35.458645>,  <24.843981, 28.339142, 35.494839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304008, 28.835516, 35.458645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171194, 28.860497, 35.082165>,  <25.091505, 28.875484, 34.856277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171194, 28.860497, 35.082165>,  <25.304008, 28.835516, 35.458645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171194, 28.860497, 35.082165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048425, 0.997619, 0.049114,
		0.942023, -0.029270, -0.334270,
		-0.332037, 0.062453, -0.941197,
		25.071583, 28.879232, 34.799805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765745, 29.351784, 35.138309>,  <25.304008, 28.835516, 35.458645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765745, 29.351784, 35.138309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445475, 29.337326, 34.899109>,  <25.253311, 29.328651, 34.755589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445475, 29.337326, 34.899109>,  <25.765745, 29.351784, 35.138309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445475, 29.337326, 34.899109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104955, 0.974278, -0.199415,
		0.589830, -0.222431, -0.776289,
		-0.800678, -0.036146, -0.598004,
		25.205271, 29.326483, 34.719707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937887, 29.569490, 34.420067>,  <25.765745, 29.351784, 35.138309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937887, 29.569490, 34.420067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551979, 29.628519, 34.507195>,  <25.320435, 29.663937, 34.559471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.551979, 29.628519, 34.507195>,  <25.937887, 29.569490, 34.420067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551979, 29.628519, 34.507195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106687, 0.976199, -0.188820,
		-0.240500, -0.158928, -0.957550,
		-0.964768, 0.147570, 0.217820,
		25.262548, 29.672791, 34.572540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728182, 29.946932, 33.920979>,  <25.937887, 29.569490, 34.420067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728182, 29.946932, 33.920979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455359, 29.999590, 34.208721>,  <25.291664, 30.031185, 34.381367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455359, 29.999590, 34.208721>,  <25.728182, 29.946932, 33.920979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455359, 29.999590, 34.208721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047271, 0.989543, -0.136274,
		-0.729770, -0.058942, -0.681147,
		-0.682057, 0.131647, 0.719353,
		25.250742, 30.039083, 34.424526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347649, 30.280962, 33.533169>,  <25.728182, 29.946932, 33.920979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347649, 30.280962, 33.533169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236094, 30.359901, 33.909100>,  <25.169161, 30.407265, 34.134659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.236094, 30.359901, 33.909100>,  <25.347649, 30.280962, 33.533169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236094, 30.359901, 33.909100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314133, 0.906069, -0.283477,
		-0.907492, -0.374289, -0.190700,
		-0.278890, 0.197348, 0.939827,
		25.152426, 30.419106, 34.191048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806164, 30.788895, 33.530540>,  <25.347649, 30.280962, 33.533169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806164, 30.788895, 33.530540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.928280, 30.808813, 33.910923>,  <25.001549, 30.820765, 34.139153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.928280, 30.808813, 33.910923>,  <24.806164, 30.788895, 33.530540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928280, 30.808813, 33.910923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027793, 0.998672, -0.043374,
		-0.951854, -0.013189, 0.306267,
		0.305288, 0.049798, 0.950957,
		25.019867, 30.823751, 34.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362005, 31.345167, 33.877335>,  <24.806164, 30.788895, 33.530540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362005, 31.345167, 33.877335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.694626, 31.305403, 34.095928>,  <24.894197, 31.281544, 34.227085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.694626, 31.305403, 34.095928>,  <24.362005, 31.345167, 33.877335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694626, 31.305403, 34.095928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105114, 0.994240, 0.020918,
		-0.545414, 0.040049, 0.837209,
		0.831550, -0.099412, 0.546482,
		24.944090, 31.275579, 34.259872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237822, 31.667715, 34.428886>,  <24.362005, 31.345167, 33.877335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237822, 31.667715, 34.428886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.636345, 31.644394, 34.403683>,  <24.875460, 31.630402, 34.388561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.636345, 31.644394, 34.403683>,  <24.237822, 31.667715, 34.428886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636345, 31.644394, 34.403683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068209, 0.983308, 0.168679,
		0.052120, -0.172354, 0.983655,
		0.996309, -0.058303, -0.063006,
		24.935238, 31.626904, 34.384781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521727, 32.031010, 35.080170>,  <24.237822, 31.667715, 34.428886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521727, 32.031010, 35.080170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.842510, 32.010334, 34.842113>,  <25.034981, 31.997929, 34.699280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.842510, 32.010334, 34.842113>,  <24.521727, 32.031010, 35.080170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842510, 32.010334, 34.842113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259152, 0.927727, 0.268633,
		0.538239, -0.369664, 0.757395,
		0.801960, -0.051691, -0.595138,
		25.083097, 31.994827, 34.663570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160919, 32.101620, 35.462177>,  <24.521727, 32.031010, 35.080170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160919, 32.101620, 35.462177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.210899, 32.223289, 35.084423>,  <25.240887, 32.296291, 34.857769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.210899, 32.223289, 35.084423>,  <25.160919, 32.101620, 35.462177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210899, 32.223289, 35.084423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308226, 0.892850, 0.328353,
		0.943072, -0.332112, 0.017807,
		0.124949, 0.304172, -0.944387,
		25.248384, 32.314541, 34.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831013, 32.448547, 35.482334>,  <25.160919, 32.101620, 35.462177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831013, 32.448547, 35.482334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617111, 32.578587, 35.170349>,  <25.488770, 32.656609, 34.983158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617111, 32.578587, 35.170349>,  <25.831013, 32.448547, 35.482334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617111, 32.578587, 35.170349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249999, 0.942576, 0.221474,
		0.807178, -0.076556, -0.585323,
		-0.534756, 0.325099, -0.779966,
		25.456684, 32.676117, 34.936359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228239, 32.897896, 35.141224>,  <25.831013, 32.448547, 35.482334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228239, 32.897896, 35.141224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885201, 33.009384, 34.968323>,  <25.679377, 33.076279, 34.864582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.885201, 33.009384, 34.968323>,  <26.228239, 32.897896, 35.141224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885201, 33.009384, 34.968323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215838, 0.957879, 0.189425,
		0.466844, 0.069154, -0.881632,
		-0.857596, 0.278721, -0.432254,
		25.627922, 33.093002, 34.838646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404644, 33.384369, 34.665154>,  <26.228239, 32.897896, 35.141224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404644, 33.384369, 34.665154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.027969, 33.437050, 34.789013>,  <25.801966, 33.468658, 34.863331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.027969, 33.437050, 34.789013>,  <26.404644, 33.384369, 34.665154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027969, 33.437050, 34.789013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242243, 0.904045, 0.352168,
		-0.233557, 0.406642, -0.883229,
		-0.941684, 0.131704, 0.309652,
		25.745464, 33.476562, 34.881908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727396, 34.059288, 35.001690>,  <26.404644, 33.384369, 34.665154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727396, 34.059288, 35.001690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119625, 34.104092, 35.066105>,  <27.354963, 34.130974, 35.104755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.119625, 34.104092, 35.066105>,  <26.727396, 34.059288, 35.001690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119625, 34.104092, 35.066105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128203, -0.987289, -0.093937,
		0.148468, 0.112757, -0.982468,
		0.980572, 0.112009, 0.161036,
		27.413797, 34.137695, 35.114414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137598, 33.690182, 34.415726>,  <26.727396, 34.059288, 35.001690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137598, 33.690182, 34.415726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378529, 33.717155, 34.733883>,  <27.523087, 33.733341, 34.924778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378529, 33.717155, 34.733883>,  <27.137598, 33.690182, 34.415726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378529, 33.717155, 34.733883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225898, -0.970094, -0.088813,
		0.765621, 0.233173, -0.599545,
		0.602324, 0.067439, 0.795398,
		27.559225, 33.737389, 34.972504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762535, 33.342251, 34.149620>,  <27.137598, 33.690182, 34.415726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762535, 33.342251, 34.149620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751905, 33.329849, 34.549286>,  <27.745527, 33.322407, 34.789085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751905, 33.329849, 34.549286>,  <27.762535, 33.342251, 34.149620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751905, 33.329849, 34.549286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127779, -0.991425, -0.027365,
		0.991446, 0.126945, 0.030309,
		-0.026575, -0.031004, 0.999166,
		27.743933, 33.320549, 34.849037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320158, 32.958012, 34.260540>,  <27.762535, 33.342251, 34.149620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320158, 32.958012, 34.260540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123865, 32.935257, 34.608318>,  <28.006088, 32.921604, 34.816986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123865, 32.935257, 34.608318>,  <28.320158, 32.958012, 34.260540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123865, 32.935257, 34.608318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094243, -0.995478, -0.011942,
		0.866198, 0.076079, 0.493876,
		-0.490734, -0.056888, 0.869450,
		27.976645, 32.918190, 34.869152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610432, 32.474308, 34.569374>,  <28.320158, 32.958012, 34.260540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610432, 32.474308, 34.569374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242491, 32.479504, 34.726196>,  <28.021727, 32.482620, 34.820290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242491, 32.479504, 34.726196>,  <28.610432, 32.474308, 34.569374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242491, 32.479504, 34.726196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040178, -0.997314, -0.061233,
		0.390203, -0.072077, 0.917903,
		-0.919852, 0.012986, 0.392051,
		27.966536, 32.483398, 34.843811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696644, 32.033119, 35.053780>,  <28.610432, 32.474308, 34.569374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696644, 32.033119, 35.053780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299046, 32.060402, 35.019562>,  <28.060486, 32.076771, 34.999031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299046, 32.060402, 35.019562>,  <28.696644, 32.033119, 35.053780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299046, 32.060402, 35.019562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057345, -0.990678, -0.123570,
		-0.093171, -0.117923, 0.988642,
		-0.993997, 0.068207, -0.085541,
		28.000847, 32.080864, 34.993900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384142, 31.478357, 35.493229>,  <28.696644, 32.033119, 35.053780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384142, 31.478357, 35.493229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078245, 31.592081, 35.261940>,  <27.894707, 31.660315, 35.123165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078245, 31.592081, 35.261940>,  <28.384142, 31.478357, 35.493229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078245, 31.592081, 35.261940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288400, -0.953512, -0.087409,
		-0.576194, 0.099914, 0.811184,
		-0.764740, 0.284310, -0.578222,
		27.848824, 31.677374, 35.088474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820616, 31.136843, 35.749271>,  <28.384142, 31.478357, 35.493229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820616, 31.136843, 35.749271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739704, 31.236732, 35.370491>,  <27.691156, 31.296667, 35.143223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739704, 31.236732, 35.370491>,  <27.820616, 31.136843, 35.749271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739704, 31.236732, 35.370491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234546, -0.951154, -0.200733,
		-0.950818, 0.181489, 0.251011,
		-0.202320, 0.249734, -0.946942,
		27.679020, 31.311649, 35.086407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210861, 30.876518, 35.642380>,  <27.820616, 31.136843, 35.749271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210861, 30.876518, 35.642380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363651, 30.940529, 35.278294>,  <27.455326, 30.978935, 35.059841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363651, 30.940529, 35.278294>,  <27.210861, 30.876518, 35.642380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363651, 30.940529, 35.278294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253968, -0.928799, -0.269875,
		-0.888591, 0.334251, -0.314137,
		0.381976, 0.160028, -0.910212,
		27.478245, 30.988537, 35.005230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752855, 30.619240, 35.170685>,  <27.210861, 30.876518, 35.642380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752855, 30.619240, 35.170685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.090223, 30.627640, 34.955944>,  <27.292645, 30.632681, 34.827099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.090223, 30.627640, 34.955944>,  <26.752855, 30.619240, 35.170685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090223, 30.627640, 34.955944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195718, -0.918563, -0.343418,
		-0.500341, 0.394715, -0.770622,
		0.843418, 0.021001, -0.536847,
		27.343248, 30.633940, 34.794891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664288, 30.324673, 34.536621>,  <26.752855, 30.619240, 35.170685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664288, 30.324673, 34.536621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059303, 30.274767, 34.574997>,  <27.296312, 30.244823, 34.598022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059303, 30.274767, 34.574997>,  <26.664288, 30.324673, 34.536621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059303, 30.274767, 34.574997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095514, -0.959584, -0.264718,
		0.125086, 0.252256, -0.959542,
		0.987538, -0.124763, 0.095936,
		27.355564, 30.237339, 34.603779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016750, 30.052256, 33.805000>,  <26.664288, 30.324673, 34.536621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016750, 30.052256, 33.805000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243765, 29.930876, 34.111156>,  <27.379974, 29.858047, 34.294849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243765, 29.930876, 34.111156>,  <27.016750, 30.052256, 33.805000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243765, 29.930876, 34.111156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152830, -0.952276, -0.264222,
		0.809040, 0.032981, -0.586827,
		0.567536, -0.303451, 0.765389,
		27.414026, 29.839840, 34.340775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072989, 29.422403, 33.765705>,  <27.016750, 30.052256, 33.805000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072989, 29.422403, 33.765705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258017, 29.392405, 34.119068>,  <27.369034, 29.374405, 34.331085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258017, 29.392405, 34.119068>,  <27.072989, 29.422403, 33.765705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258017, 29.392405, 34.119068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098617, -0.985880, -0.135335,
		0.881082, 0.149720, -0.448640,
		0.462568, -0.074998, 0.883406,
		27.396788, 29.369905, 34.384090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797190, 29.123569, 33.693188>,  <27.072989, 29.422403, 33.765705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797190, 29.123569, 33.693188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699715, 29.037355, 34.071426>,  <27.641230, 28.985626, 34.298370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699715, 29.037355, 34.071426>,  <27.797190, 29.123569, 33.693188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699715, 29.037355, 34.071426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080855, -0.976114, -0.201655,
		0.966478, 0.027317, 0.255292,
		-0.243685, -0.215537, 0.945601,
		27.626610, 28.972694, 34.355106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320808, 28.645525, 33.893654>,  <27.797190, 29.123569, 33.693188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320808, 28.645525, 33.893654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002237, 28.582962, 34.127316>,  <27.811094, 28.545424, 34.267513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.002237, 28.582962, 34.127316>,  <28.320808, 28.645525, 33.893654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002237, 28.582962, 34.127316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166148, -0.985395, -0.037315,
		0.581459, 0.067337, 0.810784,
		-0.796430, -0.156408, 0.584154,
		27.763308, 28.536039, 34.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516132, 28.200493, 34.333458>,  <28.320808, 28.645525, 33.893654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516132, 28.200493, 34.333458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117273, 28.176231, 34.351414>,  <27.877958, 28.161674, 34.362186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117273, 28.176231, 34.351414>,  <28.516132, 28.200493, 34.333458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117273, 28.176231, 34.351414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057566, -0.996081, -0.067151,
		0.048787, -0.064376, 0.996733,
		-0.997149, -0.060654, 0.044890,
		27.818129, 28.158035, 34.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339331, 27.591513, 34.845165>,  <28.516132, 28.200493, 34.333458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339331, 27.591513, 34.845165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001303, 27.636320, 34.636047>,  <27.798487, 27.663204, 34.510578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001303, 27.636320, 34.636047>,  <28.339331, 27.591513, 34.845165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001303, 27.636320, 34.636047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076040, -0.993047, -0.089863,
		-0.529221, -0.036187, 0.847712,
		-0.845070, 0.112017, -0.522790,
		27.747782, 27.669926, 34.479210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809311, 27.159330, 35.072041>,  <28.339331, 27.591513, 34.845165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809311, 27.159330, 35.072041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665453, 27.252264, 34.710560>,  <27.579138, 27.308023, 34.493671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665453, 27.252264, 34.710560>,  <27.809311, 27.159330, 35.072041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665453, 27.252264, 34.710560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042402, -0.971574, -0.232907,
		-0.932125, -0.045445, 0.359273,
		-0.359644, 0.232332, -0.903702,
		27.557560, 27.321964, 34.439449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302219, 26.660061, 34.981735>,  <27.809311, 27.159330, 35.072041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302219, 26.660061, 34.981735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384911, 26.766846, 34.605225>,  <27.434526, 26.830917, 34.379318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384911, 26.766846, 34.605225>,  <27.302219, 26.660061, 34.981735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384911, 26.766846, 34.605225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034538, -0.959463, -0.279708,
		-0.977788, 0.090333, -0.189129,
		0.206729, 0.266963, -0.941272,
		27.446930, 26.846935, 34.322842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937840, 26.233030, 34.649059>,  <27.302219, 26.660061, 34.981735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937840, 26.233030, 34.649059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.184687, 26.364176, 34.362934>,  <27.332794, 26.442863, 34.191257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.184687, 26.364176, 34.362934>,  <26.937840, 26.233030, 34.649059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184687, 26.364176, 34.362934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122113, -0.858141, -0.498681,
		-0.777339, 0.395093, -0.489535,
		0.617116, 0.327865, -0.715313,
		27.369822, 26.462536, 34.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597601, 26.052244, 34.166817>,  <26.937840, 26.233030, 34.649059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597601, 26.052244, 34.166817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980314, 26.093147, 34.057922>,  <27.209942, 26.117689, 33.992584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980314, 26.093147, 34.057922>,  <26.597601, 26.052244, 34.166817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980314, 26.093147, 34.057922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051541, -0.861692, -0.504807,
		-0.286202, 0.497022, -0.819181,
		0.956782, 0.102255, -0.272235,
		27.267349, 26.123823, 33.976254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579777, 25.894358, 33.441715>,  <26.597601, 26.052244, 34.166817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579777, 25.894358, 33.441715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951763, 25.823990, 33.570843>,  <27.174955, 25.781769, 33.648319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951763, 25.823990, 33.570843>,  <26.579777, 25.894358, 33.441715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951763, 25.823990, 33.570843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118167, -0.974519, -0.190653,
		0.348132, 0.139155, -0.927060,
		0.929968, -0.175920, 0.322818,
		27.230753, 25.771214, 33.667686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.604015, 31.308706, 46.080032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205452, 31.274855, 46.081490>,  <38.966316, 31.254543, 46.082363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205452, 31.274855, 46.081490>,  <39.604015, 31.308706, 46.080032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205452, 31.274855, 46.081490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030960, 0.403876, 0.914290,
		-0.078849, 0.910891, -0.405044,
		-0.996406, -0.084631, 0.003644,
		38.906528, 31.249466, 46.082584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316338, 31.986725, 46.420528>,  <39.604015, 31.308706, 46.080032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316338, 31.986725, 46.420528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044876, 31.696695, 46.467346>,  <38.882000, 31.522676, 46.495438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.044876, 31.696695, 46.467346>,  <39.316338, 31.986725, 46.420528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044876, 31.696695, 46.467346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142806, 0.286590, 0.947350,
		-0.720445, 0.626204, -0.298039,
		-0.678649, -0.725076, 0.117047,
		38.841282, 31.479172, 46.502460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950474, 32.234646, 46.968685>,  <39.316338, 31.986725, 46.420528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950474, 32.234646, 46.968685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805420, 31.862289, 46.951065>,  <38.718388, 31.638876, 46.940491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805420, 31.862289, 46.951065>,  <38.950474, 32.234646, 46.968685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805420, 31.862289, 46.951065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090157, -0.012007, 0.995855,
		-0.927561, 0.365101, -0.079573,
		-0.362632, -0.930890, -0.044054,
		38.696629, 31.583023, 46.937847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366814, 32.382439, 47.352558>,  <38.950474, 32.234646, 46.968685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366814, 32.382439, 47.352558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429581, 31.987448, 47.359180>,  <38.467239, 31.750454, 47.363155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.429581, 31.987448, 47.359180>,  <38.366814, 32.382439, 47.352558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429581, 31.987448, 47.359180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235555, -0.021137, 0.971631,
		-0.959109, -0.156366, -0.235921,
		0.156917, -0.987473, 0.016560,
		38.476654, 31.691206, 47.364147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847378, 31.972305, 47.742542>,  <38.366814, 32.382439, 47.352558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847378, 31.972305, 47.742542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155155, 31.717043, 47.731861>,  <38.339821, 31.563885, 47.725452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155155, 31.717043, 47.731861>,  <37.847378, 31.972305, 47.742542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155155, 31.717043, 47.731861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208617, -0.290607, 0.933824,
		-0.603685, -0.712955, -0.356736,
		0.769444, -0.638156, -0.026701,
		38.385990, 31.525597, 47.723850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548050, 31.441019, 47.864937>,  <37.847378, 31.972305, 47.742542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548050, 31.441019, 47.864937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933155, 31.418688, 47.970745>,  <38.164219, 31.405289, 48.034229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933155, 31.418688, 47.970745>,  <37.548050, 31.441019, 47.864937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933155, 31.418688, 47.970745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269001, -0.295275, 0.916761,
		0.026922, -0.953780, -0.299299,
		0.962763, -0.055831, 0.264517,
		38.221985, 31.401939, 48.050102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508537, 30.896492, 48.254917>,  <37.548050, 31.441019, 47.864937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508537, 30.896492, 48.254917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861507, 31.047703, 48.366936>,  <38.073288, 31.138430, 48.434147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.861507, 31.047703, 48.366936>,  <37.508537, 30.896492, 48.254917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861507, 31.047703, 48.366936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242389, -0.144852, 0.959305,
		0.403208, -0.914393, -0.036191,
		0.882423, 0.378027, 0.280044,
		38.126236, 31.161110, 48.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810215, 30.419008, 48.809803>,  <37.508537, 30.896492, 48.254917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810215, 30.419008, 48.809803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980198, 30.780638, 48.827991>,  <38.082188, 30.997616, 48.838905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980198, 30.780638, 48.827991>,  <37.810215, 30.419008, 48.809803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980198, 30.780638, 48.827991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073597, -0.015563, 0.997167,
		0.902219, -0.427095, 0.059924,
		0.424953, 0.904073, 0.045474,
		38.107685, 31.051859, 48.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134209, 30.433725, 49.460991>,  <37.810215, 30.419008, 48.809803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134209, 30.433725, 49.460991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088032, 30.823637, 49.384590>,  <38.060326, 31.057583, 49.338749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088032, 30.823637, 49.384590>,  <38.134209, 30.433725, 49.460991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088032, 30.823637, 49.384590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286703, 0.151411, 0.945979,
		0.951039, 0.163964, 0.261993,
		-0.115438, 0.974777, -0.191006,
		38.053402, 31.116070, 49.327290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268661, 30.781275, 50.067352>,  <38.134209, 30.433725, 49.460991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268661, 30.781275, 50.067352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082317, 31.063400, 49.853622>,  <37.970512, 31.232676, 49.725384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082317, 31.063400, 49.853622>,  <38.268661, 30.781275, 50.067352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082317, 31.063400, 49.853622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260473, 0.467794, 0.844584,
		0.845654, 0.532634, -0.034209,
		-0.465857, 0.705316, -0.534328,
		37.942562, 31.274996, 49.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417881, 31.448326, 50.412323>,  <38.268661, 30.781275, 50.067352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417881, 31.448326, 50.412323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088547, 31.523333, 50.198051>,  <37.890945, 31.568336, 50.069489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.088547, 31.523333, 50.198051>,  <38.417881, 31.448326, 50.412323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088547, 31.523333, 50.198051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444745, 0.373187, 0.814207,
		0.352586, 0.908608, -0.223862,
		-0.823338, 0.187516, -0.535679,
		37.841545, 31.579588, 50.037346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142361, 32.079361, 50.735741>,  <38.417881, 31.448326, 50.412323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142361, 32.079361, 50.735741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848553, 31.885660, 50.545593>,  <37.672268, 31.769440, 50.431503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.848553, 31.885660, 50.545593>,  <38.142361, 32.079361, 50.735741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848553, 31.885660, 50.545593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585430, 0.097968, 0.804782,
		-0.343144, 0.869428, -0.355454,
		-0.734523, -0.484250, -0.475372,
		37.628197, 31.740385, 50.402981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453632, 32.532162, 50.688881>,  <38.142361, 32.079361, 50.735741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453632, 32.532162, 50.688881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397984, 32.136082, 50.684105>,  <37.364594, 31.898434, 50.681240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397984, 32.136082, 50.684105>,  <37.453632, 32.532162, 50.688881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397984, 32.136082, 50.684105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640291, 0.080748, 0.763876,
		-0.755429, 0.113918, -0.645252,
		-0.139122, -0.990203, -0.011941,
		37.356247, 31.839020, 50.680523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697403, 32.357773, 50.591942>,  <37.453632, 32.532162, 50.688881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697403, 32.357773, 50.591942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952877, 32.137341, 50.806747>,  <37.106163, 32.005081, 50.935631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952877, 32.137341, 50.806747>,  <36.697403, 32.357773, 50.591942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952877, 32.137341, 50.806747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534778, 0.183892, 0.824740,
		-0.553254, -0.813934, -0.177259,
		0.638688, -0.551085, 0.537013,
		37.144485, 31.972015, 50.967850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199181, 32.099937, 50.255325>,  <36.697403, 32.357773, 50.591942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199181, 32.099937, 50.255325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093098, 32.475750, 50.341984>,  <36.029446, 32.701237, 50.393978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093098, 32.475750, 50.341984>,  <36.199181, 32.099937, 50.255325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093098, 32.475750, 50.341984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469297, 0.070499, -0.880222,
		-0.842273, -0.335117, 0.422224,
		-0.265211, 0.939535, 0.216649,
		36.013535, 32.757610, 50.406979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660557, 32.144756, 49.864704>,  <36.199181, 32.099937, 50.255325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660557, 32.144756, 49.864704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762714, 32.523281, 49.943977>,  <35.824009, 32.750397, 49.991539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762714, 32.523281, 49.943977>,  <35.660557, 32.144756, 49.864704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762714, 32.523281, 49.943977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380123, 0.286751, -0.879364,
		-0.888977, 0.149251, 0.432947,
		0.255394, 0.946308, 0.198181,
		35.839333, 32.807175, 50.003433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111496, 32.562187, 49.660263>,  <35.660557, 32.144756, 49.864704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111496, 32.562187, 49.660263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423218, 32.810501, 49.694447>,  <35.610252, 32.959492, 49.714954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.423218, 32.810501, 49.694447>,  <35.111496, 32.562187, 49.660263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423218, 32.810501, 49.694447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161125, 0.330294, -0.930024,
		-0.605574, 0.711005, 0.357425,
		0.779307, 0.620789, 0.085457,
		35.657009, 32.996738, 49.720085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830940, 33.139050, 49.570850>,  <35.111496, 32.562187, 49.660263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830940, 33.139050, 49.570850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218857, 33.211456, 49.505436>,  <35.451607, 33.254902, 49.466187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.218857, 33.211456, 49.505436>,  <34.830940, 33.139050, 49.570850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218857, 33.211456, 49.505436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220506, 0.363699, -0.905041,
		-0.104350, 0.913759, 0.392627,
		0.969788, 0.181017, -0.163538,
		35.509792, 33.265762, 49.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808361, 33.677547, 49.162113>,  <34.830940, 33.139050, 49.570850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808361, 33.677547, 49.162113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190319, 33.567383, 49.117725>,  <35.419495, 33.501282, 49.091095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190319, 33.567383, 49.117725>,  <34.808361, 33.677547, 49.162113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190319, 33.567383, 49.117725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045790, 0.505827, -0.861419,
		0.293378, 0.817487, 0.495625,
		0.954899, -0.275415, -0.110966,
		35.476788, 33.484756, 49.084435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229923, 34.362354, 48.962212>,  <34.808361, 33.677547, 49.162113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229923, 34.362354, 48.962212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435452, 34.032303, 48.868275>,  <35.558769, 33.834274, 48.811913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435452, 34.032303, 48.868275>,  <35.229923, 34.362354, 48.962212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435452, 34.032303, 48.868275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132767, 0.346925, -0.928448,
		0.847560, 0.445880, 0.287808,
		0.513824, -0.825127, -0.234842,
		35.589600, 33.784763, 48.797821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770874, 34.590633, 48.508286>,  <35.229923, 34.362354, 48.962212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770874, 34.590633, 48.508286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742790, 34.196976, 48.443130>,  <35.725941, 33.960781, 48.404037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742790, 34.196976, 48.443130>,  <35.770874, 34.590633, 48.508286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742790, 34.196976, 48.443130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251303, 0.140572, -0.957646,
		0.965359, -0.108167, 0.237449,
		-0.070207, -0.984144, -0.162885,
		35.721729, 33.901733, 48.394264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376053, 34.319057, 48.043526>,  <35.770874, 34.590633, 48.508286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376053, 34.319057, 48.043526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089764, 34.046707, 47.981369>,  <35.917988, 33.883297, 47.944077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089764, 34.046707, 47.981369>,  <36.376053, 34.319057, 48.043526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089764, 34.046707, 47.981369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186935, 0.027605, -0.981984,
		0.672897, -0.731880, 0.107522,
		-0.715727, -0.680874, -0.155390,
		35.875046, 33.842445, 47.934753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637947, 33.893417, 47.556969>,  <36.376053, 34.319057, 48.043526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637947, 33.893417, 47.556969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252647, 33.786812, 47.543560>,  <36.021469, 33.722851, 47.535515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252647, 33.786812, 47.543560>,  <36.637947, 33.893417, 47.556969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252647, 33.786812, 47.543560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069018, -0.124946, -0.989760,
		0.259594, -0.955699, 0.138748,
		-0.963248, -0.266511, -0.033526,
		35.963673, 33.706860, 47.533501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606785, 33.201683, 47.229950>,  <36.637947, 33.893417, 47.556969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606785, 33.201683, 47.229950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239895, 33.359726, 47.209602>,  <36.019760, 33.454552, 47.197395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239895, 33.359726, 47.209602>,  <36.606785, 33.201683, 47.229950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239895, 33.359726, 47.209602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026901, -0.065969, -0.997459,
		-0.397464, -0.916261, 0.049879,
		-0.917223, 0.395112, -0.050868,
		35.964729, 33.478260, 47.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282391, 32.854221, 46.795769>,  <36.606785, 33.201683, 47.229950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282391, 32.854221, 46.795769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039547, 33.171967, 46.787693>,  <35.893841, 33.362614, 46.782848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.039547, 33.171967, 46.787693>,  <36.282391, 32.854221, 46.795769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039547, 33.171967, 46.787693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123705, -0.119586, -0.985087,
		-0.784932, -0.595555, 0.170868,
		-0.607107, 0.794363, -0.020194,
		35.857414, 33.410275, 46.781635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648556, 32.706234, 46.361343>,  <36.282391, 32.854221, 46.795769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648556, 32.706234, 46.361343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717537, 33.100174, 46.368584>,  <35.758926, 33.336540, 46.372929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.717537, 33.100174, 46.368584>,  <35.648556, 32.706234, 46.361343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717537, 33.100174, 46.368584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053058, 0.027635, -0.998209,
		-0.983588, 0.171181, 0.057020,
		0.172451, 0.984852, 0.018099,
		35.769272, 33.395630, 46.374012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148445, 32.972298, 45.837341>,  <35.648556, 32.706234, 46.361343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148445, 32.972298, 45.837341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449879, 33.226685, 45.903866>,  <35.630737, 33.379314, 45.943783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449879, 33.226685, 45.903866>,  <35.148445, 32.972298, 45.837341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449879, 33.226685, 45.903866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133638, 0.099506, -0.986022,
		-0.643625, 0.765276, -0.010003,
		0.753583, 0.635965, 0.166315,
		35.675953, 33.417473, 45.953762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016491, 33.442905, 45.352112>,  <35.148445, 32.972298, 45.837341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016491, 33.442905, 45.352112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394836, 33.547104, 45.429562>,  <35.621841, 33.609623, 45.476032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394836, 33.547104, 45.429562>,  <35.016491, 33.442905, 45.352112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394836, 33.547104, 45.429562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099042, 0.336464, -0.936473,
		-0.309097, 0.904950, 0.292448,
		0.945859, 0.260496, 0.193628,
		35.678593, 33.625252, 45.487652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632851, 34.004593, 45.059547>,  <35.016491, 33.442905, 45.352112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632851, 34.004593, 45.059547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310371, 33.801868, 44.937439>,  <34.116882, 33.680233, 44.864174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310371, 33.801868, 44.937439>,  <34.632851, 34.004593, 45.059547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310371, 33.801868, 44.937439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286522, -0.116981, 0.950905,
		-0.517639, 0.854083, -0.050903,
		-0.806198, -0.506811, -0.305268,
		34.068512, 33.649826, 44.845860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084473, 34.284710, 45.432980>,  <34.632851, 34.004593, 45.059547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084473, 34.284710, 45.432980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930317, 33.937054, 45.308998>,  <33.837822, 33.728458, 45.234612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930317, 33.937054, 45.308998>,  <34.084473, 34.284710, 45.432980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930317, 33.937054, 45.308998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338669, -0.179230, 0.923678,
		-0.858358, 0.460947, -0.225277,
		-0.385390, -0.869140, -0.309952,
		33.814701, 33.676311, 45.216011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556435, 34.225151, 45.840572>,  <34.084473, 34.284710, 45.432980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556435, 34.225151, 45.840572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589890, 33.856983, 45.687817>,  <33.609962, 33.636082, 45.596161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589890, 33.856983, 45.687817>,  <33.556435, 34.225151, 45.840572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589890, 33.856983, 45.687817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533593, -0.365026, 0.762911,
		-0.841596, 0.139969, -0.521656,
		0.083634, -0.920415, -0.381891,
		33.614979, 33.580860, 45.573250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945019, 33.899399, 45.910702>,  <33.556435, 34.225151, 45.840572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945019, 33.899399, 45.910702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209755, 33.601284, 45.878441>,  <33.368599, 33.422413, 45.859085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209755, 33.601284, 45.878441>,  <32.945019, 33.899399, 45.910702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209755, 33.601284, 45.878441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286621, -0.350999, 0.891430,
		-0.692684, -0.566871, -0.445923,
		0.661844, -0.745290, -0.080654,
		33.408310, 33.377697, 45.854244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647793, 33.373905, 46.263508>,  <32.945019, 33.899399, 45.910702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647793, 33.373905, 46.263508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021706, 33.235401, 46.231812>,  <33.246056, 33.152298, 46.212791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021706, 33.235401, 46.231812>,  <32.647793, 33.373905, 46.263508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021706, 33.235401, 46.231812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085928, -0.436899, 0.895397,
		-0.344657, -0.830197, -0.438161,
		0.934788, -0.346255, -0.079243,
		33.302143, 33.131523, 46.208038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477367, 32.663589, 46.383343>,  <32.647793, 33.373905, 46.263508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477367, 32.663589, 46.383343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862080, 32.745991, 46.455494>,  <33.092907, 32.795433, 46.498783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862080, 32.745991, 46.455494>,  <32.477367, 32.663589, 46.383343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862080, 32.745991, 46.455494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096231, -0.362431, 0.927029,
		0.256349, -0.908958, -0.328756,
		0.961782, 0.206006, 0.180379,
		33.150616, 32.807793, 46.509609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806797, 32.071671, 46.588268>,  <32.477367, 32.663589, 46.383343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806797, 32.071671, 46.588268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043144, 32.371498, 46.707615>,  <33.184952, 32.551395, 46.779224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.043144, 32.371498, 46.707615>,  <32.806797, 32.071671, 46.588268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043144, 32.371498, 46.707615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110428, -0.291206, 0.950266,
		0.799178, -0.594426, -0.089289,
		0.590864, 0.749571, 0.298367,
		33.220402, 32.596371, 46.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885098, 31.327770, 46.578831>,  <32.806797, 32.071671, 46.588268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885098, 31.327770, 46.578831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710526, 30.972000, 46.633163>,  <32.605782, 30.758537, 46.665764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710526, 30.972000, 46.633163>,  <32.885098, 31.327770, 46.578831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710526, 30.972000, 46.633163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000206, -0.151065, -0.988524,
		0.899737, -0.431396, 0.066113,
		-0.436432, -0.889425, 0.135830,
		32.579597, 30.705173, 46.673912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346714, 30.871328, 46.244568>,  <32.885098, 31.327770, 46.578831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346714, 30.871328, 46.244568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968369, 30.745075, 46.274818>,  <32.741360, 30.669323, 46.292969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968369, 30.745075, 46.274818>,  <33.346714, 30.871328, 46.244568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968369, 30.745075, 46.274818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086142, -0.468775, -0.879107,
		0.312928, -0.825000, 0.470586,
		-0.945862, -0.315634, 0.075626,
		32.684608, 30.650385, 46.297504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265995, 30.061745, 46.266205>,  <33.346714, 30.871328, 46.244568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265995, 30.061745, 46.266205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929295, 30.221157, 46.120533>,  <32.727272, 30.316805, 46.033131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929295, 30.221157, 46.120533>,  <33.265995, 30.061745, 46.266205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929295, 30.221157, 46.120533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110299, -0.533385, -0.838650,
		-0.528451, -0.746116, 0.405031,
		-0.841768, 0.398511, -0.364164,
		32.676769, 30.340715, 46.011280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889687, 29.463951, 45.964020>,  <33.265995, 30.061745, 46.266205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889687, 29.463951, 45.964020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746838, 29.787418, 45.777035>,  <32.661129, 29.981499, 45.664845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746838, 29.787418, 45.777035>,  <32.889687, 29.463951, 45.964020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746838, 29.787418, 45.777035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033341, -0.489112, -0.871584,
		-0.933463, -0.326846, 0.147710,
		-0.357120, 0.808667, -0.467465,
		32.639702, 30.030018, 45.636795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383110, 29.211050, 45.354809>,  <32.889687, 29.463951, 45.964020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383110, 29.211050, 45.354809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468666, 29.579958, 45.226017>,  <32.520000, 29.801302, 45.148743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468666, 29.579958, 45.226017>,  <32.383110, 29.211050, 45.354809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468666, 29.579958, 45.226017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163093, -0.358692, -0.919097,
		-0.963146, 0.144078, -0.227138,
		0.213894, 0.922270, -0.321975,
		32.532833, 29.856638, 45.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109432, 29.275675, 44.614288>,  <32.383110, 29.211050, 45.354809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109432, 29.275675, 44.614288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344067, 29.599463, 44.624752>,  <32.484848, 29.793736, 44.631031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344067, 29.599463, 44.624752>,  <32.109432, 29.275675, 44.614288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344067, 29.599463, 44.624752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152943, -0.078992, -0.985073,
		-0.795317, 0.581828, -0.170138,
		0.586582, 0.809467, 0.026162,
		32.520042, 29.842302, 44.632599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852547, 29.878834, 44.190178>,  <32.109432, 29.275675, 44.614288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852547, 29.878834, 44.190178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252323, 29.881573, 44.203259>,  <32.492188, 29.883215, 44.211105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252323, 29.881573, 44.203259>,  <31.852547, 29.878834, 44.190178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252323, 29.881573, 44.203259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032953, -0.041174, -0.998609,
		-0.005489, 0.999129, -0.041376,
		0.999442, 0.006845, 0.032698,
		32.552155, 29.883627, 44.213066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.106750, 29.018469, 48.079788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904434, 29.345564, 47.969894>,  <34.783043, 29.541821, 47.903957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.904434, 29.345564, 47.969894>,  <35.106750, 29.018469, 48.079788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904434, 29.345564, 47.969894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807825, 0.337256, -0.483401,
		-0.302639, -0.466438, -0.831171,
		-0.505794, 0.817737, -0.274734,
		34.752697, 29.590885, 47.887474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099422, 29.747799, 48.348934>,  <35.106750, 29.018469, 48.079788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099422, 29.747799, 48.348934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.425488, 29.978384, 48.371574>,  <35.621128, 30.116735, 48.385159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.425488, 29.978384, 48.371574>,  <35.099422, 29.747799, 48.348934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425488, 29.978384, 48.371574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137146, -0.097139, -0.985776,
		-0.562763, 0.811330, -0.158243,
		0.815162, 0.576461, 0.056604,
		35.670036, 30.151323, 48.388557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095779, 30.471510, 48.067059>,  <35.099422, 29.747799, 48.348934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095779, 30.471510, 48.067059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469296, 30.328455, 48.062378>,  <35.693405, 30.242622, 48.059570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469296, 30.328455, 48.062378>,  <35.095779, 30.471510, 48.067059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469296, 30.328455, 48.062378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036379, -0.062346, -0.997391,
		0.355976, 0.931777, -0.071228,
		0.933787, -0.357638, -0.011704,
		35.749432, 30.221163, 48.058868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255993, 30.694559, 47.471493>,  <35.095779, 30.471510, 48.067059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255993, 30.694559, 47.471493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556641, 30.446203, 47.560547>,  <35.737030, 30.297190, 47.613979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556641, 30.446203, 47.560547>,  <35.255993, 30.694559, 47.471493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556641, 30.446203, 47.560547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121940, -0.200911, -0.971990,
		0.648228, 0.757714, -0.075297,
		0.751619, -0.620890, 0.222632,
		35.782127, 30.259937, 47.627338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778767, 30.822435, 46.985939>,  <35.255993, 30.694559, 47.471493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778767, 30.822435, 46.985939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.865967, 30.458752, 47.127819>,  <35.918289, 30.240541, 47.212948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.865967, 30.458752, 47.127819>,  <35.778767, 30.822435, 46.985939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865967, 30.458752, 47.127819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072260, -0.347410, -0.934925,
		0.973270, 0.229446, -0.010037,
		0.218002, -0.909209, 0.354703,
		35.931366, 30.185989, 47.234230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319344, 30.694517, 46.695530>,  <35.778767, 30.822435, 46.985939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319344, 30.694517, 46.695530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189327, 30.334314, 46.811069>,  <36.111317, 30.118193, 46.880394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189327, 30.334314, 46.811069>,  <36.319344, 30.694517, 46.695530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189327, 30.334314, 46.811069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242781, -0.374656, -0.894813,
		0.914005, -0.220724, 0.340405,
		-0.325042, -0.900507, 0.288850,
		36.091816, 30.064161, 46.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799969, 30.172276, 46.520065>,  <36.319344, 30.694517, 46.695530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799969, 30.172276, 46.520065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448177, 29.986622, 46.562214>,  <36.237103, 29.875229, 46.587505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.448177, 29.986622, 46.562214>,  <36.799969, 30.172276, 46.520065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448177, 29.986622, 46.562214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164825, -0.504714, -0.847405,
		0.446494, -0.727903, 0.520385,
		-0.879475, -0.464134, 0.105375,
		36.184334, 29.847382, 46.593826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892273, 29.520554, 46.262733>,  <36.799969, 30.172276, 46.520065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892273, 29.520554, 46.262733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493046, 29.498358, 46.251530>,  <36.253510, 29.485041, 46.244808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.493046, 29.498358, 46.251530>,  <36.892273, 29.520554, 46.262733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493046, 29.498358, 46.251530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052654, -0.515339, -0.855367,
		0.033030, -0.855188, 0.517264,
		-0.998066, -0.055488, -0.028007,
		36.193626, 29.481710, 46.243126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651993, 28.880402, 46.168991>,  <36.892273, 29.520554, 46.262733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651993, 28.880402, 46.168991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.377563, 29.131552, 46.021980>,  <36.212906, 29.282242, 45.933773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.377563, 29.131552, 46.021980>,  <36.651993, 28.880402, 46.168991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377563, 29.131552, 46.021980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075597, -0.440906, -0.894364,
		-0.723594, -0.641383, 0.255029,
		-0.686074, 0.627877, -0.367524,
		36.171741, 29.319914, 45.911724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096184, 28.491793, 45.738560>,  <36.651993, 28.880402, 46.168991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096184, 28.491793, 45.738560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063305, 28.869471, 45.610973>,  <36.043575, 29.096077, 45.534420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.063305, 28.869471, 45.610973>,  <36.096184, 28.491793, 45.738560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063305, 28.869471, 45.610973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058221, -0.324055, -0.944245,
		-0.994914, -0.059046, 0.081609,
		-0.082199, 0.944194, -0.318969,
		36.038647, 29.152729, 45.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682854, 28.437910, 45.116295>,  <36.096184, 28.491793, 45.738560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682854, 28.437910, 45.116295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.857410, 28.796179, 45.082035>,  <35.962143, 29.011141, 45.061478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.857410, 28.796179, 45.082035>,  <35.682854, 28.437910, 45.116295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857410, 28.796179, 45.082035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094164, -0.049207, -0.994340,
		-0.894818, 0.441983, 0.062867,
		0.436388, 0.895673, -0.085650,
		35.988327, 29.064880, 45.056339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255020, 28.898815, 44.738705>,  <35.682854, 28.437910, 45.116295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255020, 28.898815, 44.738705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621479, 29.057451, 44.715424>,  <35.841354, 29.152634, 44.701454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621479, 29.057451, 44.715424>,  <35.255020, 28.898815, 44.738705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621479, 29.057451, 44.715424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031034, -0.074580, -0.996732,
		-0.399635, 0.914961, -0.056019,
		0.916149, 0.396590, -0.058200,
		35.896324, 29.176428, 44.697964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702179, 28.878748, 44.346684>,  <35.255020, 28.898815, 44.738705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702179, 28.878748, 44.346684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492035, 28.583601, 44.177189>,  <34.365948, 28.406513, 44.075493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492035, 28.583601, 44.177189>,  <34.702179, 28.878748, 44.346684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492035, 28.583601, 44.177189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512638, -0.122997, 0.849750,
		-0.679120, 0.663646, -0.313641,
		-0.525356, -0.737866, -0.423739,
		34.334427, 28.362242, 44.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989788, 29.117188, 44.485302>,  <34.702179, 28.878748, 44.346684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989788, 29.117188, 44.485302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991646, 28.729385, 44.387291>,  <33.992760, 28.496704, 44.328484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991646, 28.729385, 44.387291>,  <33.989788, 29.117188, 44.485302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991646, 28.729385, 44.387291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707456, -0.176355, 0.684401,
		-0.706742, 0.170167, -0.686701,
		0.004641, -0.969506, -0.245024,
		33.993038, 28.438534, 44.313786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281437, 28.812811, 44.467617>,  <33.989788, 29.117188, 44.485302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281437, 28.812811, 44.467617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.523232, 28.497009, 44.510086>,  <33.668308, 28.307528, 44.535568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.523232, 28.497009, 44.510086>,  <33.281437, 28.812811, 44.467617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523232, 28.497009, 44.510086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527320, -0.296671, 0.796191,
		-0.597099, -0.537276, -0.595657,
		0.604489, -0.789507, 0.106175,
		33.704578, 28.260157, 44.541939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818970, 28.388695, 44.713146>,  <33.281437, 28.812811, 44.467617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818970, 28.388695, 44.713146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175667, 28.243744, 44.821579>,  <33.389683, 28.156775, 44.886639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175667, 28.243744, 44.821579>,  <32.818970, 28.388695, 44.713146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175667, 28.243744, 44.821579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382587, -0.283704, 0.879283,
		-0.241715, -0.887807, -0.391628,
		0.891741, -0.362368, 0.271088,
		33.443188, 28.135031, 44.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683506, 27.699272, 44.957848>,  <32.818970, 28.388695, 44.713146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683506, 27.699272, 44.957848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.036724, 27.769302, 45.132011>,  <33.248653, 27.811321, 45.236511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.036724, 27.769302, 45.132011>,  <32.683506, 27.699272, 44.957848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036724, 27.769302, 45.132011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407279, -0.175035, 0.896374,
		0.233147, -0.968871, -0.083259,
		0.883044, 0.175077, 0.435409,
		33.301636, 27.821825, 45.262634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911888, 27.160780, 45.476406>,  <32.683506, 27.699272, 44.957848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911888, 27.160780, 45.476406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.113457, 27.481607, 45.604630>,  <33.234398, 27.674103, 45.681564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.113457, 27.481607, 45.604630>,  <32.911888, 27.160780, 45.476406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113457, 27.481607, 45.604630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243507, -0.224148, 0.943643,
		0.828716, -0.553577, 0.082356,
		0.503919, 0.802067, 0.320555,
		33.264633, 27.722227, 45.700794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284676, 26.910440, 45.995903>,  <32.911888, 27.160780, 45.476406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284676, 26.910440, 45.995903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354275, 27.300100, 46.053528>,  <33.396034, 27.533897, 46.088100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354275, 27.300100, 46.053528>,  <33.284676, 26.910440, 45.995903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354275, 27.300100, 46.053528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035586, -0.152416, 0.987676,
		0.984103, -0.166726, -0.061187,
		0.173997, 0.974152, 0.144060,
		33.406475, 27.592346, 46.096745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670280, 26.859886, 46.678864>,  <33.284676, 26.910440, 45.995903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670280, 26.859886, 46.678864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554325, 27.238640, 46.623192>,  <33.484753, 27.465893, 46.589787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554325, 27.238640, 46.623192>,  <33.670280, 26.859886, 46.678864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554325, 27.238640, 46.623192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060376, 0.163230, 0.984739,
		0.955154, 0.277062, -0.104488,
		-0.289889, 0.946886, -0.139182,
		33.467358, 27.522705, 46.581436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210968, 27.289614, 47.060394>,  <33.670280, 26.859886, 46.678864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210968, 27.289614, 47.060394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.857582, 27.471569, 47.015553>,  <33.645550, 27.580742, 46.988647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.857582, 27.471569, 47.015553>,  <34.210968, 27.289614, 47.060394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857582, 27.471569, 47.015553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048027, 0.150080, 0.987507,
		0.466031, 0.877811, -0.110743,
		-0.883464, 0.454890, -0.112100,
		33.592545, 27.608036, 46.981922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299526, 27.820780, 47.349304>,  <34.210968, 27.289614, 47.060394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299526, 27.820780, 47.349304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900394, 27.800632, 47.366264>,  <33.660915, 27.788544, 47.376442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900394, 27.800632, 47.366264>,  <34.299526, 27.820780, 47.349304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900394, 27.800632, 47.366264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030912, 0.210225, 0.977164,
		-0.058133, 0.976354, -0.208212,
		-0.997830, -0.050369, 0.042402,
		33.601044, 27.785522, 47.378986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096062, 28.356260, 47.799129>,  <34.299526, 27.820780, 47.349304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096062, 28.356260, 47.799129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.783154, 28.107237, 47.807766>,  <33.595409, 27.957823, 47.812946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.783154, 28.107237, 47.807766>,  <34.096062, 28.356260, 47.799129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783154, 28.107237, 47.807766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112820, 0.175676, 0.977962,
		-0.612632, 0.762599, -0.207664,
		-0.782274, -0.622560, 0.021589,
		33.548470, 27.920469, 47.814243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559589, 28.713013, 48.128735>,  <34.096062, 28.356260, 47.799129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559589, 28.713013, 48.128735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431648, 28.337503, 48.179951>,  <33.354885, 28.112198, 48.210682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.431648, 28.337503, 48.179951>,  <33.559589, 28.713013, 48.128735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431648, 28.337503, 48.179951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160138, 0.186763, 0.969266,
		-0.933836, 0.289519, -0.210070,
		-0.319854, -0.938775, 0.128043,
		33.335693, 28.055870, 48.218365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052959, 28.685127, 48.723263>,  <33.559589, 28.713013, 48.128735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052959, 28.685127, 48.723263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157398, 28.300934, 48.684689>,  <33.220062, 28.070417, 48.661545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.157398, 28.300934, 48.684689>,  <33.052959, 28.685127, 48.723263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157398, 28.300934, 48.684689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229048, -0.158690, 0.960393,
		-0.937744, -0.228671, -0.261431,
		0.261101, -0.960483, -0.096434,
		33.235729, 28.012789, 48.655758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545994, 28.174417, 49.156158>,  <33.052959, 28.685127, 48.723263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545994, 28.174417, 49.156158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924191, 28.064692, 49.085953>,  <33.151108, 27.998856, 49.043831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.924191, 28.064692, 49.085953>,  <32.545994, 28.174417, 49.156158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924191, 28.064692, 49.085953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125491, -0.190433, 0.973646,
		-0.300511, -0.942595, -0.145628,
		0.945486, -0.274317, -0.175514,
		33.207836, 27.982397, 49.033298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176014, 28.552084, 48.622833>,  <32.545994, 28.174417, 49.156158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176014, 28.552084, 48.622833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.986393, 28.864305, 48.785809>,  <31.872620, 29.051640, 48.883595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.986393, 28.864305, 48.785809>,  <32.176014, 28.552084, 48.622833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986393, 28.864305, 48.785809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201935, 0.546781, -0.812559,
		-0.857025, -0.302924, -0.416827,
		-0.474057, 0.780556, 0.407435,
		31.844175, 29.098473, 48.908039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586151, 28.897366, 48.206497>,  <32.176014, 28.552084, 48.622833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586151, 28.897366, 48.206497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771578, 29.160872, 48.443523>,  <31.882833, 29.318975, 48.585739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771578, 29.160872, 48.443523>,  <31.586151, 28.897366, 48.206497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771578, 29.160872, 48.443523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035766, 0.654310, -0.755380,
		-0.885340, 0.371363, 0.279755,
		0.463567, 0.658763, 0.592569,
		31.910648, 29.358500, 48.621292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210472, 29.520056, 48.173050>,  <31.586151, 28.897366, 48.206497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210472, 29.520056, 48.173050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571259, 29.625895, 48.309547>,  <31.787731, 29.689398, 48.391445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571259, 29.625895, 48.309547>,  <31.210472, 29.520056, 48.173050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571259, 29.625895, 48.309547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097091, 0.645756, -0.757346,
		-0.420748, 0.716232, 0.556761,
		0.901967, 0.264595, 0.341240,
		31.841848, 29.705273, 48.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237705, 30.210354, 47.870583>,  <31.210472, 29.520056, 48.173050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237705, 30.210354, 47.870583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606909, 30.112274, 47.989197>,  <31.828430, 30.053427, 48.060364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606909, 30.112274, 47.989197>,  <31.237705, 30.210354, 47.870583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606909, 30.112274, 47.989197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382754, 0.506107, -0.772888,
		0.039436, 0.826881, 0.560993,
		0.923008, -0.245201, 0.296533,
		31.883812, 30.038713, 48.078156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538046, 30.791643, 47.880505>,  <31.237705, 30.210354, 47.870583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538046, 30.791643, 47.880505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809589, 30.502953, 47.826454>,  <31.972515, 30.329739, 47.794025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.809589, 30.502953, 47.826454>,  <31.538046, 30.791643, 47.880505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809589, 30.502953, 47.826454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349740, 0.479638, -0.804754,
		0.645623, 0.499057, 0.578024,
		0.678861, -0.721726, -0.135125,
		32.013248, 30.286434, 47.785915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078064, 31.221355, 47.641941>,  <31.538046, 30.791643, 47.880505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078064, 31.221355, 47.641941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167927, 30.841297, 47.555454>,  <32.221844, 30.613262, 47.503563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167927, 30.841297, 47.555454>,  <32.078064, 31.221355, 47.641941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167927, 30.841297, 47.555454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449793, 0.297952, -0.841969,
		0.864416, 0.091901, 0.494306,
		0.224657, -0.950147, -0.216218,
		32.235325, 30.556253, 47.490589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724483, 31.330996, 47.331051>,  <32.078064, 31.221355, 47.641941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724483, 31.330996, 47.331051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617435, 30.961651, 47.220932>,  <32.553207, 30.740044, 47.154861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617435, 30.961651, 47.220932>,  <32.724483, 31.330996, 47.331051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617435, 30.961651, 47.220932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215017, 0.221278, -0.951212,
		0.939228, -0.313752, 0.139321,
		-0.267616, -0.923361, -0.275293,
		32.537151, 30.684643, 47.138344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412560, 31.683220, 47.092007>,  <32.724483, 31.330996, 47.331051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412560, 31.683220, 47.092007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413193, 32.071739, 47.187149>,  <33.413574, 32.304852, 47.244236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413193, 32.071739, 47.187149>,  <33.412560, 31.683220, 47.092007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413193, 32.071739, 47.187149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113566, -0.236494, 0.964973,
		0.993529, 0.025486, -0.110681,
		0.001582, 0.971299, 0.237858,
		33.413666, 32.363129, 47.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941689, 31.675642, 47.525517>,  <33.412560, 31.683220, 47.092007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941689, 31.675642, 47.525517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.769596, 32.026600, 47.610439>,  <33.666340, 32.237175, 47.661392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.769596, 32.026600, 47.610439>,  <33.941689, 31.675642, 47.525517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769596, 32.026600, 47.610439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229694, -0.121043, 0.965707,
		0.873005, 0.464247, -0.149456,
		-0.430235, 0.877396, 0.212306,
		33.640526, 32.289818, 47.674129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395420, 32.031666, 47.919922>,  <33.941689, 31.675642, 47.525517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395420, 32.031666, 47.919922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042210, 32.192795, 48.016251>,  <33.830284, 32.289471, 48.074047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.042210, 32.192795, 48.016251>,  <34.395420, 32.031666, 47.919922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042210, 32.192795, 48.016251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162961, -0.218029, 0.962241,
		0.440116, 0.888931, 0.126882,
		-0.883030, 0.402821, 0.240819,
		33.777302, 32.313641, 48.088497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526569, 32.394466, 48.527702>,  <34.395420, 32.031666, 47.919922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526569, 32.394466, 48.527702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126743, 32.383148, 48.524590>,  <33.886848, 32.376358, 48.522720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.126743, 32.383148, 48.524590>,  <34.526569, 32.394466, 48.527702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126743, 32.383148, 48.524590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007265, -0.018303, 0.999806,
		-0.028431, 0.999432, 0.018090,
		-0.999569, -0.028294, -0.007781,
		33.826874, 32.374660, 48.522255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361092, 32.904762, 49.034595>,  <34.526569, 32.394466, 48.527702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361092, 32.904762, 49.034595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.037651, 32.669468, 49.029922>,  <33.843586, 32.528290, 49.027119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.037651, 32.669468, 49.029922>,  <34.361092, 32.904762, 49.034595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037651, 32.669468, 49.029922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022924, 0.011663, 0.999669,
		-0.587907, 0.808604, -0.022916,
		-0.808604, -0.588238, -0.011679,
		33.795071, 32.492996, 49.026421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872070, 33.236568, 49.428162>,  <34.361092, 32.904762, 49.034595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872070, 33.236568, 49.428162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750546, 32.855511, 49.422909>,  <33.677631, 32.626877, 49.419758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750546, 32.855511, 49.422909>,  <33.872070, 33.236568, 49.428162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750546, 32.855511, 49.422909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012916, -0.009663, 0.999870,
		-0.952645, 0.303940, -0.009369,
		-0.303810, -0.952642, -0.013131,
		33.659401, 32.569717, 49.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308868, 33.169964, 49.951332>,  <33.872070, 33.236568, 49.428162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308868, 33.169964, 49.951332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439190, 32.796005, 49.895020>,  <33.517384, 32.571629, 49.861233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439190, 32.796005, 49.895020>,  <33.308868, 33.169964, 49.951332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439190, 32.796005, 49.895020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037482, -0.136018, 0.989997,
		-0.944693, -0.327824, -0.009273,
		0.325806, -0.934896, -0.140783,
		33.536930, 32.515537, 49.852783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978672, 32.813076, 50.496780>,  <33.308868, 33.169964, 49.951332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978672, 32.813076, 50.496780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.284767, 32.584824, 50.377583>,  <33.468422, 32.447872, 50.306065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.284767, 32.584824, 50.377583>,  <32.978672, 32.813076, 50.496780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284767, 32.584824, 50.377583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305443, -0.085639, 0.948351,
		-0.566676, -0.816731, 0.108761,
		0.765234, -0.570629, -0.297994,
		33.514336, 32.413635, 50.288185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880096, 32.205898, 50.847794>,  <32.978672, 32.813076, 50.496780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880096, 32.205898, 50.847794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.272575, 32.221794, 50.772243>,  <33.508064, 32.231331, 50.726913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.272575, 32.221794, 50.772243>,  <32.880096, 32.205898, 50.847794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272575, 32.221794, 50.772243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189468, -0.011799, 0.981816,
		0.036795, -0.999140, -0.019108,
		0.981197, 0.039746, -0.188871,
		33.566933, 32.233719, 50.715584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.484447, 34.863850, 34.678669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829632, 35.008976, 34.819328>,  <36.036743, 35.096050, 34.903725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829632, 35.008976, 34.819328>,  <35.484447, 34.863850, 34.678669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829632, 35.008976, 34.819328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124440, -0.521920, 0.843869,
		0.489702, -0.771988, -0.405249,
		0.862964, 0.362815, 0.351652,
		36.088520, 35.117821, 34.924824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654903, 34.361000, 35.035221>,  <35.484447, 34.863850, 34.678669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654903, 34.361000, 35.035221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878242, 34.660027, 35.179108>,  <36.012245, 34.839443, 35.265442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878242, 34.660027, 35.179108>,  <35.654903, 34.361000, 35.035221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878242, 34.660027, 35.179108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014668, -0.442427, 0.896684,
		0.829479, -0.495383, -0.257992,
		0.558345, 0.747566, 0.359718,
		36.045746, 34.884296, 35.287022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127060, 34.050594, 35.384426>,  <35.654903, 34.361000, 35.035221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127060, 34.050594, 35.384426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134380, 34.417156, 35.544357>,  <36.138775, 34.637093, 35.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134380, 34.417156, 35.544357>,  <36.127060, 34.050594, 35.384426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134380, 34.417156, 35.544357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125054, -0.398856, 0.908446,
		0.991981, 0.033373, -0.121901,
		0.018304, 0.916406, 0.399832,
		36.139870, 34.692078, 35.664307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678848, 34.014694, 35.882523>,  <36.127060, 34.050594, 35.384426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678848, 34.014694, 35.882523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463547, 34.337543, 35.979542>,  <36.334366, 34.531254, 36.037754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463547, 34.337543, 35.979542>,  <36.678848, 34.014694, 35.882523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463547, 34.337543, 35.979542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016422, -0.297779, 0.954493,
		0.842622, 0.509777, 0.173536,
		-0.538254, 0.807127, 0.242544,
		36.302071, 34.579681, 36.052303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895329, 34.207355, 36.561520>,  <36.678848, 34.014694, 35.882523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895329, 34.207355, 36.561520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527420, 34.349361, 36.494598>,  <36.306675, 34.434566, 36.454445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527420, 34.349361, 36.494598>,  <36.895329, 34.207355, 36.561520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527420, 34.349361, 36.494598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252384, -0.208600, 0.944875,
		0.300546, 0.911291, 0.281464,
		-0.919769, 0.355015, -0.167302,
		36.251488, 34.455868, 36.444408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746540, 34.510098, 37.183208>,  <36.895329, 34.207355, 36.561520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746540, 34.510098, 37.183208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376781, 34.459686, 37.039204>,  <36.154926, 34.429440, 36.952801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376781, 34.459686, 37.039204>,  <36.746540, 34.510098, 37.183208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376781, 34.459686, 37.039204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339652, -0.157512, 0.927268,
		-0.173567, 0.979442, 0.102798,
		-0.924398, -0.126027, -0.360009,
		36.099461, 34.421879, 36.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268700, 34.982544, 37.476086>,  <36.746540, 34.510098, 37.183208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268700, 34.982544, 37.476086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055695, 34.674961, 37.334587>,  <35.927891, 34.490410, 37.249687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055695, 34.674961, 37.334587>,  <36.268700, 34.982544, 37.476086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055695, 34.674961, 37.334587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290862, -0.226232, 0.929633,
		-0.794876, 0.597934, -0.103188,
		-0.532515, -0.768956, -0.353743,
		35.895939, 34.444275, 37.228466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694118, 34.979805, 37.891960>,  <36.268700, 34.982544, 37.476086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694118, 34.979805, 37.891960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644527, 34.617043, 37.730888>,  <35.614773, 34.399384, 37.634243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644527, 34.617043, 37.730888>,  <35.694118, 34.979805, 37.891960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644527, 34.617043, 37.730888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483005, -0.299338, 0.822863,
		-0.866797, 0.296510, -0.400930,
		-0.123974, -0.906906, -0.402681,
		35.607334, 34.344971, 37.610085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009869, 34.842617, 38.073093>,  <35.694118, 34.979805, 37.891960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009869, 34.842617, 38.073093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180702, 34.488644, 37.998798>,  <35.283203, 34.276260, 37.954220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180702, 34.488644, 37.998798>,  <35.009869, 34.842617, 38.073093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180702, 34.488644, 37.998798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497996, -0.401654, 0.768553,
		-0.754717, -0.235741, -0.612232,
		0.427085, -0.884929, -0.185737,
		35.308826, 34.223164, 37.943077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438503, 34.274895, 37.928234>,  <35.009869, 34.842617, 38.073093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438503, 34.274895, 37.928234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759850, 34.083698, 38.070293>,  <34.952660, 33.968983, 38.155529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759850, 34.083698, 38.070293>,  <34.438503, 34.274895, 37.928234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759850, 34.083698, 38.070293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554896, -0.384490, 0.737738,
		-0.216080, -0.789744, -0.574120,
		0.803368, -0.477987, 0.355145,
		35.000858, 33.940304, 38.176838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208984, 33.744671, 38.318153>,  <34.438503, 34.274895, 37.928234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208984, 33.744671, 38.318153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587330, 33.757618, 38.447330>,  <34.814339, 33.765385, 38.524837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587330, 33.757618, 38.447330>,  <34.208984, 33.744671, 38.318153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587330, 33.757618, 38.447330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300437, -0.289138, 0.908921,
		0.122793, -0.956740, -0.263761,
		0.945864, 0.032365, 0.322945,
		34.871090, 33.767326, 38.544212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216381, 33.092018, 38.675446>,  <34.208984, 33.744671, 38.318153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216381, 33.092018, 38.675446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520733, 33.301220, 38.829082>,  <34.703342, 33.426743, 38.921265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520733, 33.301220, 38.829082>,  <34.216381, 33.092018, 38.675446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520733, 33.301220, 38.829082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375674, -0.127582, 0.917928,
		0.529087, -0.842725, 0.099407,
		0.760878, 0.523008, 0.384092,
		34.748997, 33.458122, 38.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850723, 32.522148, 38.601299>,  <34.216381, 33.092018, 38.675446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850723, 32.522148, 38.601299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560791, 32.247841, 38.627640>,  <33.386833, 32.083256, 38.643444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560791, 32.247841, 38.627640>,  <33.850723, 32.522148, 38.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560791, 32.247841, 38.627640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170404, 0.085846, -0.981628,
		0.667519, -0.722737, -0.179082,
		-0.724832, -0.685771, 0.065853,
		33.343342, 32.042110, 38.647396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985218, 32.014042, 38.033001>,  <33.850723, 32.522148, 38.601299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985218, 32.014042, 38.033001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605106, 32.036674, 38.155491>,  <33.377041, 32.050255, 38.228985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605106, 32.036674, 38.155491>,  <33.985218, 32.014042, 38.033001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605106, 32.036674, 38.155491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293800, 0.163071, -0.941854,
		-0.103232, -0.984990, -0.138338,
		-0.950276, 0.056586, 0.306224,
		33.320023, 32.053650, 38.247356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708447, 31.743631, 37.497017>,  <33.985218, 32.014042, 38.033001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708447, 31.743631, 37.497017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425465, 31.941971, 37.698471>,  <33.255676, 32.060974, 37.819344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425465, 31.941971, 37.698471>,  <33.708447, 31.743631, 37.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425465, 31.941971, 37.698471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494302, 0.162191, -0.854026,
		-0.505153, -0.853128, 0.130356,
		-0.707451, 0.495849, 0.503634,
		33.213230, 32.090725, 37.849560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155746, 31.501604, 37.175625>,  <33.708447, 31.743631, 37.497017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155746, 31.501604, 37.175625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050346, 31.845068, 37.351475>,  <32.987106, 32.051147, 37.456985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050346, 31.845068, 37.351475>,  <33.155746, 31.501604, 37.175625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050346, 31.845068, 37.351475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616314, 0.200741, -0.761486,
		-0.742109, -0.471596, 0.476310,
		-0.263499, 0.858662, 0.439623,
		32.971298, 32.102665, 37.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438992, 31.533493, 37.250149>,  <33.155746, 31.501604, 37.175625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438992, 31.533493, 37.250149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561127, 31.914379, 37.247185>,  <32.634407, 32.142910, 37.245407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561127, 31.914379, 37.247185>,  <32.438992, 31.533493, 37.250149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561127, 31.914379, 37.247185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636536, 0.198308, -0.745316,
		-0.708232, 0.232290, 0.666670,
		0.305336, 0.952216, -0.007413,
		32.652729, 32.200043, 37.244961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881727, 31.998186, 36.852551>,  <32.438992, 31.533493, 37.250149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881727, 31.998186, 36.852551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203968, 32.234856, 36.864754>,  <32.397312, 32.376858, 36.872074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203968, 32.234856, 36.864754>,  <31.881727, 31.998186, 36.852551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203968, 32.234856, 36.864754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233556, 0.364481, -0.901446,
		-0.544481, 0.719080, 0.431815,
		0.805600, 0.591673, 0.030507,
		32.445648, 32.412357, 36.873905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631578, 32.754848, 36.814190>,  <31.881727, 31.998186, 36.852551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631578, 32.754848, 36.814190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010616, 32.740799, 36.687176>,  <32.238041, 32.732368, 36.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010616, 32.740799, 36.687176>,  <31.631578, 32.754848, 36.814190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010616, 32.740799, 36.687176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296920, 0.269988, -0.915939,
		0.117904, 0.962223, 0.245410,
		0.947595, -0.035126, -0.317536,
		32.294895, 32.730263, 36.591915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692947, 33.406467, 36.411343>,  <31.631578, 32.754848, 36.814190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692947, 33.406467, 36.411343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050495, 33.245262, 36.332771>,  <32.265022, 33.148540, 36.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050495, 33.245262, 36.332771>,  <31.692947, 33.406467, 36.411343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050495, 33.245262, 36.332771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043204, 0.358658, -0.932469,
		0.446244, 0.841990, 0.303182,
		0.893868, -0.403010, -0.196426,
		32.318657, 33.124359, 36.273842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151909, 33.928589, 36.158459>,  <31.692947, 33.406467, 36.411343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151909, 33.928589, 36.158459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284435, 33.584663, 36.003048>,  <32.363953, 33.378307, 35.909801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284435, 33.584663, 36.003048>,  <32.151909, 33.928589, 36.158459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284435, 33.584663, 36.003048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252701, 0.477601, -0.841451,
		0.909050, 0.180607, 0.375513,
		0.331317, -0.859813, -0.388524,
		32.383831, 33.326721, 35.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841892, 34.015266, 35.764503>,  <32.151909, 33.928589, 36.158459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841892, 34.015266, 35.764503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696365, 33.668076, 35.629295>,  <32.609051, 33.459763, 35.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696365, 33.668076, 35.629295>,  <32.841892, 34.015266, 35.764503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696365, 33.668076, 35.629295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161688, 0.298531, -0.940604,
		0.917331, -0.396860, 0.031732,
		-0.363815, -0.867976, -0.338019,
		32.587219, 33.407684, 35.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331993, 33.645851, 35.221367>,  <32.841892, 34.015266, 35.764503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331993, 33.645851, 35.221367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953415, 33.538563, 35.149483>,  <32.726269, 33.474190, 35.106354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953415, 33.538563, 35.149483>,  <33.331993, 33.645851, 35.221367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953415, 33.538563, 35.149483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086643, 0.325188, -0.941672,
		0.311008, -0.906815, -0.284535,
		-0.946450, -0.268214, -0.179705,
		32.669479, 33.458096, 35.095570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328163, 33.148163, 34.628506>,  <33.331993, 33.645851, 35.221367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328163, 33.148163, 34.628506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004707, 33.381428, 34.659534>,  <32.810635, 33.521389, 34.678150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004707, 33.381428, 34.659534>,  <33.328163, 33.148163, 34.628506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004707, 33.381428, 34.659534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129839, 0.305509, -0.943296,
		-0.573796, -0.752716, -0.322764,
		-0.808641, 0.583166, 0.077568,
		32.762115, 33.556377, 34.682804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617275, 32.772114, 33.963348>,  <33.328163, 33.148163, 34.628506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617275, 32.772114, 33.963348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297630, 32.538769, 34.021461>,  <33.105843, 32.398762, 34.056328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297630, 32.538769, 34.021461>,  <33.617275, 32.772114, 33.963348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297630, 32.538769, 34.021461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267674, 0.128878, -0.954851,
		0.538298, -0.801924, -0.259139,
		-0.799116, -0.583359, 0.145279,
		33.057896, 32.363762, 34.065044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612602, 32.347687, 33.353569>,  <33.617275, 32.772114, 33.963348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612602, 32.347687, 33.353569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251873, 32.384136, 33.522526>,  <33.035435, 32.406006, 33.623901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251873, 32.384136, 33.522526>,  <33.612602, 32.347687, 33.353569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251873, 32.384136, 33.522526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411926, 0.113982, -0.904060,
		-0.130524, -0.989295, -0.065256,
		-0.901821, 0.091121, 0.422394,
		32.981327, 32.411472, 33.649242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226349, 32.592854, 33.574108>,  <33.612602, 32.347687, 33.353569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226349, 32.592854, 33.574108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132454, 32.967079, 33.468567>,  <34.076118, 33.191616, 33.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132454, 32.967079, 33.468567>,  <34.226349, 32.592854, 33.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132454, 32.967079, 33.468567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269745, 0.198084, 0.942338,
		0.933883, 0.292372, 0.205866,
		-0.234734, 0.935565, -0.263853,
		34.062035, 33.247749, 33.389412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415634, 31.998289, 34.111122>,  <34.226349, 32.592854, 33.574108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415634, 31.998289, 34.111122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756149, 31.856146, 33.956707>,  <34.960461, 31.770861, 33.864059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756149, 31.856146, 33.956707>,  <34.415634, 31.998289, 34.111122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756149, 31.856146, 33.956707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030297, -0.701215, 0.712306,
		-0.523816, -0.618076, -0.586172,
		0.851292, -0.355358, -0.386034,
		35.011536, 31.749538, 33.840897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200497, 31.327293, 34.032101>,  <34.415634, 31.998289, 34.111122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200497, 31.327293, 34.032101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589355, 31.389908, 34.101864>,  <34.822670, 31.427477, 34.143723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589355, 31.389908, 34.101864>,  <34.200497, 31.327293, 34.032101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589355, 31.389908, 34.101864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051956, -0.581738, 0.811715,
		0.228525, -0.798171, -0.557404,
		0.972151, 0.156537, 0.174412,
		34.881001, 31.436869, 34.154186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598736, 30.686562, 34.254566>,  <34.200497, 31.327293, 34.032101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598736, 30.686562, 34.254566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779140, 31.007061, 34.411839>,  <34.887383, 31.199362, 34.506203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779140, 31.007061, 34.411839>,  <34.598736, 30.686562, 34.254566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779140, 31.007061, 34.411839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123447, -0.492293, 0.861631,
		0.883942, -0.340065, -0.320940,
		0.451007, 0.801251, 0.393179,
		34.914444, 31.247437, 34.529793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272522, 30.411543, 34.497883>,  <34.598736, 30.686562, 34.254566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272522, 30.411543, 34.497883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140324, 30.737698, 34.688004>,  <35.061005, 30.933392, 34.802078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140324, 30.737698, 34.688004>,  <35.272522, 30.411543, 34.497883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140324, 30.737698, 34.688004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006384, -0.501662, 0.865040,
		0.943787, 0.288925, 0.160591,
		-0.330494, 0.815388, 0.475306,
		35.041176, 30.982315, 34.830597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746635, 30.532251, 35.084579>,  <35.272522, 30.411543, 34.497883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746635, 30.532251, 35.084579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419106, 30.734894, 35.192562>,  <35.222588, 30.856480, 35.257351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419106, 30.734894, 35.192562>,  <35.746635, 30.532251, 35.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419106, 30.734894, 35.192562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050939, -0.404298, 0.913208,
		0.571781, 0.761507, 0.305243,
		-0.818823, 0.506606, 0.269961,
		35.173458, 30.886875, 35.273552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915405, 30.893398, 35.726742>,  <35.746635, 30.532251, 35.084579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915405, 30.893398, 35.726742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516781, 30.863522, 35.712337>,  <35.277607, 30.845596, 35.703697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516781, 30.863522, 35.712337>,  <35.915405, 30.893398, 35.726742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516781, 30.863522, 35.712337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017117, -0.239584, 0.970725,
		-0.081131, 0.967998, 0.237480,
		-0.996556, -0.074691, -0.036007,
		35.217815, 30.841114, 35.701534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771198, 31.293779, 36.319630>,  <35.915405, 30.893398, 35.726742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771198, 31.293779, 36.319630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447998, 31.071024, 36.242676>,  <35.254078, 30.937370, 36.196503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447998, 31.071024, 36.242676>,  <35.771198, 31.293779, 36.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447998, 31.071024, 36.242676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093510, -0.201179, 0.975081,
		-0.581714, 0.805856, 0.110478,
		-0.808000, -0.556887, -0.192385,
		35.205597, 30.903957, 36.184959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289951, 31.486010, 36.864765>,  <35.771198, 31.293779, 36.319630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289951, 31.486010, 36.864765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172085, 31.128214, 36.730270>,  <35.101364, 30.913536, 36.649574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172085, 31.128214, 36.730270>,  <35.289951, 31.486010, 36.864765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172085, 31.128214, 36.730270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137770, -0.308422, 0.941220,
		-0.945617, 0.323669, -0.032352,
		-0.294665, -0.894491, -0.336241,
		35.083687, 30.859867, 36.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670547, 31.365147, 37.264500>,  <35.289951, 31.486010, 36.864765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670547, 31.365147, 37.264500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797764, 31.017931, 37.111996>,  <34.874096, 30.809601, 37.020493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797764, 31.017931, 37.111996>,  <34.670547, 31.365147, 37.264500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797764, 31.017931, 37.111996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278236, -0.469887, 0.837729,
		-0.906330, -0.160355, -0.390964,
		0.318043, -0.868039, -0.381256,
		34.893177, 30.757519, 36.997620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089333, 30.799183, 37.303394>,  <34.670547, 31.365147, 37.264500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089333, 30.799183, 37.303394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442211, 30.613476, 37.271927>,  <34.653938, 30.502052, 37.253044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442211, 30.613476, 37.271927>,  <34.089333, 30.799183, 37.303394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442211, 30.613476, 37.271927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169414, -0.468821, 0.866894,
		-0.439350, -0.751443, -0.492245,
		0.882197, -0.464263, -0.078671,
		34.706871, 30.474195, 37.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904228, 30.128267, 37.567966>,  <34.089333, 30.799183, 37.303394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904228, 30.128267, 37.567966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303005, 30.159168, 37.572739>,  <34.542271, 30.177710, 37.575603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303005, 30.159168, 37.572739>,  <33.904228, 30.128267, 37.567966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303005, 30.159168, 37.572739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052861, -0.778704, 0.625160,
		0.057586, -0.622617, -0.780405,
		0.996940, 0.077254, 0.011930,
		34.602089, 30.182344, 37.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101818, 29.359440, 37.651520>,  <33.904228, 30.128267, 37.567966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101818, 29.359440, 37.651520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405502, 29.595236, 37.761868>,  <34.587711, 29.736713, 37.828075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405502, 29.595236, 37.761868>,  <34.101818, 29.359440, 37.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405502, 29.595236, 37.761868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194094, -0.609635, 0.768552,
		0.621233, -0.529947, -0.577257,
		0.759208, 0.589492, 0.275866,
		34.633266, 29.772083, 37.844627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605541, 28.847921, 37.845066>,  <34.101818, 29.359440, 37.651520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605541, 28.847921, 37.845066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685341, 29.197237, 38.022858>,  <34.733219, 29.406826, 38.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685341, 29.197237, 38.022858>,  <34.605541, 28.847921, 37.845066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685341, 29.197237, 38.022858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123440, -0.472385, 0.872705,
		0.972093, -0.119234, -0.202038,
		0.199496, 0.873290, 0.444484,
		34.745190, 29.459225, 38.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019871, 28.618587, 38.261562>,  <34.605541, 28.847921, 37.845066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019871, 28.618587, 38.261562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939728, 28.988165, 38.391903>,  <34.891640, 29.209911, 38.470108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939728, 28.988165, 38.391903>,  <35.019871, 28.618587, 38.261562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939728, 28.988165, 38.391903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119300, -0.307116, 0.944165,
		0.972432, 0.228046, -0.048693,
		-0.200359, 0.923945, 0.325855,
		34.879620, 29.265348, 38.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571831, 28.843618, 38.691177>,  <35.019871, 28.618587, 38.261562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571831, 28.843618, 38.691177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256165, 29.062906, 38.801937>,  <35.066765, 29.194479, 38.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256165, 29.062906, 38.801937>,  <35.571831, 28.843618, 38.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256165, 29.062906, 38.801937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097795, -0.332926, 0.937868,
		0.606345, 0.767212, 0.209120,
		-0.789166, 0.548220, 0.276897,
		35.019413, 29.227373, 38.885006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787582, 29.135965, 39.199047>,  <35.571831, 28.843618, 38.691177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787582, 29.135965, 39.199047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393814, 29.164314, 39.263416>,  <35.157555, 29.181324, 39.302040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393814, 29.164314, 39.263416>,  <35.787582, 29.135965, 39.199047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393814, 29.164314, 39.263416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129913, -0.323606, 0.937231,
		0.118502, 0.943534, 0.309356,
		-0.984419, 0.070875, 0.160925,
		35.098488, 29.185577, 39.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669739, 29.420362, 39.885662>,  <35.787582, 29.135965, 39.199047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669739, 29.420362, 39.885662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315006, 29.250671, 39.812378>,  <35.102169, 29.148857, 39.768410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315006, 29.250671, 39.812378>,  <35.669739, 29.420362, 39.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315006, 29.250671, 39.812378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180652, -0.046631, 0.982441,
		-0.425324, 0.904353, -0.035284,
		-0.886828, -0.424230, -0.183206,
		35.048958, 29.123402, 39.757416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158527, 29.791143, 40.262840>,  <35.669739, 29.420362, 39.885662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158527, 29.791143, 40.262840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964405, 29.447939, 40.195560>,  <34.847931, 29.242016, 40.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964405, 29.447939, 40.195560>,  <35.158527, 29.791143, 40.262840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964405, 29.447939, 40.195560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195487, -0.081027, 0.977353,
		-0.852210, 0.507197, -0.128408,
		-0.485306, -0.858013, -0.168203,
		34.818813, 29.190535, 40.145100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449280, 29.863247, 40.582771>,  <35.158527, 29.791143, 40.262840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449280, 29.863247, 40.582771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529144, 29.472420, 40.553173>,  <34.577065, 29.237925, 40.535412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529144, 29.472420, 40.553173>,  <34.449280, 29.863247, 40.582771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529144, 29.472420, 40.553173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188291, -0.112371, 0.975663,
		-0.961604, -0.180868, -0.206409,
		0.199661, -0.977067, -0.074000,
		34.589043, 29.179300, 40.530972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905186, 29.537020, 40.963051>,  <34.449280, 29.863247, 40.582771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905186, 29.537020, 40.963051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215874, 29.287146, 40.930866>,  <34.402287, 29.137222, 40.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215874, 29.287146, 40.930866>,  <33.905186, 29.537020, 40.963051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215874, 29.287146, 40.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041130, -0.177782, 0.983210,
		-0.628500, -0.760370, -0.163781,
		0.776721, -0.624684, -0.080462,
		34.448891, 29.099741, 40.906727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696964, 28.893484, 41.282108>,  <33.905186, 29.537020, 40.963051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696964, 28.893484, 41.282108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095558, 28.865423, 41.263752>,  <34.334713, 28.848587, 41.252739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095558, 28.865423, 41.263752>,  <33.696964, 28.893484, 41.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095558, 28.865423, 41.263752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028943, -0.225881, 0.973725,
		-0.078673, -0.971626, -0.223056,
		0.996480, -0.070150, -0.045892,
		34.394501, 28.844378, 41.249985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854874, 28.203468, 41.586628>,  <33.696964, 28.893484, 41.282108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854874, 28.203468, 41.586628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194996, 28.412352, 41.612801>,  <34.399071, 28.537682, 41.628506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194996, 28.412352, 41.612801>,  <33.854874, 28.203468, 41.586628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194996, 28.412352, 41.612801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081443, -0.253392, 0.963929,
		0.519950, -0.814305, -0.257990,
		0.850305, 0.522206, 0.065432,
		34.450089, 28.569014, 41.632431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242191, 27.797510, 41.918224>,  <33.854874, 28.203468, 41.586628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242191, 27.797510, 41.918224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410614, 28.152180, 41.994663>,  <34.511669, 28.364983, 42.040527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410614, 28.152180, 41.994663>,  <34.242191, 27.797510, 41.918224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410614, 28.152180, 41.994663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097200, -0.253577, 0.962419,
		0.901811, -0.386659, -0.192955,
		0.421057, 0.886675, 0.191096,
		34.536930, 28.418182, 42.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861324, 27.652296, 42.214527>,  <34.242191, 27.797510, 41.918224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861324, 27.652296, 42.214527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798828, 28.030260, 42.329578>,  <34.761330, 28.257038, 42.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798828, 28.030260, 42.329578>,  <34.861324, 27.652296, 42.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798828, 28.030260, 42.329578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042503, -0.297368, 0.953817,
		0.986804, 0.136799, 0.086623,
		-0.156240, 0.944912, 0.287629,
		34.751957, 28.313734, 42.415867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263622, 27.666349, 42.806046>,  <34.861324, 27.652296, 42.214527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263622, 27.666349, 42.806046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000214, 27.967112, 42.818604>,  <34.842167, 28.147570, 42.826138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000214, 27.967112, 42.818604>,  <35.263622, 27.666349, 42.806046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000214, 27.967112, 42.818604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216045, -0.228848, 0.949186,
		0.720883, 0.618277, 0.313147,
		-0.658523, 0.751906, 0.031397,
		34.802658, 28.192682, 42.828022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395206, 28.029247, 43.411301>,  <35.263622, 27.666349, 42.806046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395206, 28.029247, 43.411301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011791, 28.117933, 43.339684>,  <34.781742, 28.171144, 43.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011791, 28.117933, 43.339684>,  <35.395206, 28.029247, 43.411301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011791, 28.117933, 43.339684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231896, -0.241652, 0.942246,
		0.165644, 0.944694, 0.283046,
		-0.958533, 0.221715, -0.179043,
		34.724232, 28.184448, 43.285973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273273, 28.554932, 43.842785>,  <35.395206, 28.029247, 43.411301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273273, 28.554932, 43.842785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903667, 28.438189, 43.743984>,  <34.681904, 28.368143, 43.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903667, 28.438189, 43.743984>,  <35.273273, 28.554932, 43.842785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903667, 28.438189, 43.743984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209306, -0.154507, 0.965567,
		-0.319973, 0.943899, 0.081679,
		-0.924017, -0.291860, -0.247001,
		34.626461, 28.350630, 43.669884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312382, 29.325102, 44.137497>,  <35.273273, 28.554932, 43.842785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312382, 29.325102, 44.137497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697277, 29.282875, 44.237858>,  <35.928215, 29.257540, 44.298073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697277, 29.282875, 44.237858>,  <35.312382, 29.325102, 44.137497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697277, 29.282875, 44.237858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238591, -0.116612, -0.964093,
		0.131035, 0.987551, -0.087022,
		0.962239, -0.105567, 0.250901,
		35.985950, 29.251205, 44.313129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725410, 29.876675, 43.798862>,  <35.312382, 29.325102, 44.137497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725410, 29.876675, 43.798862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995003, 29.589743, 43.869511>,  <36.156757, 29.417583, 43.911900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995003, 29.589743, 43.869511>,  <35.725410, 29.876675, 43.798862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995003, 29.589743, 43.869511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255881, 0.002401, -0.966705,
		0.693022, 0.696730, 0.185169,
		0.673977, -0.717330, 0.176616,
		36.197197, 29.374544, 43.922497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298630, 30.061556, 43.397743>,  <35.725410, 29.876675, 43.798862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298630, 30.061556, 43.397743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383957, 29.683907, 43.498241>,  <36.435154, 29.457317, 43.558540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383957, 29.683907, 43.498241>,  <36.298630, 30.061556, 43.397743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383957, 29.683907, 43.498241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467901, -0.127022, -0.874605,
		0.857650, 0.304125, 0.414661,
		0.213319, -0.944126, 0.251241,
		36.447952, 29.400669, 43.573612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053410, 29.965998, 43.398079>,  <36.298630, 30.061556, 43.397743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053410, 29.965998, 43.398079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907623, 29.596109, 43.354164>,  <36.820152, 29.374176, 43.327816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907623, 29.596109, 43.354164>,  <37.053410, 29.965998, 43.398079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907623, 29.596109, 43.354164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617437, -0.151719, -0.771850,
		0.697089, -0.349102, 0.626254,
		-0.364469, -0.924721, -0.109787,
		36.798283, 29.318693, 43.321228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684216, 29.479967, 43.338879>,  <37.053410, 29.965998, 43.398079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684216, 29.479967, 43.338879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363335, 29.302864, 43.178661>,  <37.170807, 29.196602, 43.082531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363335, 29.302864, 43.178661>,  <37.684216, 29.479967, 43.338879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363335, 29.302864, 43.178661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461949, -0.035269, -0.886205,
		0.378249, -0.895946, 0.232825,
		-0.802203, -0.442760, -0.400541,
		37.122673, 29.170036, 43.058498>
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
