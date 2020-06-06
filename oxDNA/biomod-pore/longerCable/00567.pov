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
	<24.214466, 35.495731, 34.898125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374001, 35.151577, 35.025036>,  <24.469721, 34.945084, 35.101181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374001, 35.151577, 35.025036>,  <24.214466, 35.495731, 34.898125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374001, 35.151577, 35.025036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396080, 0.473672, 0.786610,
		-0.827074, -0.188061, 0.529699,
		0.398834, -0.860388, 0.317275,
		24.493650, 34.893459, 35.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009138, 35.699821, 34.659142>,  <24.214466, 35.495731, 34.898125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009138, 35.699821, 34.659142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091660, 35.784363, 34.276985>,  <25.141172, 35.835087, 34.047691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091660, 35.784363, 34.276985>,  <25.009138, 35.699821, 34.659142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091660, 35.784363, 34.276985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978400, -0.057614, 0.198529,
		-0.013084, -0.975710, -0.218674,
		0.206305, 0.211353, -0.955389,
		25.153551, 35.847767, 33.990368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339390, 35.106197, 34.340740>,  <25.009138, 35.699821, 34.659142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339390, 35.106197, 34.340740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408880, 35.478390, 34.211727>,  <25.450575, 35.701706, 34.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408880, 35.478390, 34.211727>,  <25.339390, 35.106197, 34.340740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408880, 35.478390, 34.211727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833029, 0.035832, 0.552067,
		0.525244, -0.364587, -0.768892,
		0.173725, 0.930480, -0.322532,
		25.460999, 35.757534, 34.114967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016346, 35.144981, 33.993019>,  <25.339390, 35.106197, 34.340740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016346, 35.144981, 33.993019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926813, 35.485970, 34.181992>,  <25.873093, 35.690563, 34.295376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926813, 35.485970, 34.181992>,  <26.016346, 35.144981, 33.993019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926813, 35.485970, 34.181992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814113, -0.102958, 0.571506,
		0.535834, 0.512533, -0.670964,
		-0.223834, 0.852473, 0.472428,
		25.859663, 35.741711, 34.323719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681995, 35.395870, 34.008362>,  <26.016346, 35.144981, 33.993019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681995, 35.395870, 34.008362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489815, 35.599331, 34.294140>,  <26.374506, 35.721409, 34.465607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489815, 35.599331, 34.294140>,  <26.681995, 35.395870, 34.008362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489815, 35.599331, 34.294140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873890, 0.208874, 0.438963,
		0.074050, 0.835250, -0.544862,
		-0.480451, 0.508654, 0.714449,
		26.345680, 35.751926, 34.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285879, 35.057316, 33.838600>,  <26.681995, 35.395870, 34.008362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285879, 35.057316, 33.838600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670673, 34.949306, 33.854950>,  <27.901550, 34.884502, 33.864758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670673, 34.949306, 33.854950>,  <27.285879, 35.057316, 33.838600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670673, 34.949306, 33.854950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254710, -0.833117, 0.490957,
		-0.098519, -0.482705, -0.870224,
		0.961986, -0.270024, 0.040872,
		27.959269, 34.868298, 33.867210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289902, 34.394535, 33.543545>,  <27.285879, 35.057316, 33.838600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289902, 34.394535, 33.543545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589867, 34.466953, 33.798058>,  <27.769846, 34.510403, 33.950764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589867, 34.466953, 33.798058>,  <27.289902, 34.394535, 33.543545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589867, 34.466953, 33.798058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285183, -0.779385, 0.557880,
		0.596908, -0.599818, -0.532841,
		0.749914, 0.181045, 0.636279,
		27.814840, 34.521267, 33.988941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633873, 33.741474, 33.757320>,  <27.289902, 34.394535, 33.543545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633873, 33.741474, 33.757320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677784, 34.025452, 34.035580>,  <27.704130, 34.195839, 34.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677784, 34.025452, 34.035580>,  <27.633873, 33.741474, 33.757320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677784, 34.025452, 34.035580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180049, -0.674098, 0.716362,
		0.977512, -0.203893, 0.053822,
		0.109779, 0.709943, 0.695650,
		27.710718, 34.238434, 34.244274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167856, 33.564987, 34.155495>,  <27.633873, 33.741474, 33.757320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167856, 33.564987, 34.155495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976887, 33.830425, 34.385868>,  <27.862305, 33.989689, 34.524094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976887, 33.830425, 34.385868>,  <28.167856, 33.564987, 34.155495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976887, 33.830425, 34.385868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025183, -0.644857, 0.763888,
		0.878312, 0.379202, 0.291159,
		-0.477424, 0.663600, 0.575935,
		27.833660, 34.029507, 34.558647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564068, 33.661533, 34.786995>,  <28.167856, 33.564987, 34.155495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564068, 33.661533, 34.786995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182430, 33.758286, 34.857643>,  <27.953447, 33.816338, 34.900032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182430, 33.758286, 34.857643>,  <28.564068, 33.661533, 34.786995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182430, 33.758286, 34.857643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117399, -0.844559, 0.522434,
		0.275539, 0.477716, 0.834186,
		-0.954094, 0.241884, 0.176625,
		27.896202, 33.830853, 34.910629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462416, 33.564793, 35.519333>,  <28.564068, 33.661533, 34.786995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462416, 33.564793, 35.519333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121489, 33.534386, 35.312344>,  <27.916933, 33.516140, 35.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121489, 33.534386, 35.312344>,  <28.462416, 33.564793, 35.519333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121489, 33.534386, 35.312344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186065, -0.880588, 0.435825,
		-0.488811, 0.467745, 0.736396,
		-0.852317, -0.076019, -0.517472,
		27.865793, 33.511581, 35.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820715, 33.087784, 35.543209>,  <28.462416, 33.564793, 35.519333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820715, 33.087784, 35.543209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141449, 33.105350, 35.304836>,  <28.333889, 33.115891, 35.161812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141449, 33.105350, 35.304836>,  <27.820715, 33.087784, 35.543209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141449, 33.105350, 35.304836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386079, 0.799256, -0.460579,
		0.456076, 0.599384, 0.657825,
		0.801834, 0.043913, -0.595931,
		28.382000, 33.118523, 35.126057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882683, 32.367321, 35.624401>,  <27.820715, 33.087784, 35.543209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882683, 32.367321, 35.624401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492697, 32.358620, 35.535889>,  <27.258705, 32.353397, 35.482780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492697, 32.358620, 35.535889>,  <27.882683, 32.367321, 35.624401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492697, 32.358620, 35.535889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048560, 0.950348, -0.307379,
		0.216983, -0.310429, -0.925501,
		-0.974967, -0.021754, -0.221283,
		27.200207, 32.352093, 35.469505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720814, 32.494743, 35.003643>,  <27.882683, 32.367321, 35.624401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720814, 32.494743, 35.003643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396946, 32.636662, 35.190639>,  <27.202625, 32.721813, 35.302837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396946, 32.636662, 35.190639>,  <27.720814, 32.494743, 35.003643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396946, 32.636662, 35.190639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194764, 0.913869, -0.356245,
		-0.553624, -0.197390, -0.809035,
		-0.809671, 0.354797, 0.467495,
		27.154045, 32.743099, 35.330887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193865, 32.905342, 34.585880>,  <27.720814, 32.494743, 35.003643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193865, 32.905342, 34.585880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213623, 33.032017, 34.964775>,  <27.225479, 33.108021, 35.192112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213623, 33.032017, 34.964775>,  <27.193865, 32.905342, 34.585880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213623, 33.032017, 34.964775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067309, 0.945188, -0.319514,
		-0.996509, 0.079541, 0.025373,
		0.049397, 0.316691, 0.947242,
		27.228441, 33.127026, 35.248947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677715, 33.485847, 34.721146>,  <27.193865, 32.905342, 34.585880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677715, 33.485847, 34.721146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006372, 33.512051, 34.947636>,  <27.203566, 33.527775, 35.083530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006372, 33.512051, 34.947636>,  <26.677715, 33.485847, 34.721146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006372, 33.512051, 34.947636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153847, 0.931018, -0.330963,
		-0.548851, 0.359045, 0.754884,
		0.821641, 0.065512, 0.566228,
		27.252865, 33.531704, 35.117504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664963, 34.115952, 35.145042>,  <26.677715, 33.485847, 34.721146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664963, 34.115952, 35.145042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048138, 34.025455, 35.074421>,  <27.278042, 33.971157, 35.032047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048138, 34.025455, 35.074421>,  <26.664963, 34.115952, 35.145042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048138, 34.025455, 35.074421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089510, 0.820090, -0.565191,
		0.272659, 0.525614, 0.805846,
		0.957938, -0.226236, -0.176557,
		27.335520, 33.957584, 35.021454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001741, 34.779530, 35.187626>,  <26.664963, 34.115952, 35.145042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001741, 34.779530, 35.187626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253904, 34.539455, 34.990704>,  <27.405201, 34.395412, 34.872551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253904, 34.539455, 34.990704>,  <27.001741, 34.779530, 35.187626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253904, 34.539455, 34.990704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161472, 0.721711, -0.673097,
		0.759286, 0.344831, 0.551884,
		0.630406, -0.600187, -0.492305,
		27.443026, 34.359398, 34.843014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776217, 35.037086, 35.224533>,  <27.001741, 34.779530, 35.187626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776217, 35.037086, 35.224533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688869, 34.850353, 34.881748>,  <27.636461, 34.738312, 34.676079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688869, 34.850353, 34.881748>,  <27.776217, 35.037086, 35.224533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688869, 34.850353, 34.881748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302222, 0.802628, -0.514248,
		0.927889, -0.371287, -0.034180,
		-0.218368, -0.466835, -0.856960,
		27.623360, 34.710304, 34.624660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219219, 35.252922, 34.664013>,  <27.776217, 35.037086, 35.224533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219219, 35.252922, 34.664013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964640, 35.081230, 34.407673>,  <27.811892, 34.978214, 34.253868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964640, 35.081230, 34.407673>,  <28.219219, 35.252922, 34.664013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964640, 35.081230, 34.407673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293305, 0.633758, -0.715768,
		0.713376, -0.643515, -0.277459,
		-0.636449, -0.429231, -0.640854,
		27.773705, 34.952461, 34.215416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441742, 34.783443, 35.235359>,  <28.219219, 35.252922, 34.664013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441742, 34.783443, 35.235359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244888, 34.592960, 34.943874>,  <28.126776, 34.478668, 34.768982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244888, 34.592960, 34.943874>,  <28.441742, 34.783443, 35.235359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244888, 34.592960, 34.943874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290566, 0.699236, -0.653177,
		0.820595, -0.533191, -0.205748,
		-0.492134, -0.476210, -0.728716,
		28.097248, 34.450096, 34.725258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834435, 34.860188, 34.709232>,  <28.441742, 34.783443, 35.235359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834435, 34.860188, 34.709232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502695, 34.756088, 34.511463>,  <28.303652, 34.693630, 34.392799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502695, 34.756088, 34.511463>,  <28.834435, 34.860188, 34.709232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502695, 34.756088, 34.511463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249090, 0.619889, -0.744105,
		0.500138, -0.740277, -0.449279,
		-0.829347, -0.260244, -0.494425,
		28.253891, 34.678013, 34.363136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334530, 35.046486, 35.150135>,  <28.834435, 34.860188, 34.709232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334530, 35.046486, 35.150135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434158, 35.140377, 35.525978>,  <29.493935, 35.196712, 35.751484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434158, 35.140377, 35.525978>,  <29.334530, 35.046486, 35.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434158, 35.140377, 35.525978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250294, -0.952827, 0.171680,
		0.935583, 0.192419, -0.296072,
		0.249071, 0.234726, 0.939610,
		29.508881, 35.210796, 35.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989710, 35.390545, 35.328793>,  <29.334530, 35.046486, 35.150135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989710, 35.390545, 35.328793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051188, 35.178982, 35.662651>,  <30.088074, 35.052044, 35.862968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051188, 35.178982, 35.662651>,  <29.989710, 35.390545, 35.328793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051188, 35.178982, 35.662651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194379, -0.811997, -0.550343,
		0.968811, 0.246823, -0.021990,
		0.153693, -0.528903, 0.834649,
		30.097296, 35.020309, 35.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511944, 34.995087, 35.167381>,  <29.989710, 35.390545, 35.328793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511944, 34.995087, 35.167381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344851, 34.805630, 35.477520>,  <30.244595, 34.691956, 35.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344851, 34.805630, 35.477520>,  <30.511944, 34.995087, 35.167381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344851, 34.805630, 35.477520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026934, -0.859453, -0.510505,
		0.908170, -0.192372, 0.371779,
		-0.417733, -0.473639, 0.775348,
		30.219530, 34.663540, 35.710125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512995, 34.288101, 34.937912>,  <30.511944, 34.995087, 35.167381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512995, 34.288101, 34.937912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325560, 34.250996, 35.289326>,  <30.213099, 34.228733, 35.500172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325560, 34.250996, 35.289326>,  <30.512995, 34.288101, 34.937912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325560, 34.250996, 35.289326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137683, -0.974651, -0.176350,
		0.872621, -0.203595, 0.443939,
		-0.468590, -0.092764, 0.878532,
		30.184982, 34.223167, 35.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811319, 33.731922, 35.283520>,  <30.512995, 34.288101, 34.937912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811319, 33.731922, 35.283520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434223, 33.776497, 35.409264>,  <30.207966, 33.803242, 35.484711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434223, 33.776497, 35.409264>,  <30.811319, 33.731922, 35.283520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434223, 33.776497, 35.409264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171345, -0.970461, -0.169839,
		0.286145, -0.213978, 0.933988,
		-0.942742, 0.111436, 0.314357,
		30.151402, 33.809929, 35.503571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246216, 33.213993, 35.456562>,  <30.811319, 33.731922, 35.283520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246216, 33.213993, 35.456562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629517, 33.160328, 35.557560>,  <31.859497, 33.128128, 35.618160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629517, 33.160328, 35.557560>,  <31.246216, 33.213993, 35.456562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629517, 33.160328, 35.557560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261734, 0.767092, -0.585717,
		-0.115103, 0.627351, 0.770183,
		0.958252, -0.134165, 0.252494,
		31.916992, 33.120079, 35.633308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454693, 33.884567, 35.807724>,  <31.246216, 33.213993, 35.456562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454693, 33.884567, 35.807724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739719, 33.669315, 35.627651>,  <31.910734, 33.540165, 35.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739719, 33.669315, 35.627651>,  <31.454693, 33.884567, 35.807724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739719, 33.669315, 35.627651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484973, 0.841458, -0.238222,
		0.507003, -0.048576, 0.860575,
		0.712565, -0.538134, -0.450180,
		31.953489, 33.507874, 35.492596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211376, 34.067383, 35.988655>,  <31.454693, 33.884567, 35.807724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211376, 34.067383, 35.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240337, 33.926773, 35.615303>,  <32.257713, 33.842407, 35.391293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240337, 33.926773, 35.615303>,  <32.211376, 34.067383, 35.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240337, 33.926773, 35.615303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655614, 0.722013, -0.221062,
		0.751617, -0.595928, 0.282740,
		0.072404, -0.351522, -0.933375,
		32.262058, 33.821316, 35.335289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886684, 33.968491, 35.856750>,  <32.211376, 34.067383, 35.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886684, 33.968491, 35.856750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729137, 34.009018, 35.491325>,  <32.634609, 34.033333, 35.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729137, 34.009018, 35.491325>,  <32.886684, 33.968491, 35.856750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729137, 34.009018, 35.491325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648107, 0.735396, -0.197863,
		0.651785, -0.670021, -0.355315,
		-0.393870, 0.101318, -0.913565,
		32.610977, 34.039413, 35.217255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418106, 33.808960, 35.350735>,  <32.886684, 33.968491, 35.856750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418106, 33.808960, 35.350735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145496, 34.070309, 35.218903>,  <32.981930, 34.227119, 35.139805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145496, 34.070309, 35.218903>,  <33.418106, 33.808960, 35.350735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145496, 34.070309, 35.218903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701697, 0.711301, -0.040895,
		0.207708, -0.259134, -0.943242,
		-0.681527, 0.653376, -0.329577,
		32.941040, 34.266323, 35.120029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695580, 34.117516, 34.749458>,  <33.418106, 33.808960, 35.350735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695580, 34.117516, 34.749458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430714, 34.380318, 34.893616>,  <33.271797, 34.537998, 34.980110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430714, 34.380318, 34.893616>,  <33.695580, 34.117516, 34.749458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430714, 34.380318, 34.893616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663822, 0.737424, -0.124688,
		-0.347685, 0.156675, -0.924428,
		-0.662160, 0.657008, 0.360396,
		33.232067, 34.577419, 35.001736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734749, 34.648670, 34.245895>,  <33.695580, 34.117516, 34.749458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734749, 34.648670, 34.245895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582062, 34.809189, 34.578941>,  <33.490452, 34.905499, 34.778770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582062, 34.809189, 34.578941>,  <33.734749, 34.648670, 34.245895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582062, 34.809189, 34.578941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679986, 0.732073, -0.041096,
		-0.626029, 0.550482, -0.552320,
		-0.381715, 0.401297, 0.832619,
		33.467548, 34.929577, 34.828728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506924, 35.330273, 34.089146>,  <33.734749, 34.648670, 34.245895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506924, 35.330273, 34.089146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290428, 35.325035, 34.425453>,  <33.160530, 35.321892, 34.627235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290428, 35.325035, 34.425453>,  <33.506924, 35.330273, 34.089146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290428, 35.325035, 34.425453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174364, 0.976398, 0.127454,
		-0.822591, 0.215582, -0.526183,
		-0.541241, -0.013095, 0.840766,
		33.128056, 35.321106, 34.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178177, 35.986610, 34.179626>,  <33.506924, 35.330273, 34.089146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178177, 35.986610, 34.179626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192604, 35.834335, 34.549225>,  <33.201260, 35.742970, 34.770985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192604, 35.834335, 34.549225>,  <33.178177, 35.986610, 34.179626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192604, 35.834335, 34.549225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040088, 0.924408, 0.379292,
		-0.998545, 0.023362, 0.048600,
		0.036066, -0.380688, 0.924000,
		33.203423, 35.720127, 34.826424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481937, 36.199631, 34.554920>,  <33.178177, 35.986610, 34.179626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481937, 36.199631, 34.554920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792568, 36.125675, 34.795834>,  <32.978947, 36.081303, 34.940384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792568, 36.125675, 34.795834>,  <32.481937, 36.199631, 34.554920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792568, 36.125675, 34.795834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055524, 0.932164, 0.357752,
		-0.627576, -0.311262, 0.713627,
		0.776573, -0.184893, 0.602287,
		33.025539, 36.070206, 34.976521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294846, 36.280807, 35.268353>,  <32.481937, 36.199631, 34.554920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294846, 36.280807, 35.268353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691620, 36.329582, 35.254471>,  <32.929684, 36.358845, 35.246140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691620, 36.329582, 35.254471>,  <32.294846, 36.280807, 35.268353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691620, 36.329582, 35.254471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100201, 0.921765, 0.374580,
		0.077666, -0.368079, 0.926545,
		0.991931, 0.121933, -0.034708,
		32.989201, 36.366161, 35.244057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420334, 36.658096, 35.905293>,  <32.294846, 36.280807, 35.268353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420334, 36.658096, 35.905293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742783, 36.699905, 35.672314>,  <32.936253, 36.724991, 35.532528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742783, 36.699905, 35.672314>,  <32.420334, 36.658096, 35.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742783, 36.699905, 35.672314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134859, 0.925927, 0.352806,
		0.576180, -0.362952, 0.732313,
		0.806120, 0.104520, -0.582448,
		32.984619, 36.731262, 35.497578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584816, 37.403000, 36.153408>,  <32.420334, 36.658096, 35.905293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584816, 37.403000, 36.153408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965992, 37.423645, 36.272903>,  <33.194698, 37.436031, 36.344601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965992, 37.423645, 36.272903>,  <32.584816, 37.403000, 36.153408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965992, 37.423645, 36.272903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282267, -0.510584, -0.812175,
		0.110617, 0.858277, -0.501123,
		0.952937, 0.051610, 0.298743,
		33.251873, 37.439129, 36.362526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994354, 37.655586, 35.525387>,  <32.584816, 37.403000, 36.153408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994354, 37.655586, 35.525387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199532, 37.458355, 35.806458>,  <33.322639, 37.340015, 35.975101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199532, 37.458355, 35.806458>,  <32.994354, 37.655586, 35.525387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199532, 37.458355, 35.806458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336895, -0.637266, -0.693105,
		0.789550, 0.592254, -0.160766,
		0.512945, -0.493080, 0.702681,
		33.353416, 37.310432, 36.017262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714710, 37.505760, 35.241024>,  <32.994354, 37.655586, 35.525387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714710, 37.505760, 35.241024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568707, 37.247658, 35.509476>,  <33.481106, 37.092796, 35.670547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568707, 37.247658, 35.509476>,  <33.714710, 37.505760, 35.241024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568707, 37.247658, 35.509476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296204, -0.763898, -0.573343,
		0.882627, -0.010484, 0.469957,
		-0.365010, -0.645252, 0.671132,
		33.459202, 37.054081, 35.710815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996529, 36.850861, 35.052170>,  <33.714710, 37.505760, 35.241024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996529, 36.850861, 35.052170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735859, 36.741405, 35.335136>,  <33.579456, 36.675732, 35.504917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735859, 36.741405, 35.335136>,  <33.996529, 36.850861, 35.052170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735859, 36.741405, 35.335136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001770, -0.932106, -0.362182,
		0.758498, -0.237276, 0.606944,
		-0.651673, -0.273641, 0.707420,
		33.540356, 36.659313, 35.547363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268394, 36.291252, 35.387234>,  <33.996529, 36.850861, 35.052170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268394, 36.291252, 35.387234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869770, 36.321339, 35.373283>,  <33.630596, 36.339390, 35.364914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869770, 36.321339, 35.373283>,  <34.268394, 36.291252, 35.387234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869770, 36.321339, 35.373283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058527, -0.936183, -0.346608,
		-0.058721, -0.343373, 0.937362,
		-0.996557, 0.075214, -0.034877,
		33.570805, 36.343903, 35.362820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983047, 35.863903, 35.871246>,  <34.268394, 36.291252, 35.387234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983047, 35.863903, 35.871246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701797, 35.931011, 35.594849>,  <33.533047, 35.971275, 35.429012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701797, 35.931011, 35.594849>,  <33.983047, 35.863903, 35.871246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701797, 35.931011, 35.594849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108380, -0.985699, -0.129036,
		-0.702757, -0.015839, 0.711253,
		-0.703125, 0.167767, -0.690991,
		33.490860, 35.981342, 35.387550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548054, 35.223427, 35.918064>,  <33.983047, 35.863903, 35.871246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548054, 35.223427, 35.918064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422241, 35.370789, 35.568127>,  <33.346752, 35.459206, 35.358166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422241, 35.370789, 35.568127>,  <33.548054, 35.223427, 35.918064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422241, 35.370789, 35.568127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518858, -0.838480, -0.166544,
		-0.794893, 0.401535, 0.454878,
		-0.314533, 0.368402, -0.874842,
		33.327881, 35.481308, 35.305676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821095, 35.286537, 35.899399>,  <33.548054, 35.223427, 35.918064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821095, 35.286537, 35.899399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980980, 35.247025, 35.534878>,  <33.076912, 35.223316, 35.316166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980980, 35.247025, 35.534878>,  <32.821095, 35.286537, 35.899399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980980, 35.247025, 35.534878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615001, -0.766104, -0.186704,
		-0.679710, 0.635079, -0.366972,
		0.399710, -0.098784, -0.911303,
		33.100891, 35.217388, 35.261486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352535, 35.502674, 35.298710>,  <32.821095, 35.286537, 35.899399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352535, 35.502674, 35.298710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613441, 35.222729, 35.182266>,  <32.769985, 35.054760, 35.112400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613441, 35.222729, 35.182266>,  <32.352535, 35.502674, 35.298710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613441, 35.222729, 35.182266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752858, -0.642789, -0.141519,
		-0.088076, 0.311469, -0.946166,
		0.652264, -0.699864, -0.291106,
		32.809120, 35.012768, 35.094936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087494, 35.113041, 34.639519>,  <32.352535, 35.502674, 35.298710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087494, 35.113041, 34.639519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328678, 34.862690, 34.837395>,  <32.473389, 34.712479, 34.956120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328678, 34.862690, 34.837395>,  <32.087494, 35.113041, 34.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328678, 34.862690, 34.837395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585020, -0.768477, -0.259220,
		0.542397, -0.133104, -0.829511,
		0.602957, -0.625881, 0.494688,
		32.509563, 34.674927, 34.985802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244148, 34.530338, 34.216499>,  <32.087494, 35.113041, 34.639519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244148, 34.530338, 34.216499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300064, 34.414833, 34.595356>,  <32.333614, 34.345531, 34.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300064, 34.414833, 34.595356>,  <32.244148, 34.530338, 34.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300064, 34.414833, 34.595356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544270, -0.821480, -0.170122,
		0.827182, -0.491719, -0.271997,
		0.139788, -0.288762, 0.947141,
		32.341999, 34.328205, 34.879498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735687, 34.207588, 33.624886>,  <32.244148, 34.530338, 34.216499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735687, 34.207588, 33.624886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113659, 34.317005, 33.553017>,  <32.340443, 34.382656, 33.509895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113659, 34.317005, 33.553017>,  <31.735687, 34.207588, 33.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113659, 34.317005, 33.553017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294220, -0.469600, 0.832412,
		0.143327, -0.839434, -0.524221,
		0.944930, 0.273544, -0.179672,
		32.397137, 34.399067, 33.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039864, 33.569313, 33.743107>,  <31.735687, 34.207588, 33.624886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039864, 33.569313, 33.743107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311058, 33.857239, 33.802692>,  <32.473774, 34.029995, 33.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311058, 33.857239, 33.802692>,  <32.039864, 33.569313, 33.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311058, 33.857239, 33.802692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390305, -0.524253, 0.756849,
		0.622890, -0.454993, -0.636387,
		0.677989, 0.719819, 0.148966,
		32.514454, 34.073185, 33.847382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709087, 33.265511, 33.659615>,  <32.039864, 33.569313, 33.743107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709087, 33.265511, 33.659615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679878, 33.582020, 33.902451>,  <32.662354, 33.771923, 34.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679878, 33.582020, 33.902451>,  <32.709087, 33.265511, 33.659615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679878, 33.582020, 33.902451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552714, -0.474578, 0.685042,
		0.830165, 0.385572, -0.402690,
		-0.073025, 0.791271, 0.607090,
		32.657970, 33.819401, 34.084576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410885, 33.489693, 33.823044>,  <32.709087, 33.265511, 33.659615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410885, 33.489693, 33.823044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132008, 33.560425, 34.100937>,  <32.964680, 33.602863, 34.267673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132008, 33.560425, 34.100937>,  <33.410885, 33.489693, 33.823044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132008, 33.560425, 34.100937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620029, -0.337693, 0.708186,
		0.359834, 0.924497, 0.125799,
		-0.697197, 0.176831, 0.694728,
		32.922848, 33.613476, 34.309357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939953, 33.132191, 33.302563>,  <33.410885, 33.489693, 33.823044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939953, 33.132191, 33.302563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305481, 33.205288, 33.157494>,  <34.524799, 33.249146, 33.070454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305481, 33.205288, 33.157494>,  <33.939953, 33.132191, 33.302563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305481, 33.205288, 33.157494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357770, -0.060314, -0.931860,
		-0.192168, 0.981308, 0.010265,
		0.913823, 0.182747, -0.362673,
		34.579628, 33.260113, 33.048691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866039, 33.602196, 32.708389>,  <33.939953, 33.132191, 33.302563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866039, 33.602196, 32.708389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199253, 33.392933, 32.636429>,  <34.399181, 33.267376, 32.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199253, 33.392933, 32.636429>,  <33.866039, 33.602196, 32.708389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199253, 33.392933, 32.636429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256053, -0.076336, -0.963644,
		0.490400, 0.848813, -0.197545,
		0.833033, -0.523153, -0.179906,
		34.449162, 33.235989, 32.582458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169155, 33.858543, 32.048153>,  <33.866039, 33.602196, 32.708389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169155, 33.858543, 32.048153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234959, 33.467300, 32.099140>,  <34.274441, 33.232555, 32.129734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234959, 33.467300, 32.099140>,  <34.169155, 33.858543, 32.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234959, 33.467300, 32.099140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487121, -0.192933, -0.851757,
		0.857701, 0.078024, -0.508193,
		0.164504, -0.978105, 0.127472,
		34.284309, 33.173870, 32.137383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841156, 33.576309, 31.344196>,  <34.169155, 33.858543, 32.048153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841156, 33.576309, 31.344196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990314, 33.274269, 31.559891>,  <34.079811, 33.093044, 31.689306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990314, 33.274269, 31.559891>,  <33.841156, 33.576309, 31.344196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990314, 33.274269, 31.559891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219352, -0.636417, -0.739498,
		0.901573, 0.157474, -0.402950,
		0.372895, -0.755099, 0.539235,
		34.102184, 33.047741, 31.721661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366547, 33.134708, 30.946743>,  <33.841156, 33.576309, 31.344196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366547, 33.134708, 30.946743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113911, 32.954895, 31.199411>,  <33.962330, 32.847008, 31.351013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113911, 32.954895, 31.199411>,  <34.366547, 33.134708, 30.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113911, 32.954895, 31.199411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360128, -0.551409, -0.752500,
		0.686584, -0.702756, 0.186376,
		-0.631594, -0.449536, 0.631671,
		33.924431, 32.820034, 31.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435474, 32.422550, 30.867367>,  <34.366547, 33.134708, 30.946743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435474, 32.422550, 30.867367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074707, 32.480873, 31.029985>,  <33.858246, 32.515869, 31.127556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074707, 32.480873, 31.029985>,  <34.435474, 32.422550, 30.867367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074707, 32.480873, 31.029985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430681, -0.374355, -0.821202,
		0.032452, -0.915750, 0.400436,
		-0.901921, 0.145810, 0.406545,
		33.804131, 32.524616, 31.151949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092239, 31.709618, 30.857512>,  <34.435474, 32.422550, 30.867367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092239, 31.709618, 30.857512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830906, 32.008724, 30.904850>,  <33.674107, 32.188187, 30.933254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830906, 32.008724, 30.904850>,  <34.092239, 31.709618, 30.857512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830906, 32.008724, 30.904850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591564, -0.406671, -0.696183,
		-0.472452, -0.524849, 0.708041,
		-0.653331, 0.747765, 0.118349,
		33.634907, 32.233055, 30.940355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459988, 31.406359, 30.765202>,  <34.092239, 31.709618, 30.857512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459988, 31.406359, 30.765202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374653, 31.789047, 30.686039>,  <33.323452, 32.018661, 30.638540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374653, 31.789047, 30.686039>,  <33.459988, 31.406359, 30.765202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374653, 31.789047, 30.686039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440789, -0.275041, -0.854434,
		-0.871889, -0.095049, 0.480390,
		-0.213340, 0.956723, -0.197909,
		33.310650, 32.076065, 30.626667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810673, 31.374496, 30.457882>,  <33.459988, 31.406359, 30.765202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810673, 31.374496, 30.457882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051540, 31.673021, 30.344456>,  <33.196060, 31.852137, 30.276400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051540, 31.673021, 30.344456>,  <32.810673, 31.374496, 30.457882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051540, 31.673021, 30.344456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014168, -0.365116, -0.930854,
		-0.798243, 0.556514, -0.230436,
		0.602170, 0.746312, -0.283566,
		33.232193, 31.896915, 30.259386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565697, 31.685602, 29.826115>,  <32.810673, 31.374496, 30.457882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565697, 31.685602, 29.826115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959564, 31.748428, 29.856470>,  <33.195885, 31.786125, 29.874683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959564, 31.748428, 29.856470>,  <32.565697, 31.685602, 29.826115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959564, 31.748428, 29.856470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133886, -0.401633, -0.905961,
		-0.111818, 0.902231, -0.416504,
		0.984668, 0.157067, 0.075886,
		33.254963, 31.795547, 29.879236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582508, 32.054977, 29.216852>,  <32.565697, 31.685602, 29.826115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582508, 32.054977, 29.216852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901791, 31.850170, 29.343788>,  <33.093361, 31.727285, 29.419950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901791, 31.850170, 29.343788>,  <32.582508, 32.054977, 29.216852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901791, 31.850170, 29.343788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023244, -0.500233, -0.865579,
		0.601940, 0.698284, -0.387386,
		0.798203, -0.512022, 0.317341,
		33.141251, 31.696564, 29.438990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074226, 32.144615, 28.670448>,  <32.582508, 32.054977, 29.216852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074226, 32.144615, 28.670448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101620, 31.798952, 28.869867>,  <33.118053, 31.591555, 28.989519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101620, 31.798952, 28.869867>,  <33.074226, 32.144615, 28.670448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101620, 31.798952, 28.869867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140243, -0.503094, -0.852777,
		0.987746, -0.011520, -0.155643,
		0.068479, -0.864155, 0.498545,
		33.122162, 31.539705, 29.019430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674515, 31.752819, 28.492558>,  <33.074226, 32.144615, 28.670448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674515, 31.752819, 28.492558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322323, 31.574936, 28.558268>,  <33.111008, 31.468206, 28.597694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322323, 31.574936, 28.558268>,  <33.674515, 31.752819, 28.492558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322323, 31.574936, 28.558268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062950, -0.233776, -0.970251,
		0.469883, -0.864629, 0.177841,
		-0.880481, -0.444709, 0.164276,
		33.058178, 31.441523, 28.607550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603348, 30.961977, 28.404354>,  <33.674515, 31.752819, 28.492558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603348, 30.961977, 28.404354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266685, 31.148581, 28.295553>,  <33.064690, 31.260542, 28.230272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266685, 31.148581, 28.295553>,  <33.603348, 30.961977, 28.404354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266685, 31.148581, 28.295553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140018, -0.297942, -0.944259,
		-0.521545, -0.832827, 0.185445,
		-0.841657, 0.466508, -0.272001,
		33.014187, 31.288532, 28.213953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240288, 30.458715, 27.968937>,  <33.603348, 30.961977, 28.404354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240288, 30.458715, 27.968937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067806, 30.810074, 27.886490>,  <32.964317, 31.020889, 27.837021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067806, 30.810074, 27.886490>,  <33.240288, 30.458715, 27.968937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067806, 30.810074, 27.886490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053985, -0.202920, -0.977706,
		-0.900637, -0.432721, 0.040080,
		-0.431207, 0.878394, -0.206117,
		32.938442, 31.073591, 27.824656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601574, 30.281576, 27.666142>,  <33.240288, 30.458715, 27.968937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601574, 30.281576, 27.666142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702728, 30.651478, 27.552387>,  <32.763420, 30.873419, 27.484135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702728, 30.651478, 27.552387>,  <32.601574, 30.281576, 27.666142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702728, 30.651478, 27.552387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010951, -0.291186, -0.956604,
		-0.967434, 0.245026, -0.063509,
		0.252886, 0.924756, -0.284386,
		32.778595, 30.928905, 27.467072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335110, 30.257366, 27.058729>,  <32.601574, 30.281576, 27.666142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335110, 30.257366, 27.058729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531975, 30.604788, 27.035440>,  <32.650093, 30.813242, 27.021467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531975, 30.604788, 27.035440>,  <32.335110, 30.257366, 27.058729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531975, 30.604788, 27.035440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015094, -0.075390, -0.997040,
		-0.870374, 0.489825, -0.050214,
		0.492160, 0.868555, -0.058224,
		32.679623, 30.865355, 27.017973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903723, 30.697926, 26.659954>,  <32.335110, 30.257366, 27.058729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903723, 30.697926, 26.659954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288460, 30.800741, 26.622461>,  <32.519302, 30.862431, 26.599966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288460, 30.800741, 26.622461>,  <31.903723, 30.697926, 26.659954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288460, 30.800741, 26.622461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081624, -0.057409, -0.995008,
		-0.261136, 0.964694, -0.034238,
		0.961845, 0.257038, -0.093734,
		32.577015, 30.877853, 26.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834368, 31.016298, 26.068340>,  <31.903723, 30.697926, 26.659954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834368, 31.016298, 26.068340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229298, 30.976738, 26.117987>,  <32.466255, 30.953003, 26.147774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229298, 30.976738, 26.117987>,  <31.834368, 31.016298, 26.068340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229298, 30.976738, 26.117987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138144, 0.150634, -0.978890,
		0.078115, 0.983630, 0.162387,
		0.987327, -0.098899, 0.124116,
		32.525497, 30.947069, 26.155222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166283, 31.567308, 25.703606>,  <31.834368, 31.016298, 26.068340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166283, 31.567308, 25.703606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439484, 31.280533, 25.759474>,  <32.603405, 31.108467, 25.792994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439484, 31.280533, 25.759474>,  <32.166283, 31.567308, 25.703606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439484, 31.280533, 25.759474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238566, 0.038231, -0.970374,
		0.690360, 0.696086, 0.197149,
		0.683001, -0.716940, 0.139669,
		32.644382, 31.065451, 25.801374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706772, 31.761686, 25.245762>,  <32.166283, 31.567308, 25.703606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706772, 31.761686, 25.245762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806183, 31.377747, 25.297794>,  <32.865829, 31.147383, 25.329014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806183, 31.377747, 25.297794>,  <32.706772, 31.761686, 25.245762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806183, 31.377747, 25.297794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316722, -0.046384, -0.947384,
		0.915381, 0.276649, 0.292478,
		0.248527, -0.959851, 0.130079,
		32.880741, 31.089790, 25.336819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329590, 31.727322, 25.051601>,  <32.706772, 31.761686, 25.245762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329590, 31.727322, 25.051601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179825, 31.359663, 25.002638>,  <33.089966, 31.139069, 24.973259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179825, 31.359663, 25.002638>,  <33.329590, 31.727322, 25.051601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179825, 31.359663, 25.002638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379984, -0.031670, -0.924450,
		0.845828, -0.392643, 0.361119,
		-0.374416, -0.919145, -0.122411,
		33.067501, 31.083920, 24.965914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732655, 31.462433, 24.449116>,  <33.329590, 31.727322, 25.051601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732655, 31.462433, 24.449116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455784, 31.176521, 24.489080>,  <33.289661, 31.004974, 24.513060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455784, 31.176521, 24.489080>,  <33.732655, 31.462433, 24.449116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455784, 31.176521, 24.489080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137270, -0.266287, -0.954069,
		0.708556, -0.646668, 0.282435,
		-0.692175, -0.714781, 0.099911,
		33.248131, 30.962088, 24.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040081, 30.830338, 24.164268>,  <33.732655, 31.462433, 24.449116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040081, 30.830338, 24.164268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647259, 30.755247, 24.157005>,  <33.411568, 30.710194, 24.152647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647259, 30.755247, 24.157005>,  <34.040081, 30.830338, 24.164268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647259, 30.755247, 24.157005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060352, -0.221585, -0.973272,
		0.178684, -0.956901, 0.228938,
		-0.982054, -0.187725, -0.018157,
		33.352642, 30.698929, 24.151558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935322, 30.203318, 23.815435>,  <34.040081, 30.830338, 24.164268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935322, 30.203318, 23.815435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570034, 30.364197, 23.789286>,  <33.350861, 30.460724, 23.773596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570034, 30.364197, 23.789286>,  <33.935322, 30.203318, 23.815435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570034, 30.364197, 23.789286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032538, -0.087944, -0.995594,
		-0.406177, -0.911318, 0.067225,
		-0.913215, 0.402200, -0.065373,
		33.296070, 30.484858, 23.769674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551865, 29.694611, 23.609529>,  <33.935322, 30.203318, 23.815435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551865, 29.694611, 23.609529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325863, 30.014732, 23.529245>,  <33.190262, 30.206806, 23.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325863, 30.014732, 23.529245>,  <33.551865, 29.694611, 23.609529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325863, 30.014732, 23.529245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189845, -0.362830, -0.912312,
		-0.802952, -0.477353, 0.356934,
		-0.565001, 0.800305, -0.200711,
		33.156361, 30.254824, 23.469032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033710, 29.439867, 23.324774>,  <33.551865, 29.694611, 23.609529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033710, 29.439867, 23.324774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045212, 29.820431, 23.202141>,  <33.052113, 30.048769, 23.128561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045212, 29.820431, 23.202141>,  <33.033710, 29.439867, 23.324774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045212, 29.820431, 23.202141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174995, -0.297183, -0.938648,
		-0.984149, 0.080641, 0.157946,
		0.028755, 0.951409, -0.306584,
		33.053837, 30.105854, 23.110167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369530, 29.565479, 22.897917>,  <33.033710, 29.439867, 23.324774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369530, 29.565479, 22.897917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646446, 29.836029, 22.797321>,  <32.812595, 29.998360, 22.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646446, 29.836029, 22.797321>,  <32.369530, 29.565479, 22.897917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646446, 29.836029, 22.797321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226131, -0.127611, -0.965702,
		-0.685269, 0.725419, 0.064606,
		0.692294, 0.676375, -0.251488,
		32.854134, 30.038942, 22.721874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056458, 30.106756, 22.494152>,  <32.369530, 29.565479, 22.897917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056458, 30.106756, 22.494152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438808, 30.125385, 22.378136>,  <32.668221, 30.136562, 22.308525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438808, 30.125385, 22.378136>,  <32.056458, 30.106756, 22.494152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438808, 30.125385, 22.378136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288316, -0.040411, -0.956682,
		-0.056277, 0.998097, -0.025200,
		0.955880, 0.046574, -0.290041,
		32.725571, 30.139357, 22.291122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076439, 30.652536, 21.999468>,  <32.056458, 30.106756, 22.494152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076439, 30.652536, 21.999468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419369, 30.456375, 21.936855>,  <32.625126, 30.338678, 21.899288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419369, 30.456375, 21.936855>,  <32.076439, 30.652536, 21.999468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419369, 30.456375, 21.936855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207691, -0.051288, -0.976849,
		0.471024, 0.869984, -0.145823,
		0.857322, -0.490405, -0.156530,
		32.676567, 30.309254, 21.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292038, 30.900307, 21.395378>,  <32.076439, 30.652536, 21.999468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292038, 30.900307, 21.395378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510426, 30.571634, 21.460812>,  <32.641457, 30.374430, 21.500072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510426, 30.571634, 21.460812>,  <32.292038, 30.900307, 21.395378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510426, 30.571634, 21.460812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127471, -0.274450, -0.953115,
		0.828054, 0.499514, -0.254581,
		0.545964, -0.821683, 0.163586,
		32.674213, 30.325129, 21.509888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664631, 30.886374, 20.756676>,  <32.292038, 30.900307, 21.395378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664631, 30.886374, 20.756676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705956, 30.525726, 20.924683>,  <32.730751, 30.309338, 21.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705956, 30.525726, 20.924683>,  <32.664631, 30.886374, 20.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705956, 30.525726, 20.924683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006229, -0.422854, -0.906177,
		0.994630, 0.091001, -0.049301,
		0.103310, -0.901617, 0.420016,
		32.736950, 30.255241, 21.050688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167397, 30.560738, 20.416716>,  <32.664631, 30.886374, 20.756676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167397, 30.560738, 20.416716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913563, 30.285950, 20.558352>,  <32.761265, 30.121077, 20.643333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913563, 30.285950, 20.558352>,  <33.167397, 30.560738, 20.416716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913563, 30.285950, 20.558352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113750, -0.370150, -0.921981,
		0.764440, -0.625349, 0.156747,
		-0.634580, -0.686969, 0.354091,
		32.723190, 30.079859, 20.664579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431992, 29.933727, 20.118198>,  <33.167397, 30.560738, 20.416716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431992, 29.933727, 20.118198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074203, 29.825535, 20.260611>,  <32.859531, 29.760618, 20.346058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074203, 29.825535, 20.260611>,  <33.431992, 29.933727, 20.118198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074203, 29.825535, 20.260611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279746, -0.282623, -0.917533,
		0.348799, -0.920306, 0.177132,
		-0.894472, -0.270483, 0.356031,
		32.805862, 29.744390, 20.367420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392033, 29.242907, 19.987541>,  <33.431992, 29.933727, 20.118198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392033, 29.242907, 19.987541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024490, 29.397701, 20.018387>,  <32.803967, 29.490578, 20.036894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024490, 29.397701, 20.018387>,  <33.392033, 29.242907, 19.987541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024490, 29.397701, 20.018387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229219, -0.364400, -0.902592,
		-0.321185, -0.847029, 0.423535,
		-0.918858, 0.386981, 0.077115,
		32.748833, 29.513798, 20.041521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062778, 28.680094, 19.692120>,  <33.392033, 29.242907, 19.987541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062778, 28.680094, 19.692120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823360, 29.000280, 19.679440>,  <32.679710, 29.192392, 19.671831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823360, 29.000280, 19.679440>,  <33.062778, 28.680094, 19.692120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823360, 29.000280, 19.679440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345894, -0.293924, -0.891048,
		-0.722570, -0.522364, 0.452801,
		-0.598540, 0.800465, -0.031698,
		32.643799, 29.240419, 19.669930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401833, 28.467005, 19.546230>,  <33.062778, 28.680094, 19.692120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401833, 28.467005, 19.546230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404747, 28.853310, 19.442499>,  <32.406498, 29.085093, 19.380260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404747, 28.853310, 19.442499>,  <32.401833, 28.467005, 19.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404747, 28.853310, 19.442499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404305, -0.234344, -0.884093,
		-0.914595, 0.111291, 0.388754,
		0.007289, 0.965762, -0.259326,
		32.406933, 29.143038, 19.364702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780077, 28.528276, 19.202604>,  <32.401833, 28.467005, 19.546230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780077, 28.528276, 19.202604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005226, 28.831682, 19.071255>,  <32.140316, 29.013725, 18.992445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005226, 28.831682, 19.071255>,  <31.780077, 28.528276, 19.202604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005226, 28.831682, 19.071255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354854, -0.137045, -0.924823,
		-0.746494, 0.637082, 0.192023,
		0.562872, 0.758515, -0.328374,
		32.174088, 29.059237, 18.972742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284279, 28.792398, 18.781769>,  <31.780077, 28.528276, 19.202604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284279, 28.792398, 18.781769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620930, 28.984571, 18.683100>,  <31.822920, 29.099874, 18.623898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620930, 28.984571, 18.683100>,  <31.284279, 28.792398, 18.781769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620930, 28.984571, 18.683100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313513, 0.062728, -0.947510,
		-0.439741, 0.874786, 0.203415,
		0.841628, 0.480432, -0.246673,
		31.873419, 29.128700, 18.609098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002132, 29.291960, 18.421833>,  <31.284279, 28.792398, 18.781769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002132, 29.291960, 18.421833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384344, 29.263744, 18.307301>,  <31.613672, 29.246815, 18.238581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384344, 29.263744, 18.307301>,  <31.002132, 29.291960, 18.421833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384344, 29.263744, 18.307301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287836, -0.011980, -0.957605,
		0.064117, 0.997437, -0.031750,
		0.955531, -0.070537, -0.286330,
		31.671003, 29.242582, 18.221401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213158, 29.875181, 17.876883>,  <31.002132, 29.291960, 18.421833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213158, 29.875181, 17.876883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437584, 29.550524, 17.811842>,  <31.572239, 29.355728, 17.772818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437584, 29.550524, 17.811842>,  <31.213158, 29.875181, 17.876883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437584, 29.550524, 17.811842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262259, 0.012017, -0.964923,
		0.785128, 0.584028, -0.206118,
		0.561065, -0.811645, -0.162602,
		31.605904, 29.307030, 17.763062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712490, 30.134352, 17.386415>,  <31.213158, 29.875181, 17.876883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712490, 30.134352, 17.386415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675400, 29.736742, 17.363369>,  <31.653147, 29.498177, 17.349541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675400, 29.736742, 17.363369>,  <31.712490, 30.134352, 17.386415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675400, 29.736742, 17.363369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084371, 0.065499, -0.994279,
		0.992111, -0.087333, -0.089940,
		-0.092724, -0.994024, -0.057614,
		31.647583, 29.438536, 17.346085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121105, 29.874281, 16.774559>,  <31.712490, 30.134352, 17.386415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121105, 29.874281, 16.774559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880226, 29.566780, 16.860706>,  <31.735699, 29.382280, 16.912394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880226, 29.566780, 16.860706>,  <32.121105, 29.874281, 16.774559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880226, 29.566780, 16.860706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222105, -0.097791, -0.970106,
		0.766831, -0.632028, -0.111853,
		-0.602196, -0.768750, 0.215366,
		31.699568, 29.336155, 16.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344006, 29.415577, 16.228081>,  <32.121105, 29.874281, 16.774559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344006, 29.415577, 16.228081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996649, 29.279808, 16.372684>,  <31.788235, 29.198347, 16.459446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996649, 29.279808, 16.372684>,  <32.344006, 29.415577, 16.228081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996649, 29.279808, 16.372684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307958, -0.202250, -0.929654,
		0.388660, -0.918634, 0.071105,
		-0.868392, -0.339422, 0.361507,
		31.736132, 29.177982, 16.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151707, 28.869310, 15.727290>,  <32.344006, 29.415577, 16.228081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151707, 28.869310, 15.727290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819021, 28.948544, 15.934757>,  <31.619410, 28.996082, 16.059237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819021, 28.948544, 15.934757>,  <32.151707, 28.869310, 15.727290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819021, 28.948544, 15.934757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553621, -0.225399, -0.801685,
		-0.041892, -0.953918, 0.297130,
		-0.831715, 0.198081, 0.518667,
		31.569508, 29.007969, 16.090357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806576, 28.305546, 15.852868>,  <32.151707, 28.869310, 15.727290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806576, 28.305546, 15.852868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539444, 28.601992, 15.825282>,  <31.379166, 28.779860, 15.808730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539444, 28.601992, 15.825282>,  <31.806576, 28.305546, 15.852868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539444, 28.601992, 15.825282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475055, -0.495735, -0.727028,
		-0.572999, -0.452767, 0.683135,
		-0.667828, 0.741113, -0.068966,
		31.339096, 28.824326, 15.804592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189240, 27.955076, 15.457359>,  <31.806576, 28.305546, 15.852868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189240, 27.955076, 15.457359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087898, 28.342026, 15.456881>,  <31.027094, 28.574196, 15.456594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087898, 28.342026, 15.456881>,  <31.189240, 27.955076, 15.457359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087898, 28.342026, 15.456881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643507, -0.169457, -0.746447,
		-0.722295, -0.188346, 0.665444,
		-0.253355, 0.967373, -0.001196,
		31.011892, 28.632238, 15.456522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526707, 27.942362, 15.381160>,  <31.189240, 27.955076, 15.457359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526707, 27.942362, 15.381160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605856, 28.320459, 15.277346>,  <30.653345, 28.547318, 15.215057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605856, 28.320459, 15.277346>,  <30.526707, 27.942362, 15.381160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605856, 28.320459, 15.277346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715882, -0.041513, -0.696986,
		-0.669596, 0.323712, 0.668469,
		0.197872, 0.945245, -0.259536,
		30.665218, 28.604033, 15.199485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888489, 28.281221, 15.341597>,  <30.526707, 27.942362, 15.381160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888489, 28.281221, 15.341597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162176, 28.464733, 15.114841>,  <30.326389, 28.574841, 14.978787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162176, 28.464733, 15.114841>,  <29.888489, 28.281221, 15.341597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162176, 28.464733, 15.114841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647807, 0.025334, -0.761383,
		-0.334945, 0.888189, 0.314535,
		0.684221, 0.458779, -0.566890,
		30.367443, 28.602367, 14.944774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437784, 28.707148, 14.972414>,  <29.888489, 28.281221, 15.341597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437784, 28.707148, 14.972414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789955, 28.679224, 14.784807>,  <30.001257, 28.662470, 14.672243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789955, 28.679224, 14.784807>,  <29.437784, 28.707148, 14.972414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789955, 28.679224, 14.784807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456392, 0.143656, -0.878106,
		0.128678, 0.987162, 0.094617,
		0.880425, -0.069810, -0.469018,
		30.054083, 28.658281, 14.644102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388132, 29.271580, 14.372573>,  <29.437784, 28.707148, 14.972414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388132, 29.271580, 14.372573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680805, 29.018736, 14.270532>,  <29.856409, 28.867029, 14.209307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680805, 29.018736, 14.270532>,  <29.388132, 29.271580, 14.372573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680805, 29.018736, 14.270532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351118, -0.028728, -0.935890,
		0.584255, 0.774347, -0.242965,
		0.731684, -0.632108, -0.255103,
		29.900311, 28.829103, 14.194001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614304, 29.426886, 13.702304>,  <29.388132, 29.271580, 14.372573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614304, 29.426886, 13.702304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765585, 29.059351, 13.747377>,  <29.856354, 28.838829, 13.774422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765585, 29.059351, 13.747377>,  <29.614304, 29.426886, 13.702304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765585, 29.059351, 13.747377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232555, -0.212126, -0.949169,
		0.896035, 0.332776, -0.293907,
		0.378206, -0.918838, 0.112683,
		29.879047, 28.783699, 13.781182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070856, 29.303507, 13.068451>,  <29.614304, 29.426886, 13.702304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070856, 29.303507, 13.068451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959112, 28.944366, 13.204583>,  <29.892067, 28.728882, 13.286263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959112, 28.944366, 13.204583>,  <30.070856, 29.303507, 13.068451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959112, 28.944366, 13.204583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294363, -0.257292, -0.920408,
		0.913953, -0.357304, -0.192417,
		-0.279358, -0.897850, 0.340330,
		29.875305, 28.675011, 13.306683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249865, 28.710615, 12.512053>,  <30.070856, 29.303507, 13.068451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249865, 28.710615, 12.512053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986712, 28.550077, 12.766961>,  <29.828819, 28.453754, 12.919907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986712, 28.550077, 12.766961>,  <30.249865, 28.710615, 12.512053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986712, 28.550077, 12.766961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442379, -0.478875, -0.758274,
		0.609501, -0.780771, 0.137498,
		-0.657882, -0.401342, 0.637272,
		29.789347, 28.429674, 12.958142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160482, 28.094412, 12.244845>,  <30.249865, 28.710615, 12.512053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160482, 28.094412, 12.244845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850468, 28.115362, 12.496741>,  <29.664459, 28.127932, 12.647879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850468, 28.115362, 12.496741>,  <30.160482, 28.094412, 12.244845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850468, 28.115362, 12.496741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569124, -0.490936, -0.659605,
		0.274615, -0.869619, 0.410303,
		-0.775038, 0.052375, 0.629740,
		29.617956, 28.131075, 12.685663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823057, 27.459753, 12.517006>,  <30.160482, 28.094412, 12.244845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823057, 27.459753, 12.517006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517962, 27.717529, 12.495367>,  <29.334904, 27.872196, 12.482384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517962, 27.717529, 12.495367>,  <29.823057, 27.459753, 12.517006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517962, 27.717529, 12.495367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545569, -0.686114, -0.481251,
		-0.347254, -0.337555, 0.874912,
		-0.762738, 0.644441, -0.054095,
		29.289141, 27.910862, 12.479138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186785, 27.186392, 12.816514>,  <29.823057, 27.459753, 12.517006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186785, 27.186392, 12.816514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049215, 27.458021, 12.557108>,  <28.966673, 27.620998, 12.401464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049215, 27.458021, 12.557108>,  <29.186785, 27.186392, 12.816514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049215, 27.458021, 12.557108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588575, -0.694035, -0.414602,
		-0.731638, 0.239108, 0.638383,
		-0.343925, 0.679075, -0.648515,
		28.946037, 27.661743, 12.362554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454775, 27.055792, 12.840361>,  <29.186785, 27.186392, 12.816514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454775, 27.055792, 12.840361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549545, 27.266476, 12.513817>,  <28.606407, 27.392885, 12.317890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549545, 27.266476, 12.513817>,  <28.454775, 27.055792, 12.840361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549545, 27.266476, 12.513817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590669, -0.589052, -0.551478,
		-0.771347, 0.612858, 0.171549,
		0.236926, 0.526710, -0.816360,
		28.620623, 27.424488, 12.268909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845276, 27.158823, 12.482249>,  <28.454775, 27.055792, 12.840361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845276, 27.158823, 12.482249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138830, 27.192516, 12.212637>,  <28.314962, 27.212732, 12.050869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138830, 27.192516, 12.212637>,  <27.845276, 27.158823, 12.482249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138830, 27.192516, 12.212637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530487, -0.548686, -0.646163,
		-0.424262, 0.831774, -0.357986,
		0.733884, 0.084235, -0.674032,
		28.358995, 27.217787, 12.010427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556595, 27.464504, 11.866229>,  <27.845276, 27.158823, 12.482249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556595, 27.464504, 11.866229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866343, 27.275885, 11.697473>,  <28.052191, 27.162712, 11.596218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866343, 27.275885, 11.697473>,  <27.556595, 27.464504, 11.866229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866343, 27.275885, 11.697473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625164, -0.467372, -0.625086,
		0.097579, 0.747800, -0.656714,
		0.774369, -0.471550, -0.421892,
		28.098654, 27.134420, 11.570905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798368, 27.712513, 11.167910>,  <27.556595, 27.464504, 11.866229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798368, 27.712513, 11.167910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830507, 27.325180, 11.262462>,  <27.849791, 27.092779, 11.319193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830507, 27.325180, 11.262462>,  <27.798368, 27.712513, 11.167910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830507, 27.325180, 11.262462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685717, -0.225810, -0.691955,
		0.723420, -0.106493, -0.682146,
		0.080347, -0.968333, 0.236380,
		27.854610, 27.034679, 11.333376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170959, 27.357534, 11.106354>,  <27.798368, 27.712513, 11.167910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170959, 27.357534, 11.106354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990580, 27.641243, 10.889622>,  <26.882351, 27.811468, 10.759583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990580, 27.641243, 10.889622>,  <27.170959, 27.357534, 11.106354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990580, 27.641243, 10.889622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475548, -0.704648, -0.526616,
		-0.755315, 0.020192, 0.655051,
		-0.450947, 0.709270, -0.541833,
		26.855295, 27.854023, 10.727073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158535, 28.043818, 11.043088>,  <27.170959, 27.357534, 11.106354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158535, 28.043818, 11.043088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838818, 27.894688, 11.231609>,  <26.646986, 27.805210, 11.344723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838818, 27.894688, 11.231609>,  <27.158535, 28.043818, 11.043088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838818, 27.894688, 11.231609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419988, 0.214373, 0.881847,
		-0.429810, 0.902798, -0.014765,
		-0.799295, -0.372826, 0.471304,
		26.599030, 27.782841, 11.373001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912783, 28.554279, 11.571888>,  <27.158535, 28.043818, 11.043088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912783, 28.554279, 11.571888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854462, 28.180029, 11.700476>,  <26.819469, 27.955479, 11.777629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854462, 28.180029, 11.700476>,  <26.912783, 28.554279, 11.571888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854462, 28.180029, 11.700476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297298, 0.268486, 0.916259,
		-0.943586, 0.229167, 0.239013,
		-0.145805, -0.935627, 0.321470,
		26.810720, 27.899342, 11.796917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367319, 28.558744, 12.152464>,  <26.912783, 28.554279, 11.571888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367319, 28.558744, 12.152464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608137, 28.245377, 12.214172>,  <26.752628, 28.057356, 12.251198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608137, 28.245377, 12.214172>,  <26.367319, 28.558744, 12.152464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608137, 28.245377, 12.214172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007562, 0.198795, 0.980012,
		-0.798428, -0.588843, 0.125607,
		0.602043, -0.783418, 0.154271,
		26.788750, 28.010351, 12.260453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079182, 28.059599, 12.673338>,  <26.367319, 28.558744, 12.152464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079182, 28.059599, 12.673338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479162, 28.060270, 12.669535>,  <26.719151, 28.060673, 12.667253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479162, 28.060270, 12.669535>,  <26.079182, 28.059599, 12.673338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479162, 28.060270, 12.669535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009088, 0.168616, 0.985640,
		0.003258, -0.985681, 0.168593,
		0.999954, 0.001679, -0.009508,
		26.779148, 28.060774, 12.666682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299145, 27.817047, 13.330590>,  <26.079182, 28.059599, 12.673338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299145, 27.817047, 13.330590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638521, 27.995335, 13.216409>,  <26.842146, 28.102308, 13.147900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638521, 27.995335, 13.216409>,  <26.299145, 27.817047, 13.330590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638521, 27.995335, 13.216409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080047, 0.425055, 0.901621,
		0.523207, -0.787819, 0.324954,
		0.848438, 0.445723, -0.285454,
		26.893053, 28.129051, 13.130773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743097, 27.741884, 13.914656>,  <26.299145, 27.817047, 13.330590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743097, 27.741884, 13.914656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920816, 28.025162, 13.695180>,  <27.027449, 28.195129, 13.563495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920816, 28.025162, 13.695180>,  <26.743097, 27.741884, 13.914656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920816, 28.025162, 13.695180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111594, 0.563939, 0.818242,
		0.888902, -0.424774, 0.171526,
		0.444298, 0.708195, -0.548688,
		27.054106, 28.237621, 13.530574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372137, 27.918550, 14.281557>,  <26.743097, 27.741884, 13.914656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372137, 27.918550, 14.281557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279322, 28.228426, 14.046265>,  <27.223633, 28.414351, 13.905089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279322, 28.228426, 14.046265>,  <27.372137, 27.918550, 14.281557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279322, 28.228426, 14.046265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114499, 0.622286, 0.774370,
		0.965944, 0.112333, -0.233097,
		-0.232040, 0.774688, -0.588232,
		27.209709, 28.460833, 13.869795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896072, 28.452837, 14.453653>,  <27.372137, 27.918550, 14.281557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896072, 28.452837, 14.453653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573013, 28.622019, 14.289305>,  <27.379177, 28.723528, 14.190696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573013, 28.622019, 14.289305>,  <27.896072, 28.452837, 14.453653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573013, 28.622019, 14.289305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021400, 0.717352, 0.696383,
		0.589278, 0.553639, -0.588418,
		-0.807647, 0.422955, -0.410871,
		27.330719, 28.748905, 14.166043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160513, 29.145866, 14.299582>,  <27.896072, 28.452837, 14.453653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160513, 29.145866, 14.299582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763874, 29.111120, 14.337935>,  <27.525890, 29.090273, 14.360948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763874, 29.111120, 14.337935>,  <28.160513, 29.145866, 14.299582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763874, 29.111120, 14.337935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013150, 0.669593, 0.742612,
		-0.128711, 0.737631, -0.662823,
		-0.991595, -0.086867, 0.095884,
		27.466396, 29.085060, 14.366700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978912, 29.814528, 14.335101>,  <28.160513, 29.145866, 14.299582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978912, 29.814528, 14.335101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663944, 29.628237, 14.496629>,  <27.474964, 29.516462, 14.593545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663944, 29.628237, 14.496629>,  <27.978912, 29.814528, 14.335101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663944, 29.628237, 14.496629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053802, 0.600679, 0.797678,
		-0.614064, 0.649834, -0.447930,
		-0.787420, -0.465726, 0.403818,
		27.427719, 29.488520, 14.617774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523619, 30.374969, 14.587147>,  <27.978912, 29.814528, 14.335101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523619, 30.374969, 14.587147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407000, 30.042463, 14.776460>,  <27.337029, 29.842958, 14.890048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407000, 30.042463, 14.776460>,  <27.523619, 30.374969, 14.587147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407000, 30.042463, 14.776460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095346, 0.517567, 0.850314,
		-0.951793, 0.202780, -0.230153,
		-0.291546, -0.831267, 0.473283,
		27.319536, 29.793083, 14.918445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920990, 30.594585, 14.938448>,  <27.523619, 30.374969, 14.587147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920990, 30.594585, 14.938448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051229, 30.264898, 15.123772>,  <27.129372, 30.067087, 15.234965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051229, 30.264898, 15.123772>,  <26.920990, 30.594585, 14.938448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051229, 30.264898, 15.123772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045215, 0.475876, 0.878349,
		-0.944427, -0.306936, 0.117677,
		0.325596, -0.824216, 0.463309,
		27.148909, 30.017633, 15.262764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436714, 30.564796, 15.489803>,  <26.920990, 30.594585, 14.938448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436714, 30.564796, 15.489803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742809, 30.323288, 15.579129>,  <26.926466, 30.178383, 15.632725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742809, 30.323288, 15.579129>,  <26.436714, 30.564796, 15.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742809, 30.323288, 15.579129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008333, 0.337578, 0.941261,
		-0.643694, -0.722149, 0.253296,
		0.765238, -0.603773, 0.223315,
		26.972382, 30.142157, 15.646124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283852, 30.332495, 16.157097>,  <26.436714, 30.564796, 15.489803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283852, 30.332495, 16.157097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680695, 30.312294, 16.111197>,  <26.918800, 30.300175, 16.083656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680695, 30.312294, 16.111197>,  <26.283852, 30.332495, 16.157097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680695, 30.312294, 16.111197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122885, 0.210255, 0.969893,
		-0.024853, -0.976341, 0.214802,
		0.992110, -0.050501, -0.114752,
		26.978327, 30.297144, 16.076771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554482, 29.874693, 16.663679>,  <26.283852, 30.332495, 16.157097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554482, 29.874693, 16.663679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886290, 30.079580, 16.574657>,  <27.085375, 30.202513, 16.521244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886290, 30.079580, 16.574657>,  <26.554482, 29.874693, 16.663679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886290, 30.079580, 16.574657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192440, 0.111934, 0.974904,
		0.524277, -0.851528, -0.005720,
		0.829518, 0.512221, -0.222553,
		27.135145, 30.233246, 16.507891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129284, 29.500473, 16.951389>,  <26.554482, 29.874693, 16.663679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129284, 29.500473, 16.951389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252274, 29.878345, 16.905716>,  <27.326067, 30.105068, 16.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252274, 29.878345, 16.905716>,  <27.129284, 29.500473, 16.951389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252274, 29.878345, 16.905716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275303, 0.026552, 0.960991,
		0.910862, -0.326913, -0.251910,
		0.307472, 0.944681, -0.114185,
		27.344515, 30.161751, 16.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820608, 29.554344, 17.194881>,  <27.129284, 29.500473, 16.951389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820608, 29.554344, 17.194881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743507, 29.946487, 17.211605>,  <27.697247, 30.181772, 17.221640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743507, 29.946487, 17.211605>,  <27.820608, 29.554344, 17.194881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743507, 29.946487, 17.211605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189715, -0.004571, 0.981828,
		0.962733, 0.197182, -0.185107,
		-0.192753, 0.980356, 0.041809,
		27.685682, 30.240595, 17.224148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420702, 29.901945, 17.621126>,  <27.820608, 29.554344, 17.194881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420702, 29.901945, 17.621126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123520, 30.168785, 17.599220>,  <27.945211, 30.328890, 17.586077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123520, 30.168785, 17.599220>,  <28.420702, 29.901945, 17.621126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123520, 30.168785, 17.599220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106100, 0.198156, 0.974411,
		0.660881, 0.718131, -0.218000,
		-0.742953, 0.667099, -0.054764,
		27.900635, 30.368916, 17.582790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659998, 30.401598, 17.901060>,  <28.420702, 29.901945, 17.621126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659998, 30.401598, 17.901060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270435, 30.488672, 17.926735>,  <28.036697, 30.540916, 17.942139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270435, 30.488672, 17.926735>,  <28.659998, 30.401598, 17.901060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270435, 30.488672, 17.926735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131531, 0.310915, 0.941293,
		0.184951, 0.925173, -0.331434,
		-0.973906, 0.217687, 0.064185,
		27.978264, 30.553978, 17.945990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640291, 31.175039, 18.109842>,  <28.659998, 30.401598, 17.901060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640291, 31.175039, 18.109842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305166, 30.986969, 18.220844>,  <28.104092, 30.874126, 18.287445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305166, 30.986969, 18.220844>,  <28.640291, 31.175039, 18.109842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305166, 30.986969, 18.220844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104828, 0.360293, 0.926930,
		-0.535803, 0.805682, -0.252570,
		-0.837810, -0.470176, 0.277504,
		28.053823, 30.845917, 18.304096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390484, 31.698910, 18.616783>,  <28.640291, 31.175039, 18.109842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390484, 31.698910, 18.616783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217813, 31.344109, 18.682360>,  <28.114210, 31.131227, 18.721706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217813, 31.344109, 18.682360>,  <28.390484, 31.698910, 18.616783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217813, 31.344109, 18.682360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004039, 0.179847, 0.983686,
		-0.902019, 0.425298, -0.074054,
		-0.431678, -0.887004, 0.163943,
		28.088310, 31.078007, 18.731543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929077, 31.858095, 19.050488>,  <28.390484, 31.698910, 18.616783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929077, 31.858095, 19.050488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952534, 31.461264, 19.094927>,  <27.966608, 31.223166, 19.121590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952534, 31.461264, 19.094927>,  <27.929077, 31.858095, 19.050488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952534, 31.461264, 19.094927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073679, 0.115288, 0.990596,
		-0.995556, -0.049905, 0.079856,
		0.058643, -0.992078, 0.111099,
		27.970127, 31.163641, 19.128256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473440, 31.626215, 19.670076>,  <27.929077, 31.858095, 19.050488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473440, 31.626215, 19.670076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738708, 31.329788, 19.628073>,  <27.897869, 31.151932, 19.602871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738708, 31.329788, 19.628073>,  <27.473440, 31.626215, 19.670076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738708, 31.329788, 19.628073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115273, -0.037496, 0.992626,
		-0.739539, -0.670384, 0.060558,
		0.663170, -0.741066, -0.105007,
		27.937660, 31.107468, 19.596571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334484, 31.178638, 20.244717>,  <27.473440, 31.626215, 19.670076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334484, 31.178638, 20.244717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698254, 31.043274, 20.148035>,  <27.916515, 30.962055, 20.090027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698254, 31.043274, 20.148035>,  <27.334484, 31.178638, 20.244717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698254, 31.043274, 20.148035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235323, -0.060434, 0.970036,
		-0.342881, -0.939055, 0.024677,
		0.909426, -0.338414, -0.241703,
		27.971081, 30.941750, 20.075523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421616, 30.832651, 20.853550>,  <27.334484, 31.178638, 20.244717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421616, 30.832651, 20.853550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773720, 30.880016, 20.669760>,  <27.984982, 30.908436, 20.559484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773720, 30.880016, 20.669760>,  <27.421616, 30.832651, 20.853550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773720, 30.880016, 20.669760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471019, -0.101160, 0.876303,
		0.057285, -0.987798, -0.144822,
		0.880261, 0.118413, -0.459477,
		28.037798, 30.915539, 20.531916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745667, 30.251970, 21.092901>,  <27.421616, 30.832651, 20.853550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745667, 30.251970, 21.092901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030239, 30.505093, 20.970640>,  <28.200983, 30.656965, 20.897284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030239, 30.505093, 20.970640>,  <27.745667, 30.251970, 21.092901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030239, 30.505093, 20.970640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493068, -0.139562, 0.858724,
		0.500747, -0.761631, -0.411304,
		0.711433, 0.632804, -0.305651,
		28.243670, 30.694933, 20.878944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454084, 29.912203, 21.226095>,  <27.745667, 30.251970, 21.092901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454084, 29.912203, 21.226095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471001, 30.311785, 21.233025>,  <28.481150, 30.551535, 21.237183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471001, 30.311785, 21.233025>,  <28.454084, 29.912203, 21.226095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471001, 30.311785, 21.233025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267518, -0.028028, 0.963145,
		0.962624, -0.036096, -0.268424,
		0.042289, 0.998955, 0.017324,
		28.483686, 30.611471, 21.238222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032492, 29.987705, 21.531364>,  <28.454084, 29.912203, 21.226095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032492, 29.987705, 21.531364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853680, 30.343971, 21.564537>,  <28.746393, 30.557732, 21.584440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853680, 30.343971, 21.564537>,  <29.032492, 29.987705, 21.531364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853680, 30.343971, 21.564537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314768, 0.069843, 0.946595,
		0.837308, 0.449261, -0.311576,
		-0.447029, 0.890667, 0.082933,
		28.719570, 30.611172, 21.589417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571529, 30.305090, 22.038811>,  <29.032492, 29.987705, 21.531364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571529, 30.305090, 22.038811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232079, 30.516048, 22.022381>,  <29.028408, 30.642624, 22.012524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232079, 30.516048, 22.022381>,  <29.571529, 30.305090, 22.038811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232079, 30.516048, 22.022381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016951, 0.104718, 0.994357,
		0.528723, 0.843140, -0.097806,
		-0.848625, 0.527398, -0.041075,
		28.977491, 30.674267, 22.010057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705286, 30.769114, 22.377136>,  <29.571529, 30.305090, 22.038811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705286, 30.769114, 22.377136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310539, 30.833387, 22.383770>,  <29.073690, 30.871952, 22.387751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310539, 30.833387, 22.383770>,  <29.705286, 30.769114, 22.377136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310539, 30.833387, 22.383770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066595, 0.311163, 0.948020,
		0.147174, 0.936674, -0.317777,
		-0.986866, 0.160686, 0.016583,
		29.014479, 30.881594, 22.388744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548233, 31.461903, 22.581463>,  <29.705286, 30.769114, 22.377136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548233, 31.461903, 22.581463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198912, 31.283556, 22.659996>,  <28.989319, 31.176548, 22.707117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198912, 31.283556, 22.659996>,  <29.548233, 31.461903, 22.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198912, 31.283556, 22.659996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012975, 0.381573, 0.924248,
		-0.487007, 0.809695, -0.327443,
		-0.873302, -0.445866, 0.196334,
		28.936922, 31.149796, 22.718897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057684, 31.875763, 22.926123>,  <29.548233, 31.461903, 22.581463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057684, 31.875763, 22.926123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989687, 31.493908, 23.023916>,  <28.948889, 31.264795, 23.082592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989687, 31.493908, 23.023916>,  <29.057684, 31.875763, 22.926123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989687, 31.493908, 23.023916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144227, 0.221324, 0.964476,
		-0.974834, 0.199213, 0.100061,
		-0.169991, -0.954636, 0.244486,
		28.938690, 31.207518, 23.097261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790867, 31.955811, 23.437859>,  <29.057684, 31.875763, 22.926123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790867, 31.955811, 23.437859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867651, 31.569098, 23.505365>,  <28.913721, 31.337070, 23.545870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867651, 31.569098, 23.505365>,  <28.790867, 31.955811, 23.437859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867651, 31.569098, 23.505365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126441, 0.194894, 0.972640,
		-0.973223, -0.165369, 0.159653,
		0.191960, -0.966783, 0.168766,
		28.925240, 31.279062, 23.555996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317038, 31.793268, 24.006819>,  <28.790867, 31.955811, 23.437859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317038, 31.793268, 24.006819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609898, 31.521893, 23.982571>,  <28.785614, 31.359068, 23.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609898, 31.521893, 23.982571>,  <28.317038, 31.793268, 24.006819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609898, 31.521893, 23.982571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146164, 0.069563, 0.986812,
		-0.665274, -0.731356, 0.150094,
		0.732152, -0.678439, -0.060620,
		28.829544, 31.318361, 23.964384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247856, 31.392735, 24.625854>,  <28.317038, 31.793268, 24.006819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247856, 31.392735, 24.625854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628271, 31.320740, 24.525347>,  <28.856520, 31.277542, 24.465042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628271, 31.320740, 24.525347>,  <28.247856, 31.392735, 24.625854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628271, 31.320740, 24.525347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238619, -0.089148, 0.967013,
		-0.196452, -0.979621, -0.041834,
		0.951035, -0.179989, -0.251269,
		28.913582, 31.266745, 24.449966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395391, 30.871691, 25.025612>,  <28.247856, 31.392735, 24.625854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395391, 30.871691, 25.025612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739895, 31.044668, 24.918859>,  <28.946596, 31.148455, 24.854809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739895, 31.044668, 24.918859>,  <28.395391, 30.871691, 25.025612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739895, 31.044668, 24.918859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283015, 0.028005, 0.958707,
		0.422061, -0.901225, -0.098269,
		0.861259, 0.432444, -0.266880,
		28.998272, 31.174402, 24.838795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986860, 30.448277, 25.386681>,  <28.395391, 30.871691, 25.025612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986860, 30.448277, 25.386681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092781, 30.819609, 25.282310>,  <29.156334, 31.042408, 25.219688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092781, 30.819609, 25.282310>,  <28.986860, 30.448277, 25.386681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092781, 30.819609, 25.282310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460220, 0.116117, 0.880178,
		0.847395, -0.353156, -0.396489,
		0.264801, 0.928330, -0.260926,
		29.172222, 31.098108, 25.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604029, 30.558712, 25.734524>,  <28.986860, 30.448277, 25.386681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604029, 30.558712, 25.734524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500175, 30.939074, 25.667143>,  <29.437864, 31.167290, 25.626715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500175, 30.939074, 25.667143>,  <29.604029, 30.558712, 25.734524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500175, 30.939074, 25.667143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379271, 0.260824, 0.887764,
		0.888113, 0.166603, -0.428368,
		-0.259633, 0.950902, -0.168453,
		29.422285, 31.224344, 25.616608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252390, 30.834742, 25.839018>,  <29.604029, 30.558712, 25.734524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252390, 30.834742, 25.839018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992920, 31.139158, 25.836723>,  <29.837238, 31.321808, 25.835346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992920, 31.139158, 25.836723>,  <30.252390, 30.834742, 25.839018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992920, 31.139158, 25.836723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507114, 0.437837, 0.742384,
		0.567498, 0.478658, -0.669950,
		-0.648677, 0.761043, -0.005738,
		29.798317, 31.367472, 25.835003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562130, 31.426325, 25.966740>,  <30.252390, 30.834742, 25.839018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562130, 31.426325, 25.966740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206747, 31.572081, 26.078356>,  <29.993517, 31.659534, 26.145325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206747, 31.572081, 26.078356>,  <30.562130, 31.426325, 25.966740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206747, 31.572081, 26.078356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439905, 0.502745, 0.744131,
		0.130868, 0.783880, -0.606964,
		-0.888458, 0.364389, 0.279039,
		29.940210, 31.681396, 26.162067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650816, 32.165691, 26.160378>,  <30.562130, 31.426325, 25.966740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650816, 32.165691, 26.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307240, 32.057625, 26.334383>,  <30.101093, 31.992786, 26.438786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307240, 32.057625, 26.334383>,  <30.650816, 32.165691, 26.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307240, 32.057625, 26.334383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221173, 0.570454, 0.790990,
		-0.461849, 0.775625, -0.430233,
		-0.858940, -0.270162, 0.435012,
		30.049557, 31.976576, 26.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435207, 32.724045, 26.464935>,  <30.650816, 32.165691, 26.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435207, 32.724045, 26.464935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227804, 32.454430, 26.675394>,  <30.103363, 32.292660, 26.801668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227804, 32.454430, 26.675394>,  <30.435207, 32.724045, 26.464935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227804, 32.454430, 26.675394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252182, 0.467409, 0.847310,
		-0.817039, 0.572021, -0.072376,
		-0.518508, -0.674033, 0.526145,
		30.072252, 32.252220, 26.833237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090973, 33.117405, 26.896152>,  <30.435207, 32.724045, 26.464935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090973, 33.117405, 26.896152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137760, 32.751076, 27.049822>,  <30.165833, 32.531281, 27.142023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137760, 32.751076, 27.049822>,  <30.090973, 33.117405, 26.896152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137760, 32.751076, 27.049822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384669, 0.398414, 0.832644,
		-0.915613, 0.050386, 0.398890,
		0.116970, -0.915820, 0.384175,
		30.172852, 32.476330, 27.165075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353424, 33.274380, 26.850876>,  <30.090973, 33.117405, 26.896152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353424, 33.274380, 26.850876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125483, 33.603077, 26.849602>,  <28.988718, 33.800297, 26.848837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125483, 33.603077, 26.849602>,  <29.353424, 33.274380, 26.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125483, 33.603077, 26.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338282, -0.238114, -0.910421,
		-0.748889, -0.517728, 0.413671,
		-0.569851, 0.821742, -0.003183,
		28.954527, 33.849598, 26.848646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853256, 33.008347, 26.473726>,  <29.353424, 33.274380, 26.850876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853256, 33.008347, 26.473726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766567, 33.398838, 26.475374>,  <28.714554, 33.633133, 26.476362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766567, 33.398838, 26.475374>,  <28.853256, 33.008347, 26.473726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766567, 33.398838, 26.475374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448440, -0.095805, -0.888664,
		-0.867141, -0.194438, 0.458541,
		-0.216720, 0.976225, 0.004118,
		28.701551, 33.691704, 26.476610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160320, 33.113369, 26.419800>,  <28.853256, 33.008347, 26.473726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160320, 33.113369, 26.419800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312551, 33.464714, 26.304113>,  <28.403891, 33.675522, 26.234701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312551, 33.464714, 26.304113>,  <28.160320, 33.113369, 26.419800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312551, 33.464714, 26.304113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434718, -0.106106, -0.894294,
		-0.816200, 0.466074, 0.341458,
		0.380576, 0.878360, -0.289215,
		28.426723, 33.728222, 26.217348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539112, 33.473305, 26.056498>,  <28.160320, 33.113369, 26.419800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539112, 33.473305, 26.056498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885788, 33.628239, 25.930754>,  <28.093794, 33.721199, 25.855307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885788, 33.628239, 25.930754>,  <27.539112, 33.473305, 26.056498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885788, 33.628239, 25.930754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313693, -0.066814, -0.947171,
		-0.387876, 0.919515, 0.063598,
		0.866689, 0.387335, -0.314361,
		28.145794, 33.744438, 25.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424484, 34.072731, 25.642818>,  <27.539112, 33.473305, 26.056498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424484, 34.072731, 25.642818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789837, 33.984497, 25.505953>,  <28.009048, 33.931557, 25.423834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789837, 33.984497, 25.505953>,  <27.424484, 34.072731, 25.642818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789837, 33.984497, 25.505953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315523, 0.147540, -0.937378,
		0.257255, 0.964144, 0.065160,
		0.913381, -0.220585, -0.342165,
		28.063850, 33.918320, 25.403303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511372, 34.433987, 25.068888>,  <27.424484, 34.072731, 25.642818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511372, 34.433987, 25.068888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812178, 34.176033, 25.014334>,  <27.992662, 34.021263, 24.981602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812178, 34.176033, 25.014334>,  <27.511372, 34.433987, 25.068888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812178, 34.176033, 25.014334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016143, 0.188834, -0.981876,
		0.658947, 0.740588, 0.131596,
		0.752016, -0.644880, -0.136387,
		28.037783, 33.982571, 24.973417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808798, 34.661339, 24.539326>,  <27.511372, 34.433987, 25.068888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808798, 34.661339, 24.539326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973835, 34.296974, 24.540321>,  <28.072857, 34.078354, 24.540918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973835, 34.296974, 24.540321>,  <27.808798, 34.661339, 24.539326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973835, 34.296974, 24.540321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085449, 0.035983, -0.995693,
		0.906900, 0.411027, 0.092683,
		0.412591, -0.910913, 0.002488,
		28.097612, 34.023701, 24.541067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328457, 34.586960, 24.033648>,  <27.808798, 34.661339, 24.539326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328457, 34.586960, 24.033648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234512, 34.201584, 24.085234>,  <28.178146, 33.970360, 24.116186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234512, 34.201584, 24.085234>,  <28.328457, 34.586960, 24.033648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234512, 34.201584, 24.085234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117510, -0.103562, -0.987657,
		0.964900, -0.247116, -0.088890,
		-0.234860, -0.963436, 0.128965,
		28.164055, 33.912552, 24.123924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790501, 34.261768, 23.582794>,  <28.328457, 34.586960, 24.033648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790501, 34.261768, 23.582794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477562, 34.022160, 23.651033>,  <28.289799, 33.878395, 23.691977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477562, 34.022160, 23.651033>,  <28.790501, 34.261768, 23.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477562, 34.022160, 23.651033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020563, -0.298592, -0.954159,
		0.622506, -0.742973, 0.245920,
		-0.782345, -0.599027, 0.170598,
		28.242859, 33.842453, 23.702213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898983, 33.602390, 23.265932>,  <28.790501, 34.261768, 23.582794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898983, 33.602390, 23.265932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500647, 33.623760, 23.295460>,  <28.261644, 33.636581, 23.313177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500647, 33.623760, 23.295460>,  <28.898983, 33.602390, 23.265932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500647, 33.623760, 23.295460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083608, -0.213500, -0.973359,
		-0.036239, -0.975481, 0.217078,
		-0.995840, 0.053423, 0.073821,
		28.201895, 33.639786, 23.317606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587925, 33.018112, 22.881176>,  <28.898983, 33.602390, 23.265932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587925, 33.018112, 22.881176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296972, 33.286137, 22.940416>,  <28.122400, 33.446953, 22.975960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296972, 33.286137, 22.940416>,  <28.587925, 33.018112, 22.881176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296972, 33.286137, 22.940416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454609, -0.308844, -0.835432,
		-0.514052, -0.675004, 0.529263,
		-0.727380, 0.670063, 0.148101,
		28.078758, 33.487156, 22.984846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949963, 32.618835, 22.817513>,  <28.587925, 33.018112, 22.881176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949963, 32.618835, 22.817513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830315, 32.996662, 22.763380>,  <27.758526, 33.223358, 22.730900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830315, 32.996662, 22.763380>,  <27.949963, 32.618835, 22.817513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830315, 32.996662, 22.763380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472993, -0.269946, -0.838693,
		-0.828738, -0.186856, 0.527521,
		-0.299118, 0.944571, -0.135333,
		27.740580, 33.280033, 22.722780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261423, 32.592667, 22.696566>,  <27.949963, 32.618835, 22.817513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261423, 32.592667, 22.696566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363243, 32.941360, 22.529095>,  <27.424335, 33.150578, 22.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363243, 32.941360, 22.529095>,  <27.261423, 32.592667, 22.696566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363243, 32.941360, 22.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503492, -0.250165, -0.826990,
		-0.825650, 0.421312, 0.375229,
		0.254552, 0.871730, -0.418676,
		27.439610, 33.202881, 22.403492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633343, 32.781689, 22.244518>,  <27.261423, 32.592667, 22.696566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633343, 32.781689, 22.244518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890722, 33.049088, 22.095343>,  <27.045149, 33.209526, 22.005836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890722, 33.049088, 22.095343>,  <26.633343, 32.781689, 22.244518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890722, 33.049088, 22.095343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431953, -0.085137, -0.897869,
		-0.631976, 0.738824, 0.233979,
		0.643447, 0.668499, -0.372941,
		27.083755, 33.249638, 21.983459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245195, 33.383038, 21.914745>,  <26.633343, 32.781689, 22.244518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245195, 33.383038, 21.914745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604452, 33.338936, 21.744480>,  <26.820005, 33.312477, 21.642321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604452, 33.338936, 21.744480>,  <26.245195, 33.383038, 21.914745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604452, 33.338936, 21.744480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421469, 0.060078, -0.904851,
		0.125333, 0.992087, 0.007491,
		0.898140, -0.110250, -0.425663,
		26.873894, 33.305862, 21.616781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174091, 33.876076, 21.316484>,  <26.245195, 33.383038, 21.914745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174091, 33.876076, 21.316484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500017, 33.649414, 21.267523>,  <26.695572, 33.513416, 21.238146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500017, 33.649414, 21.267523>,  <26.174091, 33.876076, 21.316484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500017, 33.649414, 21.267523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121067, 0.040161, -0.991831,
		0.566938, 0.822978, -0.035879,
		0.814815, -0.566651, -0.122404,
		26.744461, 33.479420, 21.230801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512051, 34.196053, 20.827497>,  <26.174091, 33.876076, 21.316484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512051, 34.196053, 20.827497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628977, 33.813675, 20.816679>,  <26.699133, 33.584248, 20.810188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628977, 33.813675, 20.816679>,  <26.512051, 34.196053, 20.827497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628977, 33.813675, 20.816679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254062, -0.050364, -0.965876,
		0.921957, 0.289212, -0.257590,
		0.292316, -0.955940, -0.027044,
		26.716671, 33.526894, 20.808565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852766, 34.091198, 20.181681>,  <26.512051, 34.196053, 20.827497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852766, 34.091198, 20.181681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793591, 33.706978, 20.275875>,  <26.758085, 33.476444, 20.332392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793591, 33.706978, 20.275875>,  <26.852766, 34.091198, 20.181681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793591, 33.706978, 20.275875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182429, -0.207518, -0.961070,
		0.972026, -0.185138, -0.144533,
		-0.147937, -0.960552, 0.235488,
		26.749208, 33.418812, 20.346521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225239, 33.649605, 19.602911>,  <26.852766, 34.091198, 20.181681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225239, 33.649605, 19.602911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955900, 33.421783, 19.791471>,  <26.794296, 33.285091, 19.904608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955900, 33.421783, 19.791471>,  <27.225239, 33.649605, 19.602911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955900, 33.421783, 19.791471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158515, -0.511562, -0.844498,
		0.722135, -0.643363, 0.254176,
		-0.673346, -0.569551, 0.471399,
		26.753897, 33.250919, 19.932892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451403, 33.039970, 19.453938>,  <27.225239, 33.649605, 19.602911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451403, 33.039970, 19.453938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065561, 33.009918, 19.555050>,  <26.834057, 32.991886, 19.615717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065561, 33.009918, 19.555050>,  <27.451403, 33.039970, 19.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065561, 33.009918, 19.555050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217926, -0.312663, -0.924527,
		0.148493, -0.946889, 0.285223,
		-0.964603, -0.075128, 0.252780,
		26.776180, 32.987381, 19.630884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220713, 32.303608, 19.307364>,  <27.451403, 33.039970, 19.453938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220713, 32.303608, 19.307364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903429, 32.547054, 19.315409>,  <26.713058, 32.693123, 19.320236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903429, 32.547054, 19.315409>,  <27.220713, 32.303608, 19.307364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903429, 32.547054, 19.315409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219769, -0.255312, -0.941551,
		-0.567909, -0.751266, 0.336271,
		-0.793209, 0.608617, 0.020110,
		26.665466, 32.729641, 19.321442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672974, 31.895987, 19.044241>,  <27.220713, 32.303608, 19.307364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672974, 31.895987, 19.044241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600527, 32.286537, 18.997110>,  <26.557058, 32.520866, 18.968832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600527, 32.286537, 18.997110>,  <26.672974, 31.895987, 19.044241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600527, 32.286537, 18.997110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208117, -0.155145, -0.965721,
		-0.961188, -0.150388, 0.231301,
		-0.181118, 0.976378, -0.117826,
		26.546192, 32.579449, 18.961763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116821, 31.905514, 18.695908>,  <26.672974, 31.895987, 19.044241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116821, 31.905514, 18.695908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248392, 32.281437, 18.658890>,  <26.327335, 32.506992, 18.636679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248392, 32.281437, 18.658890>,  <26.116821, 31.905514, 18.695908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248392, 32.281437, 18.658890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112224, -0.058402, -0.991965,
		-0.937663, 0.336672, 0.086259,
		0.328929, 0.939809, -0.092544,
		26.347071, 32.563381, 18.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582905, 32.207962, 18.343704>,  <26.116821, 31.905514, 18.695908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582905, 32.207962, 18.343704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904968, 32.435783, 18.277573>,  <26.098206, 32.572475, 18.237894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904968, 32.435783, 18.277573>,  <25.582905, 32.207962, 18.343704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904968, 32.435783, 18.277573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092420, -0.154868, -0.983603,
		-0.585814, 0.807236, -0.072056,
		0.805159, 0.569549, -0.165329,
		26.146517, 32.606647, 18.227974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370472, 32.775242, 17.807800>,  <25.582905, 32.207962, 18.343704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370472, 32.775242, 17.807800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769682, 32.760738, 17.787289>,  <26.009209, 32.752037, 17.774982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769682, 32.760738, 17.787289>,  <25.370472, 32.775242, 17.807800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769682, 32.760738, 17.787289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050998, 0.008565, -0.998662,
		0.036651, 0.999306, 0.006699,
		0.998026, -0.036260, -0.051277,
		26.069090, 32.749859, 17.771906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537827, 33.232002, 17.322996>,  <25.370472, 32.775242, 17.807800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537827, 33.232002, 17.322996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873814, 33.015408, 17.337097>,  <26.075407, 32.885452, 17.345558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873814, 33.015408, 17.337097>,  <25.537827, 33.232002, 17.322996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873814, 33.015408, 17.337097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143190, 0.158522, -0.976917,
		0.523399, 0.825629, 0.210689,
		0.839970, -0.541487, 0.035252,
		26.125805, 32.852962, 17.347673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035744, 33.638817, 17.040468>,  <25.537827, 33.232002, 17.322996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035744, 33.638817, 17.040468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169344, 33.263641, 17.003134>,  <26.249504, 33.038536, 16.980734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169344, 33.263641, 17.003134>,  <26.035744, 33.638817, 17.040468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169344, 33.263641, 17.003134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335810, 0.210933, -0.918008,
		0.880724, 0.275275, 0.385422,
		0.334003, -0.937940, -0.093334,
		26.269545, 32.982258, 16.975134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756016, 33.641697, 16.711220>,  <26.035744, 33.638817, 17.040468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756016, 33.641697, 16.711220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625460, 33.271805, 16.632902>,  <26.547127, 33.049870, 16.585911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625460, 33.271805, 16.632902>,  <26.756016, 33.641697, 16.711220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625460, 33.271805, 16.632902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404939, 0.050377, -0.912955,
		0.854105, -0.377264, 0.358018,
		-0.326389, -0.924735, -0.195796,
		26.527542, 32.994385, 16.574163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127626, 33.653938, 16.143242>,  <26.756016, 33.641697, 16.711220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127626, 33.653938, 16.143242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932266, 33.304909, 16.139507>,  <26.815050, 33.095493, 16.137266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932266, 33.304909, 16.139507>,  <27.127626, 33.653938, 16.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932266, 33.304909, 16.139507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289949, -0.152184, -0.944865,
		0.823041, -0.464177, 0.327328,
		-0.488398, -0.872571, -0.009334,
		26.785748, 33.043137, 16.136707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600750, 33.051655, 15.915396>,  <27.127626, 33.653938, 16.143242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600750, 33.051655, 15.915396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226570, 32.945591, 15.821905>,  <27.002062, 32.881954, 15.765811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226570, 32.945591, 15.821905>,  <27.600750, 33.051655, 15.915396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226570, 32.945591, 15.821905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311688, -0.306958, -0.899237,
		0.166696, -0.914040, 0.369789,
		-0.935448, -0.265158, -0.233727,
		26.945936, 32.866043, 15.751787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717319, 32.460411, 15.606215>,  <27.600750, 33.051655, 15.915396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717319, 32.460411, 15.606215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355177, 32.595135, 15.502765>,  <27.137892, 32.675968, 15.440695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355177, 32.595135, 15.502765>,  <27.717319, 32.460411, 15.606215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355177, 32.595135, 15.502765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230413, -0.121956, -0.965420,
		-0.356707, -0.933640, 0.032807,
		-0.905356, 0.336813, -0.258625,
		27.083570, 32.696178, 15.425177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420944, 32.086727, 14.964947>,  <27.717319, 32.460411, 15.606215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420944, 32.086727, 14.964947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188108, 32.411835, 14.955319>,  <27.048407, 32.606899, 14.949543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188108, 32.411835, 14.955319>,  <27.420944, 32.086727, 14.964947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188108, 32.411835, 14.955319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233146, 0.138473, -0.962532,
		-0.778984, -0.565890, -0.270098,
		-0.582088, 0.812770, -0.024067,
		27.013481, 32.655666, 14.948099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119289, 32.021706, 14.392605>,  <27.420944, 32.086727, 14.964947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119289, 32.021706, 14.392605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070004, 32.411091, 14.469749>,  <27.040432, 32.644722, 14.516036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070004, 32.411091, 14.469749>,  <27.119289, 32.021706, 14.392605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070004, 32.411091, 14.469749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245657, 0.218212, -0.944477,
		-0.961494, -0.068994, -0.266024,
		-0.123213, 0.973460, 0.192860,
		27.033039, 32.703129, 14.527608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606236, 32.300735, 13.972100>,  <27.119289, 32.021706, 14.392605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606236, 32.300735, 13.972100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849493, 32.602230, 14.071733>,  <26.995447, 32.783127, 14.131512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849493, 32.602230, 14.071733>,  <26.606236, 32.300735, 13.972100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849493, 32.602230, 14.071733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224811, 0.137399, -0.964666,
		-0.761328, 0.642653, -0.085889,
		0.608145, 0.753736, 0.249081,
		27.031937, 32.828350, 14.146457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749670, 32.560154, 13.297585>,  <26.606236, 32.300735, 13.972100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749670, 32.560154, 13.297585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975979, 32.822369, 13.497658>,  <27.111763, 32.979698, 13.617702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975979, 32.822369, 13.497658>,  <26.749670, 32.560154, 13.297585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975979, 32.822369, 13.497658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560839, 0.138741, -0.816217,
		-0.604452, 0.742313, -0.289153,
		0.565771, 0.655532, 0.500181,
		27.145710, 33.019028, 13.647712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836914, 33.247993, 12.897379>,  <26.749670, 32.560154, 13.297585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836914, 33.247993, 12.897379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169571, 33.197544, 13.113698>,  <27.369165, 33.167274, 13.243489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169571, 33.197544, 13.113698>,  <26.836914, 33.247993, 12.897379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169571, 33.197544, 13.113698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554979, 0.222338, -0.801601,
		-0.019141, 0.966778, 0.254901,
		0.831644, -0.126122, 0.540797,
		27.419064, 33.159706, 13.275937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204369, 33.803631, 12.737372>,  <26.836914, 33.247993, 12.897379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204369, 33.803631, 12.737372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468304, 33.542686, 12.886522>,  <27.626665, 33.386120, 12.976012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468304, 33.542686, 12.886522>,  <27.204369, 33.803631, 12.737372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468304, 33.542686, 12.886522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675217, 0.297046, -0.675163,
		0.329692, 0.697268, 0.636490,
		0.659837, -0.652365, 0.372874,
		27.666254, 33.346977, 12.998384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817915, 34.202625, 13.154984>,  <27.204369, 33.803631, 12.737372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817915, 34.202625, 13.154984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911993, 33.854137, 12.982634>,  <27.968439, 33.645042, 12.879224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911993, 33.854137, 12.982634>,  <27.817915, 34.202625, 13.154984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911993, 33.854137, 12.982634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626611, 0.474798, -0.618001,
		0.742996, -0.124641, 0.657588,
		0.235193, -0.871224, -0.430875,
		27.982552, 33.592770, 12.853372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394703, 34.039642, 12.722835>,  <27.817915, 34.202625, 13.154984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394703, 34.039642, 12.722835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664652, 34.294842, 12.574509>,  <28.826622, 34.447960, 12.485513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664652, 34.294842, 12.574509>,  <28.394703, 34.039642, 12.722835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664652, 34.294842, 12.574509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155068, 0.368674, 0.916533,
		0.721457, -0.676046, 0.149875,
		0.674873, 0.637999, -0.370815,
		28.867113, 34.486240, 12.463264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065460, 34.057995, 13.177423>,  <28.394703, 34.039642, 12.722835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065460, 34.057995, 13.177423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041359, 34.405270, 12.980394>,  <29.026897, 34.613632, 12.862178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041359, 34.405270, 12.980394>,  <29.065460, 34.057995, 13.177423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041359, 34.405270, 12.980394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188877, 0.494468, 0.848426,
		0.980151, -0.041913, -0.193774,
		-0.060254, 0.868185, -0.492570,
		29.023283, 34.665726, 12.832623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662457, 34.296711, 13.180386>,  <29.065460, 34.057995, 13.177423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662457, 34.296711, 13.180386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444595, 34.622841, 13.101801>,  <29.313879, 34.818520, 13.054650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444595, 34.622841, 13.101801>,  <29.662457, 34.296711, 13.180386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444595, 34.622841, 13.101801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341312, 0.429471, 0.836098,
		0.766067, 0.388329, -0.512194,
		-0.544654, 0.815325, -0.196462,
		29.281199, 34.867439, 13.042862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134346, 34.920170, 13.385883>,  <29.662457, 34.296711, 13.180386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134346, 34.920170, 13.385883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745907, 35.015293, 13.377708>,  <29.512844, 35.072369, 13.372804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745907, 35.015293, 13.377708>,  <30.134346, 34.920170, 13.385883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745907, 35.015293, 13.377708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078674, 0.399744, 0.913244,
		0.225350, 0.885240, -0.406899,
		-0.971096, 0.237812, -0.020437,
		29.454578, 35.086636, 13.371577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192591, 35.528629, 13.758585>,  <30.134346, 34.920170, 13.385883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192591, 35.528629, 13.758585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800812, 35.449287, 13.773193>,  <29.565744, 35.401684, 13.781959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800812, 35.449287, 13.773193>,  <30.192591, 35.528629, 13.758585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800812, 35.449287, 13.773193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033625, 0.339136, 0.940136,
		-0.198867, 0.919588, -0.338836,
		-0.979449, -0.198356, 0.036522,
		29.506977, 35.389782, 13.784150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865160, 36.043045, 14.116897>,  <30.192591, 35.528629, 13.758585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865160, 36.043045, 14.116897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583666, 35.759384, 14.134124>,  <29.414768, 35.589188, 14.144461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583666, 35.759384, 14.134124>,  <29.865160, 36.043045, 14.116897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583666, 35.759384, 14.134124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112947, 0.171522, 0.978684,
		-0.701425, 0.683872, -0.200803,
		-0.703737, -0.709154, 0.043069,
		29.372545, 35.546638, 14.147044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154894, 36.374481, 14.470912>,  <29.865160, 36.043045, 14.116897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154894, 36.374481, 14.470912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173065, 35.975750, 14.497055>,  <29.183968, 35.736511, 14.512741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173065, 35.975750, 14.497055>,  <29.154894, 36.374481, 14.470912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173065, 35.975750, 14.497055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148882, 0.057937, 0.987156,
		-0.987811, -0.054577, -0.145778,
		0.045430, -0.996827, 0.065357,
		29.186695, 35.676701, 14.516662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608376, 36.180683, 14.912479>,  <29.154894, 36.374481, 14.470912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608376, 36.180683, 14.912479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861715, 35.871151, 14.915564>,  <29.013720, 35.685432, 14.917415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861715, 35.871151, 14.915564>,  <28.608376, 36.180683, 14.912479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861715, 35.871151, 14.915564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252888, -0.197540, 0.947115,
		-0.731382, -0.601803, -0.320803,
		0.633348, -0.773829, 0.007711,
		29.051720, 35.639004, 14.917877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252487, 35.708523, 15.069631>,  <28.608376, 36.180683, 14.912479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252487, 35.708523, 15.069631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612545, 35.561539, 15.163198>,  <28.828579, 35.473351, 15.219337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612545, 35.561539, 15.163198>,  <28.252487, 35.708523, 15.069631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612545, 35.561539, 15.163198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284157, -0.088340, 0.954699,
		-0.330147, -0.925836, -0.183934,
		0.900144, -0.367457, 0.233918,
		28.882587, 35.451302, 15.233373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042301, 35.245888, 15.587940>,  <28.252487, 35.708523, 15.069631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042301, 35.245888, 15.587940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440756, 35.264683, 15.617604>,  <28.679829, 35.275959, 15.635403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440756, 35.264683, 15.617604>,  <28.042301, 35.245888, 15.587940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440756, 35.264683, 15.617604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064938, -0.174121, 0.982581,
		0.059084, -0.983603, -0.170397,
		0.996139, 0.046989, 0.074161,
		28.739597, 35.278778, 15.639853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193130, 34.745918, 16.036209>,  <28.042301, 35.245888, 15.587940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193130, 34.745918, 16.036209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502655, 34.996883, 16.071020>,  <28.688370, 35.147461, 16.091908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502655, 34.996883, 16.071020>,  <28.193130, 34.745918, 16.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502655, 34.996883, 16.071020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002856, -0.140849, 0.990027,
		0.633410, -0.765845, -0.110783,
		0.773812, 0.627409, 0.087028,
		28.734798, 35.185104, 16.097128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552370, 34.568752, 16.646475>,  <28.193130, 34.745918, 16.036209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552370, 34.568752, 16.646475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668243, 34.943748, 16.569326>,  <28.737768, 35.168747, 16.523037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668243, 34.943748, 16.569326>,  <28.552370, 34.568752, 16.646475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668243, 34.943748, 16.569326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234487, 0.125857, 0.963937,
		0.927954, -0.324465, -0.183370,
		0.289685, 0.937487, -0.192872,
		28.755150, 35.224995, 16.511465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175047, 34.611221, 16.868584>,  <28.552370, 34.568752, 16.646475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175047, 34.611221, 16.868584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024958, 34.979839, 16.908518>,  <28.934904, 35.201008, 16.932478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024958, 34.979839, 16.908518>,  <29.175047, 34.611221, 16.868584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024958, 34.979839, 16.908518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266951, 0.004291, 0.963701,
		0.887663, 0.388252, -0.247617,
		-0.375221, 0.921543, 0.099836,
		28.912392, 35.256302, 16.938469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560255, 34.891315, 17.427460>,  <29.175047, 34.611221, 16.868584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560255, 34.891315, 17.427460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297501, 35.188782, 17.377722>,  <29.139847, 35.367260, 17.347879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297501, 35.188782, 17.377722>,  <29.560255, 34.891315, 17.427460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297501, 35.188782, 17.377722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056773, 0.213231, 0.975351,
		0.751848, 0.633636, -0.182289,
		-0.656888, 0.743665, -0.124343,
		29.100435, 35.411880, 17.340418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838530, 35.507507, 17.769367>,  <29.560255, 34.891315, 17.427460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838530, 35.507507, 17.769367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441044, 35.534306, 17.733488>,  <29.202553, 35.550385, 17.711962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441044, 35.534306, 17.733488>,  <29.838530, 35.507507, 17.769367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441044, 35.534306, 17.733488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076892, 0.173908, 0.981755,
		0.081368, 0.982481, -0.167664,
		-0.993714, 0.066991, -0.089696,
		29.142929, 35.554401, 17.706579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695276, 36.167656, 18.182760>,  <29.838530, 35.507507, 17.769367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695276, 36.167656, 18.182760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363760, 35.944889, 18.161030>,  <29.164850, 35.811230, 18.147991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363760, 35.944889, 18.161030>,  <29.695276, 36.167656, 18.182760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363760, 35.944889, 18.161030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099210, 0.050705, 0.993774,
		-0.550691, 0.829022, -0.097275,
		-0.828792, -0.556913, -0.054325,
		29.115122, 35.777817, 18.144732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173569, 36.535328, 18.463835>,  <29.695276, 36.167656, 18.182760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173569, 36.535328, 18.463835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018801, 36.166599, 18.473061>,  <28.925940, 35.945362, 18.478596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018801, 36.166599, 18.473061>,  <29.173569, 36.535328, 18.463835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018801, 36.166599, 18.473061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150580, 0.087842, 0.984688,
		-0.909735, 0.377524, -0.172796,
		-0.386922, -0.921824, 0.023065,
		28.902723, 35.890053, 18.479980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550810, 36.524067, 19.026255>,  <29.173569, 36.535328, 18.463835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550810, 36.524067, 19.026255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641029, 36.136192, 18.988642>,  <28.695160, 35.903469, 18.966074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641029, 36.136192, 18.988642>,  <28.550810, 36.524067, 19.026255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641029, 36.136192, 18.988642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231512, -0.147103, 0.961645,
		-0.946325, -0.195127, -0.257673,
		0.225547, -0.969683, -0.094033,
		28.708694, 35.845287, 18.960432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970787, 36.160572, 19.235987>,  <28.550810, 36.524067, 19.026255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970787, 36.160572, 19.235987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261440, 35.887524, 19.267054>,  <28.435833, 35.723694, 19.285694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261440, 35.887524, 19.267054>,  <27.970787, 36.160572, 19.235987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261440, 35.887524, 19.267054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253689, -0.161534, 0.953703,
		-0.638472, -0.712695, -0.290550,
		0.726633, -0.682622, 0.077668,
		28.479429, 35.682735, 19.290354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682247, 35.549248, 19.668636>,  <27.970787, 36.160572, 19.235987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682247, 35.549248, 19.668636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081591, 35.531837, 19.683548>,  <28.321196, 35.521393, 19.692495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081591, 35.531837, 19.683548>,  <27.682247, 35.549248, 19.668636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081591, 35.531837, 19.683548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042955, -0.137798, 0.989529,
		-0.037926, -0.989504, -0.139441,
		0.998357, -0.043519, 0.037278,
		28.381098, 35.518780, 19.694731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740097, 35.095177, 20.196156>,  <27.682247, 35.549248, 19.668636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740097, 35.095177, 20.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110106, 35.245659, 20.174992>,  <28.332111, 35.335949, 20.162294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110106, 35.245659, 20.174992>,  <27.740097, 35.095177, 20.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110106, 35.245659, 20.174992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130691, -0.184349, 0.974133,
		0.356723, -0.908010, -0.219694,
		0.925023, 0.376208, -0.052907,
		28.387613, 35.358521, 20.159119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242235, 34.536987, 20.468208>,  <27.740097, 35.095177, 20.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242235, 34.536987, 20.468208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424654, 34.892685, 20.482475>,  <28.534105, 35.106102, 20.491035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424654, 34.892685, 20.482475>,  <28.242235, 34.536987, 20.468208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424654, 34.892685, 20.482475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179744, -0.131286, 0.974913,
		0.871615, -0.438196, -0.219708,
		0.456048, 0.889240, 0.035667,
		28.561468, 35.159458, 20.493176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649191, 34.412533, 20.964205>,  <28.242235, 34.536987, 20.468208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649191, 34.412533, 20.964205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658640, 34.811314, 20.934452>,  <28.664309, 35.050583, 20.916601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658640, 34.811314, 20.934452>,  <28.649191, 34.412533, 20.964205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658640, 34.811314, 20.934452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202968, 0.068071, 0.976817,
		0.978900, -0.038171, -0.200741,
		0.023621, 0.996950, -0.074383,
		28.665726, 35.110397, 20.912138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298891, 34.722229, 21.220596>,  <28.649191, 34.412533, 20.964205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298891, 34.722229, 21.220596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027662, 35.014988, 21.247561>,  <28.864925, 35.190643, 21.263739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027662, 35.014988, 21.247561>,  <29.298891, 34.722229, 21.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027662, 35.014988, 21.247561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232378, 0.126468, 0.964368,
		0.697293, 0.669577, -0.255832,
		-0.678073, 0.731897, 0.067410,
		28.824240, 35.234558, 21.267784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518967, 35.213177, 21.710556>,  <29.298891, 34.722229, 21.220596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518967, 35.213177, 21.710556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145075, 35.354435, 21.694733>,  <28.920740, 35.439190, 21.685240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145075, 35.354435, 21.694733>,  <29.518967, 35.213177, 21.710556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145075, 35.354435, 21.694733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010670, 0.139159, 0.990213,
		0.355196, 0.925160, -0.133844,
		-0.934731, 0.353148, -0.039558,
		28.864656, 35.460381, 21.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543661, 35.783512, 22.011864>,  <29.518967, 35.213177, 21.710556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543661, 35.783512, 22.011864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155813, 35.687214, 22.029217>,  <28.923105, 35.629436, 22.039629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155813, 35.687214, 22.029217>,  <29.543661, 35.783512, 22.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155813, 35.687214, 22.029217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026647, 0.280233, 0.959562,
		-0.243165, 0.929253, -0.278134,
		-0.969619, -0.240744, 0.043381,
		28.864927, 35.614990, 22.042231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171213, 36.362148, 22.179276>,  <29.543661, 35.783512, 22.011864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171213, 36.362148, 22.179276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966183, 36.037296, 22.290781>,  <28.843164, 35.842384, 22.357685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966183, 36.037296, 22.290781>,  <29.171213, 36.362148, 22.179276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966183, 36.037296, 22.290781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059539, 0.357494, 0.932016,
		-0.856575, 0.461131, -0.231596,
		-0.512576, -0.812131, 0.278765,
		28.812410, 35.793655, 22.374411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694540, 36.671715, 22.597015>,  <29.171213, 36.362148, 22.179276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694540, 36.671715, 22.597015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692780, 36.282150, 22.687775>,  <28.691723, 36.048412, 22.742231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692780, 36.282150, 22.687775>,  <28.694540, 36.671715, 22.597015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692780, 36.282150, 22.687775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045918, 0.226860, 0.972844,
		-0.998935, -0.006136, -0.045718,
		-0.004402, -0.973908, 0.226900,
		28.691460, 35.989979, 22.755844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311876, 36.612263, 23.222036>,  <28.694540, 36.671715, 22.597015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311876, 36.612263, 23.222036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516031, 36.268456, 23.211235>,  <28.638523, 36.062172, 23.204754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516031, 36.268456, 23.211235>,  <28.311876, 36.612263, 23.222036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516031, 36.268456, 23.211235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090478, -0.084901, 0.992273,
		-0.855173, -0.503999, -0.121100,
		0.510386, -0.859522, -0.027004,
		28.669147, 36.010597, 23.203135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963024, 36.203342, 23.734781>,  <28.311876, 36.612263, 23.222036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963024, 36.203342, 23.734781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330027, 36.057602, 23.670998>,  <28.550228, 35.970158, 23.632727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330027, 36.057602, 23.670998>,  <27.963024, 36.203342, 23.734781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330027, 36.057602, 23.670998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143850, -0.069779, 0.987136,
		-0.370793, -0.928643, -0.011610,
		0.917507, -0.364353, -0.159459,
		28.605278, 35.948296, 23.623159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038296, 35.626171, 24.227100>,  <27.963024, 36.203342, 23.734781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038296, 35.626171, 24.227100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406830, 35.740532, 24.121723>,  <28.627951, 35.809147, 24.058496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406830, 35.740532, 24.121723>,  <28.038296, 35.626171, 24.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406830, 35.740532, 24.121723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181619, 0.282615, 0.941883,
		0.343739, -0.915636, 0.208458,
		0.921335, 0.285902, -0.263443,
		28.683231, 35.826302, 24.042690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461094, 35.264786, 24.680239>,  <28.038296, 35.626171, 24.227100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461094, 35.264786, 24.680239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645821, 35.589439, 24.537144>,  <28.756657, 35.784233, 24.451286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645821, 35.589439, 24.537144>,  <28.461094, 35.264786, 24.680239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645821, 35.589439, 24.537144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343036, 0.208501, 0.915890,
		0.817956, -0.545689, -0.182130,
		0.461817, 0.811635, -0.357736,
		28.784367, 35.832932, 24.429823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068756, 35.375725, 25.108915>,  <28.461094, 35.264786, 24.680239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068756, 35.375725, 25.108915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048792, 35.733818, 24.931795>,  <29.036814, 35.948673, 24.825523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048792, 35.733818, 24.931795>,  <29.068756, 35.375725, 25.108915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048792, 35.733818, 24.931795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473783, 0.411517, 0.778578,
		0.879226, -0.170931, -0.444684,
		-0.049912, 0.895230, -0.442800,
		29.033819, 36.002388, 24.798956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728239, 35.616295, 25.108656>,  <29.068756, 35.375725, 25.108915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728239, 35.616295, 25.108656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485189, 35.931332, 25.067667>,  <29.339359, 36.120354, 25.043074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485189, 35.931332, 25.067667>,  <29.728239, 35.616295, 25.108656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485189, 35.931332, 25.067667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418242, 0.426986, 0.801721,
		0.675180, 0.444285, -0.588849,
		-0.607623, 0.787587, -0.102474,
		29.302902, 36.167606, 25.036924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156105, 36.116585, 25.272572>,  <29.728239, 35.616295, 25.108656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156105, 36.116585, 25.272572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795900, 36.281555, 25.327682>,  <29.579777, 36.380539, 25.360748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795900, 36.281555, 25.327682>,  <30.156105, 36.116585, 25.272572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795900, 36.281555, 25.327682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388939, 0.622294, 0.679321,
		0.194431, 0.665323, -0.720792,
		-0.900513, 0.412426, 0.137777,
		29.525747, 36.405281, 25.369015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224945, 36.855007, 25.260094>,  <30.156105, 36.116585, 25.272572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224945, 36.855007, 25.260094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894497, 36.779224, 25.472370>,  <29.696228, 36.733753, 25.599735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894497, 36.779224, 25.472370>,  <30.224945, 36.855007, 25.260094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894497, 36.779224, 25.472370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294548, 0.657692, 0.693313,
		-0.480384, 0.729073, -0.487528,
		-0.826119, -0.189457, 0.530692,
		29.646662, 36.722389, 25.631578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939943, 37.599030, 25.480011>,  <30.224945, 36.855007, 25.260094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939943, 37.599030, 25.480011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798227, 37.324490, 25.734070>,  <29.713198, 37.159767, 25.886505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798227, 37.324490, 25.734070>,  <29.939943, 37.599030, 25.480011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798227, 37.324490, 25.734070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095756, 0.649003, 0.754735,
		-0.930221, 0.328213, -0.164213,
		-0.354288, -0.686346, 0.635145,
		29.691940, 37.118587, 25.924614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452705, 37.957470, 25.796173>,  <29.939943, 37.599030, 25.480011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452705, 37.957470, 25.796173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546257, 37.641953, 26.023540>,  <29.602388, 37.452641, 26.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546257, 37.641953, 26.023540>,  <29.452705, 37.957470, 25.796173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546257, 37.641953, 26.023540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213936, 0.612057, 0.761326,
		-0.948437, -0.056452, 0.311898,
		0.233878, -0.788796, 0.568421,
		29.616421, 37.405315, 26.194067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339951, 38.174446, 26.442179>,  <29.452705, 37.957470, 25.796173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339951, 38.174446, 26.442179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537010, 37.840500, 26.540400>,  <29.655247, 37.640133, 26.599333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537010, 37.840500, 26.540400>,  <29.339951, 38.174446, 26.442179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537010, 37.840500, 26.540400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286857, 0.422195, 0.859921,
		-0.821590, -0.353200, 0.447481,
		0.492649, -0.834866, 0.245553,
		29.684805, 37.590038, 26.614065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206251, 38.085445, 27.051231>,  <29.339951, 38.174446, 26.442179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206251, 38.085445, 27.051231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552423, 37.893875, 26.992359>,  <29.760126, 37.778934, 26.957037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552423, 37.893875, 26.992359>,  <29.206251, 38.085445, 27.051231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552423, 37.893875, 26.992359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375749, 0.426081, 0.822962,
		-0.331428, -0.767518, 0.548699,
		0.865429, -0.478926, -0.147179,
		29.812052, 37.750198, 26.948206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458445, 37.736614, 27.728115>,  <29.206251, 38.085445, 27.051231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458445, 37.736614, 27.728115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775982, 37.772614, 27.487545>,  <29.966505, 37.794212, 27.343203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775982, 37.772614, 27.487545>,  <29.458445, 37.736614, 27.728115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775982, 37.772614, 27.487545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566267, 0.251148, 0.785026,
		0.221695, -0.963756, 0.148411,
		0.793846, 0.089996, -0.601422,
		30.014135, 37.799614, 27.307117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032528, 37.335781, 28.008249>,  <29.458445, 37.736614, 27.728115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032528, 37.335781, 28.008249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185444, 37.635094, 27.791388>,  <30.277193, 37.814682, 27.661270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185444, 37.635094, 27.791388>,  <30.032528, 37.335781, 28.008249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185444, 37.635094, 27.791388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594722, 0.249805, 0.764136,
		0.707221, -0.614552, -0.349521,
		0.382289, 0.748280, -0.542155,
		30.300131, 37.859577, 27.628740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745895, 37.251541, 27.920393>,  <30.032528, 37.335781, 28.008249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745895, 37.251541, 27.920393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555611, 37.601700, 27.954737>,  <30.441441, 37.811794, 27.975344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555611, 37.601700, 27.954737>,  <30.745895, 37.251541, 27.920393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555611, 37.601700, 27.954737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542294, 0.215034, 0.812206,
		0.692543, 0.432937, -0.577018,
		-0.475712, 0.875401, 0.085859,
		30.412897, 37.864319, 27.980494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597345, 37.568104, 28.475868>,  <30.745895, 37.251541, 27.920393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597345, 37.568104, 28.475868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966396, 37.432835, 28.550053>,  <31.187828, 37.351673, 28.594563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966396, 37.432835, 28.550053>,  <30.597345, 37.568104, 28.475868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966396, 37.432835, 28.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385669, -0.813742, 0.434838,
		0.003868, -0.472721, -0.881203,
		0.922629, -0.338170, 0.185461,
		31.243185, 37.331383, 28.605692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324125, 38.032879, 28.978243>,  <30.597345, 37.568104, 28.475868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324125, 38.032879, 28.978243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041780, 38.208698, 29.200436>,  <29.872374, 38.314190, 29.333752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041780, 38.208698, 29.200436>,  <30.324125, 38.032879, 28.978243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041780, 38.208698, 29.200436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691610, -0.597125, -0.406348,
		0.153084, -0.671001, 0.725481,
		-0.705862, 0.439544, 0.555481,
		29.830021, 38.340561, 29.367081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886286, 37.470959, 29.235558>,  <30.324125, 38.032879, 28.978243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886286, 37.470959, 29.235558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698437, 37.823174, 29.209929>,  <29.585728, 38.034504, 29.194551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698437, 37.823174, 29.209929>,  <29.886286, 37.470959, 29.235558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698437, 37.823174, 29.209929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696388, -0.414063, -0.586170,
		-0.542676, -0.230658, 0.807651,
		-0.469623, 0.880539, -0.064075,
		29.557550, 38.087334, 29.190706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165211, 37.558105, 29.614429>,  <29.886286, 37.470959, 29.235558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165211, 37.558105, 29.614429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198481, 37.765903, 29.274263>,  <29.218443, 37.890583, 29.070164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198481, 37.765903, 29.274263>,  <29.165211, 37.558105, 29.614429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198481, 37.765903, 29.274263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814215, -0.456606, -0.358559,
		-0.574575, 0.722245, 0.385002,
		0.083173, 0.519493, -0.850417,
		29.223433, 37.921753, 29.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553862, 37.155533, 29.979393>,  <29.165211, 37.558105, 29.614429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553862, 37.155533, 29.979393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330296, 36.825279, 30.010214>,  <28.196156, 36.627125, 30.028708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330296, 36.825279, 30.010214>,  <28.553862, 37.155533, 29.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330296, 36.825279, 30.010214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245198, -0.075785, 0.966506,
		-0.792145, 0.559087, 0.244802,
		-0.558914, -0.825638, 0.077054,
		28.162621, 36.577587, 30.033331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428316, 36.809155, 30.714146>,  <28.553862, 37.155533, 29.979393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428316, 36.809155, 30.714146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325998, 37.085918, 30.984205>,  <28.264608, 37.251976, 31.146240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325998, 37.085918, 30.984205>,  <28.428316, 36.809155, 30.714146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325998, 37.085918, 30.984205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273742, -0.721640, 0.635847,
		0.927165, -0.022171, 0.373996,
		-0.255793, 0.691913, 0.675149,
		28.249260, 37.293491, 31.186750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938118, 36.745865, 31.305122>,  <28.428316, 36.809155, 30.714146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938118, 36.745865, 31.305122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565308, 36.868805, 31.381922>,  <28.341621, 36.942570, 31.428001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565308, 36.868805, 31.381922>,  <28.938118, 36.745865, 31.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565308, 36.868805, 31.381922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204102, -0.882991, 0.422693,
		0.299448, 0.354774, 0.885701,
		-0.932027, 0.307348, 0.192000,
		28.285700, 36.961010, 31.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389193, 36.357170, 31.745008>,  <28.938118, 36.745865, 31.305122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389193, 36.357170, 31.745008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570257, 36.299271, 32.096951>,  <29.678896, 36.264530, 32.308117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570257, 36.299271, 32.096951>,  <29.389193, 36.357170, 31.745008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570257, 36.299271, 32.096951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591368, 0.787243, -0.174734,
		-0.667367, 0.599414, 0.441954,
		0.452664, -0.144746, 0.879855,
		29.706057, 36.255848, 32.360909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027674, 35.881142, 31.692795>,  <29.389193, 36.357170, 31.745008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027674, 35.881142, 31.692795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368521, 35.910587, 31.900055>,  <30.573029, 35.928253, 32.024410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368521, 35.910587, 31.900055>,  <30.027674, 35.881142, 31.692795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368521, 35.910587, 31.900055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404784, 0.534863, -0.741668,
		-0.331734, 0.841726, 0.425969,
		0.852116, 0.073611, 0.518150,
		30.624155, 35.932671, 32.055500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326368, 35.586929, 31.107698>,  <30.027674, 35.881142, 31.692795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326368, 35.586929, 31.107698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484539, 35.780064, 31.420238>,  <30.579441, 35.895947, 31.607761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484539, 35.780064, 31.420238>,  <30.326368, 35.586929, 31.107698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484539, 35.780064, 31.420238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141790, -0.872572, 0.467454,
		0.907488, -0.074056, -0.413499,
		0.395426, 0.482839, 0.781348,
		30.603167, 35.924915, 31.654642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002413, 35.561279, 31.346451>,  <30.326368, 35.586929, 31.107698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002413, 35.561279, 31.346451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952553, 35.290783, 31.636873>,  <30.922638, 35.128483, 31.811127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952553, 35.290783, 31.636873>,  <31.002413, 35.561279, 31.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952553, 35.290783, 31.636873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847570, -0.453008, -0.276420,
		0.515837, 0.580927, 0.629632,
		-0.124649, -0.676245, 0.726055,
		30.915157, 35.087910, 31.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579262, 35.512703, 31.797718>,  <31.002413, 35.561279, 31.346451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579262, 35.512703, 31.797718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399130, 35.158993, 31.748318>,  <31.291050, 34.946766, 31.718678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399130, 35.158993, 31.748318>,  <31.579262, 35.512703, 31.797718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399130, 35.158993, 31.748318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839202, -0.371969, -0.396711,
		0.304865, -0.282293, 0.909598,
		-0.450331, -0.884279, -0.123501,
		31.264030, 34.893707, 31.711267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773275, 34.941959, 32.282833>,  <31.579262, 35.512703, 31.797718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773275, 34.941959, 32.282833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711868, 34.854488, 31.897377>,  <31.675024, 34.802006, 31.666101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711868, 34.854488, 31.897377>,  <31.773275, 34.941959, 32.282833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711868, 34.854488, 31.897377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985915, -0.099380, -0.134515,
		-0.066351, -0.970723, 0.230855,
		-0.153520, -0.218679, -0.963645,
		31.665812, 34.788883, 31.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902000, 34.271492, 32.015259>,  <31.773275, 34.941959, 32.282833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902000, 34.271492, 32.015259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960762, 34.507851, 31.697954>,  <31.996019, 34.649666, 31.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960762, 34.507851, 31.697954>,  <31.902000, 34.271492, 32.015259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960762, 34.507851, 31.697954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951896, -0.302472, -0.049031,
		-0.268911, -0.747896, -0.606908,
		0.146903, 0.590899, -0.793258,
		32.004833, 34.685120, 31.459976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938253, 33.874599, 31.372948>,  <31.902000, 34.271492, 32.015259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938253, 33.874599, 31.372948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176933, 34.195293, 31.386679>,  <32.320141, 34.387711, 31.394918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176933, 34.195293, 31.386679>,  <31.938253, 33.874599, 31.372948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176933, 34.195293, 31.386679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799728, -0.590590, -0.107875,
		-0.066213, 0.091823, -0.993571,
		0.596699, 0.801730, 0.034329,
		32.355942, 34.435814, 31.396976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558887, 33.771736, 30.910770>,  <31.938253, 33.874599, 31.372948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558887, 33.771736, 30.910770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663567, 34.066872, 31.159643>,  <32.726372, 34.243954, 31.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663567, 34.066872, 31.159643>,  <32.558887, 33.771736, 30.910770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663567, 34.066872, 31.159643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963691, -0.235201, -0.126416,
		0.053064, 0.632675, -0.772597,
		0.261696, 0.737836, 0.622184,
		32.742077, 34.288223, 31.346298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021069, 33.335255, 30.648783>,  <32.558887, 33.771736, 30.910770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021069, 33.335255, 30.648783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071026, 32.938679, 30.663990>,  <33.101002, 32.700733, 30.673115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071026, 32.938679, 30.663990>,  <33.021069, 33.335255, 30.648783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071026, 32.938679, 30.663990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236373, 0.066946, 0.969353,
		-0.963602, -0.112079, 0.242711,
		0.124893, -0.991442, 0.038017,
		33.108494, 32.641247, 30.675396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648880, 33.066441, 31.137138>,  <33.021069, 33.335255, 30.648783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648880, 33.066441, 31.137138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956234, 32.817429, 31.077745>,  <33.140648, 32.668022, 31.042110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956234, 32.817429, 31.077745>,  <32.648880, 33.066441, 31.137138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956234, 32.817429, 31.077745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223366, 0.043445, 0.973766,
		-0.599745, -0.781391, 0.172434,
		0.768383, -0.622527, -0.148480,
		33.186749, 32.630669, 31.033201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621552, 32.615417, 31.693905>,  <32.648880, 33.066441, 31.137138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621552, 32.615417, 31.693905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985600, 32.591099, 31.529963>,  <33.204029, 32.576508, 31.431597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985600, 32.591099, 31.529963>,  <32.621552, 32.615417, 31.693905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985600, 32.591099, 31.529963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406331, -0.062625, 0.911577,
		-0.081094, -0.996183, -0.032290,
		0.910120, -0.060803, -0.409858,
		33.258636, 32.572861, 31.407005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068764, 32.092815, 32.012604>,  <32.621552, 32.615417, 31.693905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068764, 32.092815, 32.012604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329952, 32.350204, 31.852819>,  <33.486668, 32.504639, 31.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329952, 32.350204, 31.852819>,  <33.068764, 32.092815, 32.012604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329952, 32.350204, 31.852819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518909, 0.004088, 0.854820,
		0.551688, -0.765456, -0.331236,
		0.652973, 0.643475, -0.399457,
		33.525845, 32.543247, 31.732983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646851, 31.971842, 32.362614>,  <33.068764, 32.092815, 32.012604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646851, 31.971842, 32.362614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794807, 32.301834, 32.191696>,  <33.883583, 32.499828, 32.089146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794807, 32.301834, 32.191696>,  <33.646851, 31.971842, 32.362614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794807, 32.301834, 32.191696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505012, 0.207500, 0.837799,
		0.779833, -0.525687, -0.339872,
		0.369896, 0.824983, -0.427294,
		33.905777, 32.549328, 32.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236343, 31.902536, 32.566006>,  <33.646851, 31.971842, 32.362614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236343, 31.902536, 32.566006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252193, 32.284485, 32.448257>,  <34.261703, 32.513653, 32.377609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252193, 32.284485, 32.448257>,  <34.236343, 31.902536, 32.566006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252193, 32.284485, 32.448257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576401, 0.218798, 0.787330,
		0.816205, -0.200872, -0.541719,
		0.039625, 0.954871, -0.294367,
		34.264080, 32.570946, 32.359947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566166, 31.305840, 32.291656>,  <34.236343, 31.902536, 32.566006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566166, 31.305840, 32.291656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724255, 31.599569, 32.070908>,  <34.819107, 31.775806, 31.938457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724255, 31.599569, 32.070908>,  <34.566166, 31.305840, 32.291656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724255, 31.599569, 32.070908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918128, -0.296862, 0.262513,
		0.028939, -0.610443, -0.791531,
		0.395225, 0.734324, -0.551874,
		34.842823, 31.819866, 31.905346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107616, 31.038832, 31.749119>,  <34.566166, 31.305840, 32.291656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107616, 31.038832, 31.749119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154366, 31.413265, 31.881838>,  <35.182415, 31.637924, 31.961470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154366, 31.413265, 31.881838>,  <35.107616, 31.038832, 31.749119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154366, 31.413265, 31.881838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845750, -0.268944, 0.460844,
		0.520623, 0.226759, -0.823123,
		0.116873, 0.936082, 0.331800,
		35.189426, 31.694090, 31.981379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735897, 31.413181, 31.530787>,  <35.107616, 31.038832, 31.749119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735897, 31.413181, 31.530787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592171, 31.468523, 31.899948>,  <35.505936, 31.501728, 32.121445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592171, 31.468523, 31.899948>,  <35.735897, 31.413181, 31.530787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592171, 31.468523, 31.899948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916340, -0.134905, 0.376989,
		0.176662, 0.981152, -0.078304,
		-0.359320, 0.138352, 0.922902,
		35.484375, 31.510029, 32.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150391, 31.736042, 31.125757>,  <35.735897, 31.413181, 31.530787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150391, 31.736042, 31.125757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102844, 32.071377, 31.338572>,  <36.074318, 32.272579, 31.466261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102844, 32.071377, 31.338572>,  <36.150391, 31.736042, 31.125757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102844, 32.071377, 31.338572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756392, -0.270671, 0.595490,
		0.643228, 0.473212, -0.601937,
		-0.118866, 0.838336, 0.532037,
		36.067184, 32.322876, 31.498182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777260, 32.105766, 31.069368>,  <36.150391, 31.736042, 31.125757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777260, 32.105766, 31.069368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584682, 32.187992, 31.410181>,  <36.469135, 32.237328, 31.614668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584682, 32.187992, 31.410181>,  <36.777260, 32.105766, 31.069368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584682, 32.187992, 31.410181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858496, -0.085301, 0.505675,
		0.176629, 0.974919, -0.135411,
		-0.481442, 0.205567, 0.852031,
		36.440250, 32.249660, 31.665791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040688, 32.647434, 31.329723>,  <36.777260, 32.105766, 31.069368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040688, 32.647434, 31.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888031, 32.459305, 31.648005>,  <36.796436, 32.346428, 31.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888031, 32.459305, 31.648005>,  <37.040688, 32.647434, 31.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888031, 32.459305, 31.648005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853618, 0.150843, 0.498580,
		-0.354520, 0.869507, 0.343909,
		-0.381643, -0.470324, 0.795704,
		36.773537, 32.318207, 31.886715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980556, 33.095139, 31.987679>,  <37.040688, 32.647434, 31.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980556, 33.095139, 31.987679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002205, 32.712051, 32.100704>,  <37.015194, 32.482197, 32.168518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002205, 32.712051, 32.100704>,  <36.980556, 33.095139, 31.987679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002205, 32.712051, 32.100704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836914, 0.197858, 0.510320,
		-0.544651, 0.208863, 0.812238,
		0.054121, -0.957721, 0.282564,
		37.018440, 32.424736, 32.185474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648933, 33.217209, 32.417515>,  <36.980556, 33.095139, 31.987679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648933, 33.217209, 32.417515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847282, 33.011543, 32.697441>,  <37.966293, 32.888142, 32.865398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847282, 33.011543, 32.697441>,  <37.648933, 33.217209, 32.417515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847282, 33.011543, 32.697441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857783, 0.164418, -0.487006,
		0.135340, 0.841783, 0.522575,
		0.495874, -0.514167, 0.699815,
		37.996044, 32.857292, 32.907387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076603, 33.582378, 32.854202>,  <37.648933, 33.217209, 32.417515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076603, 33.582378, 32.854202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252613, 33.223186, 32.853214>,  <38.358219, 33.007671, 32.852619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252613, 33.223186, 32.853214>,  <38.076603, 33.582378, 32.854202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252613, 33.223186, 32.853214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846482, 0.415701, -0.332657,
		0.299749, 0.144281, 0.943045,
		0.440021, -0.897984, -0.002474,
		38.384621, 32.953793, 32.852470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833305, 33.856956, 33.101086>,  <38.076603, 33.582378, 32.854202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833305, 33.856956, 33.101086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155312, 33.940903, 32.879131>,  <39.348515, 33.991272, 32.745956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155312, 33.940903, 32.879131>,  <38.833305, 33.856956, 33.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155312, 33.940903, 32.879131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593126, -0.265555, 0.760054,
		0.012156, -0.940976, -0.338255,
		0.805018, 0.209867, -0.554890,
		39.396816, 34.003864, 32.712666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586903, 33.124939, 33.325981>,  <38.833305, 33.856956, 33.101086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586903, 33.124939, 33.325981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200714, 33.104500, 33.223797>,  <37.969002, 33.092236, 33.162487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200714, 33.104500, 33.223797>,  <38.586903, 33.124939, 33.325981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200714, 33.104500, 33.223797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252795, 0.053220, -0.966055,
		0.062977, -0.997274, -0.038460,
		-0.965468, -0.051117, -0.255458,
		37.911072, 33.089172, 33.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600937, 32.809868, 34.022415>,  <38.586903, 33.124939, 33.325981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600937, 32.809868, 34.022415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663773, 32.681728, 33.648743>,  <38.701473, 32.604843, 33.424538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663773, 32.681728, 33.648743>,  <38.600937, 32.809868, 34.022415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663773, 32.681728, 33.648743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625060, -0.764606, 0.157088,
		-0.764606, 0.559245, -0.320347,
		-0.157088, 0.320347, 0.934185,
		38.710899, 32.585625, 33.368488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403492, 32.055145, 34.155651>,  <38.600937, 32.809868, 34.022415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403492, 32.055145, 34.155651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203220, 32.394279, 34.085804>,  <38.083057, 32.597759, 34.043896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203220, 32.394279, 34.085804>,  <38.403492, 32.055145, 34.155651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203220, 32.394279, 34.085804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784538, -0.529697, -0.322369,
		-0.365810, -0.024411, 0.930369,
		-0.500683, 0.847836, -0.174617,
		38.053017, 32.648632, 34.033421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366962, 31.299416, 34.513817>,  <38.403492, 32.055145, 34.155651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366962, 31.299416, 34.513817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987610, 31.315519, 34.639645>,  <37.759998, 31.325182, 34.715141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987610, 31.315519, 34.639645>,  <38.366962, 31.299416, 34.513817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987610, 31.315519, 34.639645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085795, 0.987492, 0.132285,
		-0.305306, 0.152445, -0.939973,
		-0.948381, 0.040257, 0.314566,
		37.703094, 31.327597, 34.734013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014847, 30.934391, 34.942543>,  <38.366962, 31.299416, 34.513817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014847, 30.934391, 34.942543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715561, 30.891777, 35.204479>,  <38.535988, 30.866209, 35.361641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715561, 30.891777, 35.204479>,  <39.014847, 30.934391, 34.942543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715561, 30.891777, 35.204479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634220, -0.404613, 0.658827,
		0.194772, 0.908262, 0.370304,
		-0.748217, -0.106533, 0.654845,
		38.491096, 30.859818, 35.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890667, 31.431494, 35.594799>,  <39.014847, 30.934391, 34.942543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890667, 31.431494, 35.594799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791801, 31.047421, 35.646881>,  <38.732483, 30.816977, 35.678131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791801, 31.047421, 35.646881>,  <38.890667, 31.431494, 35.594799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791801, 31.047421, 35.646881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783203, -0.118847, 0.610302,
		-0.570528, 0.252827, 0.781394,
		-0.247167, -0.960184, 0.130209,
		38.717651, 30.759365, 35.685944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750534, 31.060211, 36.256374>,  <38.890667, 31.431494, 35.594799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750534, 31.060211, 36.256374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947010, 30.819811, 36.004173>,  <39.064896, 30.675571, 35.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947010, 30.819811, 36.004173>,  <38.750534, 31.060211, 36.256374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947010, 30.819811, 36.004173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803247, 0.032538, 0.594757,
		-0.336934, -0.798586, 0.498734,
		0.491193, -0.601001, -0.630498,
		39.094368, 30.639511, 35.815025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132488, 30.491909, 36.571529>,  <38.750534, 31.060211, 36.256374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132488, 30.491909, 36.571529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328693, 30.510740, 36.223465>,  <39.446419, 30.522039, 36.014626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328693, 30.510740, 36.223465>,  <39.132488, 30.491909, 36.571529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328693, 30.510740, 36.223465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871101, 0.001061, 0.491103,
		0.024043, -0.998890, -0.040490,
		0.490515, 0.047079, -0.870160,
		39.475849, 30.524864, 35.962418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721630, 29.963907, 36.615993>,  <39.132488, 30.491909, 36.571529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721630, 29.963907, 36.615993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797657, 30.207380, 36.307869>,  <39.843273, 30.353464, 36.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797657, 30.207380, 36.307869>,  <39.721630, 29.963907, 36.615993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797657, 30.207380, 36.307869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930792, 0.137830, 0.338569,
		0.312252, -0.781352, -0.540359,
		0.190064, 0.608681, -0.770314,
		39.854675, 30.389984, 36.076775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401581, 29.884466, 36.162281>,  <39.721630, 29.963907, 36.615993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401581, 29.884466, 36.162281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274677, 30.263802, 36.161514>,  <40.198536, 30.491402, 36.161053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274677, 30.263802, 36.161514>,  <40.401581, 29.884466, 36.162281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274677, 30.263802, 36.161514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948305, 0.317231, -0.009090,
		-0.008013, -0.004700, -0.999957,
		-0.317260, 0.948337, -0.001915,
		40.179501, 30.548302, 36.160938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710186, 30.267063, 35.625343>,  <40.401581, 29.884466, 36.162281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710186, 30.267063, 35.625343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702427, 30.601839, 35.844124>,  <40.697769, 30.802704, 35.975391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702427, 30.601839, 35.844124>,  <40.710186, 30.267063, 35.625343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702427, 30.601839, 35.844124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915129, 0.235203, -0.327442,
		-0.402693, 0.494181, -0.770470,
		-0.019401, 0.836938, 0.546954,
		40.696606, 30.852921, 36.008209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960770, 30.821964, 35.211788>,  <40.710186, 30.267063, 35.625343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960770, 30.821964, 35.211788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999424, 30.937998, 35.592632>,  <41.022617, 31.007618, 35.821140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999424, 30.937998, 35.592632>,  <40.960770, 30.821964, 35.211788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999424, 30.937998, 35.592632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859068, 0.458787, -0.226972,
		-0.502656, 0.839860, -0.204868,
		0.096634, 0.290085, 0.952110,
		41.028416, 31.025023, 35.878265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088978, 31.462654, 35.215725>,  <40.960770, 30.821964, 35.211788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088978, 31.462654, 35.215725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252987, 31.305069, 35.544765>,  <41.351391, 31.210518, 35.742191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252987, 31.305069, 35.544765>,  <41.088978, 31.462654, 35.215725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252987, 31.305069, 35.544765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885402, 0.388448, -0.255285,
		-0.218965, 0.833007, 0.508089,
		0.410021, -0.393965, 0.822603,
		41.375992, 31.186880, 35.791546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402908, 31.968107, 35.730389>,  <41.088978, 31.462654, 35.215725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402908, 31.968107, 35.730389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535702, 31.598392, 35.655045>,  <41.615379, 31.376564, 35.609840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535702, 31.598392, 35.655045>,  <41.402908, 31.968107, 35.730389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535702, 31.598392, 35.655045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727893, 0.378025, -0.572074,
		0.599965, 0.052816, 0.798281,
		0.331985, -0.924287, -0.188357,
		41.635296, 31.321106, 35.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063908, 32.012463, 35.593796>,  <41.402908, 31.968107, 35.730389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063908, 32.012463, 35.593796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082722, 31.639219, 35.451195>,  <42.094009, 31.415274, 35.365635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082722, 31.639219, 35.451195>,  <42.063908, 32.012463, 35.593796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082722, 31.639219, 35.451195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913979, 0.184206, -0.361539,
		0.403025, -0.308833, 0.861506,
		0.047039, -0.933108, -0.356507,
		42.096832, 31.359287, 35.344242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791004, 31.802916, 35.628643>,  <42.063908, 32.012463, 35.593796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791004, 31.802916, 35.628643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629658, 31.583178, 35.335926>,  <42.532852, 31.451334, 35.160297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629658, 31.583178, 35.335926>,  <42.791004, 31.802916, 35.628643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629658, 31.583178, 35.335926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793792, 0.187756, -0.578482,
		0.455185, -0.814228, 0.360332,
		-0.403361, -0.549345, -0.731791,
		42.508648, 31.418373, 35.116390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211658, 31.209623, 35.308075>,  <42.791004, 31.802916, 35.628643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211658, 31.209623, 35.308075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966949, 31.388758, 35.047253>,  <42.820126, 31.496239, 34.890759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966949, 31.388758, 35.047253>,  <43.211658, 31.209623, 35.308075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966949, 31.388758, 35.047253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767819, 0.137941, -0.625640,
		-0.190239, -0.883411, -0.428246,
		-0.611770, 0.447837, -0.652058,
		42.783417, 31.523109, 34.851635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919647, 31.092728, 35.013523>,  <43.211658, 31.209623, 35.308075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919647, 31.092728, 35.013523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272720, 31.016623, 34.841633>,  <44.484566, 30.970959, 34.738499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272720, 31.016623, 34.841633>,  <43.919647, 31.092728, 35.013523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272720, 31.016623, 34.841633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346646, 0.881009, 0.321963,
		0.317336, -0.433155, 0.843608,
		0.882686, -0.190263, -0.429727,
		44.537525, 30.959543, 34.712715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554081, 31.110550, 35.525562>,  <43.919647, 31.092728, 35.013523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554081, 31.110550, 35.525562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623280, 31.232187, 35.150841>,  <44.664799, 31.305170, 34.926010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623280, 31.232187, 35.150841>,  <44.554081, 31.110550, 35.525562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623280, 31.232187, 35.150841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309972, 0.886001, 0.344847,
		0.934873, -0.350041, 0.059017,
		0.173000, 0.304094, -0.936802,
		44.675179, 31.323416, 34.869801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385784, 31.344116, 35.361622>,  <44.554081, 31.110550, 35.525562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385784, 31.344116, 35.361622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086891, 31.523209, 35.165184>,  <44.907555, 31.630663, 35.047321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086891, 31.523209, 35.165184>,  <45.385784, 31.344116, 35.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086891, 31.523209, 35.165184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323130, 0.890529, 0.320227,
		0.580710, 0.080597, -0.810111,
		-0.747237, 0.447730, -0.491096,
		44.862720, 31.657528, 35.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.782272, 31.795053, 34.982300>,  <45.385784, 31.344116, 35.361622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.782272, 31.795053, 34.982300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420326, 31.950338, 35.052158>,  <45.203159, 32.043510, 35.094074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420326, 31.950338, 35.052158>,  <45.782272, 31.795053, 34.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420326, 31.950338, 35.052158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425484, 0.837561, 0.342717,
		-0.013229, 0.384423, -0.923062,
		-0.904869, 0.388214, 0.174646,
		45.148865, 32.066803, 35.104553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273888, 32.359657, 34.597988>,  <45.782272, 31.795053, 34.982300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273888, 32.359657, 34.597988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228542, 32.340317, 34.994938>,  <45.201336, 32.328712, 35.233109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228542, 32.340317, 34.994938>,  <45.273888, 32.359657, 34.597988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228542, 32.340317, 34.994938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394385, 0.914565, 0.089614,
		-0.911926, 0.401537, -0.084606,
		-0.113361, -0.048354, 0.992377,
		45.194534, 32.325809, 35.292652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648262, 32.914341, 34.921467>,  <45.273888, 32.359657, 34.597988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648262, 32.914341, 34.921467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435143, 33.152184, 34.680614>,  <45.307270, 33.294891, 34.536102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435143, 33.152184, 34.680614>,  <45.648262, 32.914341, 34.921467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435143, 33.152184, 34.680614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263951, 0.792811, 0.549346,
		0.804022, 0.133760, -0.579359,
		-0.532803, 0.594609, -0.602131,
		45.275303, 33.330566, 34.499973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046463, 33.474911, 34.644890>,  <45.648262, 32.914341, 34.921467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046463, 33.474911, 34.644890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667393, 33.595493, 34.686924>,  <45.439953, 33.667843, 34.712143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667393, 33.595493, 34.686924>,  <46.046463, 33.474911, 34.644890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667393, 33.595493, 34.686924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305695, 0.762015, 0.570862,
		0.092015, 0.573113, -0.814294,
		-0.947673, 0.301454, 0.105081,
		45.383091, 33.685928, 34.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917072, 34.184559, 34.349384>,  <46.046463, 33.474911, 34.644890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917072, 34.184559, 34.349384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740810, 34.063038, 34.687267>,  <45.635052, 33.990124, 34.889996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740810, 34.063038, 34.687267>,  <45.917072, 34.184559, 34.349384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740810, 34.063038, 34.687267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561110, 0.641291, 0.523356,
		-0.700699, 0.704592, -0.112122,
		-0.440656, -0.303802, 0.844705,
		45.608612, 33.971897, 34.940678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671463, 34.629311, 34.827911>,  <45.917072, 34.184559, 34.349384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671463, 34.629311, 34.827911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790928, 34.340313, 35.077328>,  <45.862606, 34.166916, 35.226978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790928, 34.340313, 35.077328>,  <45.671463, 34.629311, 34.827911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790928, 34.340313, 35.077328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629708, 0.640137, 0.440105,
		-0.717127, 0.261210, 0.646141,
		0.298659, -0.722491, 0.623546,
		45.880527, 34.123566, 35.264393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568913, 34.704525, 35.646114>,  <45.671463, 34.629311, 34.827911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568913, 34.704525, 35.646114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903008, 34.528023, 35.514866>,  <46.103466, 34.422123, 35.436115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903008, 34.528023, 35.514866>,  <45.568913, 34.704525, 35.646114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903008, 34.528023, 35.514866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528006, 0.810215, 0.254482,
		0.153561, -0.385807, 0.909710,
		0.835242, -0.441254, -0.328126,
		46.153580, 34.395645, 35.416428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189316, 34.926571, 36.025852>,  <45.568913, 34.704525, 35.646114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189316, 34.926571, 36.025852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312450, 34.794285, 35.669006>,  <46.386330, 34.714912, 35.454899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312450, 34.794285, 35.669006>,  <46.189316, 34.926571, 36.025852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312450, 34.794285, 35.669006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685542, 0.727283, -0.033055,
		0.659750, -0.601404, 0.450603,
		0.307836, -0.330715, -0.892112,
		46.404800, 34.695068, 35.401371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878983, 34.636528, 36.271076>,  <46.189316, 34.926571, 36.025852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878983, 34.636528, 36.271076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107727, 34.379070, 36.067631>,  <47.244976, 34.224594, 35.945564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107727, 34.379070, 36.067631>,  <46.878983, 34.636528, 36.271076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107727, 34.379070, 36.067631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261701, 0.730745, -0.630496,
		0.777484, 0.227452, 0.586330,
		0.571865, -0.643644, -0.508618,
		47.279285, 34.185978, 35.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530361, 34.904629, 36.127628>,  <46.878983, 34.636528, 36.271076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530361, 34.904629, 36.127628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498981, 34.639332, 35.829914>,  <47.480156, 34.480156, 35.651287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498981, 34.639332, 35.829914>,  <47.530361, 34.904629, 36.127628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498981, 34.639332, 35.829914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074516, 0.740595, -0.667807,
		0.994130, -0.107848, -0.008675,
		-0.078446, -0.663241, -0.744284,
		47.475449, 34.440361, 35.606628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.791481, 35.268513, 35.580177>,  <47.530361, 34.904629, 36.127628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.791481, 35.268513, 35.580177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593834, 34.978954, 35.387585>,  <47.475246, 34.805218, 35.272030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593834, 34.978954, 35.387585>,  <47.791481, 35.268513, 35.580177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593834, 34.978954, 35.387585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190290, 0.450328, -0.872350,
		0.848317, -0.522661, -0.084762,
		-0.494114, -0.723900, -0.481478,
		47.445599, 34.761784, 35.243141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.203335, 35.155636, 34.936550>,  <47.791481, 35.268513, 35.580177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.203335, 35.155636, 34.936550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837330, 35.000084, 34.893597>,  <47.617729, 34.906754, 34.867825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837330, 35.000084, 34.893597>,  <48.203335, 35.155636, 34.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.837330, 35.000084, 34.893597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018235, 0.305762, -0.951933,
		0.403020, -0.869070, -0.286866,
		-0.915009, -0.388879, -0.107380,
		47.562828, 34.883419, 34.861382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.740414, 33.145691, 18.229918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849194, 32.760986, 18.216934>,  <32.914463, 32.530163, 18.209145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849194, 32.760986, 18.216934>,  <32.740414, 33.145691, 18.229918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849194, 32.760986, 18.216934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139409, 0.006000, 0.990217,
		-0.952159, -0.273818, 0.135710,
		0.271954, -0.961763, -0.032460,
		32.930779, 32.472458, 18.207195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267277, 32.824677, 18.708073>,  <32.740414, 33.145691, 18.229918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267277, 32.824677, 18.708073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598686, 32.606785, 18.656191>,  <32.797531, 32.476051, 18.625061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.598686, 32.606785, 18.656191>,  <32.267277, 32.824677, 18.708073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598686, 32.606785, 18.656191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231867, 0.122902, 0.964952,
		-0.509695, -0.829559, 0.228131,
		0.828522, -0.544727, -0.129705,
		32.847244, 32.443367, 18.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180294, 32.402966, 19.295958>,  <32.267277, 32.824677, 18.708073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180294, 32.402966, 19.295958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560974, 32.338768, 19.191259>,  <32.789383, 32.300251, 19.128441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560974, 32.338768, 19.191259>,  <32.180294, 32.402966, 19.295958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560974, 32.338768, 19.191259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232232, -0.181378, 0.955600,
		-0.200846, -0.970228, -0.135345,
		0.951698, -0.160497, -0.261747,
		32.846485, 32.290623, 19.112736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455807, 31.696743, 19.623743>,  <32.180294, 32.402966, 19.295958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455807, 31.696743, 19.623743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794056, 31.893290, 19.540339>,  <32.997005, 32.011219, 19.490295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794056, 31.893290, 19.540339>,  <32.455807, 31.696743, 19.623743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794056, 31.893290, 19.540339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349432, -0.214297, 0.912126,
		0.403503, -0.844178, -0.352914,
		0.845625, 0.491365, -0.208514,
		33.047745, 32.040699, 19.477785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010189, 31.268997, 19.876114>,  <32.455807, 31.696743, 19.623743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010189, 31.268997, 19.876114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157425, 31.639521, 19.843966>,  <33.245766, 31.861835, 19.824677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157425, 31.639521, 19.843966>,  <33.010189, 31.268997, 19.876114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157425, 31.639521, 19.843966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381114, -0.071467, 0.921762,
		0.848094, -0.369919, -0.379337,
		0.368087, 0.926311, -0.080371,
		33.267853, 31.917414, 19.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740593, 31.307196, 20.177757>,  <33.010189, 31.268997, 19.876114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740593, 31.307196, 20.177757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622700, 31.689428, 20.177296>,  <33.551964, 31.918768, 20.177019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622700, 31.689428, 20.177296>,  <33.740593, 31.307196, 20.177757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622700, 31.689428, 20.177296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544614, 0.168968, 0.821490,
		0.785195, 0.241487, -0.570222,
		-0.294729, 0.955580, -0.001156,
		33.534283, 31.976103, 20.176949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260403, 31.667950, 20.523262>,  <33.740593, 31.307196, 20.177757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260403, 31.667950, 20.523262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984936, 31.955654, 20.559908>,  <33.819656, 32.128277, 20.581896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984936, 31.955654, 20.559908>,  <34.260403, 31.667950, 20.523262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984936, 31.955654, 20.559908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348261, 0.217304, 0.911862,
		0.635960, 0.659880, -0.400143,
		-0.688672, 0.719262, 0.091614,
		33.778336, 32.171432, 20.587393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609039, 32.261700, 20.792934>,  <34.260403, 31.667950, 20.523262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609039, 32.261700, 20.792934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219589, 32.315319, 20.866785>,  <33.985920, 32.347492, 20.911095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219589, 32.315319, 20.866785>,  <34.609039, 32.261700, 20.792934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219589, 32.315319, 20.866785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224255, 0.413177, 0.882607,
		0.042030, 0.900730, -0.432341,
		-0.973624, 0.134050, 0.184627,
		33.927502, 32.355534, 20.922173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584351, 32.925076, 21.107252>,  <34.609039, 32.261700, 20.792934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584351, 32.925076, 21.107252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261574, 32.721176, 21.226589>,  <34.067909, 32.598839, 21.298191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261574, 32.721176, 21.226589>,  <34.584351, 32.925076, 21.107252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261574, 32.721176, 21.226589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139932, 0.325746, 0.935045,
		-0.573818, 0.796272, -0.191528,
		-0.806940, -0.509745, 0.298343,
		34.019493, 32.568253, 21.316092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366314, 33.293476, 21.643017>,  <34.584351, 32.925076, 21.107252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366314, 33.293476, 21.643017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157440, 32.960526, 21.717285>,  <34.032116, 32.760754, 21.761847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157440, 32.960526, 21.717285>,  <34.366314, 33.293476, 21.643017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157440, 32.960526, 21.717285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021056, 0.205060, 0.978523,
		-0.852572, 0.514880, -0.089553,
		-0.522186, -0.832375, 0.185670,
		34.000786, 32.710812, 21.772985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739010, 33.577103, 22.039383>,  <34.366314, 33.293476, 21.643017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739010, 33.577103, 22.039383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784134, 33.190201, 22.130333>,  <33.811211, 32.958061, 22.184902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784134, 33.190201, 22.130333>,  <33.739010, 33.577103, 22.039383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784134, 33.190201, 22.130333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371459, 0.171185, 0.912531,
		-0.921570, -0.187407, -0.339982,
		0.112815, -0.967251, 0.227373,
		33.817978, 32.900024, 22.198545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119789, 33.500065, 22.410990>,  <33.739010, 33.577103, 22.039383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119789, 33.500065, 22.410990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388580, 33.221611, 22.512058>,  <33.549854, 33.054539, 22.572699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388580, 33.221611, 22.512058>,  <33.119789, 33.500065, 22.410990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388580, 33.221611, 22.512058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230604, 0.127530, 0.964654,
		-0.703751, -0.706495, -0.074833,
		0.671980, -0.696133, 0.252670,
		33.590176, 33.012772, 22.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739407, 33.078613, 22.843084>,  <33.119789, 33.500065, 22.410990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739407, 33.078613, 22.843084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127998, 33.031269, 22.925270>,  <33.361153, 33.002865, 22.974583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.127998, 33.031269, 22.925270>,  <32.739407, 33.078613, 22.843084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127998, 33.031269, 22.925270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183083, 0.176242, 0.967171,
		-0.150684, -0.977205, 0.149547,
		0.971481, -0.118358, 0.205466,
		33.419441, 32.995762, 22.986910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701031, 32.638630, 23.505819>,  <32.739407, 33.078613, 22.843084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701031, 32.638630, 23.505819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079823, 32.767075, 23.501640>,  <33.307098, 32.844143, 23.499134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079823, 32.767075, 23.501640>,  <32.701031, 32.638630, 23.505819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079823, 32.767075, 23.501640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089121, 0.293788, 0.951707,
		0.308691, -0.900314, 0.306830,
		0.946978, 0.321128, -0.010452,
		33.363918, 32.863407, 23.498507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082333, 32.238178, 24.030590>,  <32.701031, 32.638630, 23.505819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082333, 32.238178, 24.030590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.272106, 32.582439, 23.956635>,  <33.385971, 32.788998, 23.912260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.272106, 32.582439, 23.956635>,  <33.082333, 32.238178, 24.030590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272106, 32.582439, 23.956635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065896, 0.174722, 0.982410,
		0.877819, -0.478276, 0.026181,
		0.474438, 0.860654, -0.184891,
		33.414436, 32.840637, 23.901167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614235, 32.279976, 24.452753>,  <33.082333, 32.238178, 24.030590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614235, 32.279976, 24.452753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576160, 32.670166, 24.373375>,  <33.553314, 32.904282, 24.325748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576160, 32.670166, 24.373375>,  <33.614235, 32.279976, 24.452753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576160, 32.670166, 24.373375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000267, 0.199376, 0.979923,
		0.995459, 0.093226, -0.019239,
		-0.095190, 0.975478, -0.198446,
		33.547604, 32.962811, 24.313841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096516, 32.606976, 24.870701>,  <33.614235, 32.279976, 24.452753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096516, 32.606976, 24.870701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844273, 32.899345, 24.766329>,  <33.692928, 33.074768, 24.703705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844273, 32.899345, 24.766329>,  <34.096516, 32.606976, 24.870701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844273, 32.899345, 24.766329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153011, 0.212520, 0.965103,
		0.760871, 0.648524, -0.022176,
		-0.630605, 0.730926, -0.260931,
		33.655090, 33.118622, 24.688049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271778, 33.181465, 25.185352>,  <34.096516, 32.606976, 24.870701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271778, 33.181465, 25.185352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897484, 33.278229, 25.082687>,  <33.672905, 33.336285, 25.021090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.897484, 33.278229, 25.082687>,  <34.271778, 33.181465, 25.185352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897484, 33.278229, 25.082687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140820, 0.410941, 0.900720,
		0.323362, 0.878982, -0.350468,
		-0.935739, 0.241906, -0.256661,
		33.616764, 33.350800, 25.005690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162556, 33.902122, 25.438967>,  <34.271778, 33.181465, 25.185352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162556, 33.902122, 25.438967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795635, 33.746662, 25.404303>,  <33.575481, 33.653385, 25.383505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.795635, 33.746662, 25.404303>,  <34.162556, 33.902122, 25.438967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795635, 33.746662, 25.404303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228514, 0.335572, 0.913878,
		-0.326100, 0.858103, -0.396633,
		-0.917301, -0.388651, -0.086658,
		33.520447, 33.630066, 25.378305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837238, 34.503555, 25.485453>,  <34.162556, 33.902122, 25.438967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837238, 34.503555, 25.485453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598434, 34.200832, 25.591902>,  <33.455151, 34.019199, 25.655771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598434, 34.200832, 25.591902>,  <33.837238, 34.503555, 25.485453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598434, 34.200832, 25.591902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251855, 0.491769, 0.833506,
		-0.761673, 0.430589, -0.484197,
		-0.597012, -0.756807, 0.266121,
		33.419331, 33.973789, 25.671738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087379, 34.702812, 25.497244>,  <33.837238, 34.503555, 25.485453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087379, 34.702812, 25.497244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.147781, 34.400513, 25.752129>,  <33.184025, 34.219131, 25.905060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.147781, 34.400513, 25.752129>,  <33.087379, 34.702812, 25.497244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147781, 34.400513, 25.752129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179224, 0.612988, 0.769497,
		-0.972150, -0.230404, -0.042883,
		0.151009, -0.755752, 0.637210,
		33.193085, 34.173786, 25.943291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526535, 34.717659, 26.012497>,  <33.087379, 34.702812, 25.497244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526535, 34.717659, 26.012497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.859310, 34.541576, 26.147608>,  <33.058975, 34.435925, 26.228674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.859310, 34.541576, 26.147608>,  <32.526535, 34.717659, 26.012497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859310, 34.541576, 26.147608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112865, 0.461770, 0.879790,
		-0.543266, -0.770055, 0.334480,
		0.831939, -0.440209, 0.337776,
		33.108891, 34.409515, 26.248941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492104, 35.501942, 26.224146>,  <32.526535, 34.717659, 26.012497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492104, 35.501942, 26.224146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.424362, 35.890450, 26.157257>,  <32.383717, 36.123554, 26.117125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.424362, 35.890450, 26.157257>,  <32.492104, 35.501942, 26.224146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424362, 35.890450, 26.157257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125835, -0.146975, -0.981103,
		-0.977490, -0.187191, -0.097329,
		-0.169349, 0.971266, -0.167222,
		32.373558, 36.181828, 26.107090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879332, 35.637028, 25.853889>,  <32.492104, 35.501942, 26.224146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879332, 35.637028, 25.853889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113796, 35.949341, 25.767357>,  <32.254475, 36.136726, 25.715437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.113796, 35.949341, 25.767357>,  <31.879332, 35.637028, 25.853889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113796, 35.949341, 25.767357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007297, -0.261911, -0.965064,
		-0.810160, 0.567264, -0.147825,
		0.586163, 0.780778, -0.216329,
		32.289646, 36.183575, 25.702457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680971, 35.823669, 25.133308>,  <31.879332, 35.637028, 25.853889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680971, 35.823669, 25.133308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010777, 36.041992, 25.193010>,  <32.208660, 36.172985, 25.228832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010777, 36.041992, 25.193010>,  <31.680971, 35.823669, 25.133308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010777, 36.041992, 25.193010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180362, -0.003491, -0.983594,
		-0.536328, 0.837906, -0.101320,
		0.824513, 0.545803, 0.149254,
		32.258129, 36.205734, 25.237787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614788, 36.499771, 24.731096>,  <31.680971, 35.823669, 25.133308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614788, 36.499771, 24.731096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001213, 36.404678, 24.771509>,  <32.233067, 36.347622, 24.795757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.001213, 36.404678, 24.771509>,  <31.614788, 36.499771, 24.731096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001213, 36.404678, 24.771509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111725, 0.031899, -0.993227,
		0.232899, 0.970807, 0.057377,
		0.966062, -0.237732, 0.101035,
		32.291031, 36.333359, 24.801819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874550, 36.716312, 24.145990>,  <31.614788, 36.499771, 24.731096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874550, 36.716312, 24.145990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.181236, 36.488918, 24.265299>,  <32.365250, 36.352482, 24.336884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.181236, 36.488918, 24.265299>,  <31.874550, 36.716312, 24.145990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181236, 36.488918, 24.265299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253053, -0.159372, -0.954235,
		0.590007, 0.807107, 0.021665,
		0.766717, -0.568488, 0.298271,
		32.411251, 36.318371, 24.354780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571304, 36.935181, 23.740749>,  <31.874550, 36.716312, 24.145990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571304, 36.935181, 23.740749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622917, 36.559505, 23.868050>,  <32.653885, 36.334103, 23.944429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622917, 36.559505, 23.868050>,  <32.571304, 36.935181, 23.740749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622917, 36.559505, 23.868050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124315, -0.303080, -0.944822,
		0.983818, 0.161473, 0.077649,
		0.129029, -0.939185, 0.318249,
		32.661625, 36.277748, 23.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235535, 36.610344, 23.383171>,  <32.571304, 36.935181, 23.740749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235535, 36.610344, 23.383171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997265, 36.312637, 23.503988>,  <32.854301, 36.134014, 23.576479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.997265, 36.312637, 23.503988>,  <33.235535, 36.610344, 23.383171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997265, 36.312637, 23.503988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061024, -0.333019, -0.940943,
		0.800901, -0.578932, 0.152954,
		-0.595679, -0.744269, 0.302044,
		32.818562, 36.089355, 23.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505409, 36.034561, 22.992002>,  <33.235535, 36.610344, 23.383171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505409, 36.034561, 22.992002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139759, 35.924191, 23.110821>,  <32.920368, 35.857967, 23.182112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139759, 35.924191, 23.110821>,  <33.505409, 36.034561, 22.992002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139759, 35.924191, 23.110821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208910, -0.307337, -0.928386,
		0.347456, -0.910720, 0.223302,
		-0.914128, -0.275923, 0.297045,
		32.865520, 35.841415, 23.199934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375011, 35.364010, 22.612095>,  <33.505409, 36.034561, 22.992002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375011, 35.364010, 22.612095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015984, 35.483551, 22.741741>,  <32.800568, 35.555275, 22.819529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015984, 35.483551, 22.741741>,  <33.375011, 35.364010, 22.612095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015984, 35.483551, 22.741741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385248, -0.174234, -0.906216,
		-0.214365, -0.938255, 0.271524,
		-0.897570, 0.298865, 0.324111,
		32.746712, 35.573208, 22.838976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915764, 34.893887, 22.456827>,  <33.375011, 35.364010, 22.612095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915764, 34.893887, 22.456827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667046, 35.200302, 22.521999>,  <32.517815, 35.384151, 22.561102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667046, 35.200302, 22.521999>,  <32.915764, 34.893887, 22.456827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667046, 35.200302, 22.521999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421041, -0.151554, -0.894291,
		-0.660371, -0.624670, 0.416771,
		-0.621800, 0.766041, 0.162930,
		32.480507, 35.430115, 22.570879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300076, 34.729053, 22.104773>,  <32.915764, 34.893887, 22.456827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300076, 34.729053, 22.104773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244122, 35.120064, 22.167862>,  <32.210548, 35.354671, 22.205715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244122, 35.120064, 22.167862>,  <32.300076, 34.729053, 22.104773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244122, 35.120064, 22.167862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436179, 0.082170, -0.896100,
		-0.888921, -0.194146, 0.414882,
		-0.139883, 0.977525, 0.157725,
		32.202156, 35.413322, 22.215179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572475, 34.903175, 22.125494>,  <32.300076, 34.729053, 22.104773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572475, 34.903175, 22.125494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759466, 35.246281, 22.039976>,  <31.871660, 35.452145, 21.988667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.759466, 35.246281, 22.039976>,  <31.572475, 34.903175, 22.125494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759466, 35.246281, 22.039976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519194, 0.070668, -0.851730,
		-0.715474, 0.509165, 0.478381,
		0.467477, 0.857763, -0.213794,
		31.899710, 35.503609, 21.975838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152014, 35.261154, 21.743353>,  <31.572475, 34.903175, 22.125494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152014, 35.261154, 21.743353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503559, 35.430763, 21.655899>,  <31.714487, 35.532528, 21.603426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503559, 35.430763, 21.655899>,  <31.152014, 35.261154, 21.743353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503559, 35.430763, 21.655899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308912, 0.156562, -0.938116,
		-0.363551, 0.892017, 0.268582,
		0.878865, 0.424021, -0.218636,
		31.767220, 35.557968, 21.590309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953068, 35.879162, 21.290258>,  <31.152014, 35.261154, 21.743353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953068, 35.879162, 21.290258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337584, 35.789288, 21.226458>,  <31.568293, 35.735363, 21.188177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337584, 35.789288, 21.226458>,  <30.953068, 35.879162, 21.290258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337584, 35.789288, 21.226458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157973, 0.024895, -0.987130,
		0.225765, 0.974113, -0.011564,
		0.961288, -0.224686, -0.159504,
		31.625971, 35.721882, 21.178606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209133, 36.209663, 20.693026>,  <30.953068, 35.879162, 21.290258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209133, 36.209663, 20.693026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.489941, 35.924835, 20.688581>,  <31.658424, 35.753937, 20.685915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.489941, 35.924835, 20.688581>,  <31.209133, 36.209663, 20.693026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489941, 35.924835, 20.688581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126143, -0.108976, -0.986008,
		0.700899, 0.693597, -0.166326,
		0.702018, -0.712073, -0.011111,
		31.700546, 35.711212, 20.685247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733978, 36.361988, 20.068319>,  <31.209133, 36.209663, 20.693026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733978, 36.361988, 20.068319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796669, 35.975010, 20.147802>,  <31.834284, 35.742825, 20.195492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796669, 35.975010, 20.147802>,  <31.733978, 36.361988, 20.068319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796669, 35.975010, 20.147802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038764, -0.207064, -0.977559,
		0.986881, 0.145509, -0.069955,
		0.156729, -0.967446, 0.198707,
		31.843687, 35.684776, 20.207415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195755, 36.098568, 19.559074>,  <31.733978, 36.361988, 20.068319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195755, 36.098568, 19.559074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034729, 35.763470, 19.706659>,  <31.938114, 35.562412, 19.795210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034729, 35.763470, 19.706659>,  <32.195755, 36.098568, 19.559074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034729, 35.763470, 19.706659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032834, -0.389590, -0.920403,
		0.914804, -0.382634, 0.129328,
		-0.402562, -0.837742, 0.368962,
		31.913960, 35.512146, 19.817348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471649, 35.629658, 19.124788>,  <32.195755, 36.098568, 19.559074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471649, 35.629658, 19.124788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.171852, 35.425610, 19.293566>,  <31.991974, 35.303181, 19.394833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.171852, 35.425610, 19.293566>,  <32.471649, 35.629658, 19.124788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171852, 35.425610, 19.293566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160376, -0.478467, -0.863336,
		0.642293, -0.714733, 0.276796,
		-0.749492, -0.510123, 0.421942,
		31.947004, 35.272572, 19.420149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.656586, 34.857353, 19.125629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258926, 34.892029, 19.151405>,  <32.020332, 34.912834, 19.166870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258926, 34.892029, 19.151405>,  <32.656586, 34.857353, 19.125629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258926, 34.892029, 19.151405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104020, -0.607623, -0.787385,
		-0.029101, -0.789481, 0.613085,
		-0.994150, 0.086687, 0.064439,
		31.960682, 34.918034, 19.170736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419998, 34.180454, 19.146914>,  <32.656586, 34.857353, 19.125629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419998, 34.180454, 19.146914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124886, 34.428848, 19.041042>,  <31.947817, 34.577885, 18.977520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124886, 34.428848, 19.041042>,  <32.419998, 34.180454, 19.146914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124886, 34.428848, 19.041042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244588, -0.611365, -0.752602,
		-0.629177, -0.490514, 0.602937,
		-0.737776, 0.620991, -0.264683,
		31.903551, 34.615143, 18.961639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787018, 33.782539, 19.124613>,  <32.419998, 34.180454, 19.146914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787018, 33.782539, 19.124613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735054, 34.110672, 18.901838>,  <31.703875, 34.307552, 18.768173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735054, 34.110672, 18.901838>,  <31.787018, 33.782539, 19.124613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735054, 34.110672, 18.901838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100332, -0.569690, -0.815712,
		-0.986436, -0.050091, 0.156315,
		-0.129911, 0.820332, -0.556937,
		31.696081, 34.356773, 18.734756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268324, 33.589905, 18.646675>,  <31.787018, 33.782539, 19.124613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268324, 33.589905, 18.646675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402721, 33.929802, 18.484175>,  <31.483360, 34.133739, 18.386675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402721, 33.929802, 18.484175>,  <31.268324, 33.589905, 18.646675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402721, 33.929802, 18.484175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207170, -0.354088, -0.911977,
		-0.918797, 0.390583, 0.057070,
		0.335995, 0.849745, -0.406252,
		31.503519, 34.184727, 18.362299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812281, 33.728649, 18.081455>,  <31.268324, 33.589905, 18.646675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812281, 33.728649, 18.081455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136274, 33.944233, 17.988979>,  <31.330669, 34.073586, 17.933493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136274, 33.944233, 17.988979>,  <30.812281, 33.728649, 18.081455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136274, 33.944233, 17.988979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027209, -0.359259, -0.932841,
		-0.585823, 0.761875, -0.276329,
		0.809982, 0.538961, -0.231192,
		31.379269, 34.105923, 17.919622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614153, 34.095367, 17.504570>,  <30.812281, 33.728649, 18.081455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614153, 34.095367, 17.504570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013771, 34.101562, 17.520908>,  <31.253542, 34.105282, 17.530710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013771, 34.101562, 17.520908>,  <30.614153, 34.095367, 17.504570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013771, 34.101562, 17.520908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041950, -0.079493, -0.995952,
		-0.012182, 0.996715, -0.080067,
		0.999045, 0.015491, 0.040844,
		31.313484, 34.106209, 17.533161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819902, 34.455559, 16.946966>,  <30.614153, 34.095367, 17.504570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819902, 34.455559, 16.946966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164104, 34.273979, 17.039457>,  <31.370626, 34.165031, 17.094952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164104, 34.273979, 17.039457>,  <30.819902, 34.455559, 16.946966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164104, 34.273979, 17.039457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271221, 0.024005, -0.962218,
		0.431243, 0.890707, 0.143775,
		0.860505, -0.453944, 0.231226,
		31.422256, 34.137794, 17.108826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301235, 34.813683, 16.562307>,  <30.819902, 34.455559, 16.946966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301235, 34.813683, 16.562307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459658, 34.453831, 16.635847>,  <31.554712, 34.237919, 16.679970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459658, 34.453831, 16.635847>,  <31.301235, 34.813683, 16.562307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459658, 34.453831, 16.635847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273307, -0.075647, -0.958948,
		0.876608, 0.430045, 0.215915,
		0.396057, -0.899633, 0.183847,
		31.578474, 34.183941, 16.691002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071064, 34.776772, 16.346180>,  <31.301235, 34.813683, 16.562307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071064, 34.776772, 16.346180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905035, 34.412872, 16.342630>,  <31.805418, 34.194534, 16.340500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.905035, 34.412872, 16.342630>,  <32.071064, 34.776772, 16.346180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905035, 34.412872, 16.342630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134032, -0.051499, -0.989638,
		0.899860, -0.411963, 0.143311,
		-0.415074, -0.909744, -0.008874,
		31.780512, 34.139950, 16.339968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530441, 34.360687, 15.962258>,  <32.071064, 34.776772, 16.346180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530441, 34.360687, 15.962258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176830, 34.174129, 15.949735>,  <31.964664, 34.062195, 15.942221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.176830, 34.174129, 15.949735>,  <32.530441, 34.360687, 15.962258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176830, 34.174129, 15.949735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086909, -0.098179, -0.991367,
		0.459291, -0.879113, 0.127326,
		-0.884024, -0.466392, -0.031310,
		31.911623, 34.034210, 15.940342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573811, 33.955498, 15.372937>,  <32.530441, 34.360687, 15.962258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573811, 33.955498, 15.372937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182232, 33.926979, 15.449435>,  <31.947285, 33.909866, 15.495334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182232, 33.926979, 15.449435>,  <32.573811, 33.955498, 15.372937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182232, 33.926979, 15.449435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189530, -0.030147, -0.981412,
		0.075742, -0.996999, 0.015998,
		-0.978949, -0.071302, 0.191245,
		31.888548, 33.905590, 15.506808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360882, 33.412926, 14.951653>,  <32.573811, 33.955498, 15.372937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360882, 33.412926, 14.951653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.040478, 33.640278, 15.026838>,  <31.848234, 33.776688, 15.071949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.040478, 33.640278, 15.026838>,  <32.360882, 33.412926, 14.951653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040478, 33.640278, 15.026838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301013, -0.111000, -0.947138,
		-0.517467, -0.815247, 0.260001,
		-0.801011, 0.568376, 0.187961,
		31.800175, 33.810791, 15.083227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779963, 33.099911, 14.632016>,  <32.360882, 33.412926, 14.951653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779963, 33.099911, 14.632016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653728, 33.477039, 14.674889>,  <31.577988, 33.703316, 14.700612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653728, 33.477039, 14.674889>,  <31.779963, 33.099911, 14.632016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653728, 33.477039, 14.674889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334163, -0.004706, -0.942504,
		-0.888112, -0.333255, 0.316542,
		-0.315583, 0.942825, 0.107181,
		31.559053, 33.759888, 14.707043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132517, 33.047386, 14.360911>,  <31.779963, 33.099911, 14.632016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132517, 33.047386, 14.360911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235777, 33.433578, 14.346996>,  <31.297733, 33.665295, 14.338647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.235777, 33.433578, 14.346996>,  <31.132517, 33.047386, 14.360911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235777, 33.433578, 14.346996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341938, 0.057631, -0.937954,
		-0.903569, 0.254027, 0.345011,
		0.258149, 0.965479, -0.034788,
		31.313221, 33.723221, 14.336560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681429, 33.351124, 13.945353>,  <31.132517, 33.047386, 14.360911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681429, 33.351124, 13.945353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966297, 33.631927, 13.944777>,  <31.137218, 33.800407, 13.944431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966297, 33.631927, 13.944777>,  <30.681429, 33.351124, 13.945353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966297, 33.631927, 13.944777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017831, -0.020139, -0.999638,
		-0.701780, 0.711887, -0.026860,
		0.712171, 0.702005, -0.001440,
		31.179949, 33.842529, 13.944345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553686, 33.749001, 13.351624>,  <30.681429, 33.351124, 13.945353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553686, 33.749001, 13.351624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932379, 33.851288, 13.429908>,  <31.159595, 33.912663, 13.476878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932379, 33.851288, 13.429908>,  <30.553686, 33.749001, 13.351624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932379, 33.851288, 13.429908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181677, 0.077632, -0.980289,
		-0.265875, 0.963628, 0.027038,
		0.946733, 0.255722, 0.195709,
		31.216398, 33.928005, 13.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670444, 34.396118, 13.129683>,  <30.553686, 33.749001, 13.351624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670444, 34.396118, 13.129683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031548, 34.224312, 13.120371>,  <31.248209, 34.121227, 13.114784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031548, 34.224312, 13.120371>,  <30.670444, 34.396118, 13.129683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031548, 34.224312, 13.120371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060854, 0.181104, -0.981580,
		0.425821, 0.884713, 0.189630,
		0.902759, -0.429517, -0.023279,
		31.302376, 34.095455, 13.113387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149742, 34.781536, 12.600516>,  <30.670444, 34.396118, 13.129683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149742, 34.781536, 12.600516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274836, 34.401897, 12.615522>,  <31.349892, 34.174114, 12.624526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274836, 34.401897, 12.615522>,  <31.149742, 34.781536, 12.600516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274836, 34.401897, 12.615522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159640, 0.013586, -0.987082,
		0.936329, 0.314684, 0.155763,
		0.312735, -0.949099, 0.037515,
		31.368656, 34.117168, 12.626777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624138, 34.767517, 12.115487>,  <31.149742, 34.781536, 12.600516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624138, 34.767517, 12.115487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574810, 34.373520, 12.163785>,  <31.545214, 34.137123, 12.192764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574810, 34.373520, 12.163785>,  <31.624138, 34.767517, 12.115487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574810, 34.373520, 12.163785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069012, -0.129892, -0.989124,
		0.989965, -0.113644, 0.083994,
		-0.123318, -0.984994, 0.120745,
		31.537815, 34.078022, 12.200008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030365, 34.555134, 11.622405>,  <31.624138, 34.767517, 12.115487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030365, 34.555134, 11.622405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793871, 34.248848, 11.723696>,  <31.651976, 34.065075, 11.784470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793871, 34.248848, 11.723696>,  <32.030365, 34.555134, 11.622405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793871, 34.248848, 11.723696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058319, -0.272568, -0.960367,
		0.804390, -0.582568, 0.116495,
		-0.591232, -0.765716, 0.253226,
		31.616501, 34.019135, 11.799664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202682, 33.945942, 11.147350>,  <32.030365, 34.555134, 11.622405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202682, 33.945942, 11.147350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838062, 33.859043, 11.286991>,  <31.619289, 33.806904, 11.370775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838062, 33.859043, 11.286991>,  <32.202682, 33.945942, 11.147350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838062, 33.859043, 11.286991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291115, -0.258604, -0.921073,
		0.290378, -0.941238, 0.172488,
		-0.911555, -0.217246, 0.349101,
		31.564596, 33.793869, 11.391722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095417, 33.377098, 10.892151>,  <32.202682, 33.945942, 11.147350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095417, 33.377098, 10.892151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732014, 33.528988, 10.961915>,  <31.513971, 33.620121, 11.003774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732014, 33.528988, 10.961915>,  <32.095417, 33.377098, 10.892151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732014, 33.528988, 10.961915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291472, -0.276794, -0.915658,
		-0.299433, -0.882715, 0.362152,
		-0.908506, 0.379735, 0.174406,
		31.459461, 33.642906, 11.014238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582653, 32.962261, 10.582898>,  <32.095417, 33.377098, 10.892151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582653, 32.962261, 10.582898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386503, 33.309395, 10.614910>,  <31.268814, 33.517673, 10.634117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386503, 33.309395, 10.614910>,  <31.582653, 32.962261, 10.582898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386503, 33.309395, 10.614910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423592, -0.157082, -0.892129,
		-0.761646, -0.471376, 0.444635,
		-0.490373, 0.867830, 0.080030,
		31.239391, 33.569744, 10.638919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270758, 32.431973, 11.028829>,  <31.582653, 32.962261, 10.582898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270758, 32.431973, 11.028829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627533, 32.612438, 11.016839>,  <31.841599, 32.720718, 11.009645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.627533, 32.612438, 11.016839>,  <31.270758, 32.431973, 11.028829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627533, 32.612438, 11.016839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150680, 0.234083, -0.960469,
		-0.426309, 0.861197, 0.276768,
		0.891940, 0.451160, -0.029973,
		31.895115, 32.747787, 11.007847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898449, 31.927879, 11.022573>,  <31.270758, 32.431973, 11.028829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898449, 31.927879, 11.022573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980267, 31.542435, 10.953736>,  <32.029358, 31.311169, 10.912435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980267, 31.542435, 10.953736>,  <31.898449, 31.927879, 11.022573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980267, 31.542435, 10.953736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480664, -0.252028, 0.839907,
		-0.852715, -0.089080, -0.514724,
		0.204544, -0.963611, -0.172091,
		32.041630, 31.253351, 10.902109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278475, 31.584003, 11.146403>,  <31.898449, 31.927879, 11.022573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278475, 31.584003, 11.146403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569935, 31.311825, 11.177535>,  <31.744812, 31.148518, 11.196214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569935, 31.311825, 11.177535>,  <31.278475, 31.584003, 11.146403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569935, 31.311825, 11.177535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390592, -0.319515, 0.863335,
		-0.562587, -0.659470, -0.498593,
		0.728652, -0.680448, 0.077829,
		31.788530, 31.107691, 11.200884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985596, 30.813902, 11.315330>,  <31.278475, 31.584003, 11.146403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985596, 30.813902, 11.315330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364002, 30.842562, 11.441772>,  <31.591045, 30.859756, 11.517637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364002, 30.842562, 11.441772>,  <30.985596, 30.813902, 11.315330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364002, 30.842562, 11.441772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243758, -0.485529, 0.839550,
		0.213631, -0.871280, -0.441853,
		0.946015, 0.071649, 0.316106,
		31.647806, 30.864056, 11.536603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157547, 30.172070, 11.585955>,  <30.985596, 30.813902, 11.315330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157547, 30.172070, 11.585955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451639, 30.408693, 11.718314>,  <31.628094, 30.550669, 11.797729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.451639, 30.408693, 11.718314>,  <31.157547, 30.172070, 11.585955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451639, 30.408693, 11.718314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033305, -0.519120, 0.854052,
		0.677001, -0.616903, -0.401374,
		0.735228, 0.591562, 0.330899,
		31.672207, 30.586163, 11.817584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773468, 29.768675, 11.808846>,  <31.157547, 30.172070, 11.585955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773468, 29.768675, 11.808846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771185, 30.115215, 12.008607>,  <31.769815, 30.323139, 12.128463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771185, 30.115215, 12.008607>,  <31.773468, 29.768675, 11.808846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771185, 30.115215, 12.008607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003482, -0.499389, 0.866371,
		0.999978, 0.006683, -0.000167,
		-0.005707, 0.866352, 0.499401,
		31.769472, 30.375120, 12.158427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094818, 29.500814, 12.413613>,  <31.773468, 29.768675, 11.808846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094818, 29.500814, 12.413613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963829, 29.866426, 12.509369>,  <31.885235, 30.085794, 12.566822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963829, 29.866426, 12.509369>,  <32.094818, 29.500814, 12.413613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963829, 29.866426, 12.509369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006471, -0.255522, 0.966782,
		0.944837, 0.315048, 0.089592,
		-0.327476, 0.914031, 0.239389,
		31.865587, 30.140636, 12.581185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547741, 29.777758, 12.969586>,  <32.094818, 29.500814, 12.413613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547741, 29.777758, 12.969586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204212, 29.982658, 12.971769>,  <31.998096, 30.105598, 12.973079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204212, 29.982658, 12.971769>,  <32.547741, 29.777758, 12.969586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204212, 29.982658, 12.971769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015220, -0.036163, 0.999230,
		0.512053, 0.858075, 0.038854,
		-0.858819, 0.512250, 0.005457,
		31.946566, 30.136333, 12.973407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590683, 30.288937, 13.523874>,  <32.547741, 29.777758, 12.969586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590683, 30.288937, 13.523874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194359, 30.286224, 13.469839>,  <31.956564, 30.284597, 13.437418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.194359, 30.286224, 13.469839>,  <32.590683, 30.288937, 13.523874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194359, 30.286224, 13.469839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127610, 0.377939, 0.916994,
		0.044837, 0.925806, -0.375332,
		-0.990810, -0.006781, -0.135088,
		31.897116, 30.284189, 13.429313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453030, 30.907440, 13.686948>,  <32.590683, 30.288937, 13.523874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453030, 30.907440, 13.686948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119255, 30.690809, 13.727761>,  <31.918991, 30.560831, 13.752250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119255, 30.690809, 13.727761>,  <32.453030, 30.907440, 13.686948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119255, 30.690809, 13.727761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185597, 0.450487, 0.873278,
		-0.518912, 0.709758, -0.476418,
		-0.834437, -0.541576, 0.102034,
		31.868923, 30.528336, 13.758371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826008, 31.322268, 13.784613>,  <32.453030, 30.907440, 13.686948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826008, 31.322268, 13.784613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.818579, 30.974213, 13.981595>,  <31.814121, 30.765379, 14.099785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.818579, 30.974213, 13.981595>,  <31.826008, 31.322268, 13.784613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818579, 30.974213, 13.981595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071204, 0.492441, 0.867428,
		-0.997289, -0.018956, -0.071103,
		-0.018571, -0.870139, 0.492456,
		31.813007, 30.713171, 14.129332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166372, 31.228743, 14.165864>,  <31.826008, 31.322268, 13.784613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166372, 31.228743, 14.165864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454489, 31.024818, 14.354024>,  <31.627357, 30.902464, 14.466920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454489, 31.024818, 14.354024>,  <31.166372, 31.228743, 14.165864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454489, 31.024818, 14.354024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195577, 0.501363, 0.842843,
		-0.665532, -0.699090, 0.261419,
		0.720289, -0.509811, 0.470400,
		31.670576, 30.871876, 14.495144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095112, 31.302744, 14.909208>,  <31.166372, 31.228743, 14.165864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095112, 31.302744, 14.909208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452810, 31.126051, 14.938035>,  <31.667429, 31.020035, 14.955331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452810, 31.126051, 14.938035>,  <31.095112, 31.302744, 14.909208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452810, 31.126051, 14.938035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058460, 0.274916, 0.959689,
		-0.443738, -0.853987, 0.271666,
		0.894248, -0.441733, 0.072067,
		31.721085, 30.993532, 14.959655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069218, 31.019484, 15.593605>,  <31.095112, 31.302744, 14.909208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069218, 31.019484, 15.593605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454861, 31.026958, 15.487663>,  <31.686247, 31.031445, 15.424098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454861, 31.026958, 15.487663>,  <31.069218, 31.019484, 15.593605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454861, 31.026958, 15.487663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255814, 0.201774, 0.945435,
		0.071108, -0.979254, 0.189752,
		0.964107, 0.018687, -0.264854,
		31.744093, 31.032564, 15.408207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388000, 30.676136, 16.122980>,  <31.069218, 31.019484, 15.593605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388000, 30.676136, 16.122980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658970, 30.909126, 15.943284>,  <31.821552, 31.048920, 15.835466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658970, 30.909126, 15.943284>,  <31.388000, 30.676136, 16.122980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658970, 30.909126, 15.943284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361492, 0.268276, 0.892945,
		0.640639, -0.767301, -0.028823,
		0.677425, 0.582475, -0.449241,
		31.862198, 31.083868, 15.808512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919022, 30.713535, 16.646013>,  <31.388000, 30.676136, 16.122980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919022, 30.713535, 16.646013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045002, 30.994404, 16.390589>,  <32.120590, 31.162926, 16.237333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045002, 30.994404, 16.390589>,  <31.919022, 30.713535, 16.646013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045002, 30.994404, 16.390589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459621, 0.475810, 0.749902,
		0.830394, -0.529678, -0.172877,
		0.314950, 0.702172, -0.638561,
		32.139488, 31.205055, 16.199020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689747, 30.740078, 16.749008>,  <31.919022, 30.713535, 16.646013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689747, 30.740078, 16.749008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541447, 31.089348, 16.622446>,  <32.452469, 31.298910, 16.546509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541447, 31.089348, 16.622446>,  <32.689747, 30.740078, 16.749008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541447, 31.089348, 16.622446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383242, 0.454161, 0.804278,
		0.845974, 0.176924, -0.503017,
		-0.370746, 0.873176, -0.316403,
		32.430222, 31.351301, 16.527525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244011, 31.275887, 16.622643>,  <32.689747, 30.740078, 16.749008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244011, 31.275887, 16.622643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916477, 31.500956, 16.668083>,  <32.719955, 31.635998, 16.695349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916477, 31.500956, 16.668083>,  <33.244011, 31.275887, 16.622643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916477, 31.500956, 16.668083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434849, 0.478842, 0.762638,
		0.374718, 0.673876, -0.636772,
		-0.818836, 0.562674, 0.113603,
		32.670826, 31.669758, 16.702164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536526, 31.828287, 16.837910>,  <33.244011, 31.275887, 16.622643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536526, 31.828287, 16.837910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156197, 31.934086, 16.902369>,  <32.927998, 31.997564, 16.941044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156197, 31.934086, 16.902369>,  <33.536526, 31.828287, 16.837910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156197, 31.934086, 16.902369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275862, 0.486672, 0.828885,
		0.140810, 0.832582, -0.535705,
		-0.950828, 0.264495, 0.161149,
		32.870949, 32.013435, 16.950714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496025, 32.591663, 16.973055>,  <33.536526, 31.828287, 16.837910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496025, 32.591663, 16.973055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215336, 32.377144, 17.160658>,  <33.046921, 32.248432, 17.273220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215336, 32.377144, 17.160658>,  <33.496025, 32.591663, 16.973055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215336, 32.377144, 17.160658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306724, 0.366761, 0.878298,
		-0.643045, 0.760177, -0.092868,
		-0.701722, -0.536300, 0.469008,
		33.004818, 32.216255, 17.301361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276138, 33.001339, 17.499718>,  <33.496025, 32.591663, 16.973055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276138, 33.001339, 17.499718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154156, 32.641525, 17.624832>,  <33.080967, 32.425636, 17.699902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154156, 32.641525, 17.624832>,  <33.276138, 33.001339, 17.499718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154156, 32.641525, 17.624832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154818, 0.277238, 0.948246,
		-0.939697, 0.337603, 0.054717,
		-0.304961, -0.899535, 0.312787,
		33.062668, 32.371666, 17.718668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.426918, 36.698185, 21.794909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.307671, 36.318916, 21.838892>,  <32.236122, 36.091354, 21.865282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.307671, 36.318916, 21.838892>,  <32.426918, 36.698185, 21.794909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307671, 36.318916, 21.838892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111928, 0.079676, 0.990517,
		-0.947945, 0.307594, 0.082375,
		-0.298114, -0.948176, 0.109957,
		32.218235, 36.034462, 21.871880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143700, 36.704983, 22.356266>,  <32.426918, 36.698185, 21.794909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143700, 36.704983, 22.356266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.171803, 36.308056, 22.315519>,  <32.188663, 36.069901, 22.291071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.171803, 36.308056, 22.315519>,  <32.143700, 36.704983, 22.356266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171803, 36.308056, 22.315519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149920, -0.090456, 0.984552,
		-0.986199, -0.084447, 0.142412,
		0.070261, -0.992314, -0.101868,
		32.192883, 36.010361, 22.284960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632082, 36.364548, 22.847321>,  <32.143700, 36.704983, 22.356266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632082, 36.364548, 22.847321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897856, 36.085957, 22.738920>,  <32.057320, 35.918800, 22.673880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897856, 36.085957, 22.738920>,  <31.632082, 36.364548, 22.847321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897856, 36.085957, 22.738920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218898, -0.165348, 0.961636,
		-0.714572, -0.698264, 0.042596,
		0.664433, -0.696482, -0.271001,
		32.097187, 35.877010, 22.657619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510656, 35.843647, 23.220011>,  <31.632082, 36.364548, 22.847321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510656, 35.843647, 23.220011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.885412, 35.752987, 23.113523>,  <32.110264, 35.698593, 23.049631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.885412, 35.752987, 23.113523>,  <31.510656, 35.843647, 23.220011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885412, 35.752987, 23.113523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275740, 0.010835, 0.961171,
		-0.214962, -0.973917, 0.072646,
		0.936888, -0.226647, -0.266218,
		32.166477, 35.684994, 23.033657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660212, 35.476425, 23.773262>,  <31.510656, 35.843647, 23.220011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660212, 35.476425, 23.773262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.008766, 35.586796, 23.611004>,  <32.217899, 35.653019, 23.513649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.008766, 35.586796, 23.611004>,  <31.660212, 35.476425, 23.773262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008766, 35.586796, 23.611004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359615, 0.203181, 0.910711,
		0.333708, -0.939459, 0.077823,
		0.871388, 0.275925, -0.405647,
		32.270184, 35.669575, 23.489309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077599, 35.315609, 24.254654>,  <31.660212, 35.476425, 23.773262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077599, 35.315609, 24.254654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317131, 35.517227, 24.005709>,  <32.460850, 35.638199, 23.856342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317131, 35.517227, 24.005709>,  <32.077599, 35.315609, 24.254654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317131, 35.517227, 24.005709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646134, 0.155076, 0.747304,
		0.473190, -0.849640, -0.232817,
		0.598834, 0.504048, -0.622361,
		32.496780, 35.668442, 23.819000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801468, 35.067783, 24.423428>,  <32.077599, 35.315609, 24.254654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801468, 35.067783, 24.423428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765442, 35.441441, 24.285286>,  <32.743828, 35.665634, 24.202400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765442, 35.441441, 24.285286>,  <32.801468, 35.067783, 24.423428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765442, 35.441441, 24.285286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220689, 0.356861, 0.907715,
		0.971177, 0.005535, -0.238295,
		-0.090063, 0.934141, -0.345354,
		32.738422, 35.721684, 24.181681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335091, 35.519630, 24.711153>,  <32.801468, 35.067783, 24.423428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335091, 35.519630, 24.711153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034771, 35.767994, 24.621021>,  <32.854580, 35.917011, 24.566942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034771, 35.767994, 24.621021>,  <33.335091, 35.519630, 24.711153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034771, 35.767994, 24.621021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038560, 0.381750, 0.923461,
		0.659404, 0.684645, -0.310560,
		-0.750799, 0.620909, -0.225327,
		32.809532, 35.954266, 24.553423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527191, 36.098358, 25.113836>,  <33.335091, 35.519630, 24.711153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527191, 36.098358, 25.113836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.149418, 36.174324, 25.006523>,  <32.922752, 36.219902, 24.942135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.149418, 36.174324, 25.006523>,  <33.527191, 36.098358, 25.113836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149418, 36.174324, 25.006523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144925, 0.491997, 0.858450,
		0.295024, 0.849631, -0.437136,
		-0.944435, 0.189911, -0.268284,
		32.866089, 36.231297, 24.926039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379955, 36.747990, 25.308109>,  <33.527191, 36.098358, 25.113836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379955, 36.747990, 25.308109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009830, 36.597061, 25.293005>,  <32.787754, 36.506504, 25.283941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.009830, 36.597061, 25.293005>,  <33.379955, 36.747990, 25.308109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009830, 36.597061, 25.293005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220809, 0.455166, 0.862593,
		-0.308285, 0.806507, -0.504486,
		-0.925313, -0.377320, -0.037763,
		32.732235, 36.483864, 25.281675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890739, 37.304127, 25.422262>,  <33.379955, 36.747990, 25.308109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890739, 37.304127, 25.422262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.735458, 36.947590, 25.515900>,  <32.642288, 36.733665, 25.572083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.735458, 36.947590, 25.515900>,  <32.890739, 37.304127, 25.422262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735458, 36.947590, 25.515900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231118, 0.340060, 0.911561,
		-0.892122, 0.299768, -0.338019,
		-0.388204, -0.891347, 0.234093,
		32.618996, 36.680187, 25.586128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284687, 37.474300, 25.829632>,  <32.890739, 37.304127, 25.422262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284687, 37.474300, 25.829632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.331707, 37.086914, 25.917501>,  <32.359921, 36.854481, 25.970222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.331707, 37.086914, 25.917501>,  <32.284687, 37.474300, 25.829632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331707, 37.086914, 25.917501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093773, 0.209392, 0.973325,
		-0.988630, -0.135013, -0.066202,
		0.117549, -0.968466, 0.219672,
		32.366970, 36.796375, 25.983402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789682, 37.385620, 26.416969>,  <32.284687, 37.474300, 25.829632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789682, 37.385620, 26.416969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.065022, 37.097538, 26.382364>,  <32.230225, 36.924690, 26.361601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.065022, 37.097538, 26.382364>,  <31.789682, 37.385620, 26.416969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065022, 37.097538, 26.382364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018128, -0.102145, 0.994604,
		-0.725153, -0.686203, -0.057256,
		0.688349, -0.720203, -0.086510,
		32.271526, 36.881477, 26.356411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157454, 37.751297, 26.692324>,  <31.789682, 37.385620, 26.416969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157454, 37.751297, 26.692324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.824619, 37.732937, 26.913422>,  <30.624918, 37.721920, 27.046080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.824619, 37.732937, 26.913422>,  <31.157454, 37.751297, 26.692324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824619, 37.732937, 26.913422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464913, -0.485755, -0.740201,
		0.302471, -0.872889, 0.382852,
		-0.832086, -0.045897, 0.552744,
		30.574993, 37.719170, 27.079245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944670, 37.070251, 26.749655>,  <31.157454, 37.751297, 26.692324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944670, 37.070251, 26.749655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.608833, 37.270824, 26.833227>,  <30.407331, 37.391167, 26.883371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.608833, 37.270824, 26.833227>,  <30.944670, 37.070251, 26.749655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608833, 37.270824, 26.833227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532966, -0.686005, -0.495322,
		-0.105042, -0.527221, 0.843210,
		-0.839591, 0.501432, 0.208931,
		30.356956, 37.421253, 26.895906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382996, 36.515877, 26.893444>,  <30.944670, 37.070251, 26.749655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382996, 36.515877, 26.893444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.177841, 36.850342, 26.815693>,  <30.054749, 37.051022, 26.769043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.177841, 36.850342, 26.815693>,  <30.382996, 36.515877, 26.893444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177841, 36.850342, 26.815693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632216, -0.521081, -0.573392,
		-0.580736, -0.171194, 0.795889,
		-0.512883, 0.836163, -0.194379,
		30.023975, 37.101189, 26.757380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666508, 36.410107, 27.054377>,  <30.382996, 36.515877, 26.893444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666508, 36.410107, 27.054377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.694452, 36.695587, 26.775595>,  <29.711220, 36.866875, 26.608326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.694452, 36.695587, 26.775595>,  <29.666508, 36.410107, 27.054377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694452, 36.695587, 26.775595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618503, -0.517170, -0.591599,
		-0.782671, 0.472398, 0.405298,
		0.069863, 0.713705, -0.696954,
		29.715410, 36.909698, 26.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025122, 36.328709, 26.724520>,  <29.666508, 36.410107, 27.054377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025122, 36.328709, 26.724520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.245525, 36.552601, 26.476942>,  <29.377768, 36.686935, 26.328396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.245525, 36.552601, 26.476942>,  <29.025122, 36.328709, 26.724520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245525, 36.552601, 26.476942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404727, -0.469377, -0.784781,
		-0.729783, 0.682925, -0.032093,
		0.551010, 0.559731, -0.618942,
		29.410828, 36.720520, 26.291260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508959, 36.541939, 26.244528>,  <29.025122, 36.328709, 26.724520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508959, 36.541939, 26.244528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.866159, 36.595375, 26.072618>,  <29.080479, 36.627438, 25.969473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.866159, 36.595375, 26.072618>,  <28.508959, 36.541939, 26.244528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866159, 36.595375, 26.072618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343440, -0.414867, -0.842576,
		-0.290861, 0.900021, -0.324594,
		0.893000, 0.133594, -0.429772,
		29.134060, 36.635452, 25.943687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347395, 36.863724, 25.575764>,  <28.508959, 36.541939, 26.244528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347395, 36.863724, 25.575764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.725403, 36.739902, 25.533602>,  <28.952208, 36.665611, 25.508305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.725403, 36.739902, 25.533602>,  <28.347395, 36.863724, 25.575764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725403, 36.739902, 25.533602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217731, -0.355142, -0.909102,
		0.243981, 0.882072, -0.403016,
		0.945022, -0.309553, -0.105407,
		29.008909, 36.647038, 25.501980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574615, 37.244541, 24.983461>,  <28.347395, 36.863724, 25.575764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574615, 37.244541, 24.983461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.792068, 36.909096, 24.997240>,  <28.922541, 36.707829, 25.005507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.792068, 36.909096, 24.997240>,  <28.574615, 37.244541, 24.983461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792068, 36.909096, 24.997240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223798, -0.184386, -0.957035,
		0.808935, 0.512569, -0.287918,
		0.543634, -0.838615, 0.034445,
		28.955158, 36.657513, 25.007574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966871, 37.167377, 24.332329>,  <28.574615, 37.244541, 24.983461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966871, 37.167377, 24.332329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.991327, 36.800270, 24.489279>,  <29.006001, 36.580006, 24.583448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.991327, 36.800270, 24.489279>,  <28.966871, 37.167377, 24.332329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991327, 36.800270, 24.489279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056546, -0.389292, -0.919377,
		0.996526, 0.078399, 0.028095,
		0.061141, -0.917772, 0.392373,
		29.009670, 36.524937, 24.606991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444046, 36.932652, 23.921995>,  <28.966871, 37.167377, 24.332329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444046, 36.932652, 23.921995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.239408, 36.628761, 24.082541>,  <29.116627, 36.446426, 24.178867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.239408, 36.628761, 24.082541>,  <29.444046, 36.932652, 23.921995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239408, 36.628761, 24.082541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061791, -0.433383, -0.899089,
		0.857002, -0.484769, 0.174773,
		-0.511594, -0.759722, 0.401365,
		29.085930, 36.400845, 24.202950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819849, 36.299644, 23.691324>,  <29.444046, 36.932652, 23.921995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819849, 36.299644, 23.691324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.467100, 36.144855, 23.799067>,  <29.255451, 36.051983, 23.863712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.467100, 36.144855, 23.799067>,  <29.819849, 36.299644, 23.691324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467100, 36.144855, 23.799067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046319, -0.497417, -0.866274,
		0.469210, -0.776418, 0.420733,
		-0.881871, -0.386977, 0.269356,
		29.202539, 36.028763, 23.879873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804518, 35.478882, 23.513025>,  <29.819849, 36.299644, 23.691324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804518, 35.478882, 23.513025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.427214, 35.609512, 23.537039>,  <29.200830, 35.687893, 23.551447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.427214, 35.609512, 23.537039>,  <29.804518, 35.478882, 23.513025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427214, 35.609512, 23.537039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169339, -0.317590, -0.932985,
		-0.285620, -0.890217, 0.354872,
		-0.943263, 0.326572, 0.060039,
		29.144236, 35.707485, 23.555050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451765, 34.957390, 23.141417>,  <29.804518, 35.478882, 23.513025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451765, 34.957390, 23.141417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.203394, 35.270126, 23.163979>,  <29.054371, 35.457767, 23.177515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.203394, 35.270126, 23.163979>,  <29.451765, 34.957390, 23.141417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203394, 35.270126, 23.163979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297159, -0.168193, -0.939898,
		-0.725361, -0.600368, 0.336765,
		-0.620926, 0.781838, 0.056405,
		29.017117, 35.504677, 23.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857903, 34.745483, 23.061228>,  <29.451765, 34.957390, 23.141417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857903, 34.745483, 23.061228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.782143, 35.128063, 22.972393>,  <28.736687, 35.357613, 22.919092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.782143, 35.128063, 22.972393>,  <28.857903, 34.745483, 23.061228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782143, 35.128063, 22.972393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582385, -0.291530, -0.758840,
		-0.790541, -0.014385, 0.612240,
		-0.189402, 0.956454, -0.222089,
		28.725323, 35.415001, 22.905766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121517, 34.885174, 22.877237>,  <28.857903, 34.745483, 23.061228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121517, 34.885174, 22.877237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.361082, 35.153286, 22.701956>,  <28.504822, 35.314156, 22.596786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.361082, 35.153286, 22.701956>,  <28.121517, 34.885174, 22.877237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361082, 35.153286, 22.701956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335338, -0.286997, -0.897319,
		-0.727222, 0.684362, 0.052886,
		0.598913, 0.670285, -0.438203,
		28.540756, 35.354370, 22.570496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527523, 34.566078, 22.518351>,  <28.121517, 34.885174, 22.877237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527523, 34.566078, 22.518351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.587034, 34.173126, 22.563597>,  <27.622742, 33.937355, 22.590744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.587034, 34.173126, 22.563597>,  <27.527523, 34.566078, 22.518351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587034, 34.173126, 22.563597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127846, 0.132535, 0.982899,
		-0.980572, -0.131773, 0.145311,
		0.148778, -0.982380, 0.113113,
		27.631668, 33.878410, 22.597530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070925, 34.356972, 23.088459>,  <27.527523, 34.566078, 22.518351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070925, 34.356972, 23.088459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.372137, 34.097046, 23.047115>,  <27.552864, 33.941090, 23.022308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.372137, 34.097046, 23.047115>,  <27.070925, 34.356972, 23.088459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372137, 34.097046, 23.047115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166241, 0.035903, 0.985431,
		-0.636641, -0.759241, 0.135063,
		0.753029, -0.649819, -0.103360,
		27.598045, 33.902100, 23.016108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927677, 33.776043, 23.527710>,  <27.070925, 34.356972, 23.088459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927677, 33.776043, 23.527710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319891, 33.737186, 23.459455>,  <27.555220, 33.713871, 23.418503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319891, 33.737186, 23.459455>,  <26.927677, 33.776043, 23.527710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319891, 33.737186, 23.459455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154657, -0.153333, 0.975997,
		-0.120973, -0.983388, -0.135325,
		0.980534, -0.097140, -0.170637,
		27.614052, 33.708042, 23.408264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171116, 33.179264, 24.027370>,  <26.927677, 33.776043, 23.527710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171116, 33.179264, 24.027370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.520533, 33.346767, 23.928118>,  <27.730183, 33.447269, 23.868567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.520533, 33.346767, 23.928118>,  <27.171116, 33.179264, 24.027370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520533, 33.346767, 23.928118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290839, -0.040275, 0.955924,
		0.390309, -0.907204, -0.156973,
		0.873540, 0.418759, -0.248130,
		27.782595, 33.472397, 23.853678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731806, 32.680740, 24.301985>,  <27.171116, 33.179264, 24.027370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731806, 32.680740, 24.301985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.863356, 33.055305, 24.253029>,  <27.942286, 33.280045, 24.223656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.863356, 33.055305, 24.253029>,  <27.731806, 32.680740, 24.301985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863356, 33.055305, 24.253029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403390, -0.022113, 0.914761,
		0.853885, -0.350211, -0.385011,
		0.328873, 0.936410, -0.122389,
		27.962017, 33.336227, 24.216312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417318, 32.750446, 24.584705>,  <27.731806, 32.680740, 24.301985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417318, 32.750446, 24.584705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.321663, 33.137577, 24.553408>,  <28.264271, 33.369858, 24.534630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.321663, 33.137577, 24.553408>,  <28.417318, 32.750446, 24.584705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321663, 33.137577, 24.553408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483342, 0.188539, 0.854888,
		0.842137, 0.166617, -0.512879,
		-0.239136, 0.967829, -0.078242,
		28.249922, 33.427925, 24.529936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074137, 33.204556, 24.648214>,  <28.417318, 32.750446, 24.584705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074137, 33.204556, 24.648214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.744883, 33.402370, 24.759844>,  <28.547329, 33.521057, 24.826822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.744883, 33.402370, 24.759844>,  <29.074137, 33.204556, 24.648214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744883, 33.402370, 24.759844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458998, 0.290108, 0.839737,
		0.334316, 0.819313, -0.465788,
		-0.823136, 0.494534, 0.279075,
		28.497942, 33.550732, 24.843567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328089, 33.666046, 25.008266>,  <29.074137, 33.204556, 24.648214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328089, 33.666046, 25.008266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.946787, 33.739460, 25.104282>,  <28.718006, 33.783508, 25.161892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.946787, 33.739460, 25.104282>,  <29.328089, 33.666046, 25.008266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946787, 33.739460, 25.104282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298853, 0.455336, 0.838663,
		0.044622, 0.871197, -0.488901,
		-0.953255, 0.183532, 0.240042,
		28.660810, 33.794521, 25.176294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262415, 34.336769, 25.179176>,  <29.328089, 33.666046, 25.008266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262415, 34.336769, 25.179176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.962347, 34.169464, 25.384041>,  <28.782307, 34.069080, 25.506960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.962347, 34.169464, 25.384041>,  <29.262415, 34.336769, 25.179176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962347, 34.169464, 25.384041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302344, 0.471871, 0.828206,
		-0.588078, 0.776142, -0.227524,
		-0.750168, -0.418260, 0.512159,
		28.737297, 34.043987, 25.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112947, 34.805122, 25.811275>,  <29.262415, 34.336769, 25.179176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112947, 34.805122, 25.811275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.901419, 34.483631, 25.920361>,  <28.774502, 34.290737, 25.985811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.901419, 34.483631, 25.920361>,  <29.112947, 34.805122, 25.811275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901419, 34.483631, 25.920361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024258, 0.306872, 0.951442,
		-0.848387, 0.509758, -0.142783,
		-0.528821, -0.803727, 0.272712,
		28.742773, 34.242512, 26.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529043, 34.979092, 26.249367>,  <29.112947, 34.805122, 25.811275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529043, 34.979092, 26.249367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.609081, 34.594757, 26.326050>,  <28.657104, 34.364155, 26.372059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.609081, 34.594757, 26.326050>,  <28.529043, 34.979092, 26.249367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609081, 34.594757, 26.326050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052345, 0.205868, 0.977179,
		-0.978377, -0.185495, 0.091488,
		0.200097, -0.960838, 0.191707,
		28.669111, 34.306507, 26.383562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079058, 34.821609, 26.821068>,  <28.529043, 34.979092, 26.249367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079058, 34.821609, 26.821068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.356188, 34.533466, 26.834240>,  <28.522465, 34.360580, 26.842144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.356188, 34.533466, 26.834240>,  <28.079058, 34.821609, 26.821068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356188, 34.533466, 26.834240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110089, 0.150795, 0.982416,
		-0.712654, -0.677015, 0.183777,
		0.692823, -0.720355, 0.032933,
		28.564035, 34.317360, 26.844120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.646797, 33.527695, 19.471682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929331, 33.254757, 19.396322>,  <26.098850, 33.090992, 19.351107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929331, 33.254757, 19.396322>,  <25.646797, 33.527695, 19.471682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929331, 33.254757, 19.396322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208410, -0.053896, 0.976556,
		-0.676504, -0.729039, 0.104139,
		0.706334, -0.682347, -0.188399,
		26.141232, 33.050053, 19.339802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542856, 33.014877, 20.038864>,  <25.646797, 33.527695, 19.471682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542856, 33.014877, 20.038864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918180, 32.963997, 19.910242>,  <26.143375, 32.933468, 19.833069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918180, 32.963997, 19.910242>,  <25.542856, 33.014877, 20.038864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918180, 32.963997, 19.910242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333854, 0.090928, 0.938229,
		-0.090104, -0.987701, 0.127785,
		0.938309, -0.127200, -0.321554,
		26.199673, 32.925838, 19.813776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839247, 32.506393, 20.449459>,  <25.542856, 33.014877, 20.038864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839247, 32.506393, 20.449459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108761, 32.748295, 20.279619>,  <26.270470, 32.893436, 20.177715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108761, 32.748295, 20.279619>,  <25.839247, 32.506393, 20.449459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108761, 32.748295, 20.279619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370917, 0.220174, 0.902188,
		0.639088, -0.765373, -0.075963,
		0.673786, 0.604754, -0.424601,
		26.310896, 32.929722, 20.152239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415359, 32.207302, 20.720346>,  <25.839247, 32.506393, 20.449459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415359, 32.207302, 20.720346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515776, 32.579758, 20.614548>,  <26.576025, 32.803230, 20.551069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515776, 32.579758, 20.614548>,  <26.415359, 32.207302, 20.720346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515776, 32.579758, 20.614548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455315, 0.127540, 0.881148,
		0.854206, -0.341632, -0.391944,
		0.251040, 0.931140, -0.264495,
		26.591087, 32.859100, 20.535198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058979, 32.265514, 20.912136>,  <26.415359, 32.207302, 20.720346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058979, 32.265514, 20.912136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965876, 32.652302, 20.870569>,  <26.910013, 32.884373, 20.845629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965876, 32.652302, 20.870569>,  <27.058979, 32.265514, 20.912136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965876, 32.652302, 20.870569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455216, 0.202750, 0.866989,
		0.859419, 0.154494, -0.487371,
		-0.232759, 0.966966, -0.103919,
		26.896048, 32.942390, 20.839394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711607, 32.644485, 20.918837>,  <27.058979, 32.265514, 20.912136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711607, 32.644485, 20.918837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425220, 32.905407, 21.018353>,  <27.253389, 33.061958, 21.078062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425220, 32.905407, 21.018353>,  <27.711607, 32.644485, 20.918837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425220, 32.905407, 21.018353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467500, 0.183295, 0.864782,
		0.518497, 0.735462, -0.436184,
		-0.715964, 0.652303, 0.248790,
		27.210432, 33.101097, 21.092989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079897, 33.206650, 21.177961>,  <27.711607, 32.644485, 20.918837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079897, 33.206650, 21.177961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702591, 33.247002, 21.304497>,  <27.476208, 33.271214, 21.380419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702591, 33.247002, 21.304497>,  <28.079897, 33.206650, 21.177961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702591, 33.247002, 21.304497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331730, 0.327297, 0.884778,
		-0.014278, 0.939521, -0.342194,
		-0.943266, 0.100884, 0.316340,
		27.419611, 33.277267, 21.399399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964792, 33.888416, 21.343178>,  <28.079897, 33.206650, 21.177961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964792, 33.888416, 21.343178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692566, 33.692974, 21.561569>,  <27.529230, 33.575706, 21.692604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692566, 33.692974, 21.561569>,  <27.964792, 33.888416, 21.343178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692566, 33.692974, 21.561569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381655, 0.399683, 0.833423,
		-0.625434, 0.775575, -0.085531,
		-0.680567, -0.488608, 0.545977,
		27.488396, 33.546391, 21.725363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704472, 34.368355, 21.811447>,  <27.964792, 33.888416, 21.343178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704472, 34.368355, 21.811447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636606, 34.018494, 21.993084>,  <27.595886, 33.808578, 22.102066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636606, 34.018494, 21.993084>,  <27.704472, 34.368355, 21.811447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636606, 34.018494, 21.993084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302007, 0.392457, 0.868775,
		-0.938086, 0.284538, 0.197565,
		-0.169664, -0.874652, 0.454091,
		27.585707, 33.756100, 22.129311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632830, 35.131496, 22.035921>,  <27.704472, 34.368355, 21.811447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632830, 35.131496, 22.035921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005423, 35.275455, 22.057152>,  <28.228977, 35.361832, 22.069891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005423, 35.275455, 22.057152>,  <27.632830, 35.131496, 22.035921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005423, 35.275455, 22.057152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026604, 0.212897, -0.976712,
		-0.362818, 0.908376, 0.207884,
		0.931480, 0.359899, 0.053077,
		28.284866, 35.383427, 22.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633486, 35.680996, 21.570227>,  <27.632830, 35.131496, 22.035921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633486, 35.680996, 21.570227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026981, 35.626404, 21.616932>,  <28.263079, 35.593647, 21.644955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026981, 35.626404, 21.616932>,  <27.633486, 35.680996, 21.570227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026981, 35.626404, 21.616932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121382, 0.025995, -0.992265,
		0.132389, 0.990302, 0.042139,
		0.983738, -0.136480, 0.116763,
		28.322104, 35.585461, 21.651960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859194, 36.142776, 21.199205>,  <27.633486, 35.680996, 21.570227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859194, 36.142776, 21.199205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154634, 35.876560, 21.242134>,  <28.331900, 35.716831, 21.267891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154634, 35.876560, 21.242134>,  <27.859194, 36.142776, 21.199205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154634, 35.876560, 21.242134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130703, -0.014801, -0.991311,
		0.661349, 0.746212, 0.076057,
		0.738603, -0.665544, 0.107320,
		28.376215, 35.676899, 21.274330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577913, 36.403843, 20.980103>,  <27.859194, 36.142776, 21.199205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577913, 36.403843, 20.980103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627008, 36.008049, 20.949488>,  <28.656466, 35.770573, 20.931120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627008, 36.008049, 20.949488>,  <28.577913, 36.403843, 20.980103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627008, 36.008049, 20.949488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096220, 0.088621, -0.991407,
		0.987763, 0.114321, 0.106085,
		0.122740, -0.989483, -0.076536,
		28.663830, 35.711205, 20.926527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113411, 36.342064, 20.522337>,  <28.577913, 36.403843, 20.980103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113411, 36.342064, 20.522337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935190, 35.983982, 20.526379>,  <28.828259, 35.769135, 20.528803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935190, 35.983982, 20.526379>,  <29.113411, 36.342064, 20.522337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935190, 35.983982, 20.526379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047495, 0.012368, -0.998795,
		0.893997, -0.445492, -0.048028,
		-0.445549, -0.895200, 0.010102,
		28.801525, 35.715424, 20.529409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478085, 36.008457, 20.043819>,  <29.113411, 36.342064, 20.522337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478085, 36.008457, 20.043819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121141, 35.831528, 20.079718>,  <28.906977, 35.725372, 20.101257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121141, 35.831528, 20.079718>,  <29.478085, 36.008457, 20.043819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121141, 35.831528, 20.079718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073583, -0.338768, -0.937988,
		0.445294, -0.830415, 0.334849,
		-0.892356, -0.442319, 0.089747,
		28.853436, 35.698833, 20.106642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671087, 35.405975, 19.783545>,  <29.478085, 36.008457, 20.043819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671087, 35.405975, 19.783545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273270, 35.442421, 19.763218>,  <29.034580, 35.464287, 19.751022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273270, 35.442421, 19.763218>,  <29.671087, 35.405975, 19.783545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273270, 35.442421, 19.763218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022860, -0.284940, -0.958273,
		-0.101791, -0.954205, 0.281303,
		-0.994543, 0.091113, -0.050817,
		28.974907, 35.469753, 19.747972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508226, 34.919178, 19.289865>,  <29.671087, 35.405975, 19.783545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508226, 34.919178, 19.289865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201389, 35.175514, 19.301762>,  <29.017286, 35.329315, 19.308899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201389, 35.175514, 19.301762>,  <29.508226, 34.919178, 19.289865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201389, 35.175514, 19.301762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005650, 0.053103, -0.998573,
		-0.641510, -0.765831, -0.044356,
		-0.767094, 0.640845, 0.029740,
		28.971262, 35.367767, 19.310684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903652, 34.590939, 18.903442>,  <29.508226, 34.919178, 19.289865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903652, 34.590939, 18.903442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865177, 34.988457, 18.925802>,  <28.842093, 35.226967, 18.939219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865177, 34.988457, 18.925802>,  <28.903652, 34.590939, 18.903442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865177, 34.988457, 18.925802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058553, 0.050415, -0.997010,
		-0.993640, -0.099174, 0.053341,
		-0.096188, 0.993792, 0.055902,
		28.836321, 35.286594, 18.942574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455194, 34.708206, 18.346844>,  <28.903652, 34.590939, 18.903442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455194, 34.708206, 18.346844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583139, 35.081184, 18.414049>,  <28.659906, 35.304974, 18.454372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583139, 35.081184, 18.414049>,  <28.455194, 34.708206, 18.346844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583139, 35.081184, 18.414049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065654, 0.198716, -0.977856,
		-0.945187, 0.301749, 0.124780,
		0.319862, 0.932449, 0.168013,
		28.679098, 35.360920, 18.464453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964254, 35.168472, 18.025816>,  <28.455194, 34.708206, 18.346844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964254, 35.168472, 18.025816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309931, 35.365711, 18.065874>,  <28.517338, 35.484055, 18.089909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309931, 35.365711, 18.065874>,  <27.964254, 35.168472, 18.025816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309931, 35.365711, 18.065874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005351, 0.208027, -0.978108,
		-0.503132, 0.844738, 0.182414,
		0.864193, 0.493094, 0.100145,
		28.569189, 35.513638, 18.095917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861460, 35.772175, 17.608181>,  <27.964254, 35.168472, 18.025816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861460, 35.772175, 17.608181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255562, 35.710144, 17.637096>,  <28.492023, 35.672924, 17.654446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255562, 35.710144, 17.637096>,  <27.861460, 35.772175, 17.608181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255562, 35.710144, 17.637096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097044, 0.158524, -0.982575,
		0.140920, 0.975100, 0.171236,
		0.985253, -0.155082, 0.072288,
		28.551138, 35.663620, 17.658783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108351, 36.237423, 17.240191>,  <27.861460, 35.772175, 17.608181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108351, 36.237423, 17.240191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416313, 35.982849, 17.258913>,  <28.601091, 35.830105, 17.270145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416313, 35.982849, 17.258913>,  <28.108351, 36.237423, 17.240191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416313, 35.982849, 17.258913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080507, 0.024109, -0.996463,
		0.633056, 0.770953, 0.069799,
		0.769908, -0.636436, 0.046805,
		28.647285, 35.791920, 17.272955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634638, 36.564342, 16.862341>,  <28.108351, 36.237423, 17.240191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634638, 36.564342, 16.862341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709377, 36.171711, 16.878311>,  <28.754221, 35.936131, 16.887894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709377, 36.171711, 16.878311>,  <28.634638, 36.564342, 16.862341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709377, 36.171711, 16.878311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047448, -0.031575, -0.998374,
		0.981242, 0.188438, 0.040674,
		0.186847, -0.981577, 0.039923,
		28.765430, 35.877239, 16.890287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.385235, 28.308252, 17.571417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.144482, 28.620466, 17.638943>,  <32.000031, 28.807795, 17.679459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.144482, 28.620466, 17.638943>,  <32.385235, 28.308252, 17.571417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144482, 28.620466, 17.638943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324916, 0.046244, 0.944612,
		0.729497, 0.623398, -0.281442,
		-0.601884, 0.780536, 0.168817,
		31.963917, 28.854628, 17.689589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827484, 28.827175, 17.920609>,  <32.385235, 28.308252, 17.571417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827484, 28.827175, 17.920609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458107, 28.955212, 18.005274>,  <32.236481, 29.032034, 18.056072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.458107, 28.955212, 18.005274>,  <32.827484, 28.827175, 17.920609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458107, 28.955212, 18.005274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293484, 0.233731, 0.926950,
		0.247235, 0.918102, -0.309778,
		-0.923440, 0.320090, 0.211662,
		32.181076, 29.051239, 18.068771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005249, 29.513374, 18.158335>,  <32.827484, 28.827175, 17.920609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005249, 29.513374, 18.158335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644150, 29.410942, 18.296593>,  <32.427490, 29.349483, 18.379547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644150, 29.410942, 18.296593>,  <33.005249, 29.513374, 18.158335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644150, 29.410942, 18.296593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212203, 0.433837, 0.875646,
		-0.374189, 0.863834, -0.337304,
		-0.902747, -0.256081, 0.345645,
		32.373325, 29.334118, 18.400286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850063, 30.106165, 18.579176>,  <33.005249, 29.513374, 18.158335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850063, 30.106165, 18.579176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617199, 29.801933, 18.694141>,  <32.477482, 29.619394, 18.763121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617199, 29.801933, 18.694141>,  <32.850063, 30.106165, 18.579176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617199, 29.801933, 18.694141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110490, 0.276208, 0.954726,
		-0.805531, 0.587560, -0.076761,
		-0.582161, -0.760580, 0.287414,
		32.442551, 29.573759, 18.780365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229538, 30.398792, 18.974493>,  <32.850063, 30.106165, 18.579176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229538, 30.398792, 18.974493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.301888, 30.023884, 19.093693>,  <32.345299, 29.798939, 19.165213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.301888, 30.023884, 19.093693>,  <32.229538, 30.398792, 18.974493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301888, 30.023884, 19.093693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029495, 0.308031, 0.950919,
		-0.983063, -0.163210, 0.083360,
		0.180877, -0.937273, 0.298000,
		32.356152, 29.742702, 19.183092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826990, 30.263166, 19.601288>,  <32.229538, 30.398792, 18.974493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826990, 30.263166, 19.601288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.074574, 29.950432, 19.631281>,  <32.223122, 29.762791, 19.649277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.074574, 29.950432, 19.631281>,  <31.826990, 30.263166, 19.601288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074574, 29.950432, 19.631281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006641, 0.100674, 0.994897,
		-0.785397, -0.615300, 0.067505,
		0.618956, -0.781838, 0.074983,
		32.260262, 29.715881, 19.653776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594900, 30.025175, 20.264317>,  <31.826990, 30.263166, 19.601288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594900, 30.025175, 20.264317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.946001, 29.849600, 20.187492>,  <32.156662, 29.744255, 20.141397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.946001, 29.849600, 20.187492>,  <31.594900, 30.025175, 20.264317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946001, 29.849600, 20.187492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284779, 0.155595, 0.945881,
		-0.385300, -0.884942, 0.261574,
		0.877750, -0.438939, -0.192062,
		32.209328, 29.717918, 20.129873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661514, 29.439381, 20.841862>,  <31.594900, 30.025175, 20.264317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661514, 29.439381, 20.841862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012291, 29.549017, 20.683950>,  <32.222755, 29.614799, 20.589203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012291, 29.549017, 20.683950>,  <31.661514, 29.439381, 20.841862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012291, 29.549017, 20.683950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341107, 0.223688, 0.913023,
		0.338560, -0.935327, 0.102666,
		0.876940, 0.274093, -0.394778,
		32.275372, 29.631245, 20.565517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204510, 28.971199, 21.149408>,  <31.661514, 29.439381, 20.841862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204510, 28.971199, 21.149408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.378643, 29.312757, 21.035326>,  <32.483124, 29.517693, 20.966877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.378643, 29.312757, 21.035326>,  <32.204510, 28.971199, 21.149408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378643, 29.312757, 21.035326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157991, 0.239423, 0.957975,
		0.886296, -0.462103, -0.030678,
		0.435337, 0.853895, -0.285207,
		32.509243, 29.568926, 20.949764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876385, 29.071404, 21.524969>,  <32.204510, 28.971199, 21.149408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876385, 29.071404, 21.524969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826534, 29.446388, 21.394964>,  <32.796623, 29.671379, 21.316961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.826534, 29.446388, 21.394964>,  <32.876385, 29.071404, 21.524969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826534, 29.446388, 21.394964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340233, 0.348085, 0.873544,
		0.932046, -0.001710, -0.362337,
		-0.124631, 0.937461, -0.325013,
		32.789146, 29.727627, 21.297461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523193, 29.349195, 21.553080>,  <32.876385, 29.071404, 21.524969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523193, 29.349195, 21.553080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253452, 29.644552, 21.554901>,  <33.091606, 29.821766, 21.555994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253452, 29.644552, 21.554901>,  <33.523193, 29.349195, 21.553080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253452, 29.644552, 21.554901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402408, 0.362326, 0.840707,
		0.619122, 0.568767, -0.541472,
		-0.674356, 0.738393, 0.004552,
		33.051147, 29.866070, 21.556267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905510, 29.796383, 21.839014>,  <33.523193, 29.349195, 21.553080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905510, 29.796383, 21.839014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.545906, 29.971041, 21.852444>,  <33.330143, 30.075834, 21.860502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.545906, 29.971041, 21.852444>,  <33.905510, 29.796383, 21.839014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545906, 29.971041, 21.852444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242611, 0.432751, 0.868254,
		0.364588, 0.788713, -0.494982,
		-0.899008, 0.436644, 0.033575,
		33.276203, 30.102034, 21.862516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994091, 30.443056, 22.187227>,  <33.905510, 29.796383, 21.839014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994091, 30.443056, 22.187227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602596, 30.365658, 22.214453>,  <33.367699, 30.319218, 22.230789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602596, 30.365658, 22.214453>,  <33.994091, 30.443056, 22.187227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602596, 30.365658, 22.214453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020653, 0.237185, 0.971245,
		-0.204077, 0.951999, -0.228146,
		-0.978737, -0.193497, 0.068065,
		33.308975, 30.307610, 22.234873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722240, 30.954659, 22.475161>,  <33.994091, 30.443056, 22.187227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722240, 30.954659, 22.475161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451504, 30.666948, 22.537813>,  <33.289062, 30.494322, 22.575405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451504, 30.666948, 22.537813>,  <33.722240, 30.954659, 22.475161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451504, 30.666948, 22.537813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055546, 0.262072, 0.963448,
		-0.734031, 0.643400, -0.217333,
		-0.676840, -0.719273, 0.156631,
		33.248451, 30.451166, 22.584803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438301, 31.556997, 21.954481>,  <33.722240, 30.954659, 22.475161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438301, 31.556997, 21.954481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612587, 31.912653, 21.898512>,  <33.717159, 32.126045, 21.864931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612587, 31.912653, 21.898512>,  <33.438301, 31.556997, 21.954481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612587, 31.912653, 21.898512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398935, 0.051421, -0.915536,
		-0.806846, 0.454736, 0.377115,
		0.435719, 0.889141, -0.139921,
		33.743301, 32.179394, 21.856535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933762, 31.902088, 21.643505>,  <33.438301, 31.556997, 21.954481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933762, 31.902088, 21.643505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.285900, 32.068027, 21.551506>,  <33.497181, 32.167591, 21.496307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.285900, 32.068027, 21.551506>,  <32.933762, 31.902088, 21.643505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285900, 32.068027, 21.551506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306225, 0.126756, -0.943482,
		-0.362246, 0.901019, 0.238625,
		0.880343, 0.414846, -0.229998,
		33.550003, 32.192482, 21.482506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713245, 32.435593, 21.229401>,  <32.933762, 31.902088, 21.643505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713245, 32.435593, 21.229401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.100655, 32.414856, 21.132017>,  <33.333099, 32.402412, 21.073587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.100655, 32.414856, 21.132017>,  <32.713245, 32.435593, 21.229401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100655, 32.414856, 21.132017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242532, 0.023542, -0.969858,
		0.056013, 0.998378, 0.010227,
		0.968525, -0.051844, -0.243457,
		33.391212, 32.399303, 21.058979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769077, 32.913998, 20.734053>,  <32.713245, 32.435593, 21.229401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769077, 32.913998, 20.734053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095360, 32.688599, 20.681753>,  <33.291130, 32.553360, 20.650373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095360, 32.688599, 20.681753>,  <32.769077, 32.913998, 20.734053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095360, 32.688599, 20.681753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156946, 0.001963, -0.987605,
		0.556769, 0.826116, -0.086838,
		0.815706, -0.563497, -0.130748,
		33.340073, 32.519550, 20.642529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107994, 33.207458, 20.227339>,  <32.769077, 32.913998, 20.734053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107994, 33.207458, 20.227339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235336, 32.828995, 20.203899>,  <33.311741, 32.601917, 20.189835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235336, 32.828995, 20.203899>,  <33.107994, 33.207458, 20.227339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235336, 32.828995, 20.203899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042461, 0.047521, -0.997967,
		0.947019, 0.320201, -0.025045,
		0.318360, -0.946157, -0.058600,
		33.330845, 32.545147, 20.186319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554142, 33.186405, 19.643314>,  <33.107994, 33.207458, 20.227339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554142, 33.186405, 19.643314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503887, 32.794502, 19.705667>,  <33.473736, 32.559361, 19.743080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503887, 32.794502, 19.705667>,  <33.554142, 33.186405, 19.643314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503887, 32.794502, 19.705667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111094, -0.170034, -0.979156,
		0.985837, -0.105699, 0.130207,
		-0.125635, -0.979753, 0.155884,
		33.466198, 32.500576, 19.752432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137459, 32.770752, 19.199299>,  <33.554142, 33.186405, 19.643314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137459, 32.770752, 19.199299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815331, 32.548267, 19.281359>,  <33.622051, 32.414776, 19.330595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815331, 32.548267, 19.281359>,  <34.137459, 32.770752, 19.199299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815331, 32.548267, 19.281359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091391, -0.225433, -0.969963,
		0.585750, -0.799882, 0.130713,
		-0.805323, -0.556209, 0.205149,
		33.573734, 32.381405, 19.342903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093315, 32.415943, 18.643808>,  <34.137459, 32.770752, 19.199299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093315, 32.415943, 18.643808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724613, 32.367954, 18.791311>,  <33.503391, 32.339161, 18.879812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724613, 32.367954, 18.791311>,  <34.093315, 32.415943, 18.643808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724613, 32.367954, 18.791311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317848, -0.311003, -0.895684,
		0.222141, -0.942806, 0.248535,
		-0.921751, -0.119972, 0.368756,
		33.448090, 32.331963, 18.901937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004044, 31.778641, 18.364227>,  <34.093315, 32.415943, 18.643808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004044, 31.778641, 18.364227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661602, 31.964577, 18.454567>,  <33.456139, 32.076138, 18.508770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661602, 31.964577, 18.454567>,  <34.004044, 31.778641, 18.364227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661602, 31.964577, 18.454567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385936, -0.284391, -0.877596,
		-0.343716, -0.838476, 0.422868,
		-0.856103, 0.464844, 0.225848,
		33.404770, 32.104031, 18.522322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417637, 31.299412, 18.298529>,  <34.004044, 31.778641, 18.364227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417637, 31.299412, 18.298529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279049, 31.672077, 18.254776>,  <33.195896, 31.895676, 18.228525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279049, 31.672077, 18.254776>,  <33.417637, 31.299412, 18.298529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279049, 31.672077, 18.254776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422628, -0.259132, -0.868468,
		-0.837462, -0.254672, 0.483528,
		-0.346472, 0.931661, -0.109382,
		33.175106, 31.951576, 18.221962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697258, 31.157261, 18.087038>,  <33.417637, 31.299412, 18.298529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697258, 31.157261, 18.087038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777222, 31.534262, 17.979912>,  <32.825199, 31.760462, 17.915636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777222, 31.534262, 17.979912>,  <32.697258, 31.157261, 18.087038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777222, 31.534262, 17.979912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469141, -0.147890, -0.870652,
		-0.860199, 0.299696, 0.412602,
		0.199911, 0.942503, -0.267814,
		32.837196, 31.817013, 17.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081585, 31.592052, 17.900637>,  <32.697258, 31.157261, 18.087038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081585, 31.592052, 17.900637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394272, 31.770521, 17.726347>,  <32.581882, 31.877602, 17.621773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394272, 31.770521, 17.726347>,  <32.081585, 31.592052, 17.900637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394272, 31.770521, 17.726347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501310, 0.033965, -0.864601,
		-0.370960, 0.894303, 0.250221,
		0.781714, 0.446171, -0.435723,
		32.628784, 31.904373, 17.595631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732208, 32.031578, 17.486439>,  <32.081585, 31.592052, 17.900637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732208, 32.031578, 17.486439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083042, 32.021534, 17.294569>,  <32.293545, 32.015507, 17.179447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083042, 32.021534, 17.294569>,  <31.732208, 32.031578, 17.486439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083042, 32.021534, 17.294569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472676, 0.132474, -0.871222,
		0.085418, 0.990868, 0.104324,
		0.877087, -0.025107, -0.479675,
		32.346169, 32.014004, 17.150667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574877, 32.383549, 16.865715>,  <31.732208, 32.031578, 17.486439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574877, 32.383549, 16.865715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904720, 32.161385, 16.822746>,  <32.102627, 32.028084, 16.796965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904720, 32.161385, 16.822746>,  <31.574877, 32.383549, 16.865715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904720, 32.161385, 16.822746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240777, -0.172755, -0.955083,
		0.511907, 0.813433, -0.276185,
		0.824608, -0.555412, -0.107421,
		32.152103, 31.994761, 16.790520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089249, 32.985104, 16.947239>,  <31.574877, 32.383549, 16.865715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089249, 32.985104, 16.947239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934368, 33.346302, 16.872755>,  <31.841440, 33.563023, 16.828066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934368, 33.346302, 16.872755>,  <32.089249, 32.985104, 16.947239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934368, 33.346302, 16.872755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180232, 0.272197, 0.945212,
		0.904207, 0.332429, -0.268144,
		-0.387204, 0.902995, -0.186208,
		31.818207, 33.617199, 16.816893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361694, 33.382370, 17.479794>,  <32.089249, 32.985104, 16.947239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361694, 33.382370, 17.479794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.079834, 33.636898, 17.354212>,  <31.910717, 33.789616, 17.278864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.079834, 33.636898, 17.354212>,  <32.361694, 33.382370, 17.479794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079834, 33.636898, 17.354212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086264, 0.516010, 0.852228,
		0.704289, 0.573442, -0.418499,
		-0.704653, 0.636316, -0.313952,
		31.868439, 33.827793, 17.260027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620842, 34.064957, 17.549490>,  <32.361694, 33.382370, 17.479794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620842, 34.064957, 17.549490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.222336, 34.096832, 17.536175>,  <31.983232, 34.115959, 17.528185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.222336, 34.096832, 17.536175>,  <32.620842, 34.064957, 17.549490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222336, 34.096832, 17.536175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017268, 0.561462, 0.827322,
		0.084622, 0.823656, -0.560741,
		-0.996263, 0.079693, -0.033289,
		31.923456, 34.120739, 17.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496525, 34.776138, 17.699377>,  <32.620842, 34.064957, 17.549490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496525, 34.776138, 17.699377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164352, 34.562775, 17.763706>,  <31.965050, 34.434757, 17.802303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164352, 34.562775, 17.763706>,  <32.496525, 34.776138, 17.699377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164352, 34.562775, 17.763706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070912, 0.387516, 0.919132,
		-0.552593, 0.751869, -0.359630,
		-0.830429, -0.533408, 0.160822,
		31.915224, 34.402752, 17.811953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049477, 35.289490, 17.865240>,  <32.496525, 34.776138, 17.699377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049477, 35.289490, 17.865240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888454, 34.951775, 18.006731>,  <31.791842, 34.749146, 18.091625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888454, 34.951775, 18.006731>,  <32.049477, 35.289490, 17.865240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888454, 34.951775, 18.006731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160950, 0.445681, 0.880604,
		-0.901136, 0.297558, -0.315299,
		-0.402553, -0.844292, 0.353727,
		31.767689, 34.698486, 18.112848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379456, 35.559727, 18.165157>,  <32.049477, 35.289490, 17.865240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379456, 35.559727, 18.165157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.511171, 35.215397, 18.320362>,  <31.590200, 35.008801, 18.413485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.511171, 35.215397, 18.320362>,  <31.379456, 35.559727, 18.165157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511171, 35.215397, 18.320362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119679, 0.369568, 0.921464,
		-0.936614, -0.349864, 0.018672,
		0.329288, -0.860822, 0.388014,
		31.609959, 34.957150, 18.436766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795782, 35.288979, 18.561663>,  <31.379456, 35.559727, 18.165157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795782, 35.288979, 18.561663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124901, 35.109863, 18.701656>,  <31.322372, 35.002392, 18.785652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124901, 35.109863, 18.701656>,  <30.795782, 35.288979, 18.561663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124901, 35.109863, 18.701656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260073, 0.250889, 0.932425,
		-0.505338, -0.858218, 0.089973,
		0.822797, -0.447791, 0.349983,
		31.371740, 34.975525, 18.806652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677139, 35.043251, 19.237791>,  <30.795782, 35.288979, 18.561663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677139, 35.043251, 19.237791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073769, 34.997208, 19.214006>,  <31.311747, 34.969582, 19.199736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073769, 34.997208, 19.214006>,  <30.677139, 35.043251, 19.237791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073769, 34.997208, 19.214006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082413, 0.206283, 0.975016,
		-0.099966, -0.971698, 0.214031,
		0.991572, -0.115107, -0.059459,
		31.371241, 34.962677, 19.196169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870531, 34.646351, 19.822943>,  <30.677139, 35.043251, 19.237791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870531, 34.646351, 19.822943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.193121, 34.850254, 19.703112>,  <31.386675, 34.972595, 19.631214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.193121, 34.850254, 19.703112>,  <30.870531, 34.646351, 19.822943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193121, 34.850254, 19.703112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196372, 0.246987, 0.948913,
		0.557705, -0.824104, 0.099087,
		0.806476, 0.509755, -0.299577,
		31.435064, 35.003181, 19.613239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431107, 34.361134, 20.251387>,  <30.870531, 34.646351, 19.822943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431107, 34.361134, 20.251387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.572105, 34.713474, 20.124989>,  <31.656704, 34.924877, 20.049150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.572105, 34.713474, 20.124989>,  <31.431107, 34.361134, 20.251387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572105, 34.713474, 20.124989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494836, 0.111154, 0.861848,
		0.794281, -0.460164, -0.396694,
		0.352497, 0.880849, -0.315993,
		31.677855, 34.977730, 20.030191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174175, 34.447002, 20.518084>,  <31.431107, 34.361134, 20.251387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174175, 34.447002, 20.518084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043083, 34.815475, 20.434170>,  <31.964428, 35.036560, 20.383821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043083, 34.815475, 20.434170>,  <32.174175, 34.447002, 20.518084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043083, 34.815475, 20.434170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347557, 0.324027, 0.879892,
		0.878521, 0.215454, -0.426357,
		-0.327727, 0.921187, -0.209782,
		31.944765, 35.091831, 20.371235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646324, 34.867699, 20.774572>,  <32.174175, 34.447002, 20.518084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646324, 34.867699, 20.774572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.314781, 35.090240, 20.751007>,  <32.115856, 35.223766, 20.736868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.314781, 35.090240, 20.751007>,  <32.646324, 34.867699, 20.774572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314781, 35.090240, 20.751007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248221, 0.460074, 0.852477,
		0.501382, 0.691957, -0.519433,
		-0.828856, 0.556351, -0.058915,
		32.066124, 35.257145, 20.733334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906086, 35.611420, 20.948227>,  <32.646324, 34.867699, 20.774572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906086, 35.611420, 20.948227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512756, 35.642555, 21.013964>,  <32.276756, 35.661236, 21.053406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.512756, 35.642555, 21.013964>,  <32.906086, 35.611420, 20.948227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512756, 35.642555, 21.013964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181735, 0.389332, 0.902991,
		0.006307, 0.917802, -0.396987,
		-0.983327, 0.077842, 0.164341,
		32.217758, 35.665909, 21.063267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769489, 36.275764, 21.260317>,  <32.906086, 35.611420, 20.948227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769489, 36.275764, 21.260317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.468964, 36.028809, 21.353571>,  <32.288647, 35.880634, 21.409523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.468964, 36.028809, 21.353571>,  <32.769489, 36.275764, 21.260317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468964, 36.028809, 21.353571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021872, 0.376367, 0.926212,
		-0.659578, 0.690780, -0.296275,
		-0.751318, -0.617390, 0.233134,
		32.243568, 35.843590, 21.423512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.307484, 36.407207, 16.438219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.148148, 36.040989, 16.460510>,  <29.052546, 35.821259, 16.473885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.148148, 36.040989, 16.460510>,  <29.307484, 36.407207, 16.438219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148148, 36.040989, 16.460510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280925, -0.179611, -0.942773,
		0.873158, -0.359890, 0.328746,
		-0.398341, -0.915543, 0.055727,
		29.028645, 35.766327, 16.477228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770794, 35.979076, 16.057852>,  <29.307484, 36.407207, 16.438219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770794, 35.979076, 16.057852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.452868, 35.736916, 16.074614>,  <29.262112, 35.591621, 16.084671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.452868, 35.736916, 16.074614>,  <29.770794, 35.979076, 16.057852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452868, 35.736916, 16.074614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271149, -0.416066, -0.867968,
		0.542903, -0.678513, 0.494850,
		-0.794817, -0.605400, 0.041906,
		29.214422, 35.555294, 16.087185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033411, 35.342480, 15.906552>,  <29.770794, 35.979076, 16.057852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033411, 35.342480, 15.906552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643354, 35.336788, 15.818100>,  <29.409321, 35.333374, 15.765029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.643354, 35.336788, 15.818100>,  <30.033411, 35.342480, 15.906552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643354, 35.336788, 15.818100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221579, -0.053792, -0.973658,
		0.001966, -0.998451, 0.055609,
		-0.975140, -0.014236, -0.221130,
		29.350813, 35.332520, 15.751760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063171, 34.914021, 15.332281>,  <30.033411, 35.342480, 15.906552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063171, 34.914021, 15.332281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706953, 35.095974, 15.333296>,  <29.493221, 35.205147, 15.333904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706953, 35.095974, 15.333296>,  <30.063171, 34.914021, 15.332281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706953, 35.095974, 15.333296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082304, -0.155639, -0.984379,
		-0.447386, -0.876843, 0.176042,
		-0.890546, 0.454887, 0.002537,
		29.439789, 35.232441, 15.334057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812140, 34.584488, 14.852311>,  <30.063171, 34.914021, 15.332281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812140, 34.584488, 14.852311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.569836, 34.901493, 14.880536>,  <29.424454, 35.091698, 14.897470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.569836, 34.901493, 14.880536>,  <29.812140, 34.584488, 14.852311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569836, 34.901493, 14.880536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250829, -0.106050, -0.962205,
		-0.755078, -0.600562, 0.263026,
		-0.605758, 0.792514, 0.070562,
		29.388109, 35.139248, 14.901705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197311, 34.400650, 14.572684>,  <29.812140, 34.584488, 14.852311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197311, 34.400650, 14.572684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201368, 34.800587, 14.578565>,  <29.203802, 35.040550, 14.582093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201368, 34.800587, 14.578565>,  <29.197311, 34.400650, 14.572684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201368, 34.800587, 14.578565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, 0.016387, -0.980938,
		-0.981023, 0.007105, 0.193764,
		0.010145, 0.999840, 0.014701,
		29.204412, 35.100540, 14.582974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579563, 34.556808, 14.283582>,  <29.197311, 34.400650, 14.572684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579563, 34.556808, 14.283582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.806221, 34.884827, 14.251482>,  <28.942217, 35.081638, 14.232222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.806221, 34.884827, 14.251482>,  <28.579563, 34.556808, 14.283582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806221, 34.884827, 14.251482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114571, -0.018032, -0.993252,
		-0.815957, 0.572017, 0.083736,
		0.566646, 0.820044, -0.080250,
		28.976215, 35.130840, 14.227407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233170, 34.981518, 13.850079>,  <28.579563, 34.556808, 14.283582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233170, 34.981518, 13.850079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.614140, 35.100647, 13.824212>,  <28.842722, 35.172127, 13.808692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.614140, 35.100647, 13.824212>,  <28.233170, 34.981518, 13.850079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614140, 35.100647, 13.824212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093409, 0.083292, -0.992138,
		-0.290099, 0.950979, 0.107149,
		0.952427, 0.297827, -0.064667,
		28.899868, 35.189995, 13.804812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206839, 35.470959, 13.307819>,  <28.233170, 34.981518, 13.850079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206839, 35.470959, 13.307819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.582993, 35.335922, 13.324349>,  <28.808685, 35.254902, 13.334268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.582993, 35.335922, 13.324349>,  <28.206839, 35.470959, 13.307819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582993, 35.335922, 13.324349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050781, 0.019221, -0.998525,
		0.336296, 0.941098, 0.035218,
		0.940386, -0.337589, 0.041326,
		28.865108, 35.234646, 13.336747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543213, 35.899700, 12.795035>,  <28.206839, 35.470959, 13.307819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543213, 35.899700, 12.795035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.771952, 35.581070, 12.873482>,  <28.909195, 35.389893, 12.920549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.771952, 35.581070, 12.873482>,  <28.543213, 35.899700, 12.795035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771952, 35.581070, 12.873482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001363, -0.239985, -0.970776,
		0.820358, 0.554870, -0.138321,
		0.571849, -0.796572, 0.196117,
		28.943506, 35.342098, 12.932317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059450, 35.764633, 12.183373>,  <28.543213, 35.899700, 12.795035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059450, 35.764633, 12.183373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054625, 35.429428, 12.401581>,  <29.051729, 35.228306, 12.532505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054625, 35.429428, 12.401581>,  <29.059450, 35.764633, 12.183373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054625, 35.429428, 12.401581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030530, -0.545613, -0.837481,
		0.999461, 0.006550, 0.032168,
		-0.012066, -0.838012, 0.545519,
		29.051004, 35.178024, 12.565236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641581, 35.368683, 11.927752>,  <29.059450, 35.764633, 12.183373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641581, 35.368683, 11.927752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.381271, 35.101032, 12.071285>,  <29.225086, 34.940441, 12.157405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.381271, 35.101032, 12.071285>,  <29.641581, 35.368683, 11.927752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381271, 35.101032, 12.071285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045774, -0.506317, -0.861132,
		0.757890, -0.543977, 0.360127,
		-0.650774, -0.669128, 0.358832,
		29.186039, 34.900295, 12.178935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844763, 34.764748, 11.744049>,  <29.641581, 35.368683, 11.927752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844763, 34.764748, 11.744049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.451651, 34.717022, 11.800489>,  <29.215784, 34.688385, 11.834353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.451651, 34.717022, 11.800489>,  <29.844763, 34.764748, 11.744049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451651, 34.717022, 11.800489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077043, -0.429492, -0.899778,
		0.167958, -0.895154, 0.412903,
		-0.982779, -0.119314, 0.141102,
		29.156816, 34.681229, 11.842820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651190, 34.040932, 11.777787>,  <29.844763, 34.764748, 11.744049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651190, 34.040932, 11.777787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.413990, 34.325577, 11.627080>,  <29.271671, 34.496365, 11.536655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.413990, 34.325577, 11.627080>,  <29.651190, 34.040932, 11.777787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413990, 34.325577, 11.627080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225307, -0.302583, -0.926110,
		-0.773040, -0.634070, 0.019099,
		-0.592998, 0.711617, -0.376769,
		29.236092, 34.539062, 11.514050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291355, 34.112316, 11.445183>,  <29.651190, 34.040932, 11.777787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291355, 34.112316, 11.445183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.637558, 33.955784, 11.320117>,  <30.845280, 33.861866, 11.245077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.637558, 33.955784, 11.320117>,  <30.291355, 34.112316, 11.445183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637558, 33.955784, 11.320117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330849, -0.022037, 0.943426,
		-0.376078, -0.919988, 0.110397,
		0.865508, -0.391327, -0.312665,
		30.897211, 33.838387, 11.226317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350163, 33.545845, 11.807652>,  <30.291355, 34.112316, 11.445183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350163, 33.545845, 11.807652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718702, 33.614540, 11.668157>,  <30.939827, 33.655758, 11.584459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718702, 33.614540, 11.668157>,  <30.350163, 33.545845, 11.807652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718702, 33.614540, 11.668157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348981, 0.029777, 0.936656,
		0.171245, -0.984692, -0.032498,
		0.921351, 0.171739, -0.348738,
		30.995108, 33.666061, 11.563535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752571, 33.091663, 12.205518>,  <30.350163, 33.545845, 11.807652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752571, 33.091663, 12.205518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997398, 33.380405, 12.076333>,  <31.144295, 33.553650, 11.998822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997398, 33.380405, 12.076333>,  <30.752571, 33.091663, 12.205518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997398, 33.380405, 12.076333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380178, 0.089512, 0.920572,
		0.693426, -0.686234, -0.219644,
		0.612067, 0.721852, -0.322961,
		31.181019, 33.596962, 11.979445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372089, 32.876270, 12.560585>,  <30.752571, 33.091663, 12.205518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372089, 32.876270, 12.560585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436899, 33.251556, 12.438280>,  <31.475786, 33.476730, 12.364897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.436899, 33.251556, 12.438280>,  <31.372089, 32.876270, 12.560585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436899, 33.251556, 12.438280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281765, 0.252970, 0.925535,
		0.945704, -0.236114, -0.223370,
		0.162026, 0.938220, -0.305763,
		31.485508, 33.533024, 12.346551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011074, 32.961761, 12.808546>,  <31.372089, 32.876270, 12.560585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011074, 32.961761, 12.808546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811649, 33.303696, 12.751012>,  <31.691994, 33.508858, 12.716492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811649, 33.303696, 12.751012>,  <32.011074, 32.961761, 12.808546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811649, 33.303696, 12.751012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026658, 0.180970, 0.983127,
		0.866442, 0.486320, -0.113014,
		-0.498566, 0.854835, -0.143836,
		31.662079, 33.560146, 12.707861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390472, 33.432247, 13.284745>,  <32.011074, 32.961761, 12.808546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390472, 33.432247, 13.284745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066700, 33.649620, 13.195747>,  <31.872437, 33.780045, 13.142349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066700, 33.649620, 13.195747>,  <32.390472, 33.432247, 13.284745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066700, 33.649620, 13.195747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042008, 0.324337, 0.945008,
		0.585713, 0.774264, -0.239699,
		-0.809429, 0.543435, -0.222494,
		31.823872, 33.812649, 13.128999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460064, 34.056366, 13.680043>,  <32.390472, 33.432247, 13.284745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460064, 34.056366, 13.680043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068939, 34.036022, 13.598761>,  <31.834265, 34.023815, 13.549991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068939, 34.036022, 13.598761>,  <32.460064, 34.056366, 13.680043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068939, 34.036022, 13.598761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207360, 0.372568, 0.904541,
		0.029701, 0.926610, -0.374849,
		-0.977814, -0.050863, -0.203207,
		31.775595, 34.020763, 13.537799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147579, 34.695587, 13.938586>,  <32.460064, 34.056366, 13.680043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147579, 34.695587, 13.938586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835787, 34.445019, 13.937309>,  <31.648712, 34.294678, 13.936543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835787, 34.445019, 13.937309>,  <32.147579, 34.695587, 13.938586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835787, 34.445019, 13.937309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076472, 0.090097, 0.992993,
		-0.621740, 0.774264, -0.118132,
		-0.779481, -0.626417, -0.003193,
		31.601942, 34.257095, 13.936352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602791, 34.980106, 14.229649>,  <32.147579, 34.695587, 13.938586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602791, 34.980106, 14.229649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523266, 34.589817, 14.266400>,  <31.475552, 34.355644, 14.288451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523266, 34.589817, 14.266400>,  <31.602791, 34.980106, 14.229649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523266, 34.589817, 14.266400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076156, 0.108848, 0.991137,
		-0.977074, 0.190054, -0.095948,
		-0.198813, -0.975721, 0.091879,
		31.463621, 34.297100, 14.293964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101997, 34.949570, 14.878017>,  <31.602791, 34.980106, 14.229649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101997, 34.949570, 14.878017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242222, 34.579945, 14.817067>,  <31.326357, 34.358170, 14.780497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242222, 34.579945, 14.817067>,  <31.101997, 34.949570, 14.878017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242222, 34.579945, 14.817067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157023, -0.102405, 0.982271,
		-0.923282, -0.368274, 0.109199,
		0.350563, -0.924060, -0.152377,
		31.347391, 34.302727, 14.771354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770205, 34.541241, 15.333075>,  <31.101997, 34.949570, 14.878017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770205, 34.541241, 15.333075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099592, 34.329956, 15.250234>,  <31.297224, 34.203186, 15.200529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.099592, 34.329956, 15.250234>,  <30.770205, 34.541241, 15.333075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099592, 34.329956, 15.250234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228861, -0.024762, 0.973144,
		-0.519155, -0.848751, 0.100496,
		0.823469, -0.528212, -0.207102,
		31.346632, 34.171494, 15.188103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598000, 33.884247, 15.649914>,  <30.770205, 34.541241, 15.333075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598000, 33.884247, 15.649914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996315, 33.894604, 15.614741>,  <31.235304, 33.900818, 15.593638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996315, 33.894604, 15.614741>,  <30.598000, 33.884247, 15.649914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996315, 33.894604, 15.614741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091570, -0.237521, 0.967057,
		0.004156, -0.971037, -0.238892,
		0.995790, 0.025894, -0.087930,
		31.295052, 33.902370, 15.588362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776073, 33.374126, 16.099480>,  <30.598000, 33.884247, 15.649914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776073, 33.374126, 16.099480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126856, 33.551239, 16.024763>,  <31.337326, 33.657505, 15.979933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126856, 33.551239, 16.024763>,  <30.776073, 33.374126, 16.099480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126856, 33.551239, 16.024763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309589, -0.223235, 0.924295,
		0.367563, -0.868395, -0.332848,
		0.876956, 0.442783, -0.186793,
		31.389942, 33.684074, 15.968725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340040, 32.950886, 16.345238>,  <30.776073, 33.374126, 16.099480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340040, 32.950886, 16.345238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483063, 33.324409, 16.350325>,  <31.568876, 33.548523, 16.353376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483063, 33.324409, 16.350325>,  <31.340040, 32.950886, 16.345238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483063, 33.324409, 16.350325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294015, -0.125482, 0.947528,
		0.886402, -0.335056, -0.319420,
		0.357557, 0.933805, 0.012716,
		31.590330, 33.604549, 16.354139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909063, 32.463428, 16.123783>,  <31.340040, 32.950886, 16.345238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909063, 32.463428, 16.123783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068909, 32.114483, 16.236422>,  <32.164818, 31.905117, 16.304005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068909, 32.114483, 16.236422>,  <31.909063, 32.463428, 16.123783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068909, 32.114483, 16.236422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255939, -0.401153, -0.879529,
		0.880230, 0.279400, -0.383577,
		0.399614, -0.872360, 0.281598,
		32.188793, 31.852776, 16.320900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426704, 32.267303, 15.579847>,  <31.909063, 32.463428, 16.123783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426704, 32.267303, 15.579847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336014, 31.932751, 15.779471>,  <32.281601, 31.732019, 15.899245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336014, 31.932751, 15.779471>,  <32.426704, 32.267303, 15.579847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336014, 31.932751, 15.779471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210425, -0.458236, -0.863563,
		0.950956, -0.300805, -0.072102,
		-0.226724, -0.836383, 0.499059,
		32.267998, 31.681835, 15.929189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757828, 31.749529, 15.124491>,  <32.426704, 32.267303, 15.579847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757828, 31.749529, 15.124491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487061, 31.552303, 15.343094>,  <32.324600, 31.433968, 15.474256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487061, 31.552303, 15.343094>,  <32.757828, 31.749529, 15.124491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487061, 31.552303, 15.343094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083861, -0.685981, -0.722771,
		0.731267, -0.535086, 0.423002,
		-0.676916, -0.493065, 0.546508,
		32.283985, 31.404385, 15.507047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033482, 31.056421, 15.103492>,  <32.757828, 31.749529, 15.124491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033482, 31.056421, 15.103492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647118, 31.055309, 15.207031>,  <32.415298, 31.054642, 15.269155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647118, 31.055309, 15.207031>,  <33.033482, 31.056421, 15.103492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647118, 31.055309, 15.207031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193943, -0.654522, -0.730744,
		0.171454, -0.756038, 0.631672,
		-0.965914, -0.002780, 0.258849,
		32.357342, 31.054476, 15.284686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894657, 30.378330, 15.169226>,  <33.033482, 31.056421, 15.103492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894657, 30.378330, 15.169226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560326, 30.583212, 15.090197>,  <32.359726, 30.706141, 15.042779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560326, 30.583212, 15.090197>,  <32.894657, 30.378330, 15.169226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560326, 30.583212, 15.090197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249595, -0.675085, -0.694235,
		-0.488966, -0.530951, 0.692101,
		-0.835831, 0.512202, -0.197571,
		32.309578, 30.736874, 15.030925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080246, 30.153101, 15.076134>,  <32.894657, 30.378330, 15.169226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080246, 30.153101, 15.076134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153641, 30.393064, 14.764636>,  <32.197678, 30.537043, 14.577738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153641, 30.393064, 14.764636>,  <32.080246, 30.153101, 15.076134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153641, 30.393064, 14.764636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305090, -0.718321, -0.625248,
		-0.934480, 0.352312, 0.051223,
		0.183488, 0.599909, -0.778744,
		32.208687, 30.573038, 14.531013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448257, 30.308519, 14.544448>,  <32.080246, 30.153101, 15.076134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448257, 30.308519, 14.544448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823809, 30.263853, 14.414192>,  <32.049141, 30.237053, 14.336039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823809, 30.263853, 14.414192>,  <31.448257, 30.308519, 14.544448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823809, 30.263853, 14.414192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254065, -0.863058, -0.436557,
		-0.232296, 0.492607, -0.838676,
		0.938877, -0.111668, -0.325639,
		32.105473, 30.230352, 14.316501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026634, 29.771544, 14.868192>,  <31.448257, 30.308519, 14.544448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026634, 29.771544, 14.868192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890293, 29.413469, 14.983055>,  <30.808489, 29.198626, 15.051973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890293, 29.413469, 14.983055>,  <31.026634, 29.771544, 14.868192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890293, 29.413469, 14.983055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412115, 0.132259, 0.901482,
		-0.844973, 0.425616, 0.323838,
		-0.340855, -0.895186, 0.287158,
		30.788036, 29.144913, 15.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687868, 29.855888, 15.596402>,  <31.026634, 29.771544, 14.868192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687868, 29.855888, 15.596402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.817053, 29.481089, 15.543152>,  <30.894564, 29.256208, 15.511202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.817053, 29.481089, 15.543152>,  <30.687868, 29.855888, 15.596402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817053, 29.481089, 15.543152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292205, -0.035068, 0.955713,
		-0.900173, -0.347561, 0.262471,
		0.322964, -0.937002, -0.133126,
		30.913942, 29.199987, 15.503214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355457, 29.541832, 16.072502>,  <30.687868, 29.855888, 15.596402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355457, 29.541832, 16.072502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680666, 29.329361, 15.977136>,  <30.875792, 29.201878, 15.919915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680666, 29.329361, 15.977136>,  <30.355457, 29.541832, 16.072502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680666, 29.329361, 15.977136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264989, -0.027040, 0.963872,
		-0.518437, -0.846827, 0.118773,
		0.813022, -0.531180, -0.238418,
		30.924572, 29.170008, 15.905610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516602, 29.471621, 16.723278>,  <30.355457, 29.541832, 16.072502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516602, 29.471621, 16.723278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814852, 29.278181, 16.539900>,  <30.993803, 29.162117, 16.429873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.814852, 29.278181, 16.539900>,  <30.516602, 29.471621, 16.723278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814852, 29.278181, 16.539900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474389, -0.097917, 0.874853,
		-0.467968, -0.869795, 0.156405,
		0.745627, -0.483600, -0.458444,
		31.038540, 29.133101, 16.402367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581114, 28.752821, 16.913946>,  <30.516602, 29.471621, 16.723278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581114, 28.752821, 16.913946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948704, 28.844078, 16.785301>,  <31.169258, 28.898832, 16.708115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948704, 28.844078, 16.785301>,  <30.581114, 28.752821, 16.913946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948704, 28.844078, 16.785301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335359, -0.023196, 0.941805,
		0.207407, -0.973351, -0.097827,
		0.918976, 0.228144, -0.321611,
		31.224396, 28.912521, 16.688818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056419, 28.275673, 17.184170>,  <30.581114, 28.752821, 16.913946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056419, 28.275673, 17.184170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247248, 28.616774, 17.099115>,  <31.361746, 28.821434, 17.048082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.247248, 28.616774, 17.099115>,  <31.056419, 28.275673, 17.184170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247248, 28.616774, 17.099115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418226, -0.007484, 0.908313,
		0.772975, -0.522261, -0.360214,
		0.477072, 0.852753, -0.212638,
		31.390369, 28.872599, 17.035324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712667, 28.151701, 17.440910>,  <31.056419, 28.275673, 17.184170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712667, 28.151701, 17.440910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668585, 28.548689, 17.419516>,  <31.642136, 28.786880, 17.406679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668585, 28.548689, 17.419516>,  <31.712667, 28.151701, 17.440910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668585, 28.548689, 17.419516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428214, 0.095975, 0.898566,
		0.896932, 0.076125, -0.435566,
		-0.110207, 0.992468, -0.053486,
		31.635523, 28.846430, 17.403469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.481613, 32.457207, 12.724027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357277, 32.832180, 12.786767>,  <28.282675, 33.057163, 12.824411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357277, 32.832180, 12.786767>,  <28.481613, 32.457207, 12.724027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357277, 32.832180, 12.786767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466987, -0.294366, 0.833829,
		0.827828, 0.185942, 0.529269,
		-0.310842, 0.937430, 0.156852,
		28.264025, 33.113407, 12.833822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517649, 32.450668, 13.442574>,  <28.481613, 32.457207, 12.724027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517649, 32.450668, 13.442574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287376, 32.750340, 13.311532>,  <28.149214, 32.930141, 13.232907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287376, 32.750340, 13.311532>,  <28.517649, 32.450668, 13.442574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287376, 32.750340, 13.311532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593098, -0.106787, 0.798017,
		0.562873, 0.653704, 0.505812,
		-0.575681, 0.749178, -0.327603,
		28.114672, 32.975094, 13.213251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542841, 33.016861, 13.924172>,  <28.517649, 32.450668, 13.442574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542841, 33.016861, 13.924172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194256, 33.064774, 13.733927>,  <27.985106, 33.093521, 13.619780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194256, 33.064774, 13.733927>,  <28.542841, 33.016861, 13.924172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194256, 33.064774, 13.733927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478371, 0.006434, 0.878134,
		0.108242, 0.992780, 0.051692,
		-0.871461, 0.119779, -0.475614,
		27.932817, 33.100708, 13.591243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156315, 33.527710, 14.265271>,  <28.542841, 33.016861, 13.924172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156315, 33.527710, 14.265271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853481, 33.361141, 14.063910>,  <27.671782, 33.261200, 13.943092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853481, 33.361141, 14.063910>,  <28.156315, 33.527710, 14.265271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853481, 33.361141, 14.063910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586279, 0.093052, 0.804748,
		-0.288271, 0.904398, -0.314587,
		-0.757085, -0.416421, -0.503405,
		27.626356, 33.236214, 13.912889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621164, 33.890919, 14.577204>,  <28.156315, 33.527710, 14.265271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621164, 33.890919, 14.577204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439142, 33.563877, 14.436094>,  <27.329929, 33.367653, 14.351428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.439142, 33.563877, 14.436094>,  <27.621164, 33.890919, 14.577204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439142, 33.563877, 14.436094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456703, -0.125802, 0.880679,
		-0.764427, 0.561870, -0.316155,
		-0.455054, -0.817604, -0.352774,
		27.302626, 33.318596, 14.330262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005587, 34.025078, 14.881612>,  <27.621164, 33.890919, 14.577204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005587, 34.025078, 14.881612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012035, 33.644146, 14.759755>,  <27.015905, 33.415588, 14.686641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012035, 33.644146, 14.759755>,  <27.005587, 34.025078, 14.881612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012035, 33.644146, 14.759755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645566, -0.242579, 0.724155,
		-0.763534, 0.184992, -0.618703,
		0.016122, -0.952330, -0.304641,
		27.016872, 33.358448, 14.668363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337347, 33.757385, 14.994760>,  <27.005587, 34.025078, 14.881612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337347, 33.757385, 14.994760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554148, 33.422134, 14.970203>,  <26.684229, 33.220982, 14.955469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554148, 33.422134, 14.970203>,  <26.337347, 33.757385, 14.994760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554148, 33.422134, 14.970203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487218, -0.372916, 0.789654,
		-0.684727, -0.398084, -0.610474,
		0.542004, -0.838131, -0.061392,
		26.716749, 33.170696, 14.951786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874340, 33.155064, 15.141515>,  <26.337347, 33.757385, 14.994760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874340, 33.155064, 15.141515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246408, 33.032799, 15.222859>,  <26.469648, 32.959442, 15.271667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246408, 33.032799, 15.222859>,  <25.874340, 33.155064, 15.141515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246408, 33.032799, 15.222859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299213, -0.310193, 0.902359,
		-0.212729, -0.900197, -0.379988,
		0.930171, -0.305655, 0.203364,
		26.525459, 32.941101, 15.283868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672047, 32.629383, 15.563614>,  <25.874340, 33.155064, 15.141515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672047, 32.629383, 15.563614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063105, 32.697880, 15.612417>,  <26.297739, 32.738979, 15.641700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063105, 32.697880, 15.612417>,  <25.672047, 32.629383, 15.563614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063105, 32.697880, 15.612417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106190, -0.098716, 0.989434,
		0.181480, -0.980271, -0.078325,
		0.977644, 0.171245, 0.122009,
		26.356398, 32.749252, 15.649020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863787, 32.071751, 15.875881>,  <25.672047, 32.629383, 15.563614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863787, 32.071751, 15.875881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115337, 32.364079, 15.982025>,  <26.266268, 32.539474, 16.045712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.115337, 32.364079, 15.982025>,  <25.863787, 32.071751, 15.875881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115337, 32.364079, 15.982025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075970, -0.281906, 0.956429,
		0.773784, -0.621637, -0.121764,
		0.628878, 0.730819, 0.265360,
		26.304001, 32.583324, 16.061634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128031, 31.774641, 16.473364>,  <25.863787, 32.071751, 15.875881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128031, 31.774641, 16.473364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.280746, 32.143414, 16.499527>,  <26.372375, 32.364677, 16.515224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.280746, 32.143414, 16.499527>,  <26.128031, 31.774641, 16.473364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280746, 32.143414, 16.499527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200860, -0.151840, 0.967781,
		0.902160, -0.356349, -0.243150,
		0.381788, 0.921933, 0.065407,
		26.395283, 32.419994, 16.519150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756607, 31.713318, 16.885916>,  <26.128031, 31.774641, 16.473364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756607, 31.713318, 16.885916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618940, 32.088066, 16.910633>,  <26.536341, 32.312916, 16.925463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618940, 32.088066, 16.910633>,  <26.756607, 31.713318, 16.885916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618940, 32.088066, 16.910633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071073, -0.039627, 0.996684,
		0.936214, 0.347419, -0.052948,
		-0.344169, 0.936872, 0.061792,
		26.515690, 32.369129, 16.929171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452339, 31.520906, 17.154596>,  <26.756607, 31.713318, 16.885916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452339, 31.520906, 17.154596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544758, 31.133556, 17.192257>,  <27.600210, 30.901146, 17.214853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544758, 31.133556, 17.192257>,  <27.452339, 31.520906, 17.154596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544758, 31.133556, 17.192257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150010, -0.131070, -0.979958,
		0.961308, 0.212293, -0.175550,
		0.231048, -0.968376, 0.094152,
		27.614073, 30.843044, 17.220503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844030, 31.336515, 16.586224>,  <27.452339, 31.520906, 17.154596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844030, 31.336515, 16.586224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691135, 30.987850, 16.708925>,  <27.599398, 30.778650, 16.782545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691135, 30.987850, 16.708925>,  <27.844030, 31.336515, 16.586224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691135, 30.987850, 16.708925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127441, -0.279062, -0.951779,
		0.915234, -0.402898, -0.004418,
		-0.382237, -0.871663, 0.306753,
		27.576464, 30.726351, 16.800951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152346, 30.893444, 16.088198>,  <27.844030, 31.336515, 16.586224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152346, 30.893444, 16.088198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830227, 30.699890, 16.225225>,  <27.636955, 30.583757, 16.307442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.830227, 30.699890, 16.225225>,  <28.152346, 30.893444, 16.088198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830227, 30.699890, 16.225225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210512, -0.306792, -0.928205,
		0.554243, -0.819593, 0.145194,
		-0.805295, -0.483886, 0.342571,
		27.588638, 30.554724, 16.327997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250469, 30.133621, 16.003006>,  <28.152346, 30.893444, 16.088198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250469, 30.133621, 16.003006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854042, 30.186312, 16.011354>,  <27.616186, 30.217926, 16.016363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854042, 30.186312, 16.011354>,  <28.250469, 30.133621, 16.003006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854042, 30.186312, 16.011354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091007, -0.553558, -0.827823,
		-0.097492, -0.822327, 0.560601,
		-0.991067, 0.131725, 0.020870,
		27.556723, 30.225828, 16.017616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976091, 29.394451, 16.046663>,  <28.250469, 30.133621, 16.003006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976091, 29.394451, 16.046663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668776, 29.624134, 15.933516>,  <27.484386, 29.761944, 15.865627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668776, 29.624134, 15.933516>,  <27.976091, 29.394451, 16.046663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668776, 29.624134, 15.933516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126441, -0.569345, -0.812317,
		-0.627492, -0.588327, 0.510025,
		-0.768288, 0.574211, -0.282871,
		27.438290, 29.796396, 15.848655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557571, 28.921055, 15.803736>,  <27.976091, 29.394451, 16.046663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557571, 28.921055, 15.803736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450508, 29.262455, 15.624898>,  <27.386271, 29.467295, 15.517595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450508, 29.262455, 15.624898>,  <27.557571, 28.921055, 15.803736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450508, 29.262455, 15.624898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115569, -0.489114, -0.864529,
		-0.956558, -0.179727, 0.229553,
		-0.267657, 0.853502, -0.447096,
		27.370211, 29.518505, 15.490769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983370, 28.722368, 15.485528>,  <27.557571, 28.921055, 15.803736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983370, 28.722368, 15.485528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085554, 29.064041, 15.304371>,  <27.146864, 29.269045, 15.195677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085554, 29.064041, 15.304371>,  <26.983370, 28.722368, 15.485528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085554, 29.064041, 15.304371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296867, -0.376503, -0.877562,
		-0.920114, 0.358631, 0.157398,
		0.255460, 0.854183, -0.452892,
		27.162191, 29.320295, 15.168504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374273, 28.837114, 15.006576>,  <26.983370, 28.722368, 15.485528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374273, 28.837114, 15.006576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712669, 29.026091, 14.907701>,  <26.915707, 29.139477, 14.848375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712669, 29.026091, 14.907701>,  <26.374273, 28.837114, 15.006576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712669, 29.026091, 14.907701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053238, -0.386431, -0.920780,
		-0.530535, 0.792131, -0.301765,
		0.845990, 0.472440, -0.247187,
		26.966467, 29.167822, 14.833545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169174, 29.075575, 14.410505>,  <26.374273, 28.837114, 15.006576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169174, 29.075575, 14.410505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568722, 29.087307, 14.395529>,  <26.808451, 29.094347, 14.386542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568722, 29.087307, 14.395529>,  <26.169174, 29.075575, 14.410505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568722, 29.087307, 14.395529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019646, -0.462503, -0.886400,
		-0.043315, 0.886132, -0.461404,
		0.998868, 0.029330, -0.037442,
		26.868382, 29.096106, 14.384296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321140, 29.402586, 13.739746>,  <26.169174, 29.075575, 14.410505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321140, 29.402586, 13.739746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643112, 29.197950, 13.859987>,  <26.836296, 29.075169, 13.932132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643112, 29.197950, 13.859987>,  <26.321140, 29.402586, 13.739746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643112, 29.197950, 13.859987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133964, -0.336842, -0.931982,
		0.578050, 0.790450, -0.202600,
		0.804930, -0.511591, 0.300603,
		26.884592, 29.044474, 13.950169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796515, 29.512482, 13.249435>,  <26.321140, 29.402586, 13.739746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796515, 29.512482, 13.249435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938950, 29.176893, 13.414035>,  <27.024410, 28.975540, 13.512794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938950, 29.176893, 13.414035>,  <26.796515, 29.512482, 13.249435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938950, 29.176893, 13.414035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063518, -0.417613, -0.906402,
		0.932291, 0.348897, -0.095417,
		0.356088, -0.838970, 0.411498,
		27.045776, 28.925201, 13.537484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312967, 29.227629, 12.781045>,  <26.796515, 29.512482, 13.249435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312967, 29.227629, 12.781045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239828, 28.935701, 13.044540>,  <27.195946, 28.760546, 13.202638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239828, 28.935701, 13.044540>,  <27.312967, 29.227629, 12.781045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239828, 28.935701, 13.044540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170258, -0.683416, -0.709898,
		0.968287, -0.017646, 0.249217,
		-0.182846, -0.729816, 0.658738,
		27.184975, 28.716757, 13.242162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876247, 28.815300, 12.704868>,  <27.312967, 29.227629, 12.781045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876247, 28.815300, 12.704868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558382, 28.605206, 12.826615>,  <27.367662, 28.479149, 12.899664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558382, 28.605206, 12.826615>,  <27.876247, 28.815300, 12.704868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558382, 28.605206, 12.826615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234228, -0.727852, -0.644491,
		0.560045, -0.440860, 0.701421,
		-0.794661, -0.525236, 0.304369,
		27.319984, 28.447634, 12.917926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056473, 28.158220, 12.831251>,  <27.876247, 28.815300, 12.704868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056473, 28.158220, 12.831251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666067, 28.155813, 12.744199>,  <27.431824, 28.154369, 12.691967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666067, 28.155813, 12.744199>,  <28.056473, 28.158220, 12.831251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666067, 28.155813, 12.744199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, -0.600610, -0.779583,
		-0.126020, -0.799519, 0.587271,
		-0.976012, -0.006019, -0.217631,
		27.373264, 28.154007, 12.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545933, 28.328358, 13.361453>,  <28.056473, 28.158220, 12.831251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545933, 28.328358, 13.361453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879194, 28.258844, 13.151442>,  <29.079151, 28.217136, 13.025434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879194, 28.258844, 13.151442>,  <28.545933, 28.328358, 13.361453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879194, 28.258844, 13.151442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548185, 0.385052, 0.742447,
		0.073137, -0.906385, 0.416073,
		0.833153, -0.173785, -0.525029,
		29.129141, 28.206709, 12.993933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866993, 27.884680, 13.783031>,  <28.545933, 28.328358, 13.361453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866993, 27.884680, 13.783031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135391, 28.062166, 13.545416>,  <29.296431, 28.168657, 13.402847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135391, 28.062166, 13.545416>,  <28.866993, 27.884680, 13.783031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135391, 28.062166, 13.545416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614631, 0.115257, 0.780349,
		0.414719, -0.888726, -0.195384,
		0.670997, 0.443715, -0.594037,
		29.336691, 28.195280, 13.367205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517450, 27.525152, 13.892050>,  <28.866993, 27.884680, 13.783031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517450, 27.525152, 13.892050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603495, 27.879314, 13.727232>,  <29.655121, 28.091812, 13.628342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603495, 27.879314, 13.727232>,  <29.517450, 27.525152, 13.892050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603495, 27.879314, 13.727232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601814, 0.212106, 0.769955,
		0.769121, -0.413599, -0.487225,
		0.215110, 0.885408, -0.412045,
		29.668028, 28.144938, 13.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145220, 27.534948, 14.016349>,  <29.517450, 27.525152, 13.892050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145220, 27.534948, 14.016349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071447, 27.920504, 13.939504>,  <30.027184, 28.151836, 13.893396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071447, 27.920504, 13.939504>,  <30.145220, 27.534948, 14.016349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071447, 27.920504, 13.939504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478825, 0.258819, 0.838892,
		0.858319, 0.062728, -0.509268,
		-0.184430, 0.963887, -0.192113,
		30.016119, 28.209669, 13.881869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871336, 27.962599, 14.049420>,  <30.145220, 27.534948, 14.016349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871336, 27.962599, 14.049420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.590036, 28.245544, 14.077927>,  <30.421257, 28.415312, 14.095031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.590036, 28.245544, 14.077927>,  <30.871336, 27.962599, 14.049420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590036, 28.245544, 14.077927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449010, 0.364192, 0.815937,
		0.551210, 0.605805, -0.573731,
		-0.703248, 0.707364, 0.071267,
		30.379063, 28.457754, 14.099307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202793, 28.591034, 13.925487>,  <30.871336, 27.962599, 14.049420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202793, 28.591034, 13.925487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868502, 28.619030, 14.143353>,  <30.667927, 28.635828, 14.274074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.868502, 28.619030, 14.143353>,  <31.202793, 28.591034, 13.925487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868502, 28.619030, 14.143353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523270, 0.402368, 0.751192,
		-0.166581, 0.912799, -0.372893,
		-0.835727, 0.069989, 0.544667,
		30.617785, 28.640026, 14.306753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209358, 29.263739, 14.203763>,  <31.202793, 28.591034, 13.925487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209358, 29.263739, 14.203763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.963863, 29.047026, 14.433475>,  <30.816566, 28.916998, 14.571303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.963863, 29.047026, 14.433475>,  <31.209358, 29.263739, 14.203763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963863, 29.047026, 14.433475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533755, 0.251245, 0.807454,
		-0.581748, 0.802091, 0.134979,
		-0.613739, -0.541780, 0.574281,
		30.779741, 28.884491, 14.605760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779861, 29.716259, 13.729192>,  <31.209358, 29.263739, 14.203763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779861, 29.716259, 13.729192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076460, 29.982725, 13.761218>,  <31.254419, 30.142605, 13.780434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076460, 29.982725, 13.761218>,  <30.779861, 29.716259, 13.729192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076460, 29.982725, 13.761218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057915, 0.055340, -0.996786,
		-0.668455, 0.743749, 0.002454,
		0.741494, 0.666165, 0.080067,
		31.298908, 30.182575, 13.785238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618256, 30.258001, 13.369850>,  <30.779861, 29.716259, 13.729192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618256, 30.258001, 13.369850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.017218, 30.272760, 13.394565>,  <31.256596, 30.281616, 13.409393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.017218, 30.272760, 13.394565>,  <30.618256, 30.258001, 13.369850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017218, 30.272760, 13.394565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057148, 0.115716, -0.991637,
		-0.043740, 0.992597, 0.113307,
		0.997407, 0.036899, 0.061786,
		31.316441, 30.283831, 13.413100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763023, 30.752617, 12.899776>,  <30.618256, 30.258001, 13.369850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763023, 30.752617, 12.899776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121178, 30.580860, 12.946953>,  <31.336069, 30.477806, 12.975259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.121178, 30.580860, 12.946953>,  <30.763023, 30.752617, 12.899776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121178, 30.580860, 12.946953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275951, 0.327178, -0.903773,
		0.349484, 0.841770, 0.411441,
		0.895384, -0.429392, 0.117943,
		31.389793, 30.452042, 12.982336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220949, 31.294182, 12.719832>,  <30.763023, 30.752617, 12.899776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220949, 31.294182, 12.719832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433006, 30.955177, 12.709452>,  <31.560240, 30.751774, 12.703223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433006, 30.955177, 12.709452>,  <31.220949, 31.294182, 12.719832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433006, 30.955177, 12.709452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401858, 0.278090, -0.872454,
		0.746632, 0.452096, 0.488007,
		0.530142, -0.847511, -0.025952,
		31.592049, 30.700924, 12.701666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917528, 31.518681, 12.719511>,  <31.220949, 31.294182, 12.719832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917528, 31.518681, 12.719511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871014, 31.164091, 12.540339>,  <31.843105, 30.951338, 12.432837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871014, 31.164091, 12.540339>,  <31.917528, 31.518681, 12.719511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871014, 31.164091, 12.540339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331485, 0.390490, -0.858857,
		0.936267, -0.248354, 0.248444,
		-0.116286, -0.886475, -0.447928,
		31.836128, 30.898149, 12.405961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526352, 31.516321, 12.281528>,  <31.917528, 31.518681, 12.719511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526352, 31.516321, 12.281528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294357, 31.215511, 12.156261>,  <32.155159, 31.035025, 12.081101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.294357, 31.215511, 12.156261>,  <32.526352, 31.516321, 12.281528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294357, 31.215511, 12.156261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293619, 0.165605, -0.941468,
		0.759870, -0.637991, 0.124759,
		-0.579988, -0.752025, -0.313165,
		32.120361, 30.989904, 12.062312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881840, 30.929541, 11.946478>,  <32.526352, 31.516321, 12.281528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881840, 30.929541, 11.946478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508850, 30.943281, 11.802638>,  <32.285057, 30.951527, 11.716334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.508850, 30.943281, 11.802638>,  <32.881840, 30.929541, 11.946478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508850, 30.943281, 11.802638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359437, -0.010996, -0.933105,
		-0.036016, -0.999349, -0.002097,
		-0.932474, 0.034361, -0.359599,
		32.229107, 30.953587, 11.694758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888187, 30.494389, 11.418526>,  <32.881840, 30.929541, 11.946478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888187, 30.494389, 11.418526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.538826, 30.669964, 11.334143>,  <32.329208, 30.775309, 11.283513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.538826, 30.669964, 11.334143>,  <32.888187, 30.494389, 11.418526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538826, 30.669964, 11.334143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277440, 0.092451, -0.956284,
		-0.400249, -0.893747, -0.202526,
		-0.873400, 0.438941, -0.210958,
		32.276806, 30.801645, 11.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528046, 30.129595, 10.859410>,  <32.888187, 30.494389, 11.418526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528046, 30.129595, 10.859410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418709, 30.513866, 10.878900>,  <32.353104, 30.744431, 10.890594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418709, 30.513866, 10.878900>,  <32.528046, 30.129595, 10.859410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418709, 30.513866, 10.878900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399080, 0.159348, -0.902964,
		-0.875224, -0.227378, -0.426945,
		-0.273347, 0.960681, 0.048724,
		32.336704, 30.802071, 10.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.337124, 33.544006, 26.968283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077698, 33.756069, 26.749819>,  <32.922043, 33.883308, 26.618740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077698, 33.756069, 26.749819>,  <33.337124, 33.544006, 26.968283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077698, 33.756069, 26.749819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092282, -0.657479, -0.747800,
		-0.755542, -0.535400, 0.377495,
		-0.648567, 0.530158, -0.546162,
		32.883125, 33.915115, 26.585970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842590, 33.086628, 26.510742>,  <33.337124, 33.544006, 26.968283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842590, 33.086628, 26.510742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904072, 33.446590, 26.347504>,  <32.940960, 33.662567, 26.249561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904072, 33.446590, 26.347504>,  <32.842590, 33.086628, 26.510742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904072, 33.446590, 26.347504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062316, -0.421008, -0.904914,
		-0.986150, 0.113656, -0.120788,
		0.153702, 0.899908, -0.408095,
		32.950184, 33.716564, 26.225075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463345, 33.134254, 25.928541>,  <32.842590, 33.086628, 26.510742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463345, 33.134254, 25.928541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778248, 33.368645, 25.851740>,  <32.967190, 33.509277, 25.805660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778248, 33.368645, 25.851740>,  <32.463345, 33.134254, 25.928541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778248, 33.368645, 25.851740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049128, -0.369987, -0.927737,
		-0.614667, 0.720933, -0.320062,
		0.787255, 0.585973, -0.192001,
		33.014423, 33.544437, 25.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315292, 33.234173, 25.234716>,  <32.463345, 33.134254, 25.928541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315292, 33.234173, 25.234716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672123, 33.410793, 25.273167>,  <32.886219, 33.516766, 25.296236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672123, 33.410793, 25.273167>,  <32.315292, 33.234173, 25.234716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672123, 33.410793, 25.273167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259796, -0.327072, -0.908587,
		-0.369746, 0.835499, -0.406485,
		0.892073, 0.441549, 0.096126,
		32.939743, 33.543259, 25.302004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408932, 33.674259, 24.651865>,  <32.315292, 33.234173, 25.234716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408932, 33.674259, 24.651865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782497, 33.579525, 24.758986>,  <33.006638, 33.522682, 24.823257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782497, 33.579525, 24.758986>,  <32.408932, 33.674259, 24.651865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782497, 33.579525, 24.758986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196335, -0.286231, -0.937830,
		0.298768, 0.928428, -0.220815,
		0.933911, -0.236840, 0.267799,
		33.062672, 33.508472, 24.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851280, 34.062599, 24.293871>,  <32.408932, 33.674259, 24.651865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851280, 34.062599, 24.293871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104591, 33.781078, 24.422636>,  <33.256577, 33.612167, 24.499895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104591, 33.781078, 24.422636>,  <32.851280, 34.062599, 24.293871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104591, 33.781078, 24.422636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400181, -0.058241, -0.914584,
		0.662432, 0.708007, 0.244765,
		0.633276, -0.703800, 0.321912,
		33.294575, 33.569939, 24.519209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439491, 34.208206, 23.988178>,  <32.851280, 34.062599, 24.293871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439491, 34.208206, 23.988178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452526, 33.824078, 24.098976>,  <33.460346, 33.593601, 24.165455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452526, 33.824078, 24.098976>,  <33.439491, 34.208206, 23.988178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452526, 33.824078, 24.098976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141351, -0.269928, -0.952449,
		0.989423, 0.070189, 0.126946,
		0.032585, -0.960319, 0.276994,
		33.462303, 33.535980, 24.182074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029091, 33.992344, 23.718266>,  <33.439491, 34.208206, 23.988178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029091, 33.992344, 23.718266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852253, 33.637203, 23.769285>,  <33.746151, 33.424118, 23.799896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852253, 33.637203, 23.769285>,  <34.029091, 33.992344, 23.718266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852253, 33.637203, 23.769285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353718, -0.303244, -0.884832,
		0.824278, -0.346065, 0.448112,
		-0.442096, -0.887853, 0.127548,
		33.719624, 33.370846, 23.807550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480610, 33.469254, 23.420923>,  <34.029091, 33.992344, 23.718266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480610, 33.469254, 23.420923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136379, 33.267117, 23.446331>,  <33.929840, 33.145832, 23.461576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136379, 33.267117, 23.446331>,  <34.480610, 33.469254, 23.420923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136379, 33.267117, 23.446331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195866, -0.443484, -0.874619,
		0.470156, -0.740234, 0.480632,
		-0.860576, -0.505347, 0.063520,
		33.878208, 33.115513, 23.465387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664322, 32.824780, 23.213339>,  <34.480610, 33.469254, 23.420923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664322, 32.824780, 23.213339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271709, 32.877071, 23.157478>,  <34.036140, 32.908447, 23.123962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271709, 32.877071, 23.157478>,  <34.664322, 32.824780, 23.213339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271709, 32.877071, 23.157478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061813, -0.474108, -0.878294,
		-0.181031, -0.870707, 0.457272,
		-0.981533, 0.130733, -0.139650,
		33.977249, 32.916290, 23.115583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476967, 32.129108, 23.026743>,  <34.664322, 32.824780, 23.213339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476967, 32.129108, 23.026743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203541, 32.381615, 22.880184>,  <34.039486, 32.533119, 22.792250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203541, 32.381615, 22.880184>,  <34.476967, 32.129108, 23.026743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203541, 32.381615, 22.880184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031306, -0.526879, -0.849363,
		-0.729222, -0.569121, 0.379916,
		-0.683561, 0.631268, -0.366395,
		33.998474, 32.570995, 22.770266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947598, 31.700159, 22.640594>,  <34.476967, 32.129108, 23.026743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947598, 31.700159, 22.640594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908424, 32.067505, 22.487225>,  <33.884918, 32.287914, 22.395203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908424, 32.067505, 22.487225>,  <33.947598, 31.700159, 22.640594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908424, 32.067505, 22.487225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043164, -0.380995, -0.923569,
		-0.994256, -0.107000, -0.002328,
		-0.097935, 0.918365, -0.383425,
		33.879044, 32.343014, 22.372196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238426, 31.350296, 22.865107>,  <33.947598, 31.700159, 22.640594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238426, 31.350296, 22.865107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165768, 30.962332, 22.929953>,  <33.122173, 30.729553, 22.968861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165768, 30.962332, 22.929953>,  <33.238426, 31.350296, 22.865107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165768, 30.962332, 22.929953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050747, 0.173885, 0.983457,
		-0.982054, 0.170410, -0.080805,
		-0.181642, -0.969909, 0.162117,
		33.111275, 30.671358, 22.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516678, 31.335888, 23.103870>,  <33.238426, 31.350296, 22.865107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516678, 31.335888, 23.103870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712654, 31.003616, 23.209646>,  <32.830238, 30.804253, 23.273111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712654, 31.003616, 23.209646>,  <32.516678, 31.335888, 23.103870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712654, 31.003616, 23.209646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099223, 0.248231, 0.963606,
		-0.866090, -0.498349, 0.039196,
		0.489942, -0.830680, 0.264438,
		32.859638, 30.754412, 23.288977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089863, 30.961594, 23.621092>,  <32.516678, 31.335888, 23.103870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089863, 30.961594, 23.621092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465504, 30.834383, 23.673170>,  <32.690887, 30.758057, 23.704416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465504, 30.834383, 23.673170>,  <32.089863, 30.961594, 23.621092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465504, 30.834383, 23.673170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121889, 0.045969, 0.991479,
		-0.321301, -0.946967, 0.004406,
		0.939100, -0.318026, 0.130194,
		32.747234, 30.738976, 23.712229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987410, 30.564730, 24.110523>,  <32.089863, 30.961594, 23.621092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987410, 30.564730, 24.110523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383934, 30.616964, 24.116848>,  <32.621849, 30.648306, 24.120642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383934, 30.616964, 24.116848>,  <31.987410, 30.564730, 24.110523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383934, 30.616964, 24.116848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031603, 0.119774, 0.992298,
		0.127711, -0.984172, 0.122861,
		0.991307, 0.130611, 0.015806,
		32.681328, 30.656139, 24.121592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264709, 30.161282, 24.647055>,  <31.987410, 30.564730, 24.110523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264709, 30.161282, 24.647055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582619, 30.397795, 24.592318>,  <32.773365, 30.539703, 24.559475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582619, 30.397795, 24.592318>,  <32.264709, 30.161282, 24.647055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582619, 30.397795, 24.592318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008325, 0.236072, 0.971700,
		0.606853, -0.771139, 0.192546,
		0.794770, 0.591282, -0.136841,
		32.821049, 30.575180, 24.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793457, 29.833914, 24.905418>,  <32.264709, 30.161282, 24.647055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793457, 29.833914, 24.905418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845100, 30.230160, 24.923363>,  <32.876087, 30.467907, 24.934130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845100, 30.230160, 24.923363>,  <32.793457, 29.833914, 24.905418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845100, 30.230160, 24.923363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023134, -0.048234, 0.998568,
		0.991360, -0.127890, -0.029144,
		0.129113, 0.990615, 0.044859,
		32.883835, 30.527344, 24.936821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102684, 29.783216, 25.445560>,  <32.793457, 29.833914, 24.905418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102684, 29.783216, 25.445560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051208, 30.179190, 25.421993>,  <33.020325, 30.416773, 25.407852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051208, 30.179190, 25.421993>,  <33.102684, 29.783216, 25.445560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051208, 30.179190, 25.421993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014767, 0.061319, 0.998009,
		0.991575, 0.127564, -0.022510,
		-0.128690, 0.989933, -0.058919,
		33.012600, 30.476170, 25.404318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557095, 30.164331, 25.870058>,  <33.102684, 29.783216, 25.445560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557095, 30.164331, 25.870058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259216, 30.426901, 25.821827>,  <33.080490, 30.584442, 25.792889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259216, 30.426901, 25.821827>,  <33.557095, 30.164331, 25.870058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259216, 30.426901, 25.821827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099560, 0.287908, 0.952469,
		0.659937, 0.697294, -0.279758,
		-0.744695, 0.656422, -0.120579,
		33.035809, 30.623827, 25.785654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838753, 30.729486, 26.102821>,  <33.557095, 30.164331, 25.870058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838753, 30.729486, 26.102821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444023, 30.790270, 26.125038>,  <33.207184, 30.826740, 26.138369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444023, 30.790270, 26.125038>,  <33.838753, 30.729486, 26.102821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444023, 30.790270, 26.125038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110584, 0.382927, 0.917135,
		0.118099, 0.911194, -0.394687,
		-0.986825, 0.151959, 0.055540,
		33.147976, 30.835857, 26.141701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771976, 31.423138, 26.394669>,  <33.838753, 30.729486, 26.102821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771976, 31.423138, 26.394669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425087, 31.235563, 26.461620>,  <33.216953, 31.123018, 26.501791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425087, 31.235563, 26.461620>,  <33.771976, 31.423138, 26.394669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425087, 31.235563, 26.461620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052262, 0.420032, 0.906003,
		-0.495161, 0.776964, -0.388771,
		-0.867228, -0.468936, 0.167378,
		33.164917, 31.094883, 26.511833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530872, 31.819153, 26.897547>,  <33.771976, 31.423138, 26.394669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530872, 31.819153, 26.897547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266914, 31.520525, 26.931406>,  <33.108540, 31.341349, 26.951721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266914, 31.520525, 26.931406>,  <33.530872, 31.819153, 26.897547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266914, 31.520525, 26.931406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263618, 0.335557, 0.904382,
		-0.703590, 0.574485, -0.418243,
		-0.659898, -0.746571, 0.084649,
		33.068943, 31.296553, 26.956800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846542, 32.165062, 27.024515>,  <33.530872, 31.819153, 26.897547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846542, 32.165062, 27.024515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845901, 31.787266, 27.155926>,  <32.845516, 31.560587, 27.234772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.845901, 31.787266, 27.155926>,  <32.846542, 32.165062, 27.024515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845901, 31.787266, 27.155926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378660, 0.304634, 0.873965,
		-0.925535, -0.123003, -0.358128,
		-0.001597, -0.944494, 0.328526,
		32.845421, 31.503918, 27.254484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383934, 32.165424, 27.446087>,  <32.846542, 32.165062, 27.024515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383934, 32.165424, 27.446087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560234, 31.826797, 27.565466>,  <32.666012, 31.623623, 27.637093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560234, 31.826797, 27.565466>,  <32.383934, 32.165424, 27.446087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560234, 31.826797, 27.565466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279571, 0.186482, 0.941841,
		-0.852984, -0.498552, -0.154483,
		0.440748, -0.846564, 0.298447,
		32.692459, 31.572828, 27.655001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918177, 31.807037, 27.749855>,  <32.383934, 32.165424, 27.446087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918177, 31.807037, 27.749855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258263, 31.675179, 27.914036>,  <32.462315, 31.596064, 28.012545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258263, 31.675179, 27.914036>,  <31.918177, 31.807037, 27.749855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258263, 31.675179, 27.914036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384034, 0.144918, 0.911875,
		-0.360079, -0.932916, -0.003384,
		0.850212, -0.329647, 0.410454,
		32.513325, 31.576284, 28.037172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272879, 32.184731, 27.454599>,  <31.918177, 31.807037, 27.749855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272879, 32.184731, 27.454599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965294, 32.229000, 27.706457>,  <30.780743, 32.255562, 27.857573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965294, 32.229000, 27.706457>,  <31.272879, 32.184731, 27.454599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965294, 32.229000, 27.706457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600773, -0.461828, -0.652523,
		0.218569, -0.880038, 0.421618,
		-0.768960, 0.110675, 0.629644,
		30.734606, 32.262203, 27.895350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876715, 31.586088, 27.463150>,  <31.272879, 32.184731, 27.454599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876715, 31.586088, 27.463150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.640497, 31.885811, 27.583015>,  <30.498766, 32.065643, 27.654936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.640497, 31.885811, 27.583015>,  <30.876715, 31.586088, 27.463150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640497, 31.885811, 27.583015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708977, -0.304335, -0.636185,
		-0.385500, -0.588149, 0.710965,
		-0.590543, 0.749307, 0.299663,
		30.463333, 32.110603, 27.672915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174690, 31.309381, 27.672323>,  <30.876715, 31.586088, 27.463150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174690, 31.309381, 27.672323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.162239, 31.681713, 27.526672>,  <30.154768, 31.905111, 27.439281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.162239, 31.681713, 27.526672>,  <30.174690, 31.309381, 27.672323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162239, 31.681713, 27.526672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694170, -0.282245, -0.662168,
		-0.719138, 0.232153, 0.654940,
		-0.031129, 0.930829, -0.364126,
		30.152901, 31.960962, 27.417435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422091, 31.452923, 27.577272>,  <30.174690, 31.309381, 27.672323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422091, 31.452923, 27.577272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617781, 31.705187, 27.336298>,  <29.735195, 31.856544, 27.191713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617781, 31.705187, 27.336298>,  <29.422091, 31.452923, 27.577272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617781, 31.705187, 27.336298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755003, -0.039551, -0.654527,
		-0.436610, 0.775052, 0.456801,
		0.489225, 0.630659, -0.602435,
		29.764549, 31.894384, 27.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024454, 31.494944, 27.043316>,  <29.422091, 31.452923, 27.577272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024454, 31.494944, 27.043316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319378, 31.690144, 26.856455>,  <29.496332, 31.807262, 26.744339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319378, 31.690144, 26.856455>,  <29.024454, 31.494944, 27.043316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319378, 31.690144, 26.856455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442398, -0.173817, -0.879813,
		-0.510546, 0.855363, 0.087733,
		0.737310, 0.487998, -0.467152,
		29.540571, 31.836542, 26.716309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720442, 31.903875, 26.483809>,  <29.024454, 31.494944, 27.043316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720442, 31.903875, 26.483809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104797, 31.851816, 26.386032>,  <29.335411, 31.820581, 26.327366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104797, 31.851816, 26.386032>,  <28.720442, 31.903875, 26.483809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104797, 31.851816, 26.386032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267845, -0.212540, -0.939726,
		0.070349, 0.968446, -0.239087,
		0.960890, -0.130147, -0.244441,
		29.393064, 31.812773, 26.312700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891506, 32.426128, 25.885553>,  <28.720442, 31.903875, 26.483809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891506, 32.426128, 25.885553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.113060, 32.093750, 25.864618>,  <29.245993, 31.894323, 25.852058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.113060, 32.093750, 25.864618>,  <28.891506, 32.426128, 25.885553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113060, 32.093750, 25.864618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227584, -0.090636, -0.969531,
		0.800886, 0.548918, -0.239312,
		0.553884, -0.830948, -0.052336,
		29.279224, 31.844465, 25.848917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225164, 32.510944, 25.250900>,  <28.891506, 32.426128, 25.885553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225164, 32.510944, 25.250900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284399, 32.126556, 25.344366>,  <29.319941, 31.895922, 25.400446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284399, 32.126556, 25.344366>,  <29.225164, 32.510944, 25.250900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284399, 32.126556, 25.344366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254673, -0.191248, -0.947927,
		0.955621, 0.199883, 0.216413,
		0.148086, -0.960974, 0.233665,
		29.328825, 31.838264, 25.414465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751305, 32.246437, 24.872948>,  <29.225164, 32.510944, 25.250900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751305, 32.246437, 24.872948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.593752, 31.898241, 24.990999>,  <29.499220, 31.689323, 25.061831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.593752, 31.898241, 24.990999>,  <29.751305, 32.246437, 24.872948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593752, 31.898241, 24.990999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017242, -0.328026, -0.944511,
		0.918999, -0.366938, 0.144213,
		-0.393883, -0.870491, 0.295129,
		29.475588, 31.637094, 25.079538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113716, 31.702211, 24.496210>,  <29.751305, 32.246437, 24.872948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113716, 31.702211, 24.496210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773502, 31.518757, 24.599159>,  <29.569374, 31.408684, 24.660929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.773502, 31.518757, 24.599159>,  <30.113716, 31.702211, 24.496210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773502, 31.518757, 24.599159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043081, -0.426978, -0.903235,
		0.524151, -0.779321, 0.343401,
		-0.850535, -0.458638, 0.257374,
		29.518341, 31.381166, 24.676371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147682, 31.017160, 24.276299>,  <30.113716, 31.702211, 24.496210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147682, 31.017160, 24.276299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756361, 31.090628, 24.314653>,  <29.521568, 31.134708, 24.337666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756361, 31.090628, 24.314653>,  <30.147682, 31.017160, 24.276299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756361, 31.090628, 24.314653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152357, -0.324096, -0.933675,
		-0.140407, -0.928024, 0.345046,
		-0.978301, 0.183665, 0.095886,
		29.462872, 31.145727, 24.343418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808691, 30.473507, 23.956585>,  <30.147682, 31.017160, 24.276299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808691, 30.473507, 23.956585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.512190, 30.741976, 23.959944>,  <29.334290, 30.903057, 23.961958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.512190, 30.741976, 23.959944>,  <29.808691, 30.473507, 23.956585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512190, 30.741976, 23.959944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381083, -0.410511, -0.828406,
		-0.552560, -0.617256, 0.560065,
		-0.741251, 0.671175, 0.008394,
		29.289814, 30.943329, 23.962461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162174, 30.079111, 23.816608>,  <29.808691, 30.473507, 23.956585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162174, 30.079111, 23.816608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126904, 30.459965, 23.699532>,  <29.105742, 30.688477, 23.629286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126904, 30.459965, 23.699532>,  <29.162174, 30.079111, 23.816608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126904, 30.459965, 23.699532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346052, -0.304814, -0.887320,
		-0.934063, 0.023046, 0.356365,
		-0.088175, 0.952133, -0.292690,
		29.100451, 30.745605, 23.611725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485388, 30.156433, 23.610518>,  <29.162174, 30.079111, 23.816608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485388, 30.156433, 23.610518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.627150, 30.481079, 23.424751>,  <28.712206, 30.675867, 23.313292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.627150, 30.481079, 23.424751>,  <28.485388, 30.156433, 23.610518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627150, 30.481079, 23.424751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454078, -0.284793, -0.844219,
		-0.817442, 0.510075, 0.267604,
		0.354403, 0.811613, -0.464416,
		28.733471, 30.724564, 23.285427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940891, 30.359325, 23.070423>,  <28.485388, 30.156433, 23.610518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940891, 30.359325, 23.070423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235691, 30.600212, 22.947678>,  <28.412571, 30.744745, 22.874031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.235691, 30.600212, 22.947678>,  <27.940891, 30.359325, 23.070423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235691, 30.600212, 22.947678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326873, -0.079815, -0.941692,
		-0.591597, 0.794331, 0.138026,
		0.736999, 0.602219, -0.306863,
		28.456791, 30.780878, 22.855619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728302, 30.766329, 22.441107>,  <27.940891, 30.359325, 23.070423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728302, 30.766329, 22.441107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.118477, 30.853559, 22.428665>,  <28.352581, 30.905897, 22.421200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.118477, 30.853559, 22.428665>,  <27.728302, 30.766329, 22.441107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118477, 30.853559, 22.428665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026531, -0.023857, -0.999363,
		-0.218678, 0.975640, -0.017485,
		0.975436, 0.218074, -0.031102,
		28.411108, 30.918982, 22.419334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850235, 31.460108, 22.039948>,  <27.728302, 30.766329, 22.441107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850235, 31.460108, 22.039948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.172098, 31.222689, 22.033878>,  <28.365215, 31.080238, 22.030237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.172098, 31.222689, 22.033878>,  <27.850235, 31.460108, 22.039948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172098, 31.222689, 22.033878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069078, 0.118967, -0.990492,
		0.589708, 0.795959, 0.136728,
		0.804657, -0.593546, -0.015173,
		28.413496, 31.044624, 22.029327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297644, 31.808729, 21.650448>,  <27.850235, 31.460108, 22.039948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297644, 31.808729, 21.650448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430195, 31.431372, 21.644882>,  <28.509726, 31.204956, 21.641542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.430195, 31.431372, 21.644882>,  <28.297644, 31.808729, 21.650448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430195, 31.431372, 21.644882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011672, 0.018847, -0.999754,
		0.943426, 0.331134, 0.017257,
		0.331378, -0.943395, -0.013916,
		28.529608, 31.148354, 21.640707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830236, 31.837473, 21.196392>,  <28.297644, 31.808729, 21.650448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830236, 31.837473, 21.196392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673515, 31.469994, 21.216314>,  <28.579483, 31.249506, 21.228268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673515, 31.469994, 21.216314>,  <28.830236, 31.837473, 21.196392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673515, 31.469994, 21.216314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013885, -0.048222, -0.998740,
		0.919944, -0.392002, 0.006137,
		-0.391804, -0.918700, 0.049805,
		28.555975, 31.194384, 21.231256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122084, 31.598059, 20.484222>,  <28.830236, 31.837473, 21.196392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122084, 31.598059, 20.484222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.861183, 31.318483, 20.601566>,  <28.704643, 31.150738, 20.671972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.861183, 31.318483, 20.601566>,  <29.122084, 31.598059, 20.484222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861183, 31.318483, 20.601566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286345, -0.131145, -0.949109,
		0.701839, -0.703057, -0.114597,
		-0.652249, -0.698936, 0.293359,
		28.665508, 31.108803, 20.689573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290211, 31.045166, 20.029261>,  <29.122084, 31.598059, 20.484222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290211, 31.045166, 20.029261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.928303, 30.955276, 20.173979>,  <28.711159, 30.901342, 20.260809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.928303, 30.955276, 20.173979>,  <29.290211, 31.045166, 20.029261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928303, 30.955276, 20.173979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345521, -0.109381, -0.932015,
		0.249018, -0.968264, 0.021318,
		-0.904768, -0.224723, 0.361793,
		28.656872, 30.887859, 20.282516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192822, 30.380476, 19.791924>,  <29.290211, 31.045166, 20.029261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192822, 30.380476, 19.791924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840055, 30.554056, 19.865582>,  <28.628395, 30.658205, 19.909777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840055, 30.554056, 19.865582>,  <29.192822, 30.380476, 19.791924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840055, 30.554056, 19.865582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260880, -0.123919, -0.957385,
		-0.392640, -0.892373, 0.222495,
		-0.881916, 0.433952, 0.184147,
		28.575481, 30.684240, 19.920826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780825, 30.054094, 19.447756>,  <29.192822, 30.380476, 19.791924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780825, 30.054094, 19.447756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.549612, 30.372997, 19.517338>,  <28.410885, 30.564339, 19.559088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.549612, 30.372997, 19.517338>,  <28.780825, 30.054094, 19.447756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549612, 30.372997, 19.517338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372345, -0.067999, -0.925600,
		-0.726111, -0.599799, 0.336160,
		-0.578033, 0.797256, 0.173957,
		28.376202, 30.612175, 19.569525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118521, 29.889074, 19.307833>,  <28.780825, 30.054094, 19.447756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118521, 29.889074, 19.307833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.129179, 30.284231, 19.246704>,  <28.135574, 30.521326, 19.210028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.129179, 30.284231, 19.246704>,  <28.118521, 29.889074, 19.307833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129179, 30.284231, 19.246704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302346, -0.137751, -0.943192,
		-0.952826, 0.071338, 0.295015,
		0.026646, 0.987895, -0.152822,
		28.137173, 30.580599, 19.200857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522015, 29.954712, 18.952709>,  <28.118521, 29.889074, 19.307833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522015, 29.954712, 18.952709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.715420, 30.295958, 18.874317>,  <27.831463, 30.500706, 18.827282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.715420, 30.295958, 18.874317>,  <27.522015, 29.954712, 18.952709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715420, 30.295958, 18.874317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383138, 0.004957, -0.923678,
		-0.787032, 0.521699, 0.329257,
		0.483514, 0.853115, -0.195981,
		27.860474, 30.551891, 18.815523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977333, 30.297430, 18.650486>,  <27.522015, 29.954712, 18.952709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977333, 30.297430, 18.650486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330969, 30.457388, 18.553761>,  <27.543150, 30.553362, 18.495726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330969, 30.457388, 18.553761>,  <26.977333, 30.297430, 18.650486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330969, 30.457388, 18.553761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281012, 0.041481, -0.958807,
		-0.373391, 0.915622, 0.149047,
		0.884088, 0.399894, -0.241812,
		27.596195, 30.577356, 18.481216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741421, 30.737387, 18.125748>,  <26.977333, 30.297430, 18.650486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741421, 30.737387, 18.125748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.133200, 30.697399, 18.055677>,  <27.368267, 30.673407, 18.013636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.133200, 30.697399, 18.055677>,  <26.741421, 30.737387, 18.125748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133200, 30.697399, 18.055677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184215, -0.089742, -0.978781,
		0.082129, 0.990935, -0.106314,
		0.979449, -0.099971, -0.175175,
		27.427034, 30.667408, 18.003124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043364, 31.316885, 17.726671>,  <26.741421, 30.737387, 18.125748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043364, 31.316885, 17.726671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.281216, 31.003748, 17.653376>,  <27.423927, 30.815866, 17.609398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.281216, 31.003748, 17.653376>,  <27.043364, 31.316885, 17.726671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281216, 31.003748, 17.653376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216398, 0.063667, -0.974227,
		0.774331, 0.618956, -0.131547,
		0.594629, -0.782841, -0.183240,
		27.459604, 30.768896, 17.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148676, 32.047363, 17.604334>,  <27.043364, 31.316885, 17.726671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148676, 32.047363, 17.604334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.859537, 32.304440, 17.502789>,  <26.686054, 32.458683, 17.441862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.859537, 32.304440, 17.502789>,  <27.148676, 32.047363, 17.604334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859537, 32.304440, 17.502789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054067, 0.313651, 0.947998,
		0.688891, 0.698983, -0.191973,
		-0.722846, 0.642687, -0.253863,
		26.642683, 32.497246, 17.426630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344625, 32.696465, 17.793940>,  <27.148676, 32.047363, 17.604334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344625, 32.696465, 17.793940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.946562, 32.731846, 17.776814>,  <26.707724, 32.753075, 17.766539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.946562, 32.731846, 17.776814>,  <27.344625, 32.696465, 17.793940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946562, 32.731846, 17.776814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010201, 0.340351, 0.940243,
		0.097737, 0.936129, -0.337801,
		-0.995160, 0.088451, -0.042814,
		26.648014, 32.758381, 17.763969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130003, 33.372505, 18.108877>,  <27.344625, 32.696465, 17.793940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130003, 33.372505, 18.108877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802649, 33.143536, 18.129162>,  <26.606236, 33.006153, 18.141333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.802649, 33.143536, 18.129162>,  <27.130003, 33.372505, 18.108877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802649, 33.143536, 18.129162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177807, 0.336148, 0.924873,
		-0.546466, 0.747888, -0.376880,
		-0.818388, -0.572424, 0.050714,
		26.557133, 32.971809, 18.144377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692717, 33.798252, 18.400265>,  <27.130003, 33.372505, 18.108877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692717, 33.798252, 18.400265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.597467, 33.415337, 18.465860>,  <26.540318, 33.185585, 18.505217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.597467, 33.415337, 18.465860>,  <26.692717, 33.798252, 18.400265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597467, 33.415337, 18.465860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284989, 0.230281, 0.930458,
		-0.928482, 0.174828, -0.327652,
		-0.238122, -0.957291, 0.163988,
		26.526031, 33.128151, 18.515057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092583, 33.801739, 18.767340>,  <26.692717, 33.798252, 18.400265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092583, 33.801739, 18.767340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.242882, 33.437641, 18.836933>,  <26.333061, 33.219181, 18.878689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.242882, 33.437641, 18.836933>,  <26.092583, 33.801739, 18.767340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242882, 33.437641, 18.836933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437358, -0.008660, 0.899246,
		-0.817026, -0.413983, -0.401357,
		0.375748, -0.910244, 0.173984,
		26.355606, 33.164570, 18.889128>
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
