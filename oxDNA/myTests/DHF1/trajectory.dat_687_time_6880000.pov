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
	<0.085051, 0.896451, 1.890360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.448013, 0.764078, 1.993973>,  <0.665791, 0.684655, 2.056141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.448013, 0.764078, 1.993973>,  <0.085051, 0.896451, 1.890360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.448013, 0.764078, 1.993973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314389, -0.125524, 0.940959,
		-0.278880, -0.935268, -0.217943,
		0.907406, -0.330933, 0.259032,
		0.720235, 0.664799, 2.071682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.091227, 0.339924, 2.361415>,  <0.085051, 0.896451, 1.890360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.091227, 0.339924, 2.361415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.277662, 0.477032, 2.432985>,  <0.498996, 0.559296, 2.475927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.277662, 0.477032, 2.432985>,  <-0.091227, 0.339924, 2.361415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.277662, 0.477032, 2.432985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187855, -0.007267, 0.982170,
		0.337959, -0.939391, 0.057690,
		0.922222, 0.342770, 0.178925,
		0.554329, 0.579863, 2.486663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.388304, -0.206607, 2.753488>,  <-0.091227, 0.339924, 2.361415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.388304, -0.206607, 2.753488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450024, 0.184278, 2.811789>,  <0.487056, 0.418810, 2.846769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.450024, 0.184278, 2.811789>,  <0.388304, -0.206607, 2.753488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.450024, 0.184278, 2.811789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292202, -0.095785, 0.951548,
		0.943827, -0.189412, 0.270764,
		0.154299, 0.977215, 0.145751,
		0.496313, 0.477443, 2.855514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776844, -0.242376, 3.279303>,  <0.388304, -0.206607, 2.753488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776844, -0.242376, 3.279303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.535759, 0.076804, 3.277851>,  <0.391108, 0.268312, 3.276980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.535759, 0.076804, 3.277851>,  <0.776844, -0.242376, 3.279303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.535759, 0.076804, 3.277851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371234, -0.276370, 0.886456,
		0.706345, 0.535625, 0.462798,
		-0.602712, 0.797951, -0.003629,
		0.354945, 0.316189, 3.276762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.641044, -0.068936, 4.027968>,  <0.776844, -0.242376, 3.279303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.641044, -0.068936, 4.027968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374176, 0.164371, 3.842632>,  <0.214056, 0.304356, 3.731431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374176, 0.164371, 3.842632>,  <0.641044, -0.068936, 4.027968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.374176, 0.164371, 3.842632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577424, -0.011983, 0.816356,
		0.470603, 0.812191, 0.344789,
		-0.667169, 0.583269, -0.463339,
		0.174025, 0.339352, 3.703631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.436401, 0.378999, 4.536880>,  <0.641044, -0.068936, 4.027968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.436401, 0.378999, 4.536880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154476, 0.391316, 4.253389>,  <-0.014679, 0.398707, 4.083295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154476, 0.391316, 4.253389>,  <0.436401, 0.378999, 4.536880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.154476, 0.391316, 4.253389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709027, -0.062776, 0.702382,
		-0.022862, 0.997553, 0.066079,
		-0.704811, 0.030794, -0.708726,
		-0.056967, 0.400555, 4.040771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.037975, 0.884490, 4.741704>,  <0.436401, 0.378999, 4.536880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.037975, 0.884490, 4.741704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.191793, 0.671827, 4.492744>,  <-0.329654, 0.544230, 4.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.191793, 0.671827, 4.492744>,  <0.037975, 0.884490, 4.741704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.191793, 0.671827, 4.492744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692015, -0.090718, 0.716161,
		-0.437215, 0.842087, -0.315804,
		-0.574421, -0.531657, -0.622400,
		-0.364120, 0.512330, 4.306025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.750293, 1.185566, 4.578460>,  <0.037975, 0.884490, 4.741704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.750293, 1.185566, 4.578460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.710001, 0.787661, 4.585384>,  <-0.685826, 0.548917, 4.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.710001, 0.787661, 4.585384>,  <-0.750293, 1.185566, 4.578460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.710001, 0.787661, 4.585384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575371, -0.044049, 0.816706,
		-0.811666, -0.092228, -0.576795,
		0.100730, -0.994763, 0.017312,
		-0.679782, 0.489232, 4.590578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.126777, 0.625313, 5.462731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080662, 0.229768, 5.500381>,  <4.052992, -0.007559, 5.522972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080662, 0.229768, 5.500381>,  <4.126777, 0.625313, 5.462731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080662, 0.229768, 5.500381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095528, -0.083282, -0.991937,
		0.988728, -0.123350, -0.084863,
		-0.115288, -0.988862, 0.094126,
		4.046075, -0.066891, 5.528619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.676659, 0.145092, 5.121215>,  <4.126777, 0.625313, 5.462731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.676659, 0.145092, 5.121215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290329, 0.045152, 5.148809>,  <4.058531, -0.014812, 5.165366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290329, 0.045152, 5.148809>,  <4.676659, 0.145092, 5.121215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.290329, 0.045152, 5.148809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027701, -0.165129, -0.985883,
		0.257716, -0.954100, 0.152565,
		-0.965824, -0.249851, 0.068986,
		4.000582, -0.029803, 5.169505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.274876, -0.552389, 4.886646>,  <4.676659, 0.145092, 5.121215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.274876, -0.552389, 4.886646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.096439, -0.205321, 4.798873>,  <3.989377, 0.002919, 4.746209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.096439, -0.205321, 4.798873>,  <4.274876, -0.552389, 4.886646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.096439, -0.205321, 4.798873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589453, 0.100342, -0.801547,
		-0.673460, -0.486909, -0.556212,
		-0.446092, 0.867670, -0.219434,
		3.962612, 0.054980, 4.733043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.168567, -0.568406, 4.168744>,  <4.274876, -0.552389, 4.886646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.168567, -0.568406, 4.168744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142334, -0.176579, 4.244794>,  <4.126595, 0.058517, 4.290424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.142334, -0.176579, 4.244794>,  <4.168567, -0.568406, 4.168744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.142334, -0.176579, 4.244794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603982, 0.190636, -0.773863,
		-0.794295, 0.064081, -0.604143,
		-0.065582, 0.979567, 0.190125,
		4.122660, 0.117291, 4.301831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.831669, -0.154629, 3.569163>,  <4.168567, -0.568406, 4.168744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.831669, -0.154629, 3.569163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.104473, 0.035395, 3.791578>,  <4.268156, 0.149409, 3.925028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.104473, 0.035395, 3.791578>,  <3.831669, -0.154629, 3.569163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.104473, 0.035395, 3.791578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629554, 0.005566, -0.776937,
		-0.372186, 0.879936, -0.295279,
		0.682011, 0.475059, 0.556039,
		4.309076, 0.177913, 3.958390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.026793, 0.329007, 3.179749>,  <3.831669, -0.154629, 3.569163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.026793, 0.329007, 3.179749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317017, 0.341240, 3.454741>,  <4.491151, 0.348581, 3.619735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.317017, 0.341240, 3.454741>,  <4.026793, 0.329007, 3.179749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.317017, 0.341240, 3.454741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661752, 0.243078, -0.709223,
		-0.188802, 0.969524, 0.156129,
		0.725561, 0.030584, 0.687478,
		4.534685, 0.350416, 3.660984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.271007, 1.050224, 3.128572>,  <4.026793, 0.329007, 3.179749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.271007, 1.050224, 3.128572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.546883, 0.801947, 3.277740>,  <4.712408, 0.652981, 3.367240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.546883, 0.801947, 3.277740>,  <4.271007, 1.050224, 3.128572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.546883, 0.801947, 3.277740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672823, 0.358960, -0.646882,
		0.267651, 0.697057, 0.665187,
		0.689689, -0.620692, 0.372920,
		4.753789, 0.615739, 3.389616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.887932, 1.487423, 3.272850>,  <4.271007, 1.050224, 3.128572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.887932, 1.487423, 3.272850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.986927, 1.100000, 3.262648>,  <5.046324, 0.867547, 3.256526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.986927, 1.100000, 3.262648>,  <4.887932, 1.487423, 3.272850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.986927, 1.100000, 3.262648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818284, 0.223040, -0.529778,
		0.518809, 0.110242, 0.847753,
		0.247487, -0.968555, -0.025506,
		5.061173, 0.809434, 3.254996>
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
