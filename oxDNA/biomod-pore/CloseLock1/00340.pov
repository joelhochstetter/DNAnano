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
	<24.385344, 35.235172, 35.318573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348291, 34.918262, 35.077335>,  <24.326061, 34.728115, 34.932594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348291, 34.918262, 35.077335>,  <24.385344, 35.235172, 35.318573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348291, 34.918262, 35.077335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994228, -0.106528, -0.012760,
		-0.054137, -0.600794, 0.797569,
		-0.092629, -0.792274, -0.603094,
		24.320503, 34.680580, 34.896408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647352, 34.564117, 35.604816>,  <24.385344, 35.235172, 35.318573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647352, 34.564117, 35.604816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648689, 34.521000, 35.207150>,  <24.649490, 34.495129, 34.968548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648689, 34.521000, 35.207150>,  <24.647352, 34.564117, 35.604816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.648689, 34.521000, 35.207150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887006, -0.458739, 0.052719,
		-0.461746, -0.882009, 0.094078,
		0.003341, -0.107790, -0.994168,
		24.649693, 34.488663, 34.908897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766239, 33.909653, 35.381348>,  <24.647352, 34.564117, 35.604816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766239, 33.909653, 35.381348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908876, 34.081562, 35.049534>,  <24.994459, 34.184708, 34.850445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.908876, 34.081562, 35.049534>,  <24.766239, 33.909653, 35.381348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.908876, 34.081562, 35.049534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694366, -0.715966, -0.072450,
		-0.625058, -0.550167, -0.553731,
		0.356593, 0.429778, -0.829538,
		25.015854, 34.210495, 34.800671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783798, 33.438931, 34.858982>,  <24.766239, 33.909653, 35.381348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783798, 33.438931, 34.858982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046642, 33.720318, 34.750652>,  <25.204350, 33.889149, 34.685654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046642, 33.720318, 34.750652>,  <24.783798, 33.438931, 34.858982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046642, 33.720318, 34.750652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611615, -0.707571, -0.353935,
		-0.440606, 0.066935, -0.895201,
		0.657110, 0.703465, -0.270822,
		25.243774, 33.931358, 34.669407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835815, 33.523689, 34.081631>,  <24.783798, 33.438931, 34.858982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835815, 33.523689, 34.081631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175056, 33.650574, 34.251381>,  <25.378601, 33.726704, 34.353230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175056, 33.650574, 34.251381>,  <24.835815, 33.523689, 34.081631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175056, 33.650574, 34.251381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441843, -0.865470, -0.236087,
		0.292395, 0.387734, -0.874167,
		0.848104, 0.317214, 0.424377,
		25.429487, 33.745739, 34.378693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432821, 33.291901, 33.576763>,  <24.835815, 33.523689, 34.081631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432821, 33.291901, 33.576763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557240, 33.344749, 33.953232>,  <25.631891, 33.376457, 34.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557240, 33.344749, 33.953232>,  <25.432821, 33.291901, 33.576763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557240, 33.344749, 33.953232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397749, -0.917491, -0.002658,
		0.863161, 0.375175, -0.337931,
		0.311046, 0.132118, 0.941167,
		25.650553, 33.384384, 34.235580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906698, 32.807507, 33.615322>,  <25.432821, 33.291901, 33.576763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906698, 32.807507, 33.615322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893562, 32.937115, 33.993515>,  <25.885681, 33.014877, 34.220432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893562, 32.937115, 33.993515>,  <25.906698, 32.807507, 33.615322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893562, 32.937115, 33.993515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583435, -0.761867, 0.281358,
		0.811495, 0.560867, -0.164023,
		-0.032841, 0.324017, 0.945481,
		25.883711, 33.034321, 34.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612041, 32.997154, 33.794304>,  <25.906698, 32.807507, 33.615322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612041, 32.997154, 33.794304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386505, 32.898792, 34.109673>,  <26.251183, 32.839775, 34.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386505, 32.898792, 34.109673>,  <26.612041, 32.997154, 33.794304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386505, 32.898792, 34.109673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526451, -0.842569, 0.113698,
		0.636344, 0.479175, 0.604531,
		-0.563840, -0.245905, 0.788426,
		26.217354, 32.825020, 34.346199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057806, 32.895885, 34.400490>,  <26.612041, 32.997154, 33.794304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057806, 32.895885, 34.400490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735867, 32.672565, 34.481003>,  <26.542704, 32.538574, 34.529312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735867, 32.672565, 34.481003>,  <27.057806, 32.895885, 34.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735867, 32.672565, 34.481003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592745, -0.739337, 0.319429,
		-0.029521, 0.376402, 0.925986,
		-0.804849, -0.558303, 0.201285,
		26.494411, 32.505074, 34.541389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184027, 32.443043, 35.072334>,  <27.057806, 32.895885, 34.400490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184027, 32.443043, 35.072334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880274, 32.270657, 34.877354>,  <26.698021, 32.167225, 34.760365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880274, 32.270657, 34.877354>,  <27.184027, 32.443043, 35.072334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880274, 32.270657, 34.877354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433723, -0.893742, 0.114493,
		-0.484995, -0.124473, 0.865613,
		-0.759384, -0.430965, -0.487448,
		26.652458, 32.141369, 34.731121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016535, 31.889963, 35.459835>,  <27.184027, 32.443043, 35.072334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016535, 31.889963, 35.459835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838984, 31.801149, 35.112579>,  <26.732452, 31.747862, 34.904224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838984, 31.801149, 35.112579>,  <27.016535, 31.889963, 35.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838984, 31.801149, 35.112579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185077, -0.970643, 0.153618,
		-0.876766, -0.092486, 0.471941,
		-0.443879, -0.222033, -0.868144,
		26.705820, 31.734539, 34.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655359, 31.325441, 35.643726>,  <27.016535, 31.889963, 35.459835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655359, 31.325441, 35.643726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711662, 31.328970, 35.247723>,  <26.745443, 31.331087, 35.010120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711662, 31.328970, 35.247723>,  <26.655359, 31.325441, 35.643726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711662, 31.328970, 35.247723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346594, -0.937122, 0.040929,
		-0.927395, -0.348890, -0.134963,
		0.140756, 0.008820, -0.990005,
		26.753889, 31.331615, 34.950722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456043, 30.724758, 35.497330>,  <26.655359, 31.325441, 35.643726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456043, 30.724758, 35.497330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676462, 30.843082, 35.185215>,  <26.808714, 30.914078, 34.997948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676462, 30.843082, 35.185215>,  <26.456043, 30.724758, 35.497330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676462, 30.843082, 35.185215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490612, -0.871228, 0.016189,
		-0.675015, -0.391737, -0.625217,
		0.551048, 0.295811, -0.780283,
		26.841776, 30.931826, 34.951130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349846, 30.234047, 34.935169>,  <26.456043, 30.724758, 35.497330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349846, 30.234047, 34.935169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701078, 30.420694, 34.892757>,  <26.911818, 30.532682, 34.867310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701078, 30.420694, 34.892757>,  <26.349846, 30.234047, 34.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701078, 30.420694, 34.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456259, -0.883220, -0.108396,
		-0.144226, 0.046804, -0.988437,
		0.878081, 0.466617, -0.106028,
		26.964502, 30.560680, 34.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695097, 29.848177, 34.533310>,  <26.349846, 30.234047, 34.935169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695097, 29.848177, 34.533310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008583, 30.053717, 34.672882>,  <27.196674, 30.177040, 34.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008583, 30.053717, 34.672882>,  <26.695097, 29.848177, 34.533310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008583, 30.053717, 34.672882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604216, -0.760887, -0.236586,
		0.143925, 0.396243, -0.906795,
		0.783714, 0.513850, 0.348927,
		27.243698, 30.207872, 34.777561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249866, 29.657858, 34.140305>,  <26.695097, 29.848177, 34.533310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249866, 29.657858, 34.140305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453619, 29.778017, 34.462868>,  <27.575871, 29.850113, 34.656406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453619, 29.778017, 34.462868>,  <27.249866, 29.657858, 34.140305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453619, 29.778017, 34.462868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739423, -0.632157, -0.231584,
		0.440208, 0.714240, -0.544130,
		0.509382, 0.300397, 0.806406,
		27.606434, 29.868135, 34.704788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751713, 29.882168, 33.879932>,  <27.249866, 29.657858, 34.140305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751713, 29.882168, 33.879932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881811, 29.827154, 34.254162>,  <27.959871, 29.794146, 34.478699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881811, 29.827154, 34.254162>,  <27.751713, 29.882168, 33.879932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881811, 29.827154, 34.254162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716180, -0.610230, -0.338683,
		0.617495, 0.780195, -0.099977,
		0.325248, -0.137533, 0.935574,
		27.979385, 29.785894, 34.534836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477434, 30.010160, 33.833092>,  <27.751713, 29.882168, 33.879932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477434, 30.010160, 33.833092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402464, 29.784557, 34.154778>,  <28.357481, 29.649195, 34.347790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402464, 29.784557, 34.154778>,  <28.477434, 30.010160, 33.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402464, 29.784557, 34.154778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835262, -0.522363, -0.171680,
		0.516922, 0.639555, 0.569000,
		-0.187426, -0.564009, 0.804217,
		28.346235, 29.615355, 34.396042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149206, 29.844873, 34.108505>,  <28.477434, 30.010160, 33.833092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149206, 29.844873, 34.108505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950945, 29.573400, 34.325287>,  <28.831987, 29.410517, 34.455357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950945, 29.573400, 34.325287>,  <29.149206, 29.844873, 34.108505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950945, 29.573400, 34.325287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806919, -0.590659, -0.001692,
		0.321260, 0.436477, 0.840405,
		-0.495655, -0.678683, 0.541956,
		28.802248, 29.369795, 34.487873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610138, 29.698889, 34.627411>,  <29.149206, 29.844873, 34.108505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610138, 29.698889, 34.627411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347681, 29.398514, 34.597553>,  <29.190207, 29.218288, 34.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347681, 29.398514, 34.597553>,  <29.610138, 29.698889, 34.627411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347681, 29.398514, 34.597553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732782, -0.610378, -0.300780,
		0.180303, -0.252055, 0.950767,
		-0.656141, -0.750937, -0.074648,
		29.150839, 29.173233, 34.575157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937334, 29.213057, 34.995808>,  <29.610138, 29.698889, 34.627411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937334, 29.213057, 34.995808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672810, 28.997194, 34.787407>,  <29.514095, 28.867678, 34.662369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672810, 28.997194, 34.787407>,  <29.937334, 29.213057, 34.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672810, 28.997194, 34.787407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728293, -0.628232, -0.273705,
		-0.179601, -0.560444, 0.808483,
		-0.661311, -0.539655, -0.520999,
		29.474417, 28.835299, 34.631107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160896, 28.513174, 35.188019>,  <29.937334, 29.213057, 34.995808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160896, 28.513174, 35.188019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955833, 28.489115, 34.845425>,  <29.832796, 28.474680, 34.639870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955833, 28.489115, 34.845425>,  <30.160896, 28.513174, 35.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955833, 28.489115, 34.845425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732311, -0.551390, -0.399612,
		-0.448221, -0.832077, 0.326722,
		-0.512659, -0.060148, -0.856483,
		29.802036, 28.471071, 34.588478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169487, 27.851965, 35.082085>,  <30.160896, 28.513174, 35.188019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169487, 27.851965, 35.082085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088541, 28.026806, 34.731544>,  <30.039972, 28.131710, 34.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088541, 28.026806, 34.731544>,  <30.169487, 27.851965, 35.082085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088541, 28.026806, 34.731544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826172, -0.404281, -0.392424,
		-0.525821, -0.803430, -0.279308,
		-0.202366, 0.437101, -0.876351,
		30.027832, 28.157936, 34.468639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375164, 27.324869, 34.650372>,  <30.169487, 27.851965, 35.082085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375164, 27.324869, 34.650372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350334, 27.656277, 34.427769>,  <30.335436, 27.855122, 34.294209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350334, 27.656277, 34.427769>,  <30.375164, 27.324869, 34.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350334, 27.656277, 34.427769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805818, -0.287391, -0.517749,
		-0.588901, -0.480584, -0.649796,
		-0.062076, 0.828520, -0.556508,
		30.331711, 27.904833, 34.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387087, 27.157078, 33.923973>,  <30.375164, 27.324869, 34.650372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387087, 27.157078, 33.923973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513275, 27.533672, 33.971436>,  <30.588987, 27.759630, 33.999912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513275, 27.533672, 33.971436>,  <30.387087, 27.157078, 33.923973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513275, 27.533672, 33.971436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847525, -0.223301, -0.481496,
		-0.426827, 0.252461, -0.868379,
		0.315469, 0.941488, 0.118656,
		30.607916, 27.816118, 34.007034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686817, 27.462782, 33.206894>,  <30.387087, 27.157078, 33.923973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686817, 27.462782, 33.206894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846420, 27.636360, 33.529999>,  <30.942183, 27.740507, 33.723862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846420, 27.636360, 33.529999>,  <30.686817, 27.462782, 33.206894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846420, 27.636360, 33.529999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915399, -0.137322, -0.378401,
		-0.053281, 0.890413, -0.452025,
		0.399006, 0.433945, 0.807766,
		30.966122, 27.766544, 33.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164001, 28.024418, 32.949249>,  <30.686817, 27.462782, 33.206894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164001, 28.024418, 32.949249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253206, 27.835617, 33.290421>,  <31.306728, 27.722336, 33.495121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253206, 27.835617, 33.290421>,  <31.164001, 28.024418, 32.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253206, 27.835617, 33.290421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871334, -0.295792, -0.391515,
		0.437085, 0.830494, 0.345307,
		0.223012, -0.472003, 0.852924,
		31.320110, 27.694016, 33.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886908, 28.240047, 33.323639>,  <31.164001, 28.024418, 32.949249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886908, 28.240047, 33.323639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775324, 27.861380, 33.388134>,  <31.708374, 27.634178, 33.426830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775324, 27.861380, 33.388134>,  <31.886908, 28.240047, 33.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775324, 27.861380, 33.388134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818409, -0.322206, -0.475804,
		0.502382, -0.000769, 0.864645,
		-0.278960, -0.946669, 0.161241,
		31.691635, 27.577379, 33.436508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363228, 28.427969, 33.905678>,  <31.886908, 28.240047, 33.323639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363228, 28.427969, 33.905678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365749, 28.311590, 34.288364>,  <32.367260, 28.241762, 34.517979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365749, 28.311590, 34.288364>,  <32.363228, 28.427969, 33.905678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365749, 28.311590, 34.288364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916020, 0.382060, 0.122220,
		-0.401083, -0.877143, -0.264106,
		0.006300, -0.290947, 0.956718,
		32.367638, 28.224306, 34.575378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751995, 28.965216, 34.396427>,  <32.363228, 28.427969, 33.905678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751995, 28.965216, 34.396427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959927, 28.966124, 34.054718>,  <33.084686, 28.966669, 33.849693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959927, 28.966124, 34.054718>,  <32.751995, 28.965216, 34.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959927, 28.966124, 34.054718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805045, 0.333255, 0.490758,
		0.285803, -0.942834, 0.171409,
		0.519826, 0.002268, -0.854269,
		33.115875, 28.966805, 33.798439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312572, 28.416500, 34.388485>,  <32.751995, 28.965216, 34.396427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312572, 28.416500, 34.388485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383434, 28.742477, 34.167763>,  <33.425953, 28.938063, 34.035332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383434, 28.742477, 34.167763>,  <33.312572, 28.416500, 34.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383434, 28.742477, 34.167763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797355, 0.209818, 0.565864,
		0.576924, -0.540228, -0.612628,
		0.177156, 0.814942, -0.551802,
		33.436581, 28.986959, 34.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024441, 28.425104, 34.231869>,  <33.312572, 28.416500, 34.388485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024441, 28.425104, 34.231869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872055, 28.794804, 34.221825>,  <33.780624, 29.016623, 34.215797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872055, 28.794804, 34.221825>,  <34.024441, 28.425104, 34.231869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872055, 28.794804, 34.221825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756505, 0.327206, 0.566247,
		0.531569, 0.196727, -0.823853,
		-0.380966, 0.924248, -0.025108,
		33.757767, 29.072079, 34.214291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258625, 29.041340, 34.622280>,  <34.024441, 28.425104, 34.231869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258625, 29.041340, 34.622280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533188, 29.320690, 34.703384>,  <34.697926, 29.488300, 34.752048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533188, 29.320690, 34.703384>,  <34.258625, 29.041340, 34.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533188, 29.320690, 34.703384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692946, 0.712708, -0.108963,
		-0.220607, -0.065711, 0.973147,
		0.686409, 0.698376, 0.202762,
		34.739109, 29.530203, 34.764214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109390, 29.597448, 35.255344>,  <34.258625, 29.041340, 34.622280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109390, 29.597448, 35.255344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320080, 29.728661, 34.941669>,  <34.446495, 29.807388, 34.753464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320080, 29.728661, 34.941669>,  <34.109390, 29.597448, 35.255344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320080, 29.728661, 34.941669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720782, 0.661384, -0.207472,
		0.450594, 0.674512, 0.584807,
		0.526724, 0.328033, -0.784192,
		34.478096, 29.827070, 34.706413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982151, 30.294731, 35.159199>,  <34.109390, 29.597448, 35.255344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982151, 30.294731, 35.159199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096535, 30.184156, 34.792198>,  <34.165165, 30.117811, 34.571999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096535, 30.184156, 34.792198>,  <33.982151, 30.294731, 35.159199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096535, 30.184156, 34.792198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687768, 0.607498, -0.397394,
		0.667236, 0.744666, -0.016406,
		0.285959, -0.276439, -0.917502,
		34.182323, 30.101225, 34.516949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339764, 30.770288, 34.736816>,  <33.982151, 30.294731, 35.159199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339764, 30.770288, 34.736816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146706, 30.529945, 34.481937>,  <34.030869, 30.385740, 34.329010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146706, 30.529945, 34.481937>,  <34.339764, 30.770288, 34.736816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146706, 30.529945, 34.481937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538129, 0.777467, -0.325519,
		0.690989, 0.185782, -0.698583,
		-0.482649, -0.600858, -0.637196,
		34.001911, 30.349688, 34.290779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235004, 31.212627, 34.213882>,  <34.339764, 30.770288, 34.736816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235004, 31.212627, 34.213882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974625, 30.913670, 34.160717>,  <33.818398, 30.734295, 34.128819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974625, 30.913670, 34.160717>,  <34.235004, 31.212627, 34.213882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974625, 30.913670, 34.160717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698748, 0.658349, -0.279871,
		0.296678, -0.089308, -0.950792,
		-0.650948, -0.747395, -0.132914,
		33.779339, 30.689451, 34.120842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873737, 31.386597, 33.667202>,  <34.235004, 31.212627, 34.213882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873737, 31.386597, 33.667202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646767, 31.080500, 33.788815>,  <33.510586, 30.896841, 33.861782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646767, 31.080500, 33.788815>,  <33.873737, 31.386597, 33.667202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646767, 31.080500, 33.788815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821067, 0.497907, -0.279172,
		0.062256, -0.408038, -0.910840,
		-0.567426, -0.765241, 0.304029,
		33.476540, 30.850927, 33.880024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394463, 31.323654, 33.168903>,  <33.873737, 31.386597, 33.667202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394463, 31.323654, 33.168903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250175, 31.144817, 33.496315>,  <33.163605, 31.037516, 33.692764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250175, 31.144817, 33.496315>,  <33.394463, 31.323654, 33.168903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250175, 31.144817, 33.496315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890185, 0.426917, -0.159103,
		-0.278312, -0.786036, -0.551987,
		-0.360713, -0.447090, 0.818533,
		33.141960, 31.010691, 33.741875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770176, 30.997820, 32.892479>,  <33.394463, 31.323654, 33.168903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770176, 30.997820, 32.892479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736095, 31.000957, 33.291012>,  <32.715649, 31.002840, 33.530132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736095, 31.000957, 33.291012>,  <32.770176, 30.997820, 32.892479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736095, 31.000957, 33.291012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843314, 0.531977, -0.076303,
		-0.530625, -0.846723, -0.038711,
		-0.085201, 0.007843, 0.996333,
		32.710537, 31.003311, 33.589912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119522, 30.660496, 33.128437>,  <32.770176, 30.997820, 32.892479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119522, 30.660496, 33.128437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196064, 30.905577, 33.435158>,  <32.241989, 31.052626, 33.619190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196064, 30.905577, 33.435158>,  <32.119522, 30.660496, 33.128437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196064, 30.905577, 33.435158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951293, 0.308162, -0.008838,
		-0.241713, -0.727759, 0.641827,
		0.191355, 0.612702, 0.766798,
		32.253471, 31.089388, 33.665195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616665, 30.449293, 33.639519>,  <32.119522, 30.660496, 33.128437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616665, 30.449293, 33.639519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728762, 30.808495, 33.775200>,  <31.796021, 31.024015, 33.856609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728762, 30.808495, 33.775200>,  <31.616665, 30.449293, 33.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728762, 30.808495, 33.775200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957742, 0.237726, 0.161916,
		0.064764, -0.370242, 0.926675,
		0.280243, 0.898002, 0.339200,
		31.812834, 31.077896, 33.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282219, 30.537983, 34.286232>,  <31.616665, 30.449293, 33.639519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282219, 30.537983, 34.286232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378889, 30.907576, 34.167671>,  <31.436892, 31.129332, 34.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378889, 30.907576, 34.167671>,  <31.282219, 30.537983, 34.286232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378889, 30.907576, 34.167671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852219, 0.348173, 0.390511,
		0.464022, 0.158220, 0.871579,
		0.241673, 0.923981, -0.296398,
		31.451391, 31.184771, 34.078751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249006, 30.937212, 34.867290>,  <31.282219, 30.537983, 34.286232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249006, 30.937212, 34.867290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212118, 31.180326, 34.551800>,  <31.189985, 31.326195, 34.362507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212118, 31.180326, 34.551800>,  <31.249006, 30.937212, 34.867290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212118, 31.180326, 34.551800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732255, 0.495370, 0.467346,
		0.674758, 0.620647, 0.399373,
		-0.092219, 0.607788, -0.788727,
		31.184452, 31.362663, 34.315182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183052, 31.576918, 35.166988>,  <31.249006, 30.937212, 34.867290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183052, 31.576918, 35.166988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058733, 31.651403, 34.794167>,  <30.984142, 31.696095, 34.570473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058733, 31.651403, 34.794167>,  <31.183052, 31.576918, 35.166988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058733, 31.651403, 34.794167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687951, 0.632569, 0.355781,
		0.655842, 0.751785, -0.068494,
		-0.310798, 0.186216, -0.932056,
		30.965494, 31.707268, 34.514549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102989, 32.288727, 35.119549>,  <31.183052, 31.576918, 35.166988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102989, 32.288727, 35.119549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875059, 32.137318, 34.827793>,  <30.738300, 32.046471, 34.652740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875059, 32.137318, 34.827793>,  <31.102989, 32.288727, 35.119549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875059, 32.137318, 34.827793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767297, 0.562844, 0.307346,
		0.294197, 0.734796, -0.611165,
		-0.569827, -0.378525, -0.729394,
		30.704111, 32.023762, 34.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814947, 32.870533, 34.853588>,  <31.102989, 32.288727, 35.119549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814947, 32.870533, 34.853588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588285, 32.568165, 34.722443>,  <30.452288, 32.386745, 34.643757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588285, 32.568165, 34.722443>,  <30.814947, 32.870533, 34.853588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588285, 32.568165, 34.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819156, 0.473946, 0.323046,
		-0.088808, 0.451623, -0.887778,
		-0.566654, -0.755918, -0.327859,
		30.418289, 32.341389, 34.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323092, 33.281853, 34.328285>,  <30.814947, 32.870533, 34.853588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323092, 33.281853, 34.328285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154530, 32.950642, 34.476231>,  <30.053392, 32.751915, 34.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154530, 32.950642, 34.476231>,  <30.323092, 33.281853, 34.328285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154530, 32.950642, 34.476231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874984, 0.478435, 0.074176,
		-0.238374, -0.292364, -0.926122,
		-0.421403, -0.828024, 0.369860,
		30.028109, 32.702236, 34.587189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795074, 33.192966, 33.970406>,  <30.323092, 33.281853, 34.328285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795074, 33.192966, 33.970406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700296, 32.981689, 34.296566>,  <29.643431, 32.854923, 34.492260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700296, 32.981689, 34.296566>,  <29.795074, 33.192966, 33.970406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700296, 32.981689, 34.296566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799500, 0.582846, 0.145227,
		-0.551959, -0.617499, -0.560389,
		-0.236943, -0.528190, 0.815397,
		29.629213, 32.823231, 34.541183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021875, 32.939045, 34.060249>,  <29.795074, 33.192966, 33.970406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021875, 32.939045, 34.060249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164532, 32.939552, 34.433945>,  <29.250126, 32.939857, 34.658161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164532, 32.939552, 34.433945>,  <29.021875, 32.939045, 34.060249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164532, 32.939552, 34.433945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784559, 0.543331, 0.298761,
		-0.507221, -0.839518, 0.194773,
		0.356642, 0.001273, 0.934240,
		29.271524, 32.939934, 34.714218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477802, 32.992519, 34.338474>,  <29.021875, 32.939045, 34.060249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477802, 32.992519, 34.338474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718998, 33.050793, 34.652206>,  <28.863716, 33.085758, 34.840446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718998, 33.050793, 34.652206>,  <28.477802, 32.992519, 34.338474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718998, 33.050793, 34.652206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704577, 0.558356, 0.437962,
		-0.374131, -0.816709, 0.439331,
		0.602990, 0.145687, 0.784332,
		28.899895, 33.094498, 34.887505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032158, 32.981201, 34.921944>,  <28.477802, 32.992519, 34.338474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032158, 32.981201, 34.921944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351675, 33.186394, 35.047661>,  <28.543385, 33.309509, 35.123089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351675, 33.186394, 35.047661>,  <28.032158, 32.981201, 34.921944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351675, 33.186394, 35.047661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591104, 0.572048, 0.568645,
		0.111917, -0.640007, 0.760175,
		0.798793, 0.512984, 0.314289,
		28.591312, 33.340290, 35.141949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928568, 33.117729, 35.631100>,  <28.032158, 32.981201, 34.921944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928568, 33.117729, 35.631100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203087, 33.386589, 35.519951>,  <28.367798, 33.547905, 35.453262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203087, 33.386589, 35.519951>,  <27.928568, 33.117729, 35.631100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203087, 33.386589, 35.519951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527092, 0.722887, 0.446774,
		0.501168, -0.160156, 0.850400,
		0.686298, 0.672149, -0.277871,
		28.408976, 33.588234, 35.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071808, 33.489208, 36.209854>,  <27.928568, 33.117729, 35.631100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071808, 33.489208, 36.209854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171448, 33.739037, 35.913784>,  <28.231232, 33.888935, 35.736141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171448, 33.739037, 35.913784>,  <28.071808, 33.489208, 36.209854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171448, 33.739037, 35.913784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502892, 0.736570, 0.452287,
		0.827677, 0.259564, 0.497571,
		0.249099, 0.624572, -0.740175,
		28.246178, 33.926407, 35.691730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478945, 34.091492, 36.486435>,  <28.071808, 33.489208, 36.209854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478945, 34.091492, 36.486435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285564, 34.188473, 36.149986>,  <28.169537, 34.246662, 35.948116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285564, 34.188473, 36.149986>,  <28.478945, 34.091492, 36.486435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285564, 34.188473, 36.149986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394048, 0.797742, 0.456436,
		0.781665, 0.552108, -0.290133,
		-0.483453, 0.242454, -0.841124,
		28.140528, 34.261208, 35.897648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474529, 34.740341, 36.554714>,  <28.478945, 34.091492, 36.486435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474529, 34.740341, 36.554714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213203, 34.718575, 36.252663>,  <28.056408, 34.705513, 36.071430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213203, 34.718575, 36.252663>,  <28.474529, 34.740341, 36.554714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213203, 34.718575, 36.252663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512023, 0.766474, 0.387750,
		0.557685, 0.639966, -0.528612,
		-0.653314, -0.054419, -0.755128,
		28.017210, 34.702248, 36.026123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315125, 35.380772, 36.273739>,  <28.474529, 34.740341, 36.554714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315125, 35.380772, 36.273739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011637, 35.148438, 36.155773>,  <27.829544, 35.009037, 36.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011637, 35.148438, 36.155773>,  <28.315125, 35.380772, 36.273739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011637, 35.148438, 36.155773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651095, 0.690408, 0.315298,
		0.020475, 0.431241, -0.902005,
		-0.758721, -0.580835, -0.294915,
		27.784021, 34.974186, 36.067299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225737, 35.598206, 37.077320>,  <28.315125, 35.380772, 36.273739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225737, 35.598206, 37.077320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436794, 35.710052, 37.398170>,  <28.563429, 35.777161, 37.590679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436794, 35.710052, 37.398170>,  <28.225737, 35.598206, 37.077320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436794, 35.710052, 37.398170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003120, -0.943628, 0.330994,
		0.849461, -0.177149, -0.497026,
		0.527643, 0.279616, 0.802127,
		28.595087, 35.793938, 37.638809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954659, 35.266293, 37.107697>,  <28.225737, 35.598206, 37.077320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954659, 35.266293, 37.107697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769312, 35.347626, 37.452705>,  <28.658104, 35.396427, 37.659710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769312, 35.347626, 37.452705>,  <28.954659, 35.266293, 37.107697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769312, 35.347626, 37.452705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152582, -0.940476, 0.303685,
		0.872931, 0.272323, 0.404760,
		-0.463368, 0.203337, 0.862522,
		28.630302, 35.408627, 37.711464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301435, 35.985802, 37.113365>,  <28.954659, 35.266293, 37.107697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301435, 35.985802, 37.113365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009993, 36.107582, 36.867947>,  <28.835127, 36.180653, 36.720695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009993, 36.107582, 36.867947>,  <29.301435, 35.985802, 37.113365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009993, 36.107582, 36.867947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115703, 0.937615, 0.327858,
		0.675090, 0.167890, -0.718378,
		-0.728606, 0.304453, -0.613549,
		28.791410, 36.198917, 36.683884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522844, 36.533154, 36.663071>,  <29.301435, 35.985802, 37.113365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522844, 36.533154, 36.663071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134279, 36.567513, 36.751598>,  <28.901140, 36.588127, 36.804714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134279, 36.567513, 36.751598>,  <29.522844, 36.533154, 36.663071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134279, 36.567513, 36.751598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189285, 0.842921, 0.503642,
		-0.143289, 0.531135, -0.835083,
		-0.971411, 0.085902, 0.221317,
		28.842855, 36.593285, 36.817993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218075, 37.252232, 36.446140>,  <29.522844, 36.533154, 36.663071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218075, 37.252232, 36.446140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062168, 37.094357, 36.778961>,  <28.968624, 36.999634, 36.978653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062168, 37.094357, 36.778961>,  <29.218075, 37.252232, 36.446140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062168, 37.094357, 36.778961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156528, 0.861965, 0.482198,
		-0.907515, 0.318183, -0.274184,
		-0.389764, -0.394684, 0.832050,
		28.945238, 36.975952, 37.028576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752785, 37.683983, 36.764633>,  <29.218075, 37.252232, 36.446140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752785, 37.683983, 36.764633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908998, 37.462471, 37.058792>,  <29.002728, 37.329563, 37.235287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908998, 37.462471, 37.058792>,  <28.752785, 37.683983, 36.764633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908998, 37.462471, 37.058792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396451, 0.822134, 0.408561,
		-0.830848, 0.131991, 0.540620,
		0.390536, -0.553782, 0.735396,
		29.026159, 37.296337, 37.279411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871019, 38.163857, 37.349075>,  <28.752785, 37.683983, 36.764633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871019, 38.163857, 37.349075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084381, 37.828587, 37.394596>,  <29.212399, 37.627426, 37.421909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084381, 37.828587, 37.394596>,  <28.871019, 38.163857, 37.349075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084381, 37.828587, 37.394596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793111, 0.542358, 0.277168,
		-0.294035, -0.057586, 0.954058,
		0.533403, -0.838171, 0.113800,
		29.244402, 37.577137, 37.428738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022827, 38.067738, 38.034798>,  <28.871019, 38.163857, 37.349075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022827, 38.067738, 38.034798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316330, 37.875835, 37.842365>,  <29.492432, 37.760696, 37.726906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316330, 37.875835, 37.842365>,  <29.022827, 38.067738, 38.034798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316330, 37.875835, 37.842365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673394, 0.607566, 0.421193,
		0.090220, -0.633010, 0.768868,
		0.733758, -0.479751, -0.481080,
		29.536457, 37.731911, 37.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598270, 37.995747, 38.470699>,  <29.022827, 38.067738, 38.034798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598270, 37.995747, 38.470699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790665, 37.904366, 38.132122>,  <29.906101, 37.849537, 37.928974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790665, 37.904366, 38.132122>,  <29.598270, 37.995747, 38.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790665, 37.904366, 38.132122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829829, 0.430169, 0.355442,
		0.282912, -0.873364, 0.396481,
		0.480984, -0.228453, -0.846442,
		29.934959, 37.835831, 37.878189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333620, 37.719639, 38.618374>,  <29.598270, 37.995747, 38.470699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333620, 37.719639, 38.618374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358166, 37.837265, 38.236847>,  <30.372892, 37.907841, 38.007931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358166, 37.837265, 38.236847>,  <30.333620, 37.719639, 38.618374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358166, 37.837265, 38.236847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868079, 0.455919, 0.196410,
		0.492619, -0.840038, -0.227294,
		0.061364, 0.294064, -0.953814,
		30.376575, 37.925484, 37.950703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055361, 37.531357, 38.364933>,  <30.333620, 37.719639, 38.618374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055361, 37.531357, 38.364933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910763, 37.823215, 38.132748>,  <30.824003, 37.998329, 37.993435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910763, 37.823215, 38.132748>,  <31.055361, 37.531357, 38.364933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910763, 37.823215, 38.132748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866451, 0.492829, 0.079887,
		0.344360, -0.474067, -0.810356,
		-0.361496, 0.729644, -0.580466,
		30.802315, 38.042110, 37.958607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622200, 37.773682, 37.973381>,  <31.055361, 37.531357, 38.364933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622200, 37.773682, 37.973381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363186, 38.077518, 37.948978>,  <31.207777, 38.259819, 37.934338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363186, 38.077518, 37.948978>,  <31.622200, 37.773682, 37.973381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363186, 38.077518, 37.948978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716686, 0.634249, 0.289980,
		0.258962, 0.144046, -0.955086,
		-0.647533, 0.759591, -0.061011,
		31.168926, 38.305397, 37.930676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955282, 38.236286, 37.677570>,  <31.622200, 37.773682, 37.973381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955282, 38.236286, 37.677570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671154, 38.486618, 37.806431>,  <31.500677, 38.636818, 37.883747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671154, 38.486618, 37.806431>,  <31.955282, 38.236286, 37.677570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671154, 38.486618, 37.806431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691123, 0.706848, 0.150715,
		-0.133393, 0.329705, -0.934613,
		-0.710321, 0.625828, 0.322155,
		31.458057, 38.674366, 37.903076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263874, 38.856224, 37.511589>,  <31.955282, 38.236286, 37.677570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263874, 38.856224, 37.511589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973072, 38.916924, 37.779449>,  <31.798592, 38.953342, 37.940166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973072, 38.916924, 37.779449>,  <32.263874, 38.856224, 37.511589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973072, 38.916924, 37.779449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548689, 0.714722, 0.433719,
		-0.412802, 0.682748, -0.602867,
		-0.727004, 0.151747, 0.669655,
		31.754971, 38.962448, 37.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122597, 39.662746, 37.562481>,  <32.263874, 38.856224, 37.511589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122597, 39.662746, 37.562481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993055, 39.491768, 37.900097>,  <31.915331, 39.389179, 38.102665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993055, 39.491768, 37.900097>,  <32.122597, 39.662746, 37.562481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993055, 39.491768, 37.900097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543256, 0.646376, 0.535790,
		-0.774590, 0.632049, 0.022881,
		-0.323856, -0.427448, 0.844041,
		31.895899, 39.363533, 38.153309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954845, 40.194691, 37.971519>,  <32.122597, 39.662746, 37.562481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954845, 40.194691, 37.971519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998821, 39.897114, 38.235176>,  <32.025208, 39.718567, 38.393372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998821, 39.897114, 38.235176>,  <31.954845, 40.194691, 37.971519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998821, 39.897114, 38.235176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315524, 0.654980, 0.686619,
		-0.942528, 0.132489, 0.306738,
		0.109938, -0.743941, 0.659140,
		32.031803, 39.673931, 38.432919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742710, 40.468735, 38.564278>,  <31.954845, 40.194691, 37.971519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742710, 40.468735, 38.564278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940554, 40.144733, 38.690296>,  <32.059261, 39.950333, 38.765907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940554, 40.144733, 38.690296>,  <31.742710, 40.468735, 38.564278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940554, 40.144733, 38.690296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357764, 0.520114, 0.775556,
		-0.792065, -0.270883, 0.547043,
		0.494610, -0.810003, 0.315051,
		32.088936, 39.901733, 38.784813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591005, 40.546085, 39.302773>,  <31.742710, 40.468735, 38.564278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591005, 40.546085, 39.302773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899267, 40.295433, 39.256420>,  <32.084225, 40.145042, 39.228607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899267, 40.295433, 39.256420>,  <31.591005, 40.546085, 39.302773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899267, 40.295433, 39.256420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424423, 0.369067, 0.826834,
		-0.475348, -0.686388, 0.550378,
		0.770655, -0.626627, -0.115884,
		32.130463, 40.107445, 39.221653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691095, 40.154087, 39.966209>,  <31.591005, 40.546085, 39.302773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691095, 40.154087, 39.966209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030411, 40.139378, 39.754906>,  <32.234001, 40.130554, 39.628124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030411, 40.139378, 39.754906>,  <31.691095, 40.154087, 39.966209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030411, 40.139378, 39.754906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504447, 0.359532, 0.785028,
		0.161060, -0.932408, 0.323535,
		0.848288, -0.036770, -0.528257,
		32.284897, 40.128345, 39.596428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106274, 39.668861, 40.269688>,  <31.691095, 40.154087, 39.966209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106274, 39.668861, 40.269688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366737, 39.894833, 40.066967>,  <32.523014, 40.030415, 39.945335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366737, 39.894833, 40.066967>,  <32.106274, 39.668861, 40.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366737, 39.894833, 40.066967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498311, 0.185415, 0.846940,
		0.572432, -0.804035, -0.160778,
		0.651159, 0.564933, -0.506797,
		32.562084, 40.064312, 39.914928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773834, 39.659676, 40.592495>,  <32.106274, 39.668861, 40.269688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773834, 39.659676, 40.592495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760662, 40.000004, 40.382729>,  <32.752758, 40.204201, 40.256866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760662, 40.000004, 40.382729>,  <32.773834, 39.659676, 40.592495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760662, 40.000004, 40.382729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282972, 0.511170, 0.811562,
		0.958563, -0.121671, -0.257593,
		-0.032930, 0.850824, -0.524418,
		32.750782, 40.255253, 40.225403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410347, 39.986504, 40.752487>,  <32.773834, 39.659676, 40.592495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410347, 39.986504, 40.752487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162907, 40.274818, 40.627399>,  <33.014442, 40.447807, 40.552349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162907, 40.274818, 40.627399>,  <33.410347, 39.986504, 40.752487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162907, 40.274818, 40.627399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274517, 0.571202, 0.773543,
		0.736185, 0.392672, -0.551217,
		-0.618605, 0.720790, -0.312715,
		32.977325, 40.491055, 40.533585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743877, 40.547581, 40.879078>,  <33.410347, 39.986504, 40.752487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743877, 40.547581, 40.879078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365192, 40.671947, 40.845428>,  <33.137981, 40.746567, 40.825241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365192, 40.671947, 40.845428>,  <33.743877, 40.547581, 40.879078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365192, 40.671947, 40.845428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147880, 0.651581, 0.744026,
		0.286140, 0.691935, -0.662835,
		-0.946708, 0.310915, -0.084120,
		33.081181, 40.765221, 40.820194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809792, 41.213753, 41.100628>,  <33.743877, 40.547581, 40.879078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809792, 41.213753, 41.100628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413548, 41.161285, 41.116058>,  <33.175800, 41.129803, 41.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413548, 41.161285, 41.116058>,  <33.809792, 41.213753, 41.100628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413548, 41.161285, 41.116058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065656, 0.703833, 0.707325,
		-0.119930, 0.698150, -0.705836,
		-0.990609, -0.131172, 0.038573,
		33.116364, 41.121933, 41.127628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523964, 41.872353, 41.056671>,  <33.809792, 41.213753, 41.100628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523964, 41.872353, 41.056671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261654, 41.639744, 41.249249>,  <33.104267, 41.500179, 41.364796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261654, 41.639744, 41.249249>,  <33.523964, 41.872353, 41.056671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261654, 41.639744, 41.249249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038059, 0.611436, 0.790378,
		-0.753999, 0.536631, -0.378831,
		-0.655772, -0.581526, 0.481445,
		33.064922, 41.465286, 41.393681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009716, 42.341103, 41.325233>,  <33.523964, 41.872353, 41.056671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009716, 42.341103, 41.325233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973328, 41.994556, 41.521656>,  <32.951492, 41.786629, 41.639511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973328, 41.994556, 41.521656>,  <33.009716, 42.341103, 41.325233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973328, 41.994556, 41.521656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200536, 0.498941, 0.843115,
		-0.975453, -0.021775, -0.219127,
		-0.090973, -0.866362, 0.491061,
		32.946037, 41.734650, 41.668976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561077, 42.517681, 41.679161>,  <33.009716, 42.341103, 41.325233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561077, 42.517681, 41.679161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730671, 42.209976, 41.870354>,  <32.832428, 42.025352, 41.985069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730671, 42.209976, 41.870354>,  <32.561077, 42.517681, 41.679161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730671, 42.209976, 41.870354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156642, 0.457529, 0.875289,
		-0.892022, -0.445979, 0.073485,
		0.423982, -0.769266, 0.477985,
		32.857864, 41.979195, 42.013748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170517, 42.562828, 42.285633>,  <32.561077, 42.517681, 41.679161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170517, 42.562828, 42.285633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483517, 42.329739, 42.373386>,  <32.671318, 42.189884, 42.426037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483517, 42.329739, 42.373386>,  <32.170517, 42.562828, 42.285633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483517, 42.329739, 42.373386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059755, 0.280430, 0.958013,
		-0.619777, -0.762754, 0.184616,
		0.782500, -0.582723, 0.219382,
		32.718266, 42.154922, 42.439201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008129, 42.113747, 42.800564>,  <32.170517, 42.562828, 42.285633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008129, 42.113747, 42.800564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405273, 42.156891, 42.820946>,  <32.643559, 42.182777, 42.833176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405273, 42.156891, 42.820946>,  <32.008129, 42.113747, 42.800564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405273, 42.156891, 42.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053035, 0.016460, 0.998457,
		0.106861, -0.994029, 0.022063,
		0.992859, 0.107866, 0.050959,
		32.703133, 42.189251, 42.836235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196159, 41.708939, 43.381477>,  <32.008129, 42.113747, 42.800564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196159, 41.708939, 43.381477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509315, 41.947983, 43.312256>,  <32.697208, 42.091408, 43.270721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509315, 41.947983, 43.312256>,  <32.196159, 41.708939, 43.381477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509315, 41.947983, 43.312256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055985, 0.209352, 0.976236,
		0.619640, -0.773971, 0.130442,
		0.782887, 0.597612, -0.173054,
		32.744183, 42.127266, 43.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828293, 41.541523, 43.923782>,  <32.196159, 41.708939, 43.381477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828293, 41.541523, 43.923782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883118, 41.914650, 43.790482>,  <32.916012, 42.138527, 43.710503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883118, 41.914650, 43.790482>,  <32.828293, 41.541523, 43.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883118, 41.914650, 43.790482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072319, 0.326106, 0.942563,
		0.987919, -0.153289, -0.022764,
		0.137061, 0.932822, -0.333252,
		32.924236, 42.194496, 43.690506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167728, 41.832375, 44.530582>,  <32.828293, 41.541523, 43.923782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167728, 41.832375, 44.530582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101768, 42.144585, 44.289391>,  <33.062191, 42.331913, 44.144676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101768, 42.144585, 44.289391>,  <33.167728, 41.832375, 44.530582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101768, 42.144585, 44.289391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294221, 0.622440, 0.725260,
		0.941404, -0.057812, -0.332289,
		-0.164902, 0.780529, -0.602977,
		33.052299, 42.378742, 44.108498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785694, 42.228828, 44.461422>,  <33.167728, 41.832375, 44.530582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785694, 42.228828, 44.461422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473316, 42.467281, 44.386868>,  <33.285889, 42.610355, 44.342133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473316, 42.467281, 44.386868>,  <33.785694, 42.228828, 44.461422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473316, 42.467281, 44.386868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351991, 0.666566, 0.657110,
		0.515967, 0.447562, -0.730388,
		-0.780949, 0.596136, -0.186388,
		33.239033, 42.646122, 44.330952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048916, 42.841412, 44.522354>,  <33.785694, 42.228828, 44.461422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048916, 42.841412, 44.522354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656834, 42.914066, 44.553883>,  <33.421585, 42.957661, 44.572800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656834, 42.914066, 44.553883>,  <34.048916, 42.841412, 44.522354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656834, 42.914066, 44.553883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187923, 0.728030, 0.659286,
		0.062368, 0.661045, -0.747750,
		-0.980202, 0.181638, 0.078820,
		33.362774, 42.968559, 44.577530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897392, 43.545780, 44.648842>,  <34.048916, 42.841412, 44.522354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897392, 43.545780, 44.648842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552853, 43.395855, 44.786015>,  <33.346130, 43.305901, 44.868317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552853, 43.395855, 44.786015>,  <33.897392, 43.545780, 44.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552853, 43.395855, 44.786015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050664, 0.608284, 0.792101,
		-0.505489, 0.699646, -0.504952,
		-0.861344, -0.374816, 0.342927,
		33.294449, 43.283409, 44.888893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533707, 44.181129, 44.942490>,  <33.897392, 43.545780, 44.648842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533707, 44.181129, 44.942490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368355, 43.859203, 45.112850>,  <33.269142, 43.666050, 45.215069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368355, 43.859203, 45.112850>,  <33.533707, 44.181129, 44.942490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368355, 43.859203, 45.112850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082190, 0.498810, 0.862806,
		-0.906842, 0.321662, -0.272346,
		-0.413380, -0.804812, 0.425904,
		33.244339, 43.617760, 45.240620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933788, 44.403477, 45.303833>,  <33.533707, 44.181129, 44.942490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933788, 44.403477, 45.303833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020256, 44.046608, 45.462475>,  <33.072136, 43.832485, 45.557659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020256, 44.046608, 45.462475>,  <32.933788, 44.403477, 45.303833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020256, 44.046608, 45.462475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247519, 0.342864, 0.906189,
		-0.944460, -0.294060, -0.146713,
		0.216172, -0.892173, 0.396606,
		33.085106, 43.778957, 45.581455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389061, 44.192551, 45.754162>,  <32.933788, 44.403477, 45.303833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389061, 44.192551, 45.754162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713467, 43.996304, 45.881626>,  <32.908112, 43.878555, 45.958103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713467, 43.996304, 45.881626>,  <32.389061, 44.192551, 45.754162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713467, 43.996304, 45.881626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081673, 0.444412, 0.892092,
		-0.579295, -0.749526, 0.320355,
		0.811016, -0.490620, 0.318661,
		32.956772, 43.849117, 45.977226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209667, 43.888805, 46.385235>,  <32.389061, 44.192551, 45.754162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209667, 43.888805, 46.385235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608429, 43.857357, 46.385391>,  <32.847687, 43.838490, 46.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608429, 43.857357, 46.385391>,  <32.209667, 43.888805, 46.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608429, 43.857357, 46.385391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021500, 0.277361, 0.960525,
		-0.075625, -0.957544, 0.278192,
		0.996904, -0.078621, 0.000389,
		32.907501, 43.833771, 46.385509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449036, 43.580036, 46.896477>,  <32.209667, 43.888805, 46.385235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449036, 43.580036, 46.896477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786137, 43.778099, 46.812016>,  <32.988396, 43.896938, 46.761337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786137, 43.778099, 46.812016>,  <32.449036, 43.580036, 46.896477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786137, 43.778099, 46.812016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065112, 0.295616, 0.953085,
		0.534350, -0.816963, 0.216890,
		0.842752, 0.495159, -0.211156,
		33.038963, 43.926647, 46.748669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807850, 43.539654, 47.532318>,  <32.449036, 43.580036, 46.896477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807850, 43.539654, 47.532318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999203, 43.823185, 47.324966>,  <33.114014, 43.993301, 47.200554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999203, 43.823185, 47.324966>,  <32.807850, 43.539654, 47.532318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999203, 43.823185, 47.324966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262443, 0.447929, 0.854683,
		0.838018, -0.544911, 0.028255,
		0.478382, 0.708824, -0.518381,
		33.142719, 44.035831, 47.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517811, 43.671513, 47.763088>,  <32.807850, 43.539654, 47.532318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517811, 43.671513, 47.763088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386826, 44.005753, 47.586662>,  <33.308235, 44.206299, 47.480808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386826, 44.005753, 47.586662>,  <33.517811, 43.671513, 47.763088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386826, 44.005753, 47.586662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232423, 0.523693, 0.819588,
		0.915830, 0.165875, -0.365705,
		-0.327466, 0.835602, -0.441061,
		33.288586, 44.256432, 47.454346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088764, 44.129337, 47.854088>,  <33.517811, 43.671513, 47.763088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088764, 44.129337, 47.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753185, 44.342651, 47.810688>,  <33.551838, 44.470638, 47.784649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753185, 44.342651, 47.810688>,  <34.088764, 44.129337, 47.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753185, 44.342651, 47.810688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197473, 0.484091, 0.852444,
		0.507115, 0.693733, -0.511438,
		-0.838951, 0.533282, -0.108497,
		33.501499, 44.502636, 47.778137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317593, 44.820030, 48.132507>,  <34.088764, 44.129337, 47.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317593, 44.820030, 48.132507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917946, 44.810402, 48.118763>,  <33.678158, 44.804623, 48.110516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917946, 44.810402, 48.118763>,  <34.317593, 44.820030, 48.132507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917946, 44.810402, 48.118763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041892, 0.527325, 0.848630,
		-0.002312, 0.849322, -0.527869,
		-0.999119, -0.024075, -0.034361,
		33.618210, 44.803181, 48.108456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215843, 45.473164, 48.329197>,  <34.317593, 44.820030, 48.132507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215843, 45.473164, 48.329197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857082, 45.300964, 48.369648>,  <33.641827, 45.197643, 48.393917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857082, 45.300964, 48.369648>,  <34.215843, 45.473164, 48.329197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857082, 45.300964, 48.369648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215248, 0.624756, 0.750565,
		-0.386299, 0.651419, -0.653013,
		-0.896906, -0.430503, 0.101126,
		33.588009, 45.171814, 48.399986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740528, 45.973713, 48.224049>,  <34.215843, 45.473164, 48.329197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740528, 45.973713, 48.224049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549648, 45.695686, 48.439148>,  <33.435120, 45.528870, 48.568207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549648, 45.695686, 48.439148>,  <33.740528, 45.973713, 48.224049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549648, 45.695686, 48.439148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311403, 0.705949, 0.636132,
		-0.821773, 0.136104, -0.553321,
		-0.477197, -0.695063, 0.537747,
		33.406490, 45.487167, 48.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049915, 46.284618, 48.381805>,  <33.740528, 45.973713, 48.224049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049915, 46.284618, 48.381805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095860, 45.998634, 48.657673>,  <33.123425, 45.827045, 48.823193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095860, 45.998634, 48.657673>,  <33.049915, 46.284618, 48.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095860, 45.998634, 48.657673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265921, 0.646797, 0.714800,
		-0.957127, -0.265500, -0.115830,
		0.114861, -0.714956, 0.689670,
		33.130318, 45.784149, 48.864574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524597, 46.506798, 48.939144>,  <33.049915, 46.284618, 48.381805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524597, 46.506798, 48.939144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779415, 46.246220, 49.103966>,  <32.932304, 46.089870, 49.202858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779415, 46.246220, 49.103966>,  <32.524597, 46.506798, 48.939144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779415, 46.246220, 49.103966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058626, 0.573957, 0.816784,
		-0.768593, -0.496172, 0.403829,
		0.637046, -0.651450, 0.412051,
		32.970528, 46.050785, 49.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224419, 46.326435, 49.654797>,  <32.524597, 46.506798, 48.939144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224419, 46.326435, 49.654797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623161, 46.304661, 49.631744>,  <32.862408, 46.291595, 49.617912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623161, 46.304661, 49.631744>,  <32.224419, 46.326435, 49.654797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623161, 46.304661, 49.631744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076788, 0.482394, 0.872582,
		-0.019699, -0.874261, 0.485055,
		0.996853, -0.054436, -0.057630,
		32.922218, 46.288330, 49.614456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418789, 45.922379, 50.226742>,  <32.224419, 46.326435, 49.654797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418789, 45.922379, 50.226742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671879, 46.194500, 50.078770>,  <32.823734, 46.357773, 49.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671879, 46.194500, 50.078770>,  <32.418789, 45.922379, 50.226742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671879, 46.194500, 50.078770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084064, 0.414542, 0.906139,
		0.769799, -0.604436, 0.205103,
		0.632726, 0.680303, -0.369926,
		32.861698, 46.398590, 49.967793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790844, 46.008335, 50.794205>,  <32.418789, 45.922379, 50.226742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790844, 46.008335, 50.794205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892265, 46.323460, 50.569679>,  <32.953117, 46.512535, 50.434963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892265, 46.323460, 50.569679>,  <32.790844, 46.008335, 50.794205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892265, 46.323460, 50.569679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295740, 0.489359, 0.820405,
		0.921005, -0.374016, -0.108910,
		0.253549, 0.787807, -0.561314,
		32.968330, 46.559803, 50.401283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258930, 46.144844, 51.269360>,  <32.790844, 46.008335, 50.794205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258930, 46.144844, 51.269360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161987, 46.446842, 51.025642>,  <33.103821, 46.628040, 50.879414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161987, 46.446842, 51.025642>,  <33.258930, 46.144844, 51.269360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161987, 46.446842, 51.025642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115694, 0.646027, 0.754496,
		0.963263, 0.112369, -0.243921,
		-0.242361, 0.754999, -0.609293,
		33.089279, 46.673340, 50.842854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655109, 46.639538, 51.473270>,  <33.258930, 46.144844, 51.269360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655109, 46.639538, 51.473270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323296, 46.801468, 51.319393>,  <33.124207, 46.898628, 51.227066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323296, 46.801468, 51.319393>,  <33.655109, 46.639538, 51.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323296, 46.801468, 51.319393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037567, 0.727736, 0.684828,
		0.557190, 0.553637, -0.618890,
		-0.829535, 0.404829, -0.384689,
		33.074436, 46.922916, 51.203987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211437, 46.639454, 51.998093>,  <33.655109, 46.639538, 51.473270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211437, 46.639454, 51.998093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606483, 46.648975, 51.936066>,  <34.843513, 46.654690, 51.898849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606483, 46.648975, 51.936066>,  <34.211437, 46.639454, 51.998093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606483, 46.648975, 51.936066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051634, -0.884029, -0.464571,
		-0.148143, 0.466825, -0.871853,
		0.987617, 0.023805, -0.155067,
		34.902767, 46.656116, 51.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378273, 46.586723, 51.226433>,  <34.211437, 46.639454, 51.998093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378273, 46.586723, 51.226433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630341, 46.423386, 51.490597>,  <34.781582, 46.325382, 51.649094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630341, 46.423386, 51.490597>,  <34.378273, 46.586723, 51.226433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630341, 46.423386, 51.490597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204715, -0.907823, -0.365991,
		0.748985, 0.095440, -0.655677,
		0.630169, -0.408349, 0.660408,
		34.819393, 46.300880, 51.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040161, 46.055687, 50.922874>,  <34.378273, 46.586723, 51.226433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040161, 46.055687, 50.922874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879833, 45.935959, 51.269226>,  <34.783634, 45.864120, 51.477036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879833, 45.935959, 51.269226>,  <35.040161, 46.055687, 50.922874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879833, 45.935959, 51.269226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236629, -0.879231, -0.413473,
		0.885069, -0.370621, 0.281589,
		-0.400823, -0.299320, 0.865880,
		34.759586, 45.846165, 51.528992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540512, 45.552944, 51.080704>,  <35.040161, 46.055687, 50.922874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540512, 45.552944, 51.080704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154652, 45.491634, 51.166443>,  <34.923134, 45.454849, 51.217888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154652, 45.491634, 51.166443>,  <35.540512, 45.552944, 51.080704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154652, 45.491634, 51.166443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053032, -0.683877, -0.727668,
		0.258123, -0.713316, 0.651577,
		-0.964655, -0.153274, 0.214353,
		34.865253, 45.445652, 51.230747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430485, 44.981865, 51.418766>,  <35.540512, 45.552944, 51.080704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430485, 44.981865, 51.418766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101158, 45.067551, 51.208527>,  <34.903561, 45.118961, 51.082382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101158, 45.067551, 51.208527>,  <35.430485, 44.981865, 51.418766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101158, 45.067551, 51.208527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050593, -0.894656, -0.443881,
		-0.565320, -0.392048, 0.725749,
		-0.823319, 0.214217, -0.525602,
		34.854164, 45.131817, 51.050846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965782, 44.413128, 51.335430>,  <35.430485, 44.981865, 51.418766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965782, 44.413128, 51.335430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838806, 44.645916, 51.035950>,  <34.762619, 44.785587, 50.856262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838806, 44.645916, 51.035950>,  <34.965782, 44.413128, 51.335430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838806, 44.645916, 51.035950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228018, -0.813213, -0.535437,
		-0.920457, 0.000748, 0.390844,
		-0.317439, 0.581966, -0.748697,
		34.743576, 44.820507, 50.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277386, 44.234493, 51.120014>,  <34.965782, 44.413128, 51.335430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277386, 44.234493, 51.120014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447960, 44.403519, 50.800117>,  <34.550304, 44.504932, 50.608177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447960, 44.403519, 50.800117>,  <34.277386, 44.234493, 51.120014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447960, 44.403519, 50.800117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336693, -0.746476, -0.573944,
		-0.839517, 0.514020, -0.176053,
		0.426438, 0.422560, -0.799746,
		34.575890, 44.530285, 50.560192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852558, 44.048546, 50.575764>,  <34.277386, 44.234493, 51.120014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852558, 44.048546, 50.575764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182396, 44.164646, 50.381531>,  <34.380299, 44.234306, 50.264992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182396, 44.164646, 50.381531>,  <33.852558, 44.048546, 50.575764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182396, 44.164646, 50.381531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176977, -0.682919, -0.708732,
		-0.537325, 0.670356, -0.511766,
		0.824597, 0.290249, -0.485587,
		34.429775, 44.251720, 50.235855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654594, 44.238720, 49.964100>,  <33.852558, 44.048546, 50.575764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654594, 44.238720, 49.964100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038189, 44.130188, 49.931290>,  <34.268345, 44.065067, 49.911606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038189, 44.130188, 49.931290>,  <33.654594, 44.238720, 49.964100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038189, 44.130188, 49.931290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268506, -0.776799, -0.569638,
		0.090845, 0.568298, -0.817793,
		0.958985, -0.271331, -0.082023,
		34.325886, 44.048790, 49.906681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763687, 44.139984, 49.253197>,  <33.654594, 44.238720, 49.964100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763687, 44.139984, 49.253197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070587, 43.943245, 49.417839>,  <34.254726, 43.825203, 49.516624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070587, 43.943245, 49.417839>,  <33.763687, 44.139984, 49.253197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070587, 43.943245, 49.417839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056299, -0.690952, -0.720705,
		0.638874, 0.529787, -0.557822,
		0.767248, -0.491845, 0.411605,
		34.300762, 43.795692, 49.541321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069065, 43.793533, 48.721455>,  <33.763687, 44.139984, 49.253197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069065, 43.793533, 48.721455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273838, 43.612396, 49.013443>,  <34.396702, 43.503716, 49.188637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273838, 43.612396, 49.013443>,  <34.069065, 43.793533, 48.721455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273838, 43.612396, 49.013443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190761, -0.768621, -0.610600,
		0.837577, 0.451836, -0.307097,
		0.511932, -0.452843, 0.729972,
		34.427418, 43.476543, 49.232433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738045, 43.506721, 48.526176>,  <34.069065, 43.793533, 48.721455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738045, 43.506721, 48.526176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592556, 43.292904, 48.831326>,  <34.505264, 43.164612, 49.014416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592556, 43.292904, 48.831326>,  <34.738045, 43.506721, 48.526176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592556, 43.292904, 48.831326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122848, -0.784281, -0.608122,
		0.923373, -0.314903, 0.219589,
		-0.363719, -0.534547, 0.762868,
		34.483440, 43.132542, 49.060184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119991, 42.763569, 48.485409>,  <34.738045, 43.506721, 48.526176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119991, 42.763569, 48.485409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802704, 42.711113, 48.723267>,  <34.612331, 42.679638, 48.865982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802704, 42.711113, 48.723267>,  <35.119991, 42.763569, 48.485409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802704, 42.711113, 48.723267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209666, -0.858003, -0.468903,
		0.571697, -0.496621, 0.653093,
		-0.793223, -0.131139, 0.594643,
		34.564735, 42.671772, 48.901661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151638, 42.061356, 48.735104>,  <35.119991, 42.763569, 48.485409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151638, 42.061356, 48.735104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762775, 42.147644, 48.771706>,  <34.529457, 42.199417, 48.793667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762775, 42.147644, 48.771706>,  <35.151638, 42.061356, 48.735104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762775, 42.147644, 48.771706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234260, -0.903984, -0.357681,
		0.005559, -0.369158, 0.929350,
		-0.972158, 0.215721, 0.091504,
		34.471127, 42.212360, 48.799156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831326, 41.432301, 48.821106>,  <35.151638, 42.061356, 48.735104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831326, 41.432301, 48.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529594, 41.683315, 48.743969>,  <34.348557, 41.833923, 48.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529594, 41.683315, 48.743969>,  <34.831326, 41.432301, 48.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529594, 41.683315, 48.743969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471830, -0.722473, -0.505381,
		-0.456465, -0.290236, 0.841072,
		-0.754331, 0.627532, -0.192842,
		34.303295, 41.871574, 48.686115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228287, 41.044693, 48.950527>,  <34.831326, 41.432301, 48.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228287, 41.044693, 48.950527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128510, 41.344177, 48.704857>,  <34.068642, 41.523869, 48.557453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128510, 41.344177, 48.704857>,  <34.228287, 41.044693, 48.950527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128510, 41.344177, 48.704857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465058, -0.648919, -0.602184,
		-0.849411, 0.135416, 0.510062,
		-0.249444, 0.748710, -0.614175,
		34.053677, 41.568790, 48.520603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578693, 40.812405, 48.623863>,  <34.228287, 41.044693, 48.950527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578693, 40.812405, 48.623863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690559, 41.118725, 48.392227>,  <33.757679, 41.302517, 48.253246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690559, 41.118725, 48.392227>,  <33.578693, 40.812405, 48.623863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690559, 41.118725, 48.392227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371303, -0.469955, -0.800797,
		-0.885395, 0.438968, 0.152916,
		0.279661, 0.765800, -0.579086,
		33.774456, 41.348465, 48.218502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005436, 40.907963, 48.262623>,  <33.578693, 40.812405, 48.623863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005436, 40.907963, 48.262623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304981, 41.062611, 48.047318>,  <33.484711, 41.155399, 47.918137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304981, 41.062611, 48.047318>,  <33.005436, 40.907963, 48.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304981, 41.062611, 48.047318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320912, -0.499071, -0.804949,
		-0.579840, 0.775534, -0.249666,
		0.748867, 0.386621, -0.538260,
		33.529640, 41.178596, 47.885841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750977, 41.234497, 47.735870>,  <33.005436, 40.907963, 48.262623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750977, 41.234497, 47.735870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122581, 41.157368, 47.609539>,  <33.345547, 41.111092, 47.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122581, 41.157368, 47.609539>,  <32.750977, 41.234497, 47.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122581, 41.157368, 47.609539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369631, -0.443604, -0.816449,
		0.017328, 0.875234, -0.483389,
		0.929017, -0.192823, -0.315827,
		33.401287, 41.099522, 47.514790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825237, 41.471077, 47.021629>,  <32.750977, 41.234497, 47.735870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825237, 41.471077, 47.021629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103516, 41.186409, 47.060684>,  <33.270481, 41.015610, 47.084118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103516, 41.186409, 47.060684>,  <32.825237, 41.471077, 47.021629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103516, 41.186409, 47.060684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280026, -0.393854, -0.875480,
		0.661509, 0.581725, -0.473289,
		0.695695, -0.711670, 0.097640,
		33.312225, 40.972908, 47.089977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220043, 41.504353, 46.426365>,  <32.825237, 41.471077, 47.021629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220043, 41.504353, 46.426365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282837, 41.131191, 46.556011>,  <33.320511, 40.907295, 46.633797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282837, 41.131191, 46.556011>,  <33.220043, 41.504353, 46.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282837, 41.131191, 46.556011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168635, -0.348681, -0.921946,
		0.973098, 0.090072, -0.212057,
		0.156982, -0.932903, 0.324111,
		33.329933, 40.851318, 46.653244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725235, 41.297340, 46.010761>,  <33.220043, 41.504353, 46.426365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725235, 41.297340, 46.010761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555462, 40.967422, 46.160202>,  <33.453598, 40.769474, 46.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555462, 40.967422, 46.160202>,  <33.725235, 41.297340, 46.010761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555462, 40.967422, 46.160202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094170, -0.370162, -0.924182,
		0.900551, -0.427431, 0.079437,
		-0.424428, -0.824793, 0.373601,
		33.428135, 40.719986, 46.272282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118153, 40.709972, 45.740513>,  <33.725235, 41.297340, 46.010761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118153, 40.709972, 45.740513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752319, 40.583748, 45.841671>,  <33.532818, 40.508015, 45.902367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752319, 40.583748, 45.841671>,  <34.118153, 40.709972, 45.740513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752319, 40.583748, 45.841671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177830, -0.247816, -0.952346,
		0.363195, -0.915974, 0.170533,
		-0.914585, -0.315562, 0.252893,
		33.477943, 40.489079, 45.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093903, 40.090237, 45.433834>,  <34.118153, 40.709972, 45.740513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093903, 40.090237, 45.433834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707813, 40.130291, 45.530422>,  <33.476158, 40.154324, 45.588375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707813, 40.130291, 45.530422>,  <34.093903, 40.090237, 45.433834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707813, 40.130291, 45.530422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261043, -0.418116, -0.870078,
		0.013840, -0.902858, 0.429716,
		-0.965228, 0.100132, 0.241472,
		33.418243, 40.160332, 45.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721313, 39.490330, 45.193989>,  <34.093903, 40.090237, 45.433834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721313, 39.490330, 45.193989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419804, 39.747662, 45.247589>,  <33.238899, 39.902061, 45.279751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419804, 39.747662, 45.247589>,  <33.721313, 39.490330, 45.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419804, 39.747662, 45.247589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486499, -0.409232, -0.771912,
		-0.441762, -0.647031, 0.621448,
		-0.753767, 0.643335, 0.133997,
		33.193672, 39.940662, 45.287788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121746, 39.096519, 45.177734>,  <33.721313, 39.490330, 45.193989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121746, 39.096519, 45.177734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034210, 39.473183, 45.075451>,  <32.981689, 39.699181, 45.014080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034210, 39.473183, 45.075451>,  <33.121746, 39.096519, 45.177734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034210, 39.473183, 45.075451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611650, -0.336563, -0.715968,
		-0.760260, -0.000278, 0.649619,
		-0.218837, 0.941661, -0.255705,
		32.968559, 39.755680, 44.998741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386898, 39.068459, 44.867641>,  <33.121746, 39.096519, 45.177734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386898, 39.068459, 44.867641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552685, 39.408340, 44.737278>,  <32.652157, 39.612270, 44.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552685, 39.408340, 44.737278>,  <32.386898, 39.068459, 44.867641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552685, 39.408340, 44.737278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421466, -0.138185, -0.896254,
		-0.806586, 0.508831, 0.300848,
		0.414469, 0.849703, -0.325913,
		32.677025, 39.663250, 44.639503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771786, 39.286858, 44.661060>,  <32.386898, 39.068459, 44.867641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771786, 39.286858, 44.661060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074886, 39.486115, 44.492455>,  <32.256748, 39.605667, 44.391293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074886, 39.486115, 44.492455>,  <31.771786, 39.286858, 44.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074886, 39.486115, 44.492455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329794, -0.265036, -0.906086,
		-0.563072, 0.825599, -0.036548,
		0.757750, 0.498139, -0.421512,
		32.302212, 39.635555, 44.366001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467995, 39.591484, 44.044865>,  <31.771786, 39.286858, 44.661060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467995, 39.591484, 44.044865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862585, 39.605011, 43.980709>,  <32.099339, 39.613129, 43.942215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862585, 39.605011, 43.980709>,  <31.467995, 39.591484, 44.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862585, 39.605011, 43.980709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153875, -0.146073, -0.977233,
		-0.056476, 0.988696, -0.138893,
		0.986475, 0.033818, -0.160385,
		32.158527, 39.615158, 43.932594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488674, 39.928154, 43.373722>,  <31.467995, 39.591484, 44.044865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488674, 39.928154, 43.373722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827213, 39.721531, 43.425659>,  <32.030338, 39.597557, 43.456821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827213, 39.721531, 43.425659>,  <31.488674, 39.928154, 43.373722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827213, 39.721531, 43.425659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099284, -0.392514, -0.914372,
		0.523295, 0.760985, -0.383489,
		0.846348, -0.516561, 0.129847,
		32.081116, 39.566563, 43.464615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899271, 40.009506, 42.761147>,  <31.488674, 39.928154, 43.373722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899271, 40.009506, 42.761147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011192, 39.668320, 42.937401>,  <32.078346, 39.463608, 43.043156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011192, 39.668320, 42.937401>,  <31.899271, 40.009506, 42.761147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011192, 39.668320, 42.937401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153720, -0.492854, -0.856426,
		0.947671, 0.171897, -0.269020,
		0.279804, -0.852963, 0.440639,
		32.095135, 39.412430, 43.069592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430115, 39.731228, 42.243351>,  <31.899271, 40.009506, 42.761147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430115, 39.731228, 42.243351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309883, 39.434807, 42.483513>,  <32.237743, 39.256954, 42.627609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309883, 39.434807, 42.483513>,  <32.430115, 39.731228, 42.243351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309883, 39.434807, 42.483513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192257, -0.569518, -0.799178,
		0.934177, -0.355652, 0.028714,
		-0.300583, -0.741054, 0.600408,
		32.219707, 39.212490, 42.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648991, 39.191105, 41.805290>,  <32.430115, 39.731228, 42.243351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648991, 39.191105, 41.805290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414429, 39.016785, 42.078407>,  <32.273689, 38.912193, 42.242279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414429, 39.016785, 42.078407>,  <32.648991, 39.191105, 41.805290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414429, 39.016785, 42.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298511, -0.667340, -0.682311,
		0.753005, -0.603934, 0.261243,
		-0.586409, -0.435799, 0.682791,
		32.238506, 38.886044, 42.283245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799507, 38.461159, 41.866676>,  <32.648991, 39.191105, 41.805290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799507, 38.461159, 41.866676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419662, 38.492306, 41.988113>,  <32.191753, 38.510994, 42.060974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419662, 38.492306, 41.988113>,  <32.799507, 38.461159, 41.866676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419662, 38.492306, 41.988113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264877, -0.717181, -0.644587,
		0.167539, -0.692524, 0.701671,
		-0.949616, 0.077863, 0.303589,
		32.134777, 38.515663, 42.079189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635059, 37.886765, 42.033039>,  <32.799507, 38.461159, 41.866676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635059, 37.886765, 42.033039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273315, 38.037415, 41.952755>,  <32.056267, 38.127804, 41.904583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273315, 38.037415, 41.952755>,  <32.635059, 37.886765, 42.033039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273315, 38.037415, 41.952755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230626, -0.827014, -0.512698,
		-0.359083, -0.417376, 0.834779,
		-0.904362, 0.376623, -0.200709,
		32.002007, 38.150402, 41.892544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130211, 37.263351, 42.079109>,  <32.635059, 37.886765, 42.033039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130211, 37.263351, 42.079109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883005, 37.522697, 41.901260>,  <31.734682, 37.678303, 41.794552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883005, 37.522697, 41.901260>,  <32.130211, 37.263351, 42.079109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883005, 37.522697, 41.901260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343435, -0.731390, -0.589171,
		-0.707181, -0.211422, 0.674682,
		-0.618019, 0.648359, -0.444615,
		31.697601, 37.717205, 41.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466618, 36.873650, 41.999214>,  <32.130211, 37.263351, 42.079109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466618, 36.873650, 41.999214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428518, 37.181553, 41.746738>,  <31.405659, 37.366295, 41.595253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428518, 37.181553, 41.746738>,  <31.466618, 36.873650, 41.999214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428518, 37.181553, 41.746738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185551, -0.636686, -0.748466,
		-0.978008, 0.045829, 0.203471,
		-0.095246, 0.769760, -0.631188,
		31.399944, 37.412479, 41.557381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697094, 36.841904, 41.802532>,  <31.466618, 36.873650, 41.999214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697094, 36.841904, 41.802532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891176, 37.053017, 41.523670>,  <31.007626, 37.179684, 41.356354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891176, 37.053017, 41.523670>,  <30.697094, 36.841904, 41.802532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891176, 37.053017, 41.523670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293718, -0.652590, -0.698467,
		-0.823592, 0.543667, -0.161623,
		0.485207, 0.527780, -0.697153,
		31.036739, 37.211349, 41.314526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265425, 37.018688, 41.266586>,  <30.697094, 36.841904, 41.802532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265425, 37.018688, 41.266586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630716, 37.029415, 41.103962>,  <30.849892, 37.035851, 41.006390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630716, 37.029415, 41.103962>,  <30.265425, 37.018688, 41.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630716, 37.029415, 41.103962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359465, -0.416724, -0.834941,
		-0.191817, 0.908637, -0.370923,
		0.913231, 0.026822, -0.406559,
		30.904686, 37.037460, 40.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142351, 37.260834, 40.631954>,  <30.265425, 37.018688, 41.266586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142351, 37.260834, 40.631954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494955, 37.073750, 40.606071>,  <30.706518, 36.961498, 40.590542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494955, 37.073750, 40.606071>,  <30.142351, 37.260834, 40.631954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494955, 37.073750, 40.606071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271404, -0.389780, -0.880006,
		0.386370, 0.793295, -0.470534,
		0.881509, -0.467713, -0.064705,
		30.759407, 36.933437, 40.586658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308090, 37.395157, 40.030392>,  <30.142351, 37.260834, 40.631954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308090, 37.395157, 40.030392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547199, 37.083637, 40.106426>,  <30.690664, 36.896725, 40.152046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547199, 37.083637, 40.106426>,  <30.308090, 37.395157, 40.030392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547199, 37.083637, 40.106426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251380, -0.407252, -0.878040,
		0.761232, 0.477087, -0.439221,
		0.597775, -0.778803, 0.190083,
		30.726532, 36.849995, 40.163452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659601, 37.268299, 39.396423>,  <30.308090, 37.395157, 40.030392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659601, 37.268299, 39.396423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721933, 36.940830, 39.617508>,  <30.759333, 36.744350, 39.750160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721933, 36.940830, 39.617508>,  <30.659601, 37.268299, 39.396423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721933, 36.940830, 39.617508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132736, -0.571830, -0.809562,
		0.978825, 0.052788, -0.197775,
		0.155829, -0.818672, 0.552715,
		30.768682, 36.695229, 39.783321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964972, 36.988464, 38.956398>,  <30.659601, 37.268299, 39.396423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964972, 36.988464, 38.956398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897301, 36.687363, 39.210873>,  <30.856699, 36.506702, 39.363556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897301, 36.687363, 39.210873>,  <30.964972, 36.988464, 38.956398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897301, 36.687363, 39.210873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168901, -0.613800, -0.771182,
		0.971005, -0.237920, -0.023301,
		-0.169177, -0.752757, 0.636188,
		30.846548, 36.461536, 39.401730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434660, 36.407608, 38.772682>,  <30.964972, 36.988464, 38.956398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434660, 36.407608, 38.772682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124403, 36.260422, 38.977810>,  <30.938250, 36.172112, 39.100887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124403, 36.260422, 38.977810>,  <31.434660, 36.407608, 38.772682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124403, 36.260422, 38.977810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146084, -0.685767, -0.713010,
		0.614035, -0.627955, 0.478156,
		-0.775642, -0.367962, 0.512819,
		30.891710, 36.150032, 39.131657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433006, 35.624844, 38.928905>,  <31.434660, 36.407608, 38.772682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433006, 35.624844, 38.928905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066734, 35.783321, 38.901886>,  <30.846972, 35.878407, 38.885674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066734, 35.783321, 38.901886>,  <31.433006, 35.624844, 38.928905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066734, 35.783321, 38.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212777, -0.620471, -0.754813,
		-0.340963, -0.676793, 0.652453,
		-0.915680, 0.396190, -0.067552,
		30.792030, 35.902180, 38.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095432, 35.547474, 39.412292>,  <31.433006, 35.624844, 38.928905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095432, 35.547474, 39.412292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215950, 35.539661, 39.030960>,  <32.288261, 35.534973, 38.802162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215950, 35.539661, 39.030960>,  <32.095432, 35.547474, 39.412292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215950, 35.539661, 39.030960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114370, 0.993313, 0.015796,
		0.946646, -0.113792, 0.301517,
		0.301298, -0.019531, -0.953330,
		32.306339, 35.533802, 38.744961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510323, 35.651031, 40.026451>,  <32.095432, 35.547474, 39.412292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510323, 35.651031, 40.026451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697750, 35.678463, 39.674149>,  <32.810207, 35.694920, 39.462765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697750, 35.678463, 39.674149>,  <32.510323, 35.651031, 40.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697750, 35.678463, 39.674149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883277, -0.054594, 0.465662,
		-0.016152, -0.996151, -0.086151,
		0.468573, 0.068574, -0.880759,
		32.838322, 35.699036, 39.409920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855793, 35.017666, 39.884468>,  <32.510323, 35.651031, 40.026451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855793, 35.017666, 39.884468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032200, 35.314194, 39.682102>,  <33.138046, 35.492111, 39.560684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032200, 35.314194, 39.682102>,  <32.855793, 35.017666, 39.884468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032200, 35.314194, 39.682102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818848, -0.101596, 0.564947,
		0.367407, -0.663419, -0.651834,
		0.441021, 0.741318, -0.505913,
		33.164505, 35.536591, 39.530327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547050, 34.886684, 39.843906>,  <32.855793, 35.017666, 39.884468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547050, 34.886684, 39.843906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556957, 35.280712, 39.775764>,  <33.562901, 35.517128, 39.734879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556957, 35.280712, 39.775764>,  <33.547050, 34.886684, 39.843906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556957, 35.280712, 39.775764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655589, 0.112648, 0.746668,
		0.754712, -0.130176, -0.643012,
		0.024765, 0.985071, -0.170359,
		33.564388, 35.576233, 39.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301876, 35.063465, 39.856876>,  <33.547050, 34.886684, 39.843906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301876, 35.063465, 39.856876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107883, 35.405399, 39.930691>,  <33.991486, 35.610558, 39.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107883, 35.405399, 39.930691>,  <34.301876, 35.063465, 39.856876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107883, 35.405399, 39.930691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669643, 0.227286, 0.707050,
		0.562466, 0.466481, -0.682662,
		-0.484985, 0.854831, 0.184535,
		33.962387, 35.661850, 39.986050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790741, 35.593884, 40.047024>,  <34.301876, 35.063465, 39.856876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790741, 35.593884, 40.047024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473251, 35.781887, 40.201477>,  <34.282757, 35.894688, 40.294151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473251, 35.781887, 40.201477>,  <34.790741, 35.593884, 40.047024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473251, 35.781887, 40.201477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567992, 0.345483, 0.747011,
		0.217696, 0.812241, -0.541177,
		-0.793721, 0.470006, 0.386136,
		34.235134, 35.922890, 40.317318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106407, 36.228512, 40.165867>,  <34.790741, 35.593884, 40.047024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106407, 36.228512, 40.165867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777981, 36.207397, 40.393223>,  <34.580925, 36.194729, 40.529636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777981, 36.207397, 40.393223>,  <35.106407, 36.228512, 40.165867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777981, 36.207397, 40.393223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513271, 0.367496, 0.775564,
		-0.249822, 0.928526, -0.274643,
		-0.821061, -0.052787, 0.568394,
		34.531662, 36.191563, 40.563740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080280, 36.883308, 40.392159>,  <35.106407, 36.228512, 40.165867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080280, 36.883308, 40.392159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877277, 36.645817, 40.641933>,  <34.755478, 36.503323, 40.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877277, 36.645817, 40.641933>,  <35.080280, 36.883308, 40.392159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877277, 36.645817, 40.641933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550555, 0.334033, 0.765057,
		-0.662818, 0.732060, 0.157355,
		-0.507505, -0.593726, 0.624442,
		34.725025, 36.467697, 40.829266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837532, 37.263966, 40.897598>,  <35.080280, 36.883308, 40.392159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837532, 37.263966, 40.897598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815247, 36.896576, 41.054214>,  <34.801876, 36.676144, 41.148186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815247, 36.896576, 41.054214>,  <34.837532, 37.263966, 40.897598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815247, 36.896576, 41.054214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366507, 0.345962, 0.863703,
		-0.928746, 0.191620, 0.317353,
		-0.055711, -0.918473, 0.391541,
		34.798534, 36.621033, 41.171677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585243, 37.384808, 41.616413>,  <34.837532, 37.263966, 40.897598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585243, 37.384808, 41.616413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714832, 37.007030, 41.638569>,  <34.792583, 36.780365, 41.651863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714832, 37.007030, 41.638569>,  <34.585243, 37.384808, 41.616413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714832, 37.007030, 41.638569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300881, 0.158363, 0.940421,
		-0.896948, -0.288002, 0.335470,
		0.323969, -0.944445, 0.055389,
		34.812023, 36.723698, 41.655186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093666, 37.000900, 42.127552>,  <34.585243, 37.384808, 41.616413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093666, 37.000900, 42.127552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468456, 36.864967, 42.095074>,  <34.693329, 36.783409, 42.075584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468456, 36.864967, 42.095074>,  <34.093666, 37.000900, 42.127552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468456, 36.864967, 42.095074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149974, 0.181273, 0.971930,
		-0.315571, -0.922852, 0.220814,
		0.936975, -0.339829, -0.081199,
		34.749550, 36.763020, 42.070713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311035, 36.647156, 42.770397>,  <34.093666, 37.000900, 42.127552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311035, 36.647156, 42.770397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671650, 36.683167, 42.601101>,  <34.888020, 36.704773, 42.499523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671650, 36.683167, 42.601101>,  <34.311035, 36.647156, 42.770397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671650, 36.683167, 42.601101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415004, 0.097045, 0.904629,
		0.122517, -0.991200, 0.050127,
		0.901533, 0.090030, -0.423241,
		34.942108, 36.710175, 42.474129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753269, 36.118061, 43.122746>,  <34.311035, 36.647156, 42.770397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753269, 36.118061, 43.122746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956062, 36.408047, 42.936241>,  <35.077740, 36.582039, 42.824337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956062, 36.408047, 42.936241>,  <34.753269, 36.118061, 43.122746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956062, 36.408047, 42.936241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380723, 0.296964, 0.875707,
		0.773316, -0.621486, -0.125453,
		0.506984, 0.724961, -0.466261,
		35.108158, 36.625534, 42.796364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254230, 36.176640, 43.572475>,  <34.753269, 36.118061, 43.122746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254230, 36.176640, 43.572475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298466, 36.511044, 43.357491>,  <35.325008, 36.711685, 43.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298466, 36.511044, 43.357491>,  <35.254230, 36.176640, 43.572475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298466, 36.511044, 43.357491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354751, 0.471949, 0.807103,
		0.928397, -0.279922, -0.244381,
		0.110591, 0.836007, -0.537459,
		35.331642, 36.761845, 43.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851437, 36.380547, 43.780331>,  <35.254230, 36.176640, 43.572475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851437, 36.380547, 43.780331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678486, 36.705791, 43.624435>,  <35.574715, 36.900940, 43.530899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678486, 36.705791, 43.624435>,  <35.851437, 36.380547, 43.780331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678486, 36.705791, 43.624435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294196, 0.535786, 0.791443,
		0.852351, 0.227540, -0.470875,
		-0.432373, 0.813117, -0.389736,
		35.548775, 36.949726, 43.507515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260952, 36.998917, 43.866589>,  <35.851437, 36.380547, 43.780331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260952, 36.998917, 43.866589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893852, 37.155254, 43.838367>,  <35.673592, 37.249058, 43.821434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893852, 37.155254, 43.838367>,  <36.260952, 36.998917, 43.866589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893852, 37.155254, 43.838367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195299, 0.598800, 0.776722,
		0.345824, 0.699057, -0.625879,
		-0.917749, 0.390843, -0.070554,
		35.618526, 37.272507, 43.817200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324451, 37.639149, 44.109329>,  <36.260952, 36.998917, 43.866589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324451, 37.639149, 44.109329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925610, 37.638557, 44.078899>,  <35.686306, 37.638203, 44.060642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925610, 37.638557, 44.078899>,  <36.324451, 37.639149, 44.109329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925610, 37.638557, 44.078899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062018, 0.595020, 0.801314,
		0.044081, 0.803709, -0.593387,
		-0.997101, -0.001478, -0.076073,
		35.626480, 37.638115, 44.056076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073593, 38.371460, 44.226868>,  <36.324451, 37.639149, 44.109329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073593, 38.371460, 44.226868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746101, 38.149746, 44.286793>,  <35.549606, 38.016716, 44.322750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746101, 38.149746, 44.286793>,  <36.073593, 38.371460, 44.226868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746101, 38.149746, 44.286793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150422, 0.458874, 0.875675,
		-0.554120, 0.694409, -0.459072,
		-0.818733, -0.554284, 0.149817,
		35.500481, 37.983459, 44.331738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441250, 38.830296, 44.299274>,  <36.073593, 38.371460, 44.226868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441250, 38.830296, 44.299274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374680, 38.482517, 44.485336>,  <35.334736, 38.273849, 44.596973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374680, 38.482517, 44.485336>,  <35.441250, 38.830296, 44.299274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374680, 38.482517, 44.485336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096927, 0.483875, 0.869753,
		-0.981278, 0.099667, -0.164804,
		-0.166430, -0.869443, 0.465156,
		35.324749, 38.221684, 44.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877663, 38.935139, 44.699062>,  <35.441250, 38.830296, 44.299274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877663, 38.935139, 44.699062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040279, 38.611973, 44.869709>,  <35.137848, 38.418076, 44.972099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040279, 38.611973, 44.869709>,  <34.877663, 38.935139, 44.699062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040279, 38.611973, 44.869709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056919, 0.443644, 0.894394,
		-0.911859, -0.387887, 0.134373,
		0.406538, -0.807913, 0.426619,
		35.162239, 38.369598, 44.997696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529316, 38.763885, 45.280598>,  <34.877663, 38.935139, 44.699062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529316, 38.763885, 45.280598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905548, 38.633862, 45.319889>,  <35.131287, 38.555847, 45.343464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905548, 38.633862, 45.319889>,  <34.529316, 38.763885, 45.280598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905548, 38.633862, 45.319889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065039, 0.456346, 0.887422,
		-0.333294, -0.828300, 0.450371,
		0.940577, -0.325064, 0.098225,
		35.187721, 38.536343, 45.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527092, 38.686295, 45.978611>,  <34.529316, 38.763885, 45.280598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527092, 38.686295, 45.978611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915016, 38.699009, 45.881901>,  <35.147770, 38.706638, 45.823875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915016, 38.699009, 45.881901>,  <34.527092, 38.686295, 45.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915016, 38.699009, 45.881901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208286, 0.407642, 0.889070,
		0.126821, -0.912588, 0.388715,
		0.969811, 0.031789, -0.241777,
		35.205959, 38.708546, 45.809368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930668, 38.657406, 46.612812>,  <34.527092, 38.686295, 45.978611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930668, 38.657406, 46.612812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199539, 38.794510, 46.350304>,  <35.360863, 38.876774, 46.192799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199539, 38.794510, 46.350304>,  <34.930668, 38.657406, 46.612812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199539, 38.794510, 46.350304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423079, 0.549593, 0.720383,
		0.607602, -0.761880, 0.224408,
		0.672178, 0.342764, -0.656269,
		35.401192, 38.897339, 46.153423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647018, 38.500908, 46.883400>,  <34.930668, 38.657406, 46.612812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647018, 38.500908, 46.883400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681992, 38.810070, 46.632011>,  <35.702976, 38.995567, 46.481178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681992, 38.810070, 46.632011>,  <35.647018, 38.500908, 46.883400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681992, 38.810070, 46.632011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436978, 0.537190, 0.721441,
		0.895213, -0.337705, -0.290775,
		0.087433, 0.772905, -0.628469,
		35.708221, 39.041943, 46.443470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252735, 38.848125, 47.076954>,  <35.647018, 38.500908, 46.883400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252735, 38.848125, 47.076954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031921, 39.103344, 46.862236>,  <35.899433, 39.256477, 46.733406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031921, 39.103344, 46.862236>,  <36.252735, 38.848125, 47.076954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031921, 39.103344, 46.862236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216908, 0.731502, 0.646418,
		0.805115, 0.240409, -0.542211,
		-0.552033, 0.638051, -0.536796,
		35.866310, 39.294758, 46.701199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738255, 39.423698, 46.920444>,  <36.252735, 38.848125, 47.076954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738255, 39.423698, 46.920444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365685, 39.566547, 46.892410>,  <36.142143, 39.652256, 46.875591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365685, 39.566547, 46.892410>,  <36.738255, 39.423698, 46.920444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365685, 39.566547, 46.892410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255414, 0.778630, 0.573148,
		0.259255, 0.515944, -0.816449,
		-0.931424, 0.357124, -0.070084,
		36.086258, 39.673683, 46.871384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006504, 40.143650, 46.825878>,  <36.738255, 39.423698, 46.920444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006504, 40.143650, 46.825878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629654, 40.091984, 46.949627>,  <36.403542, 40.060982, 47.023876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629654, 40.091984, 46.949627>,  <37.006504, 40.143650, 46.825878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629654, 40.091984, 46.949627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116504, 0.739140, 0.663400,
		-0.314356, 0.661051, -0.681316,
		-0.942129, -0.129168, 0.309368,
		36.347015, 40.053234, 47.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600941, 40.700840, 46.693832>,  <37.006504, 40.143650, 46.825878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600941, 40.700840, 46.693832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394955, 40.558216, 47.005646>,  <36.271362, 40.472641, 47.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394955, 40.558216, 47.005646>,  <36.600941, 40.700840, 46.693832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394955, 40.558216, 47.005646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152933, 0.856582, 0.492828,
		-0.843459, 0.373006, -0.386579,
		-0.514964, -0.356559, 0.779537,
		36.240467, 40.451248, 47.239506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428982, 41.275249, 47.008266>,  <36.600941, 40.700840, 46.693832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428982, 41.275249, 47.008266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311741, 41.027855, 47.299900>,  <36.241394, 40.879417, 47.474880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311741, 41.027855, 47.299900>,  <36.428982, 41.275249, 47.008266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311741, 41.027855, 47.299900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109640, 0.735800, 0.668264,
		-0.949772, 0.275809, -0.147857,
		-0.293107, -0.618487, 0.729083,
		36.223808, 40.842308, 47.518623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971832, 41.677711, 47.420177>,  <36.428982, 41.275249, 47.008266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971832, 41.677711, 47.420177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101959, 41.387119, 47.662300>,  <36.180035, 41.212765, 47.807575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101959, 41.387119, 47.662300>,  <35.971832, 41.677711, 47.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101959, 41.387119, 47.662300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150028, 0.671674, 0.725497,
		-0.933626, -0.145207, 0.327502,
		0.325321, -0.726478, 0.605307,
		36.199554, 41.169174, 47.843891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555893, 41.603676, 48.008812>,  <35.971832, 41.677711, 47.420177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555893, 41.603676, 48.008812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910645, 41.459999, 48.125034>,  <36.123497, 41.373795, 48.194767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910645, 41.459999, 48.125034>,  <35.555893, 41.603676, 48.008812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910645, 41.459999, 48.125034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127833, 0.795147, 0.592790,
		-0.443959, -0.488592, 0.751118,
		0.886882, -0.359192, 0.290555,
		36.176708, 41.352242, 48.212200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591415, 41.428623, 48.767426>,  <35.555893, 41.603676, 48.008812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591415, 41.428623, 48.767426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951324, 41.522545, 48.620304>,  <36.167271, 41.578899, 48.532032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951324, 41.522545, 48.620304>,  <35.591415, 41.428623, 48.767426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951324, 41.522545, 48.620304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106329, 0.699501, 0.706678,
		0.423205, -0.674957, 0.604426,
		0.899773, 0.234802, -0.367800,
		36.221256, 41.592987, 48.509964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871613, 41.925880, 49.163551>,  <35.591415, 41.428623, 48.767426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871613, 41.925880, 49.163551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190063, 41.912678, 48.921860>,  <36.381134, 41.904755, 48.776844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190063, 41.912678, 48.921860>,  <35.871613, 41.925880, 49.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190063, 41.912678, 48.921860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428302, 0.736110, 0.524117,
		0.427480, -0.676057, 0.600174,
		0.796127, -0.033006, -0.604229,
		36.428902, 41.902775, 48.740589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534706, 42.053711, 49.669258>,  <35.871613, 41.925880, 49.163551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534706, 42.053711, 49.669258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602390, 42.145767, 49.285923>,  <36.643002, 42.201000, 49.055923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602390, 42.145767, 49.285923>,  <36.534706, 42.053711, 49.669258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602390, 42.145767, 49.285923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403789, 0.870817, 0.280416,
		0.899068, -0.434413, 0.054420,
		0.169206, 0.230139, -0.958335,
		36.653152, 42.214809, 48.998421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097584, 42.447052, 49.700485>,  <36.534706, 42.053711, 49.669258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097584, 42.447052, 49.700485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975407, 42.508362, 49.324570>,  <36.902100, 42.545147, 49.099018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975407, 42.508362, 49.324570>,  <37.097584, 42.447052, 49.700485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975407, 42.508362, 49.324570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472814, 0.881106, -0.009963,
		0.826529, -0.447390, -0.341601,
		-0.305444, 0.153279, -0.939792,
		36.883774, 42.554344, 49.042633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707855, 42.575459, 49.317799>,  <37.097584, 42.447052, 49.700485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707855, 42.575459, 49.317799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389454, 42.763577, 49.165371>,  <37.198414, 42.876446, 49.073914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389454, 42.763577, 49.165371>,  <37.707855, 42.575459, 49.317799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389454, 42.763577, 49.165371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505870, 0.862574, 0.007846,
		0.332387, -0.186524, -0.924515,
		-0.795999, 0.470292, -0.381066,
		37.150654, 42.904663, 49.051052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001648, 43.038368, 48.916534>,  <37.707855, 42.575459, 49.317799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001648, 43.038368, 48.916534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624146, 43.165051, 48.954514>,  <37.397644, 43.241058, 48.977299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624146, 43.165051, 48.954514>,  <38.001648, 43.038368, 48.916534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624146, 43.165051, 48.954514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309032, 0.947042, -0.087243,
		-0.117548, -0.052995, -0.991652,
		-0.943759, 0.316707, 0.094946,
		37.341019, 43.260063, 48.982998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724155, 43.437519, 48.364632>,  <38.001648, 43.038368, 48.916534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724155, 43.437519, 48.364632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575161, 43.545883, 48.719677>,  <37.485764, 43.610901, 48.932705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575161, 43.545883, 48.719677>,  <37.724155, 43.437519, 48.364632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575161, 43.545883, 48.719677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485545, 0.871983, -0.062382,
		-0.790887, 0.407742, -0.456338,
		-0.372483, 0.270910, 0.887617,
		37.463417, 43.627155, 48.985962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944778, 44.191109, 48.373455>,  <37.724155, 43.437519, 48.364632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944778, 44.191109, 48.373455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161911, 44.490311, 48.220707>,  <38.292191, 44.669834, 48.129059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161911, 44.490311, 48.220707>,  <37.944778, 44.191109, 48.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161911, 44.490311, 48.220707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161918, -0.352948, -0.921526,
		-0.824088, 0.562060, -0.070474,
		0.542827, 0.748008, -0.381868,
		38.324760, 44.714714, 48.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670601, 44.349472, 47.686039>,  <37.944778, 44.191109, 48.373455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670601, 44.349472, 47.686039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022190, 44.536831, 47.650227>,  <38.233143, 44.649246, 47.628738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022190, 44.536831, 47.650227>,  <37.670601, 44.349472, 47.686039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022190, 44.536831, 47.650227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026745, -0.235872, -0.971416,
		-0.476123, 0.851453, -0.219852,
		0.878972, 0.468393, -0.089532,
		38.285881, 44.677349, 47.623367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641815, 44.615807, 46.988434>,  <37.670601, 44.349472, 47.686039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641815, 44.615807, 46.988434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014816, 44.559071, 47.121288>,  <38.238617, 44.525028, 47.201000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014816, 44.559071, 47.121288>,  <37.641815, 44.615807, 46.988434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014816, 44.559071, 47.121288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170590, -0.637606, -0.751237,
		0.318334, 0.757192, -0.570373,
		0.932504, -0.141844, 0.332141,
		38.294567, 44.516518, 47.220932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975983, 44.564960, 46.404156>,  <37.641815, 44.615807, 46.988434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975983, 44.564960, 46.404156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199047, 44.384136, 46.682621>,  <38.332886, 44.275642, 46.849701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199047, 44.384136, 46.682621>,  <37.975983, 44.564960, 46.404156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199047, 44.384136, 46.682621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167003, -0.760436, -0.627573,
		0.813093, 0.466238, -0.348573,
		0.557665, -0.452062, 0.696168,
		38.366348, 44.248516, 46.891472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660404, 44.388268, 46.033394>,  <37.975983, 44.564960, 46.404156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660404, 44.388268, 46.033394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657459, 44.165054, 46.365311>,  <38.655693, 44.031128, 46.564461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657459, 44.165054, 46.365311>,  <38.660404, 44.388268, 46.033394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657459, 44.165054, 46.365311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127234, -0.823590, -0.552731,
		0.991845, 0.101506, 0.077067,
		-0.007367, -0.558029, 0.829789,
		38.655251, 43.997646, 46.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237785, 43.935295, 45.933918>,  <38.660404, 44.388268, 46.033394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237785, 43.935295, 45.933918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038479, 43.756626, 46.231163>,  <38.918896, 43.649426, 46.409512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038479, 43.756626, 46.231163>,  <39.237785, 43.935295, 45.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038479, 43.756626, 46.231163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207491, -0.893609, -0.398008,
		0.841833, -0.044123, 0.537932,
		-0.498262, -0.446672, 0.743114,
		38.889000, 43.622623, 46.454098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630390, 43.369255, 46.187305>,  <39.237785, 43.935295, 45.933918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630390, 43.369255, 46.187305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249180, 43.303219, 46.288887>,  <39.020454, 43.263599, 46.349834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249180, 43.303219, 46.288887>,  <39.630390, 43.369255, 46.187305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249180, 43.303219, 46.288887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009919, -0.854974, -0.518575,
		0.302733, -0.491696, 0.816448,
		-0.953024, -0.165088, 0.253952,
		38.963272, 43.253693, 46.365074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531410, 42.624207, 46.303856>,  <39.630390, 43.369255, 46.187305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531410, 42.624207, 46.303856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155300, 42.745781, 46.242523>,  <38.929634, 42.818726, 46.205723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155300, 42.745781, 46.242523>,  <39.531410, 42.624207, 46.303856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155300, 42.745781, 46.242523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214939, -0.879328, -0.424951,
		-0.263988, -0.366612, 0.892136,
		-0.940272, 0.303937, -0.153333,
		38.873219, 42.836964, 46.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067001, 42.130222, 46.497307>,  <39.531410, 42.624207, 46.303856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067001, 42.130222, 46.497307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824509, 42.343624, 46.261391>,  <38.679012, 42.471664, 46.119839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824509, 42.343624, 46.261391>,  <39.067001, 42.130222, 46.497307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824509, 42.343624, 46.261391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136881, -0.800536, -0.583442,
		-0.783418, -0.272971, 0.558339,
		-0.606234, 0.533505, -0.589790,
		38.642639, 42.503677, 46.084454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459961, 41.837013, 46.502666>,  <39.067001, 42.130222, 46.497307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459961, 41.837013, 46.502666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460361, 42.058414, 46.169529>,  <38.460602, 42.191254, 45.969646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460361, 42.058414, 46.169529>,  <38.459961, 41.837013, 46.502666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460361, 42.058414, 46.169529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319655, -0.788976, -0.524726,
		-0.947533, 0.266748, 0.176142,
		0.000998, 0.553500, -0.832849,
		38.460659, 42.224464, 45.919674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754017, 41.860649, 46.258469>,  <38.459961, 41.837013, 46.502666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754017, 41.860649, 46.258469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005127, 41.934284, 45.955944>,  <38.155792, 41.978466, 45.774429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005127, 41.934284, 45.955944>,  <37.754017, 41.860649, 46.258469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005127, 41.934284, 45.955944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494459, -0.656107, -0.570117,
		-0.601174, 0.731872, -0.320864,
		0.627774, 0.184086, -0.756315,
		38.193459, 41.989510, 45.729050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325031, 41.863583, 45.656006>,  <37.754017, 41.860649, 46.258469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325031, 41.863583, 45.656006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 41.819305, 45.518410>,  <37.921783, 41.792740, 45.435852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 41.819305, 45.518410>,  <37.325031, 41.863583, 45.656006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698002, 41.819305, 45.518410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309037, -0.737660, -0.600295,
		-0.187299, 0.666036, -0.722021,
		0.932424, -0.110696, -0.343993,
		37.977730, 41.786095, 45.415211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357853, 41.850948, 44.799999>,  <37.325031, 41.863583, 45.656006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357853, 41.850948, 44.799999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636166, 41.649055, 45.004402>,  <37.803154, 41.527920, 45.127045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636166, 41.649055, 45.004402>,  <37.357853, 41.850948, 44.799999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636166, 41.649055, 45.004402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164725, -0.804633, -0.570466,
		0.699111, 0.312742, -0.642990,
		0.695780, -0.504736, 0.511011,
		37.844898, 41.497635, 45.157707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855522, 41.596142, 44.314529>,  <37.357853, 41.850948, 44.799999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855522, 41.596142, 44.314529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909317, 41.362038, 44.634377>,  <37.941593, 41.221577, 44.826283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909317, 41.362038, 44.634377>,  <37.855522, 41.596142, 44.314529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909317, 41.362038, 44.634377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113803, -0.792484, -0.599181,
		0.984358, 0.171583, -0.039977,
		0.134491, -0.585259, 0.799615,
		37.949665, 41.186459, 44.874260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401184, 41.125122, 44.127449>,  <37.855522, 41.596142, 44.314529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401184, 41.125122, 44.127449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222824, 40.971676, 44.450935>,  <38.115810, 40.879608, 44.645027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222824, 40.971676, 44.450935>,  <38.401184, 41.125122, 44.127449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222824, 40.971676, 44.450935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015007, -0.906583, -0.421761,
		0.894959, -0.175925, 0.409998,
		-0.445896, -0.383612, 0.808714,
		38.089054, 40.856594, 44.693550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830811, 40.629028, 44.371674>,  <38.401184, 41.125122, 44.127449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830811, 40.629028, 44.371674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474972, 40.546188, 44.534508>,  <38.261467, 40.496487, 44.632210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474972, 40.546188, 44.534508>,  <38.830811, 40.629028, 44.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474972, 40.546188, 44.534508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022834, -0.910347, -0.413216,
		0.456168, -0.358301, 0.814574,
		-0.889601, -0.207096, 0.407090,
		38.208092, 40.484058, 44.656635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873238, 39.915314, 44.591820>,  <38.830811, 40.629028, 44.371674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873238, 39.915314, 44.591820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479805, 39.983612, 44.568428>,  <38.243748, 40.024590, 44.554394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479805, 39.983612, 44.568428>,  <38.873238, 39.915314, 44.591820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479805, 39.983612, 44.568428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117501, -0.851747, -0.510608,
		-0.136993, -0.495352, 0.857823,
		-0.983578, 0.170745, -0.058479,
		38.184731, 40.034836, 44.550884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660408, 39.248547, 44.428196>,  <38.873238, 39.915314, 44.591820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660408, 39.248547, 44.428196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316956, 39.442917, 44.362923>,  <38.110882, 39.559540, 44.323761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316956, 39.442917, 44.362923>,  <38.660408, 39.248547, 44.428196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316956, 39.442917, 44.362923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356780, -0.795118, -0.490403,
		-0.368045, -0.362858, 0.856083,
		-0.858633, 0.485923, -0.163179,
		38.059364, 39.588696, 44.313969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037445, 38.902641, 44.628311>,  <38.660408, 39.248547, 44.428196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037445, 38.902641, 44.628311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896629, 39.161350, 44.357681>,  <37.812141, 39.316578, 44.195305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896629, 39.161350, 44.357681>,  <38.037445, 38.902641, 44.628311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896629, 39.161350, 44.357681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242304, -0.761177, -0.601580,
		-0.904078, -0.047844, 0.424681,
		-0.352040, 0.646777, -0.676571,
		37.791016, 39.355385, 44.154709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447109, 38.567154, 44.419281>,  <38.037445, 38.902641, 44.628311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447109, 38.567154, 44.419281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489056, 38.851303, 44.140892>,  <37.514225, 39.021793, 43.973858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489056, 38.851303, 44.140892>,  <37.447109, 38.567154, 44.419281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489056, 38.851303, 44.140892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434950, -0.596589, -0.674463,
		-0.894328, 0.373442, 0.246413,
		0.104865, 0.710368, -0.695974,
		37.520515, 39.064415, 43.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837929, 38.488628, 44.075455>,  <37.447109, 38.567154, 44.419281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837929, 38.488628, 44.075455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134659, 38.644299, 43.857014>,  <37.312698, 38.737701, 43.725948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134659, 38.644299, 43.857014>,  <36.837929, 38.488628, 44.075455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134659, 38.644299, 43.857014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220050, -0.628000, -0.746454,
		-0.633456, 0.673913, -0.380231,
		0.741830, 0.389176, -0.546105,
		37.357208, 38.761051, 43.693184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558155, 38.590237, 43.470253>,  <36.837929, 38.488628, 44.075455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558155, 38.590237, 43.470253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954144, 38.582287, 43.414299>,  <37.191734, 38.577515, 43.380726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954144, 38.582287, 43.414299>,  <36.558155, 38.590237, 43.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954144, 38.582287, 43.414299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135743, -0.408451, -0.902630,
		-0.039191, 0.912564, -0.407052,
		0.989968, -0.019879, -0.139882,
		37.251133, 38.576324, 43.372334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662384, 38.848320, 42.873398>,  <36.558155, 38.590237, 43.470253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662384, 38.848320, 42.873398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977432, 38.607327, 42.925045>,  <37.166462, 38.462730, 42.956032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977432, 38.607327, 42.925045>,  <36.662384, 38.848320, 42.873398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977432, 38.607327, 42.925045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166894, -0.410320, -0.896540,
		0.593127, 0.684585, -0.423727,
		0.787621, -0.602480, 0.129118,
		37.213718, 38.426582, 42.963779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883179, 38.732155, 42.217949>,  <36.662384, 38.848320, 42.873398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883179, 38.732155, 42.217949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098671, 38.448425, 42.399773>,  <37.227966, 38.278187, 42.508865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098671, 38.448425, 42.399773>,  <36.883179, 38.732155, 42.217949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098671, 38.448425, 42.399773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037880, -0.518612, -0.854170,
		0.841624, 0.477390, -0.252525,
		0.538734, -0.709324, 0.454560,
		37.260292, 38.235626, 42.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421658, 38.721134, 41.791325>,  <36.883179, 38.732155, 42.217949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421658, 38.721134, 41.791325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408146, 38.367645, 41.978039>,  <37.400040, 38.155552, 42.090069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408146, 38.367645, 41.978039>,  <37.421658, 38.721134, 41.791325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408146, 38.367645, 41.978039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066415, -0.468005, -0.881227,
		0.997220, 0.001234, 0.074502,
		-0.033780, -0.883725, 0.466786,
		37.398010, 38.102528, 42.118076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888062, 38.389034, 41.446720>,  <37.421658, 38.721134, 41.791325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888062, 38.389034, 41.446720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678967, 38.104954, 41.635338>,  <37.553509, 37.934505, 41.748508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678967, 38.104954, 41.635338>,  <37.888062, 38.389034, 41.446720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678967, 38.104954, 41.635338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147502, -0.469444, -0.870555,
		0.839636, -0.524626, 0.140640,
		-0.522738, -0.710204, 0.471545,
		37.522144, 37.891891, 41.776802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179638, 37.761936, 41.230225>,  <37.888062, 38.389034, 41.446720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179638, 37.761936, 41.230225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819637, 37.662624, 41.373528>,  <37.603638, 37.603035, 41.459507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819637, 37.662624, 41.373528>,  <38.179638, 37.761936, 41.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819637, 37.662624, 41.373528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141923, -0.610203, -0.779429,
		0.412126, -0.752335, 0.513949,
		-0.900006, -0.248282, 0.358255,
		37.549637, 37.588139, 41.481003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225212, 37.026546, 41.281700>,  <38.179638, 37.761936, 41.230225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225212, 37.026546, 41.281700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845921, 37.150578, 41.254261>,  <37.618343, 37.224998, 41.237797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845921, 37.150578, 41.254261>,  <38.225212, 37.026546, 41.281700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845921, 37.150578, 41.254261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094569, -0.481912, -0.871101,
		-0.303168, -0.819519, 0.486289,
		-0.948233, 0.310078, -0.068599,
		37.561451, 37.243603, 41.233681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804100, 36.479641, 41.064983>,  <38.225212, 37.026546, 41.281700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804100, 36.479641, 41.064983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575069, 36.789047, 40.956299>,  <37.437653, 36.974693, 40.891090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575069, 36.789047, 40.956299>,  <37.804100, 36.479641, 41.064983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575069, 36.789047, 40.956299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250664, -0.480709, -0.840289,
		-0.780592, -0.413022, 0.469136,
		-0.572576, 0.773519, -0.271708,
		37.403297, 37.021103, 40.874786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347694, 36.210781, 40.686203>,  <37.804100, 36.479641, 41.064983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347694, 36.210781, 40.686203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312920, 36.590107, 40.564125>,  <37.292053, 36.817703, 40.490879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312920, 36.590107, 40.564125>,  <37.347694, 36.210781, 40.686203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312920, 36.590107, 40.564125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154232, -0.315472, -0.936317,
		-0.984203, -0.034329, 0.173686,
		-0.086935, 0.948314, -0.305193,
		37.286839, 36.874599, 40.472569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775688, 36.196465, 40.334305>,  <37.347694, 36.210781, 40.686203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775688, 36.196465, 40.334305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977554, 36.517612, 40.207359>,  <37.098675, 36.710300, 40.131191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977554, 36.517612, 40.207359>,  <36.775688, 36.196465, 40.334305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977554, 36.517612, 40.207359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126579, -0.432446, -0.892731,
		-0.853984, 0.410361, -0.319867,
		0.504668, 0.802866, -0.317359,
		37.128956, 36.758472, 40.112152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399761, 36.418583, 39.820053>,  <36.775688, 36.196465, 40.334305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399761, 36.418583, 39.820053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772598, 36.553902, 39.768272>,  <36.996300, 36.635094, 39.737206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772598, 36.553902, 39.768272>,  <36.399761, 36.418583, 39.820053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772598, 36.553902, 39.768272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077550, -0.162720, -0.983620,
		-0.353825, 0.926862, -0.125435,
		0.932091, 0.338301, -0.129453,
		37.052227, 36.655392, 39.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349869, 36.941757, 39.329857>,  <36.399761, 36.418583, 39.820053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349869, 36.941757, 39.329857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744125, 36.880547, 39.301331>,  <36.980679, 36.843819, 39.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744125, 36.880547, 39.301331>,  <36.349869, 36.941757, 39.329857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744125, 36.880547, 39.301331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077450, -0.034466, -0.996400,
		0.150020, 0.987621, -0.045823,
		0.985645, -0.153029, -0.071320,
		37.039818, 36.834637, 39.279934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493156, 37.219845, 38.698650>,  <36.349869, 36.941757, 39.329857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493156, 37.219845, 38.698650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825279, 37.006527, 38.763371>,  <37.024555, 36.878536, 38.802204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825279, 37.006527, 38.763371>,  <36.493156, 37.219845, 38.698650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825279, 37.006527, 38.763371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127798, -0.100394, -0.986706,
		0.542449, 0.839952, -0.015204,
		0.830312, -0.533294, 0.161803,
		37.074371, 36.846539, 38.811913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906563, 37.540062, 38.252197>,  <36.493156, 37.219845, 38.698650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906563, 37.540062, 38.252197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087982, 37.196796, 38.348404>,  <37.196835, 36.990837, 38.406128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087982, 37.196796, 38.348404>,  <36.906563, 37.540062, 38.252197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087982, 37.196796, 38.348404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369136, -0.064748, -0.927117,
		0.811193, 0.509273, 0.287414,
		0.453546, -0.858166, 0.240514,
		37.224045, 36.939346, 38.420559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607407, 37.636314, 38.178608>,  <36.906563, 37.540062, 38.252197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607407, 37.636314, 38.178608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499470, 37.253483, 38.136292>,  <37.434708, 37.023785, 38.110901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499470, 37.253483, 38.136292>,  <37.607407, 37.636314, 38.178608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499470, 37.253483, 38.136292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382372, -0.005676, -0.923991,
		0.883728, -0.289785, 0.367491,
		-0.269845, -0.957075, -0.105790,
		37.418518, 36.966362, 38.104553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127918, 37.279362, 37.978203>,  <37.607407, 37.636314, 38.178608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127918, 37.279362, 37.978203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874641, 36.985588, 37.880489>,  <37.722675, 36.809326, 37.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874641, 36.985588, 37.880489>,  <38.127918, 37.279362, 37.978203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874641, 36.985588, 37.880489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400476, -0.040791, -0.915399,
		0.662332, -0.677457, 0.319950,
		-0.633194, -0.734431, -0.244288,
		37.684685, 36.765259, 37.807201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496155, 36.837833, 37.599277>,  <38.127918, 37.279362, 37.978203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496155, 36.837833, 37.599277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115852, 36.767307, 37.497311>,  <37.887672, 36.724991, 37.436131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115852, 36.767307, 37.497311>,  <38.496155, 36.837833, 37.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115852, 36.767307, 37.497311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272036, -0.080540, -0.958911,
		0.148543, -0.981033, 0.124539,
		-0.950753, -0.176318, -0.254913,
		37.830627, 36.714413, 37.420837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547527, 36.239002, 37.161209>,  <38.496155, 36.837833, 37.599277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547527, 36.239002, 37.161209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194149, 36.406418, 37.076965>,  <37.982124, 36.506866, 37.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194149, 36.406418, 37.076965>,  <38.547527, 36.239002, 37.161209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194149, 36.406418, 37.076965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164524, -0.143764, -0.975840,
		-0.438702, -0.896749, 0.058148,
		-0.883443, 0.418536, -0.210607,
		37.929115, 36.531979, 37.013783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280155, 35.902794, 36.520164>,  <38.547527, 36.239002, 37.161209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280155, 35.902794, 36.520164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089989, 36.251392, 36.568298>,  <37.975887, 36.460552, 36.597179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089989, 36.251392, 36.568298>,  <38.280155, 35.902794, 36.520164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089989, 36.251392, 36.568298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233465, 0.256851, -0.937828,
		-0.848216, -0.417768, -0.325575,
		-0.475419, 0.871492, 0.120331,
		37.947365, 36.512840, 36.604397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892811, 35.526310, 36.315868>,  <38.280155, 35.902794, 36.520164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892811, 35.526310, 36.315868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138767, 35.739265, 36.083157>,  <39.286339, 35.867039, 35.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138767, 35.739265, 36.083157>,  <38.892811, 35.526310, 36.315868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138767, 35.739265, 36.083157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667926, 0.040634, 0.743117,
		0.419270, -0.845522, -0.330614,
		0.614888, 0.532392, -0.581783,
		39.323235, 35.898983, 35.908623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693802, 35.291660, 36.434086>,  <38.892811, 35.526310, 36.315868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693802, 35.291660, 36.434086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662815, 35.658779, 36.278316>,  <39.644222, 35.879051, 36.184853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662815, 35.658779, 36.278316>,  <39.693802, 35.291660, 36.434086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662815, 35.658779, 36.278316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745968, 0.312501, 0.588111,
		0.661462, -0.244942, -0.708853,
		-0.077464, 0.917794, -0.389426,
		39.639576, 35.934116, 36.161488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442768, 35.483395, 36.110310>,  <39.693802, 35.291660, 36.434086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442768, 35.483395, 36.110310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184639, 35.732864, 36.286758>,  <40.029762, 35.882545, 36.392628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184639, 35.732864, 36.286758>,  <40.442768, 35.483395, 36.110310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184639, 35.732864, 36.286758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649724, 0.144403, 0.746329,
		0.401768, 0.768229, -0.498404,
		-0.645323, 0.623676, 0.441120,
		39.991043, 35.919968, 36.419094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817039, 36.119385, 36.392269>,  <40.442768, 35.483395, 36.110310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817039, 36.119385, 36.392269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502407, 36.001926, 36.609547>,  <40.313625, 35.931454, 36.739914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502407, 36.001926, 36.609547>,  <40.817039, 36.119385, 36.392269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502407, 36.001926, 36.609547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552189, 0.059201, 0.831614,
		-0.276354, 0.954081, 0.115579,
		-0.786585, -0.293642, 0.543194,
		40.266430, 35.913834, 36.772503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369915, 35.600140, 36.634995>,  <40.817039, 36.119385, 36.392269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369915, 35.600140, 36.634995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355068, 35.891289, 36.908878>,  <41.346161, 36.065979, 37.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355068, 35.891289, 36.908878>,  <41.369915, 35.600140, 36.634995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355068, 35.891289, 36.908878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109225, -0.684034, 0.721227,
		0.993324, -0.048017, 0.104891,
		-0.037118, 0.727868, 0.684712,
		41.343933, 36.109650, 37.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024307, 35.516689, 37.076126>,  <41.369915, 35.600140, 36.634995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024307, 35.516689, 37.076126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677719, 35.628288, 37.241722>,  <41.469765, 35.695248, 37.341080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677719, 35.628288, 37.241722>,  <42.024307, 35.516689, 37.076126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677719, 35.628288, 37.241722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009359, -0.820037, 0.572234,
		0.499139, 0.499699, 0.707927,
		-0.866472, 0.278999, 0.413989,
		41.417778, 35.711987, 37.365917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010563, 35.744915, 37.855923>,  <42.024307, 35.516689, 37.076126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010563, 35.744915, 37.855923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681408, 35.570244, 37.710499>,  <41.483917, 35.465439, 37.623245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681408, 35.570244, 37.710499>,  <42.010563, 35.744915, 37.855923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681408, 35.570244, 37.710499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074652, -0.717365, 0.692686,
		-0.563285, 0.542860, 0.622907,
		-0.822883, -0.436681, -0.363556,
		41.434544, 35.439240, 37.601433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696774, 35.648010, 37.580692>,  <42.010563, 35.744915, 37.855923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696774, 35.648010, 37.580692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995838, 35.706474, 37.321575>,  <43.175278, 35.741554, 37.166103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995838, 35.706474, 37.321575>,  <42.696774, 35.648010, 37.580692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995838, 35.706474, 37.321575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040931, 0.963481, 0.264631,
		0.662816, -0.224369, 0.714376,
		0.747663, 0.146161, -0.647794,
		43.220139, 35.750324, 37.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177464, 36.002354, 37.904472>,  <42.696774, 35.648010, 37.580692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177464, 36.002354, 37.904472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248600, 36.106956, 37.525002>,  <43.291283, 36.169716, 37.297318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248600, 36.106956, 37.525002>,  <43.177464, 36.002354, 37.904472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248600, 36.106956, 37.525002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028342, 0.965006, 0.260693,
		0.983650, -0.019476, 0.179033,
		0.177846, 0.261504, -0.948676,
		43.301952, 36.185410, 37.240398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771908, 36.404545, 37.901558>,  <43.177464, 36.002354, 37.904472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771908, 36.404545, 37.901558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576054, 36.488434, 37.563026>,  <43.458542, 36.538765, 37.359905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576054, 36.488434, 37.563026>,  <43.771908, 36.404545, 37.901558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576054, 36.488434, 37.563026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127100, 0.977443, 0.168675,
		0.862614, -0.024979, -0.505246,
		-0.489636, 0.209718, -0.846330,
		43.429161, 36.551350, 37.309128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068436, 36.929409, 37.620712>,  <43.771908, 36.404545, 37.901558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068436, 36.929409, 37.620712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736805, 36.973408, 37.401432>,  <43.537827, 36.999805, 37.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736805, 36.973408, 37.401432>,  <44.068436, 36.929409, 37.620712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736805, 36.973408, 37.401432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160914, 0.985918, -0.045535,
		0.535475, -0.125965, -0.835104,
		-0.829080, 0.109997, -0.548204,
		43.488083, 37.006409, 37.236969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075798, 37.600788, 37.179520>,  <44.068436, 36.929409, 37.620712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075798, 37.600788, 37.179520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688560, 37.506100, 37.146656>,  <43.456219, 37.449287, 37.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688560, 37.506100, 37.146656>,  <44.075798, 37.600788, 37.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688560, 37.506100, 37.146656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221574, 0.961843, -0.160507,
		0.117021, -0.137182, -0.983609,
		-0.968097, -0.236725, -0.082160,
		43.398132, 37.435081, 37.122009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891323, 37.818829, 36.532352>,  <44.075798, 37.600788, 37.179520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891323, 37.818829, 36.532352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577599, 37.809917, 36.780338>,  <43.389362, 37.804569, 36.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577599, 37.809917, 36.780338>,  <43.891323, 37.818829, 36.532352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577599, 37.809917, 36.780338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142200, 0.979203, -0.144708,
		-0.603852, -0.201656, -0.771167,
		-0.784310, -0.022278, 0.619969,
		43.342304, 37.803234, 36.966328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460011, 38.307159, 36.260925>,  <43.891323, 37.818829, 36.532352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460011, 38.307159, 36.260925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328697, 38.252144, 36.634731>,  <43.249908, 38.219135, 36.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328697, 38.252144, 36.634731>,  <43.460011, 38.307159, 36.260925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328697, 38.252144, 36.634731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007836, 0.989705, 0.142906,
		-0.944546, 0.039591, -0.325983,
		-0.328284, -0.137536, 0.934512,
		43.230213, 38.210884, 36.915085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913422, 38.786800, 36.364368>,  <43.460011, 38.307159, 36.260925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913422, 38.786800, 36.364368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017609, 38.700062, 36.740696>,  <43.080120, 38.648018, 36.966492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017609, 38.700062, 36.740696>,  <42.913422, 38.786800, 36.364368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017609, 38.700062, 36.740696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050541, 0.970054, 0.237574,
		-0.964159, -0.109430, 0.241706,
		0.260465, -0.216843, 0.940817,
		43.095749, 38.635010, 37.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525932, 39.314857, 36.767197>,  <42.913422, 38.786800, 36.364368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525932, 39.314857, 36.767197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819618, 39.196190, 37.011463>,  <42.995831, 39.124989, 37.158024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819618, 39.196190, 37.011463>,  <42.525932, 39.314857, 36.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819618, 39.196190, 37.011463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010008, 0.904105, 0.427193,
		-0.678844, -0.307539, 0.666776,
		0.734214, -0.296670, 0.610668,
		43.039883, 39.107189, 37.194664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362995, 39.498341, 37.489544>,  <42.525932, 39.314857, 36.767197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362995, 39.498341, 37.489544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758514, 39.441822, 37.508766>,  <42.995827, 39.407909, 37.520298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758514, 39.441822, 37.508766>,  <42.362995, 39.498341, 37.489544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758514, 39.441822, 37.508766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098275, 0.858749, 0.502885,
		-0.112322, -0.492530, 0.863017,
		0.988800, -0.141298, 0.048053,
		43.055153, 39.399433, 37.523182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491909, 39.620171, 38.176682>,  <42.362995, 39.498341, 37.489544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491909, 39.620171, 38.176682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838406, 39.658329, 37.980507>,  <43.046303, 39.681225, 37.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838406, 39.658329, 37.980507>,  <42.491909, 39.620171, 38.176682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838406, 39.658329, 37.980507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139894, 0.896032, 0.421373,
		0.479646, -0.433619, 0.762833,
		0.866239, 0.095394, -0.490439,
		43.098278, 39.686947, 37.833374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860085, 39.906059, 38.725044>,  <42.491909, 39.620171, 38.176682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860085, 39.906059, 38.725044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078518, 39.974533, 38.397022>,  <43.209579, 40.015617, 38.200211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078518, 39.974533, 38.397022>,  <42.860085, 39.906059, 38.725044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078518, 39.974533, 38.397022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205120, 0.921778, 0.329014,
		0.812229, -0.347879, 0.468256,
		0.546085, 0.171186, -0.820052,
		43.242344, 40.025890, 38.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652836, 40.073692, 38.891140>,  <42.860085, 39.906059, 38.725044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652836, 40.073692, 38.891140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520309, 40.229233, 38.547272>,  <43.440792, 40.322556, 38.340950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520309, 40.229233, 38.547272>,  <43.652836, 40.073692, 38.891140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520309, 40.229233, 38.547272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134311, 0.921286, 0.364957,
		0.933912, 0.005453, -0.357462,
		-0.331315, 0.388848, -0.859667,
		43.420914, 40.345886, 38.289371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099945, 40.699490, 38.787228>,  <43.652836, 40.073692, 38.891140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099945, 40.699490, 38.787228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779484, 40.746723, 38.552547>,  <43.587208, 40.775063, 38.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779484, 40.746723, 38.552547>,  <44.099945, 40.699490, 38.787228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779484, 40.746723, 38.552547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059702, 0.959682, 0.274676,
		0.595480, 0.255083, -0.761798,
		-0.801149, 0.118084, -0.586700,
		43.539139, 40.782146, 38.376537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243053, 41.395039, 38.442009>,  <44.099945, 40.699490, 38.787228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243053, 41.395039, 38.442009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862789, 41.310913, 38.350777>,  <43.634632, 41.260437, 38.296036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862789, 41.310913, 38.350777>,  <44.243053, 41.395039, 38.442009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862789, 41.310913, 38.350777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202560, 0.977601, -0.057150,
		0.234994, -0.008129, -0.971963,
		-0.950656, -0.210311, -0.228084,
		43.577591, 41.247818, 38.282352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109333, 42.034668, 37.981972>,  <44.243053, 41.395039, 38.442009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109333, 42.034668, 37.981972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765282, 41.857193, 38.082623>,  <43.558849, 41.750710, 38.143013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765282, 41.857193, 38.082623>,  <44.109333, 42.034668, 37.981972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765282, 41.857193, 38.082623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333054, 0.862167, 0.381763,
		-0.386326, 0.244561, -0.889349,
		-0.860132, -0.443687, 0.251626,
		43.507240, 41.724087, 38.158112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465195, 42.376842, 37.579552>,  <44.109333, 42.034668, 37.981972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465195, 42.376842, 37.579552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379211, 42.212887, 37.934128>,  <43.327621, 42.114513, 38.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379211, 42.212887, 37.934128>,  <43.465195, 42.376842, 37.579552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379211, 42.212887, 37.934128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412911, 0.860689, 0.297856,
		-0.885041, -0.301997, -0.354259,
		-0.214955, -0.409892, 0.886444,
		43.314724, 42.089920, 38.200062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765007, 42.628330, 37.661816>,  <43.465195, 42.376842, 37.579552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765007, 42.628330, 37.661816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915260, 42.546806, 38.023449>,  <43.005413, 42.497890, 38.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915260, 42.546806, 38.023449>,  <42.765007, 42.628330, 37.661816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915260, 42.546806, 38.023449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298609, 0.896878, 0.326255,
		-0.877343, -0.392519, 0.276039,
		0.375635, -0.203810, 0.904080,
		43.027950, 42.485664, 38.294674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208286, 42.858524, 38.145538>,  <42.765007, 42.628330, 37.661816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208286, 42.858524, 38.145538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534760, 42.852486, 38.376579>,  <42.730644, 42.848862, 38.515202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534760, 42.852486, 38.376579>,  <42.208286, 42.858524, 38.145538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534760, 42.852486, 38.376579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093570, 0.983009, 0.157917,
		-0.570169, -0.182935, 0.800901,
		0.816181, -0.015099, 0.577599,
		42.779613, 42.847958, 38.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968578, 43.197926, 38.689342>,  <42.208286, 42.858524, 38.145538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968578, 43.197926, 38.689342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367661, 43.224064, 38.696377>,  <42.607109, 43.239746, 38.700596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367661, 43.224064, 38.696377>,  <41.968578, 43.197926, 38.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367661, 43.224064, 38.696377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067491, 0.941869, 0.329131,
		0.004945, -0.329564, 0.944121,
		0.997707, 0.065347, 0.017585,
		42.666973, 43.243668, 38.701653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206131, 43.488125, 39.404518>,  <41.968578, 43.197926, 38.689342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206131, 43.488125, 39.404518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516617, 43.546688, 39.159225>,  <42.702908, 43.581825, 39.012051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516617, 43.546688, 39.159225>,  <42.206131, 43.488125, 39.404518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516617, 43.546688, 39.159225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168543, 0.889074, 0.425606,
		0.607521, -0.433718, 0.665438,
		0.776216, 0.146409, -0.613231,
		42.749481, 43.590611, 38.975258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783817, 43.480724, 39.835812>,  <42.206131, 43.488125, 39.404518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783817, 43.480724, 39.835812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849159, 43.684807, 39.498055>,  <42.888367, 43.807255, 39.295399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849159, 43.684807, 39.498055>,  <42.783817, 43.480724, 39.835812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849159, 43.684807, 39.498055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307856, 0.786794, 0.534957,
		0.937304, -0.347341, -0.028541,
		0.163357, 0.510204, -0.844397,
		42.898167, 43.837868, 39.244736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402454, 43.420521, 40.364849>,  <42.783817, 43.480724, 39.835812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402454, 43.420521, 40.364849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631069, 43.645462, 40.603882>,  <43.768238, 43.780426, 40.747303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631069, 43.645462, 40.603882>,  <43.402454, 43.420521, 40.364849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631069, 43.645462, 40.603882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800395, -0.542569, -0.254926,
		0.180874, 0.624004, -0.760199,
		0.571536, 0.562350, 0.597586,
		43.802528, 43.814167, 40.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710957, 43.789299, 39.864697>,  <43.402454, 43.420521, 40.364849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710957, 43.789299, 39.864697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938988, 44.077087, 40.023376>,  <44.075806, 44.249760, 40.118584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938988, 44.077087, 40.023376>,  <43.710957, 43.789299, 39.864697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938988, 44.077087, 40.023376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399109, -0.664555, 0.631726,
		0.718137, -0.201810, -0.665998,
		0.570081, 0.719471, 0.396697,
		44.110012, 44.292931, 40.142387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395184, 43.621231, 39.815914>,  <43.710957, 43.789299, 39.864697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395184, 43.621231, 39.815914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324890, 43.848801, 40.137272>,  <44.282715, 43.985344, 40.330086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324890, 43.848801, 40.137272>,  <44.395184, 43.621231, 39.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324890, 43.848801, 40.137272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446984, -0.681010, 0.580026,
		0.877111, 0.461033, -0.134627,
		-0.175729, 0.568924, 0.803396,
		44.272171, 44.019478, 40.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992756, 43.858452, 40.032566>,  <44.395184, 43.621231, 39.815914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992756, 43.858452, 40.032566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718697, 43.806110, 40.319187>,  <44.554260, 43.774708, 40.491161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718697, 43.806110, 40.319187>,  <44.992756, 43.858452, 40.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718697, 43.806110, 40.319187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623778, -0.613378, 0.484426,
		0.376134, 0.778874, 0.501874,
		-0.685146, -0.130849, 0.716557,
		44.513153, 43.766857, 40.534153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317616, 43.877312, 40.753769>,  <44.992756, 43.858452, 40.032566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317616, 43.877312, 40.753769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959591, 43.706005, 40.803501>,  <44.744778, 43.603222, 40.833340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959591, 43.706005, 40.803501>,  <45.317616, 43.877312, 40.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959591, 43.706005, 40.803501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383874, -0.598033, 0.703560,
		-0.226955, 0.677456, 0.699675,
		-0.895060, -0.428264, 0.124331,
		44.691074, 43.577526, 40.840801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918724, 43.633808, 40.466534>,  <45.317616, 43.877312, 40.753769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918724, 43.633808, 40.466534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050423, 43.680130, 40.841381>,  <46.129444, 43.707924, 41.066288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050423, 43.680130, 40.841381>,  <45.918724, 43.633808, 40.466534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050423, 43.680130, 40.841381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301257, -0.953468, 0.011978,
		0.894896, 0.278369, -0.348816,
		0.329250, 0.115802, 0.937115,
		46.149197, 43.714870, 41.122517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569309, 43.327465, 40.431499>,  <45.918724, 43.633808, 40.466534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569309, 43.327465, 40.431499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357475, 43.300484, 40.769730>,  <46.230377, 43.284294, 40.972668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357475, 43.300484, 40.769730>,  <46.569309, 43.327465, 40.431499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357475, 43.300484, 40.769730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129478, -0.991580, 0.001995,
		0.838319, 0.110540, 0.533855,
		-0.529581, -0.067451, 0.845573,
		46.198601, 43.280247, 41.023403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390507, 43.605789, 39.789391>,  <46.569309, 43.327465, 40.431499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390507, 43.605789, 39.789391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060871, 43.390419, 39.718998>,  <45.863091, 43.261196, 39.676762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060871, 43.390419, 39.718998>,  <46.390507, 43.605789, 39.789391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060871, 43.390419, 39.718998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533596, -0.633591, -0.560213,
		0.190134, -0.555569, 0.809439,
		-0.824090, -0.538429, -0.175982,
		45.813644, 43.228889, 39.666203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591194, 42.828079, 39.916058>,  <46.390507, 43.605789, 39.789391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591194, 42.828079, 39.916058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264988, 42.860004, 39.686775>,  <46.069263, 42.879158, 39.549206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264988, 42.860004, 39.686775>,  <46.591194, 42.828079, 39.916058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264988, 42.860004, 39.686775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440821, -0.556081, -0.704592,
		-0.374987, -0.827287, 0.418308,
		-0.815513, 0.079814, -0.573209,
		46.020332, 42.883949, 39.514812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411858, 42.161091, 39.582340>,  <46.591194, 42.828079, 39.916058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411858, 42.161091, 39.582340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234535, 42.445026, 39.363392>,  <46.128143, 42.615387, 39.232025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.234535, 42.445026, 39.363392>,  <46.411858, 42.161091, 39.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234535, 42.445026, 39.363392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245283, -0.491281, -0.835751,
		-0.862159, -0.504751, 0.043675,
		-0.443303, 0.709838, -0.547369,
		46.101543, 42.657978, 39.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787678, 41.821041, 39.343571>,  <46.411858, 42.161091, 39.582340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787678, 41.821041, 39.343571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849541, 42.125443, 39.091553>,  <45.886658, 42.308083, 38.940342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849541, 42.125443, 39.091553>,  <45.787678, 41.821041, 39.343571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849541, 42.125443, 39.091553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013099, -0.639241, -0.768895,
		-0.987882, 0.110659, -0.108829,
		0.154653, 0.761003, -0.630045,
		45.895935, 42.353745, 38.902538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376568, 41.714134, 38.814621>,  <45.787678, 41.821041, 39.343571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376568, 41.714134, 38.814621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 41.958942, 38.651428>,  <45.810154, 42.105827, 38.553513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 41.958942, 38.651428>,  <45.376568, 41.714134, 38.814621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647560, 41.958942, 38.651428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144781, -0.432864, -0.889757,
		-0.721154, 0.661858, -0.204646,
		0.677477, 0.612024, -0.407986,
		45.850803, 42.142548, 38.529034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043221, 41.979744, 38.256283>,  <45.376568, 41.714134, 38.814621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043221, 41.979744, 38.256283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429722, 42.027843, 38.165157>,  <45.661621, 42.056702, 38.110481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429722, 42.027843, 38.165157>,  <45.043221, 41.979744, 38.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429722, 42.027843, 38.165157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114817, -0.590631, -0.798731,
		-0.230604, 0.797931, -0.556890,
		0.966250, 0.120250, -0.227818,
		45.719597, 42.063919, 38.096813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000919, 42.090694, 37.617359>,  <45.043221, 41.979744, 38.256283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000919, 42.090694, 37.617359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393085, 42.016151, 37.642818>,  <45.628387, 41.971424, 37.658092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.393085, 42.016151, 37.642818>,  <45.000919, 42.090694, 37.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393085, 42.016151, 37.642818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064771, -0.610372, -0.789462,
		0.185971, 0.769881, -0.610491,
		0.980418, -0.186360, 0.063645,
		45.687210, 41.960243, 37.661911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216766, 42.155212, 36.956535>,  <45.000919, 42.090694, 37.617359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216766, 42.155212, 36.956535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505638, 41.961597, 37.154186>,  <45.678959, 41.845428, 37.272778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505638, 41.961597, 37.154186>,  <45.216766, 42.155212, 36.956535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505638, 41.961597, 37.154186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115111, -0.620301, -0.775871,
		0.682063, 0.617196, -0.392249,
		0.722177, -0.484041, 0.494130,
		45.722290, 41.816383, 37.302425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572662, 41.744095, 36.425400>,  <45.216766, 42.155212, 36.956535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572662, 41.744095, 36.425400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748569, 41.578506, 36.744205>,  <45.854115, 41.479153, 36.935490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748569, 41.578506, 36.744205>,  <45.572662, 41.744095, 36.425400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748569, 41.578506, 36.744205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073053, -0.868004, -0.491153,
		0.895134, 0.274219, -0.351480,
		0.439770, -0.413972, 0.797013,
		45.880501, 41.454315, 36.983311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345665, 41.579693, 36.425491>,  <45.572662, 41.744095, 36.425400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345665, 41.579693, 36.425491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198521, 41.327492, 36.698883>,  <46.110233, 41.176170, 36.862919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.198521, 41.327492, 36.698883>,  <46.345665, 41.579693, 36.425491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.198521, 41.327492, 36.698883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233369, -0.774092, -0.588490,
		0.900121, -0.056979, 0.431897,
		-0.367860, -0.630504, 0.683479,
		46.088161, 41.138340, 36.903927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803524, 41.031044, 36.483406>,  <46.345665, 41.579693, 36.425491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803524, 41.031044, 36.483406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466526, 40.881557, 36.638603>,  <46.264328, 40.791866, 36.731720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466526, 40.881557, 36.638603>,  <46.803524, 41.031044, 36.483406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466526, 40.881557, 36.638603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066600, -0.786964, -0.613394,
		0.534572, -0.490941, 0.687903,
		-0.842495, -0.373717, 0.387992,
		46.213776, 40.769444, 36.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898338, 40.289040, 36.556259>,  <46.803524, 41.031044, 36.483406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898338, 40.289040, 36.556259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498817, 40.297470, 36.573883>,  <46.259106, 40.302528, 36.584457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498817, 40.297470, 36.573883>,  <46.898338, 40.289040, 36.556259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498817, 40.297470, 36.573883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037210, -0.912680, -0.406977,
		0.031641, -0.408131, 0.912375,
		-0.998806, 0.021072, 0.044065,
		46.199177, 40.303791, 36.587101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851849, 39.726479, 36.719631>,  <46.898338, 40.289040, 36.556259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851849, 39.726479, 36.719631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473732, 39.805744, 36.615978>,  <46.246861, 39.853302, 36.553787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473732, 39.805744, 36.615978>,  <46.851849, 39.726479, 36.719631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473732, 39.805744, 36.615978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135641, -0.961194, -0.240223,
		-0.296682, -0.191933, 0.935490,
		-0.945294, 0.198161, -0.259135,
		46.190144, 39.865192, 36.538239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338364, 39.272259, 37.130432>,  <46.851849, 39.726479, 36.719631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338364, 39.272259, 37.130432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177986, 39.378330, 36.779678>,  <46.081760, 39.441975, 36.569225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177986, 39.378330, 36.779678>,  <46.338364, 39.272259, 37.130432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177986, 39.378330, 36.779678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239157, -0.954294, -0.179241,
		-0.884333, 0.137846, 0.446042,
		-0.400948, 0.265183, -0.876880,
		46.057701, 39.457886, 36.516613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760395, 38.774689, 37.096878>,  <46.338364, 39.272259, 37.130432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760395, 38.774689, 37.096878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781139, 38.921230, 36.725266>,  <45.793587, 39.009155, 36.502300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781139, 38.921230, 36.725266>,  <45.760395, 38.774689, 37.096878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781139, 38.921230, 36.725266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197646, -0.908114, -0.369140,
		-0.978901, 0.202763, 0.025313,
		0.051861, 0.366355, -0.929029,
		45.796696, 39.031136, 36.446556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085861, 38.566948, 36.654499>,  <45.760395, 38.774689, 37.096878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085861, 38.566948, 36.654499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390877, 38.671623, 36.417839>,  <45.573887, 38.734428, 36.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390877, 38.671623, 36.417839>,  <45.085861, 38.566948, 36.654499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390877, 38.671623, 36.417839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154966, -0.814027, -0.559773,
		-0.628109, 0.518534, -0.580173,
		0.762538, 0.261692, -0.591653,
		45.619637, 38.750130, 36.240345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806797, 38.598232, 35.983494>,  <45.085861, 38.566948, 36.654499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806797, 38.598232, 35.983494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197083, 38.530918, 35.927414>,  <45.431255, 38.490528, 35.893768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197083, 38.530918, 35.927414>,  <44.806797, 38.598232, 35.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197083, 38.530918, 35.927414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219034, -0.747505, -0.627105,
		0.000738, 0.642585, -0.766214,
		0.975717, -0.168290, -0.140197,
		45.489799, 38.480431, 35.885353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850525, 38.318710, 35.264957>,  <44.806797, 38.598232, 35.983494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850525, 38.318710, 35.264957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206715, 38.229702, 35.423721>,  <45.420429, 38.176296, 35.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206715, 38.229702, 35.423721>,  <44.850525, 38.318710, 35.264957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206715, 38.229702, 35.423721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007713, -0.864761, -0.502124,
		0.454968, 0.450190, -0.768331,
		0.890474, -0.222524, 0.396911,
		45.473858, 38.162945, 35.542793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302395, 38.121605, 34.679741>,  <44.850525, 38.318710, 35.264957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302395, 38.121605, 34.679741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464813, 37.958946, 35.007099>,  <45.562263, 37.861351, 35.203514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464813, 37.958946, 35.007099>,  <45.302395, 38.121605, 34.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464813, 37.958946, 35.007099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127312, -0.861638, -0.491296,
		0.904942, 0.303680, -0.298093,
		0.406045, -0.406643, 0.818394,
		45.586628, 37.836952, 35.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796787, 37.642807, 34.462749>,  <45.302395, 38.121605, 34.679741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796787, 37.642807, 34.462749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740173, 37.504658, 34.833843>,  <45.706207, 37.421768, 35.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740173, 37.504658, 34.833843>,  <45.796787, 37.642807, 34.462749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740173, 37.504658, 34.833843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006585, -0.937475, -0.347992,
		0.989912, -0.043142, 0.134956,
		-0.141531, -0.345370, 0.927733,
		45.697716, 37.401047, 35.112164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320778, 37.287762, 34.650063>,  <45.796787, 37.642807, 34.462749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320778, 37.287762, 34.650063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045712, 37.148350, 34.904823>,  <45.880672, 37.064701, 35.057678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045712, 37.148350, 34.904823>,  <46.320778, 37.287762, 34.650063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045712, 37.148350, 34.904823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227297, -0.936489, -0.267065,
		0.689531, -0.038886, 0.723212,
		-0.687665, -0.348534, 0.636900,
		45.839413, 37.043789, 35.095894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627743, 36.600548, 34.896450>,  <46.320778, 37.287762, 34.650063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627743, 36.600548, 34.896450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228664, 36.621391, 34.913853>,  <45.989220, 36.633896, 34.924294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228664, 36.621391, 34.913853>,  <46.627743, 36.600548, 34.896450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228664, 36.621391, 34.913853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064082, -0.934432, -0.350328,
		0.022402, -0.352308, 0.935616,
		-0.997693, 0.052108, 0.043510,
		45.929356, 36.637024, 34.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889683, 36.494236, 34.176460>,  <46.627743, 36.600548, 34.896450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889683, 36.494236, 34.176460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866146, 36.168316, 33.945763>,  <46.852024, 35.972763, 33.807343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866146, 36.168316, 33.945763>,  <46.889683, 36.494236, 34.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866146, 36.168316, 33.945763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917821, 0.183064, -0.352269,
		0.392610, -0.550081, 0.737067,
		-0.058846, -0.814800, -0.576748,
		46.848492, 35.923878, 33.772739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536533, 36.176521, 34.414883>,  <46.889683, 36.494236, 34.176460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536533, 36.176521, 34.414883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795101, 35.909237, 34.267570>,  <47.950241, 35.748867, 34.179184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795101, 35.909237, 34.267570>,  <47.536533, 36.176521, 34.414883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795101, 35.909237, 34.267570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183930, -0.604929, 0.774745,
		-0.740478, -0.433075, -0.513944,
		0.646422, -0.668212, -0.368281,
		47.989029, 35.708775, 34.157085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214668, 35.541481, 34.219120>,  <47.536533, 36.176521, 34.414883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214668, 35.541481, 34.219120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592781, 35.498528, 34.342350>,  <47.819649, 35.472755, 34.416286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592781, 35.498528, 34.342350>,  <47.214668, 35.541481, 34.219120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592781, 35.498528, 34.342350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296981, -0.674150, 0.676257,
		0.135067, -0.730746, -0.669154,
		0.945282, -0.107386, 0.308074,
		47.876366, 35.466312, 34.434772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.298649, 34.804142, 34.193726>,  <47.214668, 35.541481, 34.219120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.298649, 34.804142, 34.193726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507534, 35.029968, 34.449398>,  <47.632866, 35.165462, 34.602802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507534, 35.029968, 34.449398>,  <47.298649, 34.804142, 34.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507534, 35.029968, 34.449398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419299, -0.482679, 0.768901,
		0.742616, -0.669542, -0.015341,
		0.522217, 0.564565, 0.639183,
		47.664200, 35.199337, 34.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.686676, 34.472019, 34.749500>,  <47.298649, 34.804142, 34.193726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.686676, 34.472019, 34.749500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587940, 34.837650, 34.878208>,  <47.528698, 35.057030, 34.955433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587940, 34.837650, 34.878208>,  <47.686676, 34.472019, 34.749500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587940, 34.837650, 34.878208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649340, -0.402487, 0.645262,
		0.719326, -0.049661, 0.692895,
		-0.246837, 0.914078, 0.321766,
		47.513889, 35.111874, 34.974739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.878571, 43.607208, 42.354675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500816, 43.734039, 42.389545>,  <35.274166, 43.810139, 42.410469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500816, 43.734039, 42.389545>,  <35.878571, 43.607208, 42.354675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500816, 43.734039, 42.389545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279544, -0.634445, -0.720649,
		-0.173194, -0.704939, 0.687797,
		-0.944383, 0.317082, 0.087179,
		35.217503, 43.829163, 42.415699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415600, 43.002254, 42.308659>,  <35.878571, 43.607208, 42.354675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415600, 43.002254, 42.308659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167999, 43.300571, 42.210163>,  <35.019440, 43.479561, 42.151066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167999, 43.300571, 42.210163>,  <35.415600, 43.002254, 42.308659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167999, 43.300571, 42.210163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298025, -0.513115, -0.804919,
		-0.726648, -0.424863, 0.539883,
		-0.619003, 0.745791, -0.246234,
		34.982300, 43.524307, 42.136292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693150, 42.746216, 42.212734>,  <35.415600, 43.002254, 42.308659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693150, 42.746216, 42.212734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697613, 43.081364, 41.994431>,  <34.700291, 43.282452, 41.863449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697613, 43.081364, 41.994431>,  <34.693150, 42.746216, 42.212734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697613, 43.081364, 41.994431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429438, -0.488884, -0.759326,
		-0.903027, 0.242848, 0.354354,
		0.011163, 0.837865, -0.545763,
		34.700962, 43.332722, 41.830700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100925, 42.700306, 41.848888>,  <34.693150, 42.746216, 42.212734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100925, 42.700306, 41.848888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292377, 42.994465, 41.657013>,  <34.407249, 43.170959, 41.541889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292377, 42.994465, 41.657013>,  <34.100925, 42.700306, 41.848888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292377, 42.994465, 41.657013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359316, -0.334431, -0.871234,
		-0.801126, 0.589360, 0.104171,
		0.478632, 0.735399, -0.479687,
		34.435966, 43.215084, 41.513107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623886, 42.911312, 41.428734>,  <34.100925, 42.700306, 41.848888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623886, 42.911312, 41.428734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976475, 43.033066, 41.284309>,  <34.188026, 43.106117, 41.197655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.976475, 43.033066, 41.284309>,  <33.623886, 42.911312, 41.428734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976475, 43.033066, 41.284309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284065, -0.269017, -0.920292,
		-0.377255, 0.913772, -0.150664,
		0.881468, 0.304387, -0.361059,
		34.240913, 43.124382, 41.175991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455528, 43.228287, 40.774052>,  <33.623886, 42.911312, 41.428734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455528, 43.228287, 40.774052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850067, 43.165291, 40.754787>,  <34.086788, 43.127491, 40.743229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850067, 43.165291, 40.754787>,  <33.455528, 43.228287, 40.774052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850067, 43.165291, 40.754787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084807, -0.235020, -0.968284,
		0.141178, 0.959146, -0.245167,
		0.986345, -0.157492, -0.048163,
		34.145969, 43.118042, 40.740337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578667, 43.421898, 40.145157>,  <33.455528, 43.228287, 40.774052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578667, 43.421898, 40.145157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.882282, 43.179863, 40.241264>,  <34.064453, 43.034641, 40.298927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.882282, 43.179863, 40.241264>,  <33.578667, 43.421898, 40.145157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882282, 43.179863, 40.241264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016350, -0.351217, -0.936151,
		0.650836, 0.714507, -0.256695,
		0.759042, -0.605084, 0.240267,
		34.109997, 42.998337, 40.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074394, 43.398190, 39.495655>,  <33.578667, 43.421898, 40.145157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074394, 43.398190, 39.495655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155682, 43.070282, 39.709827>,  <34.204453, 42.873539, 39.838329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155682, 43.070282, 39.709827>,  <34.074394, 43.398190, 39.495655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155682, 43.070282, 39.709827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089640, -0.528969, -0.843894,
		0.975022, 0.219490, -0.034011,
		0.203217, -0.819766, 0.535431,
		34.216648, 42.824352, 39.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584488, 43.155487, 39.118149>,  <34.074394, 43.398190, 39.495655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584488, 43.155487, 39.118149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494869, 42.828918, 39.331036>,  <34.441097, 42.632977, 39.458767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494869, 42.828918, 39.331036>,  <34.584488, 43.155487, 39.118149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494869, 42.828918, 39.331036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254625, -0.576166, -0.776658,
		0.940728, -0.038493, 0.336971,
		-0.224047, -0.816426, 0.532215,
		34.427654, 42.583992, 39.490700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113144, 42.595692, 39.110310>,  <34.584488, 43.155487, 39.118149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113144, 42.595692, 39.110310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775551, 42.403137, 39.204933>,  <34.572994, 42.287605, 39.261707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775551, 42.403137, 39.204933>,  <35.113144, 42.595692, 39.110310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775551, 42.403137, 39.204933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191354, -0.682255, -0.705628,
		0.501073, -0.550272, 0.667927,
		-0.843984, -0.481382, 0.236563,
		34.522354, 42.258724, 39.275902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327209, 41.901894, 39.458145>,  <35.113144, 42.595692, 39.110310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327209, 41.901894, 39.458145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951328, 41.833588, 39.339619>,  <34.725800, 41.792603, 39.268501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951328, 41.833588, 39.339619>,  <35.327209, 41.901894, 39.458145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951328, 41.833588, 39.339619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317393, -0.758161, -0.569609,
		-0.127385, -0.629309, 0.766644,
		-0.939699, -0.170768, -0.296317,
		34.669418, 41.782356, 39.250725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149323, 41.119312, 39.607891>,  <35.327209, 41.901894, 39.458145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149323, 41.119312, 39.607891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901665, 41.259037, 39.326569>,  <34.753071, 41.342873, 39.157776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901665, 41.259037, 39.326569>,  <35.149323, 41.119312, 39.607891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901665, 41.259037, 39.326569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275140, -0.742344, -0.610920,
		-0.735496, -0.571757, 0.363511,
		-0.619148, 0.349313, -0.703304,
		34.715919, 41.363831, 39.115578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998554, 40.587437, 39.239380>,  <35.149323, 41.119312, 39.607891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998554, 40.587437, 39.239380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825233, 40.844627, 38.986767>,  <34.721241, 40.998940, 38.835197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825233, 40.844627, 38.986767>,  <34.998554, 40.587437, 39.239380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825233, 40.844627, 38.986767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192742, -0.618409, -0.761854,
		-0.880397, -0.451836, 0.144031,
		-0.433303, 0.642973, -0.631533,
		34.695244, 41.037518, 38.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460079, 40.265572, 38.761265>,  <34.998554, 40.587437, 39.239380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460079, 40.265572, 38.761265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613293, 40.579201, 38.565914>,  <34.705223, 40.767380, 38.448704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.613293, 40.579201, 38.565914>,  <34.460079, 40.265572, 38.761265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613293, 40.579201, 38.565914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263188, -0.599421, -0.755927,
		-0.885446, 0.161012, -0.435958,
		0.383036, 0.784072, -0.488379,
		34.728203, 40.814423, 38.419399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308884, 40.224918, 37.938927>,  <34.460079, 40.265572, 38.761265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308884, 40.224918, 37.938927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616013, 40.480206, 37.961300>,  <34.800289, 40.633377, 37.974724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616013, 40.480206, 37.961300>,  <34.308884, 40.224918, 37.938927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616013, 40.480206, 37.961300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316963, -0.302549, -0.898888,
		-0.556766, 0.707912, -0.434595,
		0.767819, 0.638221, 0.055933,
		34.846359, 40.671673, 37.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387890, 40.484909, 37.298527>,  <34.308884, 40.224918, 37.938927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387890, 40.484909, 37.298527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733406, 40.602825, 37.461971>,  <34.940716, 40.673576, 37.560036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733406, 40.602825, 37.461971>,  <34.387890, 40.484909, 37.298527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733406, 40.602825, 37.461971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489823, -0.301306, -0.818100,
		-0.118052, 0.906815, -0.404661,
		0.863792, 0.294790, 0.408609,
		34.992542, 40.691261, 37.584553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625549, 40.925526, 36.752159>,  <34.387890, 40.484909, 37.298527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625549, 40.925526, 36.752159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928680, 40.789413, 36.974838>,  <35.110558, 40.707748, 37.108448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928680, 40.789413, 36.974838>,  <34.625549, 40.925526, 36.752159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928680, 40.789413, 36.974838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522939, -0.193471, -0.830123,
		0.390178, 0.920206, 0.031327,
		0.757823, -0.340278, 0.556700,
		35.156029, 40.687328, 37.141850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204105, 41.292057, 36.545528>,  <34.625549, 40.925526, 36.752159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204105, 41.292057, 36.545528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351761, 40.967361, 36.726559>,  <35.440353, 40.772545, 36.835175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351761, 40.967361, 36.726559>,  <35.204105, 41.292057, 36.545528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351761, 40.967361, 36.726559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526498, -0.218636, -0.821582,
		0.765856, 0.541557, 0.346670,
		0.369139, -0.811735, 0.452573,
		35.462502, 40.723843, 36.862331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944206, 41.278778, 36.381626>,  <35.204105, 41.292057, 36.545528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944206, 41.278778, 36.381626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858032, 40.899929, 36.476734>,  <35.806328, 40.672619, 36.533798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858032, 40.899929, 36.476734>,  <35.944206, 41.278778, 36.381626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858032, 40.899929, 36.476734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500962, -0.316204, -0.805637,
		0.838226, -0.054449, 0.542598,
		-0.215438, -0.947127, 0.237774,
		35.793400, 40.615791, 36.548065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500347, 40.910652, 36.202934>,  <35.944206, 41.278778, 36.381626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500347, 40.910652, 36.202934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224808, 40.622536, 36.235611>,  <36.059483, 40.449665, 36.255219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224808, 40.622536, 36.235611>,  <36.500347, 40.910652, 36.202934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224808, 40.622536, 36.235611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459610, -0.521115, -0.719165,
		0.560576, -0.457849, 0.690021,
		-0.688849, -0.720287, 0.081693,
		36.018154, 40.406448, 36.260120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886074, 40.355484, 36.136391>,  <36.500347, 40.910652, 36.202934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886074, 40.355484, 36.136391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511456, 40.247227, 36.047272>,  <36.286686, 40.182270, 35.993801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511456, 40.247227, 36.047272>,  <36.886074, 40.355484, 36.136391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511456, 40.247227, 36.047272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317097, -0.383064, -0.867590,
		0.149463, -0.883183, 0.444576,
		-0.936542, -0.270646, -0.222800,
		36.230492, 40.166031, 35.980431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936100, 39.636707, 35.950916>,  <36.886074, 40.355484, 36.136391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936100, 39.636707, 35.950916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586975, 39.754093, 35.794933>,  <36.377499, 39.824524, 35.701344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586975, 39.754093, 35.794933>,  <36.936100, 39.636707, 35.950916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586975, 39.754093, 35.794933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276077, -0.362014, -0.890352,
		-0.402462, -0.884772, 0.234951,
		-0.872814, 0.293469, -0.389962,
		36.325130, 39.842133, 35.677944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325348, 39.078743, 36.160152>,  <36.936100, 39.636707, 35.950916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325348, 39.078743, 36.160152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634804, 38.834755, 36.091545>,  <37.820477, 38.688362, 36.050381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634804, 38.834755, 36.091545>,  <37.325348, 39.078743, 36.160152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634804, 38.834755, 36.091545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235421, 0.025395, 0.971562,
		-0.588266, -0.792019, 0.163246,
		0.773641, -0.609968, -0.171519,
		37.866898, 38.651764, 36.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311600, 38.655811, 36.820698>,  <37.325348, 39.078743, 36.160152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311600, 38.655811, 36.820698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657528, 38.664288, 36.620045>,  <37.865086, 38.669373, 36.499653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657528, 38.664288, 36.620045>,  <37.311600, 38.655811, 36.820698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657528, 38.664288, 36.620045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460386, 0.365162, 0.809136,
		0.200324, -0.930703, 0.306043,
		0.864821, 0.021192, -0.501634,
		37.916973, 38.670647, 36.469555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833355, 38.454964, 37.171268>,  <37.311600, 38.655811, 36.820698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833355, 38.454964, 37.171268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060589, 38.646595, 36.903606>,  <38.196930, 38.761574, 36.743011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060589, 38.646595, 36.903606>,  <37.833355, 38.454964, 37.171268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060589, 38.646595, 36.903606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414728, 0.535649, 0.735582,
		0.710832, -0.695388, 0.105607,
		0.568083, 0.479078, -0.669154,
		38.231014, 38.790318, 36.702862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591801, 38.382854, 37.292984>,  <37.833355, 38.454964, 37.171268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591801, 38.382854, 37.292984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502979, 38.728249, 37.111839>,  <38.449688, 38.935486, 37.003151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.502979, 38.728249, 37.111839>,  <38.591801, 38.382854, 37.292984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502979, 38.728249, 37.111839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310199, 0.502886, 0.806773,
		0.924375, 0.038670, -0.379520,
		-0.222053, 0.863487, -0.452860,
		38.436363, 38.987293, 36.975983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156853, 38.763729, 37.518459>,  <38.591801, 38.382854, 37.292984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156853, 38.763729, 37.518459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916172, 39.047714, 37.372086>,  <38.771763, 39.218105, 37.284260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916172, 39.047714, 37.372086>,  <39.156853, 38.763729, 37.518459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916172, 39.047714, 37.372086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247292, 0.601234, 0.759845,
		0.759471, 0.366710, -0.537333,
		-0.601706, 0.709959, -0.365935,
		38.735661, 39.260700, 37.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525036, 39.431114, 37.555248>,  <39.156853, 38.763729, 37.518459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525036, 39.431114, 37.555248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128407, 39.482613, 37.560886>,  <38.890427, 39.513512, 37.564270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128407, 39.482613, 37.560886>,  <39.525036, 39.431114, 37.555248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128407, 39.482613, 37.560886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082354, 0.542781, 0.835827,
		0.099956, 0.829948, -0.548812,
		-0.991578, 0.128743, 0.014096,
		38.830933, 39.521236, 37.565117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472851, 39.975208, 38.007389>,  <39.525036, 39.431114, 37.555248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472851, 39.975208, 38.007389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096909, 39.842121, 37.976475>,  <38.871346, 39.762268, 37.957928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096909, 39.842121, 37.976475>,  <39.472851, 39.975208, 38.007389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096909, 39.842121, 37.976475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202251, 0.359727, 0.910874,
		-0.275263, 0.871719, -0.405383,
		-0.939854, -0.332719, -0.077287,
		38.814953, 39.742306, 37.953289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048466, 40.564018, 37.955196>,  <39.472851, 39.975208, 38.007389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048466, 40.564018, 37.955196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835159, 40.266644, 38.116653>,  <38.707176, 40.088219, 38.213528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835159, 40.266644, 38.116653>,  <39.048466, 40.564018, 37.955196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835159, 40.266644, 38.116653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306721, 0.614599, 0.726767,
		-0.788384, 0.263756, -0.555773,
		-0.533267, -0.743439, 0.403640,
		38.675179, 40.043613, 38.237747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437920, 40.941814, 38.274899>,  <39.048466, 40.564018, 37.955196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437920, 40.941814, 38.274899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415188, 40.581326, 38.446747>,  <38.401550, 40.365032, 38.549858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.415188, 40.581326, 38.446747>,  <38.437920, 40.941814, 38.274899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415188, 40.581326, 38.446747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320855, 0.423977, 0.846933,
		-0.945422, -0.089716, -0.313255,
		-0.056829, -0.901219, 0.429623,
		38.398140, 40.310959, 38.575634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755806, 40.868649, 38.642830>,  <38.437920, 40.941814, 38.274899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755806, 40.868649, 38.642830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017708, 40.634743, 38.834389>,  <38.174850, 40.494400, 38.949326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017708, 40.634743, 38.834389>,  <37.755806, 40.868649, 38.642830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017708, 40.634743, 38.834389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096933, 0.563400, 0.820478,
		-0.749599, -0.583634, 0.312206,
		0.654756, -0.584767, 0.478898,
		38.214134, 40.459312, 38.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431671, 40.867069, 39.303963>,  <37.755806, 40.868649, 38.642830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431671, 40.867069, 39.303963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808216, 40.737942, 39.343212>,  <38.034142, 40.660465, 39.366760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808216, 40.737942, 39.343212>,  <37.431671, 40.867069, 39.303963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808216, 40.737942, 39.343212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110551, 0.569876, 0.814260,
		-0.318773, -0.755666, 0.572147,
		0.941362, -0.322816, 0.098121,
		38.090626, 40.641098, 39.372650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463184, 40.512150, 39.895256>,  <37.431671, 40.867069, 39.303963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463184, 40.512150, 39.895256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844212, 40.612736, 39.826702>,  <38.072830, 40.673088, 39.785568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844212, 40.612736, 39.826702>,  <37.463184, 40.512150, 39.895256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844212, 40.612736, 39.826702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030865, 0.480451, 0.876478,
		0.302744, -0.840198, 0.449903,
		0.952572, 0.251462, -0.171386,
		38.129982, 40.688175, 39.775288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908524, 40.433411, 40.552757>,  <37.463184, 40.512150, 39.895256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908524, 40.433411, 40.552757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064495, 40.711353, 40.311054>,  <38.158077, 40.878117, 40.166031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064495, 40.711353, 40.311054>,  <37.908524, 40.433411, 40.552757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064495, 40.711353, 40.311054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154512, 0.597529, 0.786819,
		0.907788, -0.400171, 0.125632,
		0.389931, 0.694854, -0.604262,
		38.181473, 40.919811, 40.129776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386013, 40.749226, 40.962173>,  <37.908524, 40.433411, 40.552757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386013, 40.749226, 40.962173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349850, 41.008858, 40.660042>,  <38.328152, 41.164639, 40.478764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349850, 41.008858, 40.660042>,  <38.386013, 40.749226, 40.962173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349850, 41.008858, 40.660042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240353, 0.750235, 0.615936,
		0.966466, -0.125860, -0.223836,
		-0.090407, 0.649081, -0.755328,
		38.322727, 41.203583, 40.433445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946327, 41.300686, 41.013363>,  <38.386013, 40.749226, 40.962173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946327, 41.300686, 41.013363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647823, 41.484333, 40.820572>,  <38.468719, 41.594521, 40.704899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647823, 41.484333, 40.820572>,  <38.946327, 41.300686, 41.013363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647823, 41.484333, 40.820572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090207, 0.787141, 0.610141,
		0.659511, 0.411848, -0.628830,
		-0.746263, 0.459119, -0.481977,
		38.423943, 41.622070, 40.675980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216988, 41.969780, 40.927044>,  <38.946327, 41.300686, 41.013363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216988, 41.969780, 40.927044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818562, 41.978970, 40.892822>,  <38.579506, 41.984486, 40.872288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.818562, 41.978970, 40.892822>,  <39.216988, 41.969780, 40.927044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818562, 41.978970, 40.892822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034040, 0.792345, 0.609122,
		0.081784, 0.609640, -0.788448,
		-0.996069, 0.022978, -0.085553,
		38.519741, 41.985863, 40.867157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057789, 42.667721, 40.771652>,  <39.216988, 41.969780, 40.927044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057789, 42.667721, 40.771652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710796, 42.506813, 40.888721>,  <38.502602, 42.410267, 40.958961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710796, 42.506813, 40.888721>,  <39.057789, 42.667721, 40.771652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710796, 42.506813, 40.888721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222297, 0.839766, 0.495357,
		-0.445043, 0.364652, -0.817903,
		-0.867480, -0.402272, 0.292671,
		38.450554, 42.386131, 40.976524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622749, 43.173084, 40.574993>,  <39.057789, 42.667721, 40.771652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622749, 43.173084, 40.574993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423115, 42.940620, 40.832104>,  <38.303333, 42.801140, 40.986370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.423115, 42.940620, 40.832104>,  <38.622749, 43.173084, 40.574993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423115, 42.940620, 40.832104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228149, 0.803718, 0.549532,
		-0.835978, 0.127617, -0.533719,
		-0.499089, -0.581164, 0.642775,
		38.273388, 42.766270, 41.024937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.646969, 43.447109, 40.726135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757320, 43.220989, 41.037090>,  <37.823532, 43.085316, 41.223663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.757320, 43.220989, 41.037090>,  <37.646969, 43.447109, 40.726135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757320, 43.220989, 41.037090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338100, 0.700013, 0.629023,
		-0.899766, -0.436368, 0.001991,
		0.275879, -0.565301, 0.777384,
		37.840084, 43.051399, 41.270306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085041, 43.321449, 41.167934>,  <37.646969, 43.447109, 40.726135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085041, 43.321449, 41.167934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402336, 43.244041, 41.398872>,  <37.592712, 43.197598, 41.537437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402336, 43.244041, 41.398872>,  <37.085041, 43.321449, 41.167934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402336, 43.244041, 41.398872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390352, 0.566091, 0.726062,
		-0.467339, -0.801305, 0.373502,
		0.793233, -0.193520, 0.577348,
		37.640305, 43.185986, 41.572075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766502, 43.323895, 41.852592>,  <37.085041, 43.321449, 41.167934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766502, 43.323895, 41.852592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162540, 43.326935, 41.908661>,  <37.400166, 43.328758, 41.942303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162540, 43.326935, 41.908661>,  <36.766502, 43.323895, 41.852592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162540, 43.326935, 41.908661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130551, 0.416820, 0.899565,
		-0.051585, -0.908957, 0.413686,
		0.990099, 0.007603, 0.140167,
		37.459572, 43.329216, 41.950710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900162, 43.014572, 42.506016>,  <36.766502, 43.323895, 41.852592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900162, 43.014572, 42.506016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193371, 43.268272, 42.407703>,  <37.369297, 43.420494, 42.348717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193371, 43.268272, 42.407703>,  <36.900162, 43.014572, 42.506016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193371, 43.268272, 42.407703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075244, 0.434722, 0.897416,
		0.676033, -0.639330, 0.366383,
		0.733020, 0.634251, -0.245781,
		37.413277, 43.458546, 42.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127792, 43.124866, 43.176552>,  <36.900162, 43.014572, 42.506016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127792, 43.124866, 43.176552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290474, 43.435822, 42.984608>,  <37.388081, 43.622395, 42.869442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.290474, 43.435822, 42.984608>,  <37.127792, 43.124866, 43.176552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290474, 43.435822, 42.984608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086725, 0.490036, 0.867378,
		0.909436, -0.394378, 0.131878,
		0.406700, 0.777387, -0.479858,
		37.412483, 43.669037, 42.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787792, 43.454956, 43.525703>,  <37.127792, 43.124866, 43.176552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787792, 43.454956, 43.525703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619194, 43.749802, 43.314419>,  <37.518036, 43.926708, 43.187649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619194, 43.749802, 43.314419>,  <37.787792, 43.454956, 43.525703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619194, 43.749802, 43.314419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151754, 0.631597, 0.760300,
		0.894042, 0.240306, -0.378077,
		-0.421497, 0.737115, -0.528207,
		37.492744, 43.970936, 43.155956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198524, 44.012699, 43.647728>,  <37.787792, 43.454956, 43.525703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198524, 44.012699, 43.647728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868134, 44.173820, 43.489986>,  <37.669899, 44.270493, 43.395344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868134, 44.173820, 43.489986>,  <38.198524, 44.012699, 43.647728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868134, 44.173820, 43.489986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104062, 0.796499, 0.595618,
		0.554019, 0.450928, -0.699805,
		-0.825974, 0.402807, -0.394351,
		37.620342, 44.294662, 43.371681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367210, 44.737186, 43.684464>,  <38.198524, 44.012699, 43.647728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367210, 44.737186, 43.684464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970219, 44.737217, 43.635513>,  <37.732021, 44.737236, 43.606144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970219, 44.737217, 43.635513>,  <38.367210, 44.737186, 43.684464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970219, 44.737217, 43.635513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056421, 0.887072, 0.458170,
		0.108592, 0.461631, -0.880400,
		-0.992484, 0.000080, -0.122375,
		37.672474, 44.737240, 43.598801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131161, 45.392040, 43.559242>,  <38.367210, 44.737186, 43.684464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131161, 45.392040, 43.559242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792732, 45.223682, 43.690094>,  <37.589676, 45.122669, 43.768604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792732, 45.223682, 43.690094>,  <38.131161, 45.392040, 43.559242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792732, 45.223682, 43.690094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098681, 0.726728, 0.679800,
		-0.523861, 0.542876, -0.656397,
		-0.846069, -0.420894, 0.327133,
		37.538910, 45.097416, 43.788235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528942, 45.890995, 43.446938>,  <38.131161, 45.392040, 43.559242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528942, 45.890995, 43.446938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417664, 45.635151, 43.733574>,  <37.350895, 45.481644, 43.905556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417664, 45.635151, 43.733574>,  <37.528942, 45.890995, 43.446938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417664, 45.635151, 43.733574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290891, 0.767111, 0.571771,
		-0.915417, -0.049386, -0.399465,
		-0.278197, -0.639610, 0.716593,
		37.334206, 45.443268, 43.948551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058891, 46.330421, 43.926476>,  <37.528942, 45.890995, 43.446938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058891, 46.330421, 43.926476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153599, 46.009285, 44.145340>,  <37.210423, 45.816601, 44.276657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.153599, 46.009285, 44.145340>,  <37.058891, 46.330421, 43.926476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153599, 46.009285, 44.145340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057570, 0.550592, 0.832787,
		-0.969860, -0.228674, 0.084140,
		0.236764, -0.802843, 0.547162,
		37.224628, 45.768433, 44.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577282, 46.385811, 44.444401>,  <37.058891, 46.330421, 43.926476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577282, 46.385811, 44.444401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856556, 46.126797, 44.566540>,  <37.024120, 45.971390, 44.639824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856556, 46.126797, 44.566540>,  <36.577282, 46.385811, 44.444401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856556, 46.126797, 44.566540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125476, 0.309231, 0.942673,
		-0.704833, -0.696476, 0.134652,
		0.698188, -0.647532, 0.305347,
		37.066013, 45.932537, 44.658142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337582, 45.923782, 45.039951>,  <36.577282, 46.385811, 44.444401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337582, 45.923782, 45.039951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735821, 45.910973, 45.075188>,  <36.974766, 45.903286, 45.096329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735821, 45.910973, 45.075188>,  <36.337582, 45.923782, 45.039951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735821, 45.910973, 45.075188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078173, 0.234935, 0.968862,
		-0.051722, -0.971483, 0.231397,
		0.995597, -0.032023, 0.088095,
		37.034500, 45.901367, 45.101616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473621, 45.733768, 45.688652>,  <36.337582, 45.923782, 45.039951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473621, 45.733768, 45.688652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836700, 45.883480, 45.612755>,  <37.054546, 45.973309, 45.567215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836700, 45.883480, 45.612755>,  <36.473621, 45.733768, 45.688652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836700, 45.883480, 45.612755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048674, 0.355211, 0.933518,
		0.416799, -0.856585, 0.304206,
		0.907695, 0.374283, -0.189745,
		37.109009, 45.995766, 45.555832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067993, 45.524529, 46.257591>,  <36.473621, 45.733768, 45.688652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067993, 45.524529, 46.257591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192280, 45.854332, 46.068428>,  <37.266850, 46.052216, 45.954929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192280, 45.854332, 46.068428>,  <37.067993, 45.524529, 46.257591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192280, 45.854332, 46.068428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349709, 0.363476, 0.863475,
		0.883833, -0.433674, -0.175401,
		0.310712, 0.824507, -0.472912,
		37.285492, 46.101685, 45.926556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427917, 45.755634, 46.717976>,  <37.067993, 45.524529, 46.257591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427917, 45.755634, 46.717976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454647, 46.074596, 46.478081>,  <37.470684, 46.265972, 46.334145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454647, 46.074596, 46.478081>,  <37.427917, 45.755634, 46.717976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454647, 46.074596, 46.478081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284531, 0.560891, 0.777459,
		0.956335, -0.222597, -0.189404,
		0.066825, 0.797403, -0.599736,
		37.474693, 46.313816, 46.298161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121090, 45.996025, 46.835106>,  <37.427917, 45.755634, 46.717976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121090, 45.996025, 46.835106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878292, 46.287643, 46.708580>,  <37.732613, 46.462616, 46.632664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878292, 46.287643, 46.708580>,  <38.121090, 45.996025, 46.835106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878292, 46.287643, 46.708580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136524, 0.487768, 0.862232,
		0.782895, 0.480182, -0.395603,
		-0.606990, 0.729046, -0.316315,
		37.696194, 46.506355, 46.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434601, 46.657211, 47.055729>,  <38.121090, 45.996025, 46.835106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434601, 46.657211, 47.055729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043091, 46.714695, 46.997292>,  <37.808186, 46.749184, 46.962227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043091, 46.714695, 46.997292>,  <38.434601, 46.657211, 47.055729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043091, 46.714695, 46.997292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005996, 0.732687, 0.680539,
		0.204844, 0.665219, -0.717999,
		-0.978776, 0.143710, -0.146098,
		37.749458, 46.757809, 46.953461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304848, 47.351433, 47.163197>,  <38.434601, 46.657211, 47.055729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304848, 47.351433, 47.163197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927353, 47.220264, 47.180325>,  <37.700855, 47.141563, 47.190601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927353, 47.220264, 47.180325>,  <38.304848, 47.351433, 47.163197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927353, 47.220264, 47.180325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196922, 0.661249, 0.723858,
		-0.265688, 0.674696, -0.688618,
		-0.943733, -0.327925, 0.042823,
		37.644234, 47.121887, 47.193172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808964, 47.953709, 47.325813>,  <38.304848, 47.351433, 47.163197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808964, 47.953709, 47.325813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616493, 47.618935, 47.430134>,  <37.501011, 47.418072, 47.492725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616493, 47.618935, 47.430134>,  <37.808964, 47.953709, 47.325813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616493, 47.618935, 47.430134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331850, 0.449264, 0.829480,
		-0.811386, 0.312579, -0.493911,
		-0.481174, -0.836933, 0.260797,
		37.472141, 47.367855, 47.508373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214302, 48.223579, 47.686035>,  <37.808964, 47.953709, 47.325813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214302, 48.223579, 47.686035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240974, 47.843685, 47.808384>,  <37.256977, 47.615749, 47.881794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240974, 47.843685, 47.808384>,  <37.214302, 48.223579, 47.686035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240974, 47.843685, 47.808384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306609, 0.272220, 0.912078,
		-0.949497, -0.154600, -0.273046,
		0.066678, -0.949734, 0.305874,
		37.260979, 47.558765, 47.900146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719810, 48.166458, 48.248219>,  <37.214302, 48.223579, 47.686035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719810, 48.166458, 48.248219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901791, 47.812744, 48.290287>,  <37.010979, 47.600517, 48.315529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901791, 47.812744, 48.290287>,  <36.719810, 48.166458, 48.248219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901791, 47.812744, 48.290287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174753, 0.027153, 0.984238,
		-0.873201, -0.466160, -0.142178,
		0.454952, -0.884284, 0.105172,
		37.038277, 47.547459, 48.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262466, 47.569084, 48.511044>,  <36.719810, 48.166458, 48.248219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262466, 47.569084, 48.511044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626095, 47.451363, 48.629009>,  <36.844273, 47.380730, 48.699787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626095, 47.451363, 48.629009>,  <36.262466, 47.569084, 48.511044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626095, 47.451363, 48.629009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324467, -0.056049, 0.944235,
		-0.261365, -0.954066, -0.146446,
		0.909070, -0.294307, 0.294914,
		36.898815, 47.363071, 48.717484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940567, 47.786877, 49.170231>,  <36.262466, 47.569084, 48.511044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940567, 47.786877, 49.170231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651852, 47.595306, 49.370090>,  <35.478622, 47.480366, 49.490005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651852, 47.595306, 49.370090>,  <35.940567, 47.786877, 49.170231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651852, 47.595306, 49.370090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269749, -0.470170, -0.840343,
		0.637379, -0.741332, 0.210176,
		-0.721792, -0.478923, 0.499650,
		35.435314, 47.451630, 49.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019676, 47.073391, 49.032829>,  <35.940567, 47.786877, 49.170231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019676, 47.073391, 49.032829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668594, 47.243553, 49.121071>,  <35.457947, 47.345650, 49.174015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668594, 47.243553, 49.121071>,  <36.019676, 47.073391, 49.032829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668594, 47.243553, 49.121071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436856, -0.521087, -0.733230,
		-0.196966, -0.739931, 0.643201,
		-0.877703, 0.425407, 0.220607,
		35.405285, 47.371174, 49.187252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520515, 46.480572, 49.009068>,  <36.019676, 47.073391, 49.032829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520515, 46.480572, 49.009068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307438, 46.816765, 48.969410>,  <35.179592, 47.018478, 48.945618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307438, 46.816765, 48.969410>,  <35.520515, 46.480572, 49.009068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307438, 46.816765, 48.969410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402617, -0.354717, -0.843846,
		-0.744403, -0.409596, 0.527348,
		-0.532695, 0.840480, -0.099142,
		35.147629, 47.068909, 48.939667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762978, 46.342419, 49.015339>,  <35.520515, 46.480572, 49.009068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762978, 46.342419, 49.015339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789288, 46.700783, 48.839607>,  <34.805073, 46.915802, 48.734169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789288, 46.700783, 48.839607>,  <34.762978, 46.342419, 49.015339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789288, 46.700783, 48.839607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570894, -0.327319, -0.752956,
		-0.818385, 0.300336, 0.489943,
		0.065772, 0.895914, -0.439333,
		34.809021, 46.969559, 48.707806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150654, 46.445892, 48.816540>,  <34.762978, 46.342419, 49.015339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150654, 46.445892, 48.816540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358711, 46.697140, 48.585049>,  <34.483547, 46.847889, 48.446156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358711, 46.697140, 48.585049>,  <34.150654, 46.445892, 48.816540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358711, 46.697140, 48.585049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603002, -0.209792, -0.769660,
		-0.604846, 0.749306, 0.269633,
		0.520144, 0.628115, -0.578725,
		34.514755, 46.885574, 48.411430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671055, 46.779499, 48.328510>,  <34.150654, 46.445892, 48.816540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671055, 46.779499, 48.328510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037373, 46.820496, 48.173172>,  <34.257164, 46.845093, 48.079971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037373, 46.820496, 48.173172>,  <33.671055, 46.779499, 48.328510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037373, 46.820496, 48.173172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371170, -0.153452, -0.915797,
		-0.153452, 0.982826, -0.102490,
		0.915797, 0.102490, -0.388344,
		34.312111, 46.851242, 48.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586746, 47.136311, 47.762131>,  <33.671055, 46.779499, 48.328510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586746, 47.136311, 47.762131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957722, 47.024963, 47.662239>,  <34.180309, 46.958157, 47.602303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957722, 47.024963, 47.662239>,  <33.586746, 47.136311, 47.762131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957722, 47.024963, 47.662239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334886, -0.320994, -0.885897,
		0.166442, 0.905249, -0.390924,
		0.927442, -0.278366, -0.249728,
		34.235954, 46.941452, 47.587322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895096, 47.434895, 47.160294>,  <33.586746, 47.136311, 47.762131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895096, 47.434895, 47.160294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109417, 47.098488, 47.190258>,  <34.238010, 46.896645, 47.208237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109417, 47.098488, 47.190258>,  <33.895096, 47.434895, 47.160294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109417, 47.098488, 47.190258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105375, -0.154627, -0.982337,
		0.837744, 0.518442, -0.171471,
		0.535799, -0.841016, 0.074907,
		34.270157, 46.846184, 47.212730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381378, 47.494980, 46.611355>,  <33.895096, 47.434895, 47.160294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381378, 47.494980, 46.611355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362091, 47.104134, 46.694221>,  <34.350517, 46.869625, 46.743942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362091, 47.104134, 46.694221>,  <34.381378, 47.494980, 46.611355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362091, 47.104134, 46.694221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020580, -0.206388, -0.978254,
		0.998625, -0.051432, -0.010157,
		-0.048217, -0.977117, 0.207163,
		34.347626, 46.810997, 46.756371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868183, 47.170242, 46.212490>,  <34.381378, 47.494980, 46.611355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868183, 47.170242, 46.212490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666481, 46.847836, 46.336468>,  <34.545460, 46.654392, 46.410854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666481, 46.847836, 46.336468>,  <34.868183, 47.170242, 46.212490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666481, 46.847836, 46.336468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254319, -0.481611, -0.838673,
		0.825254, -0.344084, 0.447841,
		-0.504259, -0.806013, 0.309944,
		34.515202, 46.606033, 46.429451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389931, 46.676792, 46.181004>,  <34.868183, 47.170242, 46.212490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389931, 46.676792, 46.181004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026443, 46.510674, 46.164246>,  <34.808350, 46.411003, 46.154190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.026443, 46.510674, 46.164246>,  <35.389931, 46.676792, 46.181004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026443, 46.510674, 46.164246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308652, -0.600988, -0.737257,
		0.281004, -0.682891, 0.674312,
		-0.908719, -0.415300, -0.041896,
		34.753826, 46.386086, 46.151676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529202, 45.948658, 46.086468>,  <35.389931, 46.676792, 46.181004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529202, 45.948658, 46.086468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160141, 45.968788, 45.933533>,  <34.938705, 45.980865, 45.841774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160141, 45.968788, 45.933533>,  <35.529202, 45.948658, 46.086468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160141, 45.968788, 45.933533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256633, -0.659892, -0.706174,
		-0.287837, -0.749673, 0.595936,
		-0.922653, 0.050326, -0.382333,
		34.883347, 45.983887, 45.818832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389587, 45.261826, 45.914593>,  <35.529202, 45.948658, 46.086468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389587, 45.261826, 45.914593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138325, 45.473343, 45.686279>,  <34.987568, 45.600254, 45.549290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138325, 45.473343, 45.686279>,  <35.389587, 45.261826, 45.914593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138325, 45.473343, 45.686279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062583, -0.696862, -0.714470,
		-0.775570, -0.484518, 0.404641,
		-0.628152, 0.528798, -0.570787,
		34.949879, 45.631981, 45.515045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997791, 44.754864, 45.535961>,  <35.389587, 45.261826, 45.914593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997791, 44.754864, 45.535961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922722, 45.103874, 45.355526>,  <34.877682, 45.313278, 45.247265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922722, 45.103874, 45.355526>,  <34.997791, 44.754864, 45.535961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922722, 45.103874, 45.355526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019768, -0.462510, -0.886394,
		-0.982033, -0.157434, 0.104048,
		-0.187672, 0.872525, -0.451088,
		34.866421, 45.365631, 45.220200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496372, 44.543087, 45.027668>,  <34.997791, 44.754864, 45.535961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496372, 44.543087, 45.027668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630260, 44.900013, 44.906513>,  <34.710594, 45.114170, 44.833820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630260, 44.900013, 44.906513>,  <34.496372, 44.543087, 45.027668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630260, 44.900013, 44.906513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091150, -0.289258, -0.952902,
		-0.937899, 0.346562, -0.015486,
		0.334718, 0.892314, -0.302883,
		34.730675, 45.167706, 44.815647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997566, 44.855862, 44.562023>,  <34.496372, 44.543087, 45.027668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997566, 44.855862, 44.562023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365631, 44.996861, 44.493839>,  <34.586468, 45.081459, 44.452930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.365631, 44.996861, 44.493839>,  <33.997566, 44.855862, 44.562023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365631, 44.996861, 44.493839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059664, -0.304027, -0.950793,
		-0.386975, 0.885050, -0.258722,
		0.920158, 0.352497, -0.170457,
		34.641678, 45.102608, 44.442703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001289, 45.278831, 43.927280>,  <33.997566, 44.855862, 44.562023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001289, 45.278831, 43.927280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376865, 45.158813, 43.994644>,  <34.602211, 45.086803, 44.035061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376865, 45.158813, 43.994644>,  <34.001289, 45.278831, 43.927280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376865, 45.158813, 43.994644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094615, -0.245420, -0.964789,
		0.330812, 0.921814, -0.202046,
		0.938942, -0.300047, 0.168405,
		34.658546, 45.068798, 44.045166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438332, 45.598064, 43.361832>,  <34.001289, 45.278831, 43.927280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438332, 45.598064, 43.361832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668633, 45.298340, 43.492702>,  <34.806812, 45.118504, 43.571224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668633, 45.298340, 43.492702>,  <34.438332, 45.598064, 43.361832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668633, 45.298340, 43.492702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160416, -0.288856, -0.943837,
		0.801735, 0.595899, -0.046108,
		0.575750, -0.749311, 0.327178,
		34.841358, 45.073547, 43.590855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820152, 45.499088, 42.804756>,  <34.438332, 45.598064, 43.361832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820152, 45.499088, 42.804756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916397, 45.173359, 43.016029>,  <34.974144, 44.977921, 43.142796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.916397, 45.173359, 43.016029>,  <34.820152, 45.499088, 42.804756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916397, 45.173359, 43.016029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104444, -0.519291, -0.848191,
		0.964985, 0.259253, -0.039897,
		0.240614, -0.814325, 0.528185,
		34.988583, 44.929062, 43.174484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233494, 45.164345, 42.348022>,  <34.820152, 45.499088, 42.804756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233494, 45.164345, 42.348022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156120, 44.885174, 42.623844>,  <35.109695, 44.717670, 42.789337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156120, 44.885174, 42.623844>,  <35.233494, 45.164345, 42.348022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156120, 44.885174, 42.623844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184038, -0.664539, -0.724236,
		0.963698, -0.266995, 0.000099,
		-0.193433, -0.697927, 0.689552,
		35.098091, 44.675797, 42.830711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772156, 44.618526, 42.270077>,  <35.233494, 45.164345, 42.348022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772156, 44.618526, 42.270077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438705, 44.468060, 42.431850>,  <35.238636, 44.377781, 42.528915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438705, 44.468060, 42.431850>,  <35.772156, 44.618526, 42.270077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438705, 44.468060, 42.431850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027282, -0.703296, -0.710374,
		0.551655, -0.603220, 0.576023,
		-0.833626, -0.376165, 0.404434,
		35.188618, 44.355209, 42.553181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.817314, 43.788750, 38.333321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495079, 43.732113, 38.563442>,  <43.301739, 43.698132, 38.701515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.495079, 43.732113, 38.563442>,  <43.817314, 43.788750, 38.333321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495079, 43.732113, 38.563442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056537, -0.984964, -0.163244,
		0.589769, -0.098982, 0.801483,
		-0.805591, -0.141589, 0.575305,
		43.253403, 43.689636, 38.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050117, 43.289459, 38.884239>,  <43.817314, 43.788750, 38.333321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050117, 43.289459, 38.884239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654755, 43.268223, 38.827354>,  <43.417538, 43.255482, 38.793224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654755, 43.268223, 38.827354>,  <44.050117, 43.289459, 38.884239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654755, 43.268223, 38.827354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073216, -0.987410, -0.140218,
		-0.132974, -0.149005, 0.979855,
		-0.988412, -0.053095, -0.142209,
		43.358231, 43.252293, 38.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847542, 42.685879, 39.198681>,  <44.050117, 43.289459, 38.884239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847542, 42.685879, 39.198681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519638, 42.761082, 38.982296>,  <43.322895, 42.806206, 38.852463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519638, 42.761082, 38.982296>,  <43.847542, 42.685879, 39.198681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519638, 42.761082, 38.982296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041615, -0.961637, -0.271150,
		-0.571190, -0.199766, 0.796138,
		-0.819762, 0.188010, -0.540964,
		43.273708, 42.817486, 38.820007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440868, 42.228577, 39.477005>,  <43.847542, 42.685879, 39.198681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440868, 42.228577, 39.477005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304298, 42.303158, 39.108513>,  <43.222359, 42.347908, 38.887417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304298, 42.303158, 39.108513>,  <43.440868, 42.228577, 39.477005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304298, 42.303158, 39.108513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085840, -0.982216, -0.166985,
		-0.935982, 0.022065, 0.351357,
		-0.341423, 0.186455, -0.921230,
		43.201870, 42.359093, 38.832146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882969, 41.739109, 39.344410>,  <43.440868, 42.228577, 39.477005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882969, 41.739109, 39.344410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038086, 41.862423, 38.996944>,  <43.131157, 41.936413, 38.788464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038086, 41.862423, 38.996944>,  <42.882969, 41.739109, 39.344410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038086, 41.862423, 38.996944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140844, -0.911526, -0.386373,
		-0.910922, 0.272179, -0.310063,
		0.387793, 0.308285, -0.868664,
		43.154423, 41.954910, 38.736343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539661, 41.254639, 38.876377>,  <42.882969, 41.739109, 39.344410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539661, 41.254639, 38.876377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840889, 41.389965, 38.650661>,  <43.021626, 41.471161, 38.515232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840889, 41.389965, 38.650661>,  <42.539661, 41.254639, 38.876377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840889, 41.389965, 38.650661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071490, -0.810514, -0.581340,
		-0.654042, 0.478132, -0.586190,
		0.753073, 0.338314, -0.564292,
		43.066811, 41.491459, 38.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320877, 41.223175, 38.185631>,  <42.539661, 41.254639, 38.876377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320877, 41.223175, 38.185631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720825, 41.221207, 38.191692>,  <42.960796, 41.220024, 38.195332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720825, 41.221207, 38.191692>,  <42.320877, 41.223175, 38.185631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720825, 41.221207, 38.191692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004846, -0.812195, -0.583366,
		0.015181, 0.583366, -0.812068,
		0.999873, -0.004921, 0.015157,
		43.020786, 41.219730, 38.196239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585381, 40.995075, 37.553520>,  <42.320877, 41.223175, 38.185631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585381, 40.995075, 37.553520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902122, 40.928722, 37.788616>,  <43.092167, 40.888908, 37.929676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902122, 40.928722, 37.788616>,  <42.585381, 40.995075, 37.553520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902122, 40.928722, 37.788616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242068, -0.798312, -0.551454,
		0.560681, 0.578947, -0.591994,
		0.791859, -0.165887, 0.587743,
		43.139679, 40.878956, 37.964939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227489, 40.878342, 37.091198>,  <42.585381, 40.995075, 37.553520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227489, 40.878342, 37.091198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268642, 40.714417, 37.453739>,  <43.293335, 40.616062, 37.671265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268642, 40.714417, 37.453739>,  <43.227489, 40.878342, 37.091198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268642, 40.714417, 37.453739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146128, -0.895070, -0.421303,
		0.983902, 0.175786, -0.032199,
		0.102879, -0.409815, 0.906348,
		43.299507, 40.591473, 37.725643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746716, 40.447113, 36.991581>,  <43.227489, 40.878342, 37.091198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746716, 40.447113, 36.991581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578568, 40.319756, 37.331444>,  <43.477680, 40.243343, 37.535362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.578568, 40.319756, 37.331444>,  <43.746716, 40.447113, 36.991581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578568, 40.319756, 37.331444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073301, -0.945269, -0.317953,
		0.904388, -0.071377, 0.420699,
		-0.420368, -0.318391, 0.849657,
		43.452457, 40.224239, 37.586342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207737, 39.894463, 37.234875>,  <43.746716, 40.447113, 36.991581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207737, 39.894463, 37.234875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863911, 39.817417, 37.424210>,  <43.657616, 39.771191, 37.537811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863911, 39.817417, 37.424210>,  <44.207737, 39.894463, 37.234875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863911, 39.817417, 37.424210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129114, -0.978052, -0.163536,
		0.494446, -0.079456, 0.865570,
		-0.859566, -0.192616, 0.473335,
		43.606041, 39.759632, 37.566212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299534, 39.380253, 37.763302>,  <44.207737, 39.894463, 37.234875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299534, 39.380253, 37.763302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912941, 39.379635, 37.660603>,  <43.680984, 39.379265, 37.598984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912941, 39.379635, 37.660603>,  <44.299534, 39.380253, 37.763302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912941, 39.379635, 37.660603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010992, -0.999314, -0.035367,
		-0.256516, -0.037004, 0.965831,
		-0.966477, -0.001544, -0.256746,
		43.622997, 39.379173, 37.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036667, 38.766300, 37.924541>,  <44.299534, 39.380253, 37.763302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036667, 38.766300, 37.924541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707882, 38.865875, 37.719639>,  <43.510612, 38.925621, 37.596695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707882, 38.865875, 37.719639>,  <44.036667, 38.766300, 37.924541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707882, 38.865875, 37.719639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289227, -0.957260, -0.001108,
		-0.490640, 0.147248, 0.858831,
		-0.821961, 0.248941, -0.512258,
		43.461292, 38.940559, 37.565960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444595, 38.439625, 38.230724>,  <44.036667, 38.766300, 37.924541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444595, 38.439625, 38.230724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362057, 38.492058, 37.842861>,  <43.312534, 38.523518, 37.610142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362057, 38.492058, 37.842861>,  <43.444595, 38.439625, 38.230724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362057, 38.492058, 37.842861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211651, -0.973504, -0.086562,
		-0.955315, 0.187368, 0.228621,
		-0.206344, 0.131082, -0.969660,
		43.300152, 38.531384, 37.551964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812546, 38.093742, 38.152138>,  <43.444595, 38.439625, 38.230724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812546, 38.093742, 38.152138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950413, 38.125515, 37.777996>,  <43.033134, 38.144581, 37.553509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950413, 38.125515, 37.777996>,  <42.812546, 38.093742, 38.152138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950413, 38.125515, 37.777996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121062, -0.984331, -0.128205,
		-0.930886, 0.157424, -0.329652,
		0.344669, 0.079436, -0.935357,
		43.053814, 38.149345, 37.497387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336815, 37.676723, 37.787647>,  <42.812546, 38.093742, 38.152138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336815, 37.676723, 37.787647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658554, 37.723186, 37.554569>,  <42.851597, 37.751064, 37.414722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.658554, 37.723186, 37.554569>,  <42.336815, 37.676723, 37.787647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658554, 37.723186, 37.554569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018291, -0.985080, -0.171120,
		-0.593878, 0.126982, -0.794471,
		0.804347, 0.116156, -0.582695,
		42.899857, 37.758034, 37.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135723, 37.241039, 37.313057>,  <42.336815, 37.676723, 37.787647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135723, 37.241039, 37.313057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523849, 37.308571, 37.243793>,  <42.756725, 37.349091, 37.202236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.523849, 37.308571, 37.243793>,  <42.135723, 37.241039, 37.313057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523849, 37.308571, 37.243793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099049, -0.930630, -0.352302,
		-0.220625, 0.324693, -0.919728,
		0.970316, 0.168825, -0.173160,
		42.814945, 37.359219, 37.191845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350368, 37.008751, 36.634735>,  <42.135723, 37.241039, 37.313057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350368, 37.008751, 36.634735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704605, 37.016445, 36.820358>,  <42.917149, 37.021061, 36.931732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704605, 37.016445, 36.820358>,  <42.350368, 37.008751, 36.634735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704605, 37.016445, 36.820358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204789, -0.912948, -0.352969,
		0.416872, 0.407622, -0.812442,
		0.885595, 0.019236, 0.464059,
		42.970284, 37.022217, 36.959576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755451, 36.654099, 36.226688>,  <42.350368, 37.008751, 36.634735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755451, 36.654099, 36.226688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959564, 36.637772, 36.570305>,  <43.082031, 36.627975, 36.776474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959564, 36.637772, 36.570305>,  <42.755451, 36.654099, 36.226688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959564, 36.637772, 36.570305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343592, -0.906015, -0.247146,
		0.788391, 0.421273, -0.448296,
		0.510279, -0.040817, 0.859040,
		43.112648, 36.625526, 36.828018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447041, 36.512035, 36.023335>,  <42.755451, 36.654099, 36.226688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447041, 36.512035, 36.023335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397774, 36.387665, 36.400303>,  <43.368214, 36.313042, 36.626484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.397774, 36.387665, 36.400303>,  <43.447041, 36.512035, 36.023335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397774, 36.387665, 36.400303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273705, -0.923461, -0.268897,
		0.953894, 0.224825, 0.198845,
		-0.123171, -0.310925, 0.942419,
		43.360821, 36.294388, 36.683029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042934, 36.145714, 36.134594>,  <43.447041, 36.512035, 36.023335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042934, 36.145714, 36.134594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766857, 36.017014, 36.393860>,  <43.601212, 35.939793, 36.549419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766857, 36.017014, 36.393860>,  <44.042934, 36.145714, 36.134594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766857, 36.017014, 36.393860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305524, -0.941530, -0.142048,
		0.655968, 0.099989, 0.748137,
		-0.690189, -0.321752, 0.648162,
		43.559799, 35.920486, 36.588310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947948, 36.361553, 35.461590>,  <44.042934, 36.145714, 36.134594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947948, 36.361553, 35.461590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625843, 36.145752, 35.559967>,  <43.432579, 36.016270, 35.618992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625843, 36.145752, 35.559967>,  <43.947948, 36.361553, 35.461590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625843, 36.145752, 35.559967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591156, -0.762500, 0.262922,
		0.045682, 0.357110, 0.932945,
		-0.805263, -0.539505, 0.245940,
		43.384266, 35.983902, 35.633751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647953, 36.721149, 35.173889>,  <43.947948, 36.361553, 35.461590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647953, 36.721149, 35.173889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037945, 36.640789, 35.135818>,  <45.271938, 36.592575, 35.112976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.037945, 36.640789, 35.135818>,  <44.647953, 36.721149, 35.173889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037945, 36.640789, 35.135818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213074, 0.722476, 0.657745,
		-0.063379, -0.661565, 0.747204,
		0.974978, -0.200897, -0.095172,
		45.330437, 36.580521, 35.107265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917839, 36.571686, 35.867279>,  <44.647953, 36.721149, 35.173889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917839, 36.571686, 35.867279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198242, 36.722252, 35.624989>,  <45.366482, 36.812592, 35.479614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198242, 36.722252, 35.624989>,  <44.917839, 36.571686, 35.867279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198242, 36.722252, 35.624989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236157, 0.678921, 0.695195,
		0.672915, -0.630385, 0.387040,
		0.701010, 0.376405, -0.605725,
		45.408543, 36.835175, 35.443272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378529, 36.955814, 36.273705>,  <44.917839, 36.571686, 35.867279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378529, 36.955814, 36.273705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494690, 37.084599, 35.913258>,  <45.564388, 37.161869, 35.696991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494690, 37.084599, 35.913258>,  <45.378529, 36.955814, 36.273705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494690, 37.084599, 35.913258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358082, 0.836712, 0.414354,
		0.887379, -0.443003, 0.127697,
		0.290406, 0.321963, -0.901113,
		45.581810, 37.181187, 35.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018894, 37.357330, 36.423347>,  <45.378529, 36.955814, 36.273705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018894, 37.357330, 36.423347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895874, 37.500210, 36.070572>,  <45.822063, 37.585938, 35.858906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.895874, 37.500210, 36.070572>,  <46.018894, 37.357330, 36.423347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895874, 37.500210, 36.070572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241068, 0.925877, 0.290926,
		0.920489, -0.123134, -0.370861,
		-0.307549, 0.357196, -0.881943,
		45.803608, 37.607368, 35.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590324, 37.803722, 36.068890>,  <46.018894, 37.357330, 36.423347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590324, 37.803722, 36.068890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242596, 37.922596, 35.910919>,  <46.033958, 37.993919, 35.816139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242596, 37.922596, 35.910919>,  <46.590324, 37.803722, 36.068890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242596, 37.922596, 35.910919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238702, 0.952118, 0.191029,
		0.432782, 0.071797, -0.898635,
		-0.869322, 0.297180, -0.394922,
		45.981800, 38.011749, 35.792442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768520, 38.302456, 35.638775>,  <46.590324, 37.803722, 36.068890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768520, 38.302456, 35.638775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378159, 38.356102, 35.707626>,  <46.143944, 38.388290, 35.748936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.378159, 38.356102, 35.707626>,  <46.768520, 38.302456, 35.638775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378159, 38.356102, 35.707626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160272, 0.975867, 0.148311,
		-0.148080, 0.172324, -0.973846,
		-0.975902, 0.134118, 0.172125,
		46.085388, 38.396336, 35.759266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558918, 38.959011, 35.376621>,  <46.768520, 38.302456, 35.638775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558918, 38.959011, 35.376621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276211, 38.895889, 35.652470>,  <46.106586, 38.858017, 35.817978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276211, 38.895889, 35.652470>,  <46.558918, 38.959011, 35.376621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276211, 38.895889, 35.652470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006676, 0.973273, 0.229556,
		-0.707412, 0.166847, -0.686827,
		-0.706770, -0.157805, 0.689618,
		46.064178, 38.848549, 35.859356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028152, 39.476841, 35.219067>,  <46.558918, 38.959011, 35.376621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028152, 39.476841, 35.219067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957447, 39.346497, 35.590565>,  <45.915024, 39.268288, 35.813465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957447, 39.346497, 35.590565>,  <46.028152, 39.476841, 35.219067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957447, 39.346497, 35.590565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040821, 0.945219, 0.323874,
		-0.983407, 0.019337, -0.180382,
		-0.176763, -0.325864, 0.928745,
		45.904419, 39.248737, 35.869190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383228, 39.776424, 35.433849>,  <46.028152, 39.476841, 35.219067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383228, 39.776424, 35.433849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.603836, 39.691986, 35.756653>,  <45.736202, 39.641323, 35.950336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.603836, 39.691986, 35.756653>,  <45.383228, 39.776424, 35.433849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603836, 39.691986, 35.756653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200077, 0.905732, 0.373655,
		-0.809812, -0.367542, 0.457293,
		0.551519, -0.211097, 0.807010,
		45.769291, 39.628658, 35.998756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050564, 40.201550, 35.964584>,  <45.383228, 39.776424, 35.433849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050564, 40.201550, 35.964584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386421, 40.106361, 36.159878>,  <45.587936, 40.049248, 36.277054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.386421, 40.106361, 36.159878>,  <45.050564, 40.201550, 35.964584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386421, 40.106361, 36.159878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143534, 0.769737, 0.622015,
		-0.523832, -0.592348, 0.612147,
		0.839641, -0.237968, 0.488236,
		45.638313, 40.034969, 36.306347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944336, 40.211502, 36.743382>,  <45.050564, 40.201550, 35.964584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944336, 40.211502, 36.743382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333340, 40.272266, 36.672787>,  <45.566742, 40.308723, 36.630428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333340, 40.272266, 36.672787>,  <44.944336, 40.211502, 36.743382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333340, 40.272266, 36.672787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020193, 0.700046, 0.713812,
		0.231982, -0.697753, 0.677735,
		0.972510, 0.151906, -0.176488,
		45.625092, 40.317837, 36.619839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132236, 40.382061, 37.365505>,  <44.944336, 40.211502, 36.743382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132236, 40.382061, 37.365505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472515, 40.472828, 37.175842>,  <45.676682, 40.527290, 37.062042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472515, 40.472828, 37.175842>,  <45.132236, 40.382061, 37.365505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472515, 40.472828, 37.175842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107845, 0.807498, 0.579928,
		0.514481, -0.544477, 0.662460,
		0.850693, 0.226919, -0.474162,
		45.727722, 40.540905, 37.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560829, 40.530937, 37.899078>,  <45.132236, 40.382061, 37.365505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560829, 40.530937, 37.899078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730576, 40.687294, 37.572369>,  <45.832424, 40.781109, 37.376343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.730576, 40.687294, 37.572369>,  <45.560829, 40.530937, 37.899078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730576, 40.687294, 37.572369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267667, 0.807559, 0.525549,
		0.865024, -0.441649, 0.238074,
		0.424367, 0.390888, -0.816774,
		45.857887, 40.804562, 37.327335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087746, 40.771561, 38.116631>,  <45.560829, 40.530937, 37.899078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087746, 40.771561, 38.116631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021519, 40.979023, 37.781113>,  <45.981781, 41.103500, 37.579800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021519, 40.979023, 37.781113>,  <46.087746, 40.771561, 38.116631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021519, 40.979023, 37.781113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230947, 0.847277, 0.478315,
		0.958775, -0.114523, -0.260066,
		-0.165570, 0.518658, -0.838797,
		45.971848, 41.134621, 37.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701206, 41.211308, 37.893902>,  <46.087746, 40.771561, 38.116631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701206, 41.211308, 37.893902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368519, 41.361725, 37.730526>,  <46.168907, 41.451977, 37.632500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368519, 41.361725, 37.730526>,  <46.701206, 41.211308, 37.893902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368519, 41.361725, 37.730526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150642, 0.860936, 0.485897,
		0.534363, 0.342604, -0.772709,
		-0.831723, 0.376048, -0.408442,
		46.119003, 41.474541, 37.607994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959518, 41.701183, 37.530502>,  <46.701206, 41.211308, 37.893902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959518, 41.701183, 37.530502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574379, 41.785564, 37.597942>,  <46.343296, 41.836193, 37.638405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.574379, 41.785564, 37.597942>,  <46.959518, 41.701183, 37.530502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574379, 41.785564, 37.597942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269660, 0.784596, 0.558294,
		-0.014505, 0.583015, -0.812332,
		-0.962846, 0.210956, 0.168596,
		46.285526, 41.848850, 37.648521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905853, 42.400303, 37.629753>,  <46.959518, 41.701183, 37.530502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905853, 42.400303, 37.629753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553474, 42.288605, 37.782566>,  <46.342045, 42.221584, 37.874252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553474, 42.288605, 37.782566>,  <46.905853, 42.400303, 37.629753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553474, 42.288605, 37.782566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097629, 0.682694, 0.724153,
		-0.463028, 0.675240, -0.574157,
		-0.880951, -0.279249, 0.382029,
		46.289188, 42.204830, 37.897175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629169, 43.016975, 37.979565>,  <46.905853, 42.400303, 37.629753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629169, 43.016975, 37.979565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.376461, 42.749855, 38.136997>,  <46.224834, 42.589584, 38.231457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.376461, 42.749855, 38.136997>,  <46.629169, 43.016975, 37.979565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376461, 42.749855, 38.136997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187790, 0.624475, 0.758134,
		-0.752062, 0.405059, -0.519933,
		-0.631773, -0.667802, 0.393578,
		46.186928, 42.549515, 38.255070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019436, 43.384384, 38.096672>,  <46.629169, 43.016975, 37.979565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019436, 43.384384, 38.096672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971161, 43.066864, 38.335106>,  <45.942196, 42.876350, 38.478165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971161, 43.066864, 38.335106>,  <46.019436, 43.384384, 38.096672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971161, 43.066864, 38.335106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135804, 0.608028, 0.782214,
		-0.983358, 0.013452, -0.181182,
		-0.120686, -0.793801, 0.596083,
		45.934956, 42.828724, 38.513931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551735, 43.609253, 38.492542>,  <46.019436, 43.384384, 38.096672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551735, 43.609253, 38.492542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.712303, 43.322498, 38.720554>,  <45.808643, 43.150444, 38.857361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.712303, 43.322498, 38.720554>,  <45.551735, 43.609253, 38.492542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712303, 43.322498, 38.720554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052538, 0.603326, 0.795762,
		-0.914385, -0.349385, 0.204524,
		0.401422, -0.716888, 0.570028,
		45.832729, 43.107433, 38.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.372871, 40.916801, 39.652451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978161, 40.857681, 39.679062>,  <38.741333, 40.822208, 39.695026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978161, 40.857681, 39.679062>,  <39.372871, 40.916801, 39.652451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978161, 40.857681, 39.679062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070840, -0.762440, -0.643169,
		0.145783, -0.629952, 0.762829,
		-0.986777, -0.147802, 0.066525,
		38.682129, 40.813339, 39.699020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331993, 40.211773, 39.449249>,  <39.372871, 40.916801, 39.652451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331993, 40.211773, 39.449249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952869, 40.337074, 39.425461>,  <38.725395, 40.412254, 39.411190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952869, 40.337074, 39.425461>,  <39.331993, 40.211773, 39.449249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952869, 40.337074, 39.425461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203497, -0.737878, -0.643526,
		-0.245469, -0.597835, 0.763111,
		-0.947805, 0.313256, -0.059469,
		38.668530, 40.431049, 39.407619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901726, 39.624687, 39.576157>,  <39.331993, 40.211773, 39.449249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901726, 39.624687, 39.576157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700565, 39.892353, 39.357323>,  <38.579868, 40.052952, 39.226021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700565, 39.892353, 39.357323>,  <38.901726, 39.624687, 39.576157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700565, 39.892353, 39.357323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090146, -0.670104, -0.736773,
		-0.859630, -0.321206, 0.397319,
		-0.502901, 0.669169, -0.547086,
		38.549694, 40.093105, 39.193195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579384, 39.184975, 39.115986>,  <38.901726, 39.624687, 39.576157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579384, 39.184975, 39.115986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508381, 39.543858, 38.954243>,  <38.465778, 39.759190, 38.857197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508381, 39.543858, 38.954243>,  <38.579384, 39.184975, 39.115986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508381, 39.543858, 38.954243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084925, -0.395386, -0.914580,
		-0.980449, -0.196682, -0.006013,
		-0.177504, 0.897210, -0.404359,
		38.455128, 39.813019, 38.832935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935490, 39.054073, 38.696991>,  <38.579384, 39.184975, 39.115986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935490, 39.054073, 38.696991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159859, 39.350613, 38.549603>,  <38.294479, 39.528538, 38.461170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159859, 39.350613, 38.549603>,  <37.935490, 39.054073, 38.696991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159859, 39.350613, 38.549603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114691, -0.371200, -0.921443,
		-0.819888, 0.559114, -0.123186,
		0.560919, 0.741352, -0.368467,
		38.328133, 39.573017, 38.439064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667145, 39.108307, 38.047226>,  <37.935490, 39.054073, 38.696991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667145, 39.108307, 38.047226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003086, 39.322937, 38.014412>,  <38.204651, 39.451717, 37.994724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003086, 39.322937, 38.014412>,  <37.667145, 39.108307, 38.047226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003086, 39.322937, 38.014412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076646, -0.266842, -0.960688,
		-0.537376, 0.800548, -0.265234,
		0.839853, 0.536580, -0.082036,
		38.255043, 39.483910, 37.989799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562447, 39.748310, 37.590832>,  <37.667145, 39.108307, 38.047226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562447, 39.748310, 37.590832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959297, 39.702320, 37.570969>,  <38.197407, 39.674728, 37.559052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959297, 39.702320, 37.570969>,  <37.562447, 39.748310, 37.590832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959297, 39.702320, 37.570969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083825, -0.315048, -0.945367,
		0.093046, 0.942086, -0.322205,
		0.992127, -0.114971, -0.049656,
		38.256935, 39.667828, 37.556072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739883, 40.094086, 36.954414>,  <37.562447, 39.748310, 37.590832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739883, 40.094086, 36.954414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042549, 39.851078, 37.051067>,  <38.224148, 39.705273, 37.109058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042549, 39.851078, 37.051067>,  <37.739883, 40.094086, 36.954414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042549, 39.851078, 37.051067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032290, -0.403845, -0.914257,
		0.653009, 0.683981, -0.325191,
		0.756661, -0.607519, 0.241629,
		38.269547, 39.668823, 37.123554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270039, 40.074986, 36.345001>,  <37.739883, 40.094086, 36.954414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270039, 40.074986, 36.345001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304321, 39.731274, 36.546715>,  <38.324890, 39.525047, 36.667744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304321, 39.731274, 36.546715>,  <38.270039, 40.074986, 36.345001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304321, 39.731274, 36.546715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010906, -0.505303, -0.862873,
		0.996261, 0.079454, -0.033937,
		0.085707, -0.859277, 0.504280,
		38.330032, 39.473492, 36.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657990, 39.677132, 35.900188>,  <38.270039, 40.074986, 36.345001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657990, 39.677132, 35.900188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535309, 39.394932, 36.155754>,  <38.461700, 39.225613, 36.309093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535309, 39.394932, 36.155754>,  <38.657990, 39.677132, 35.900188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535309, 39.394932, 36.155754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125040, -0.635583, -0.761839,
		0.943558, -0.313545, 0.106717,
		-0.306698, -0.705495, 0.638915,
		38.443298, 39.183285, 36.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022968, 38.959812, 35.669941>,  <38.657990, 39.677132, 35.900188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022968, 38.959812, 35.669941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703983, 38.893536, 35.902008>,  <38.512592, 38.853771, 36.041248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703983, 38.893536, 35.902008>,  <39.022968, 38.959812, 35.669941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703983, 38.893536, 35.902008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297891, -0.728073, -0.617390,
		0.524700, -0.665174, 0.531256,
		-0.797465, -0.165688, 0.580169,
		38.464745, 38.843830, 36.076057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044998, 38.263527, 35.898079>,  <39.022968, 38.959812, 35.669941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044998, 38.263527, 35.898079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663414, 38.381256, 35.921177>,  <38.434464, 38.451893, 35.935036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663414, 38.381256, 35.921177>,  <39.044998, 38.263527, 35.898079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663414, 38.381256, 35.921177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275254, -0.782597, -0.558369,
		-0.119148, -0.548557, 0.827580,
		-0.953959, 0.294323, 0.057748,
		38.377228, 38.469555, 35.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665386, 37.729202, 36.196198>,  <39.044998, 38.263527, 35.898079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665386, 37.729202, 36.196198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479259, 37.961662, 35.929142>,  <38.367584, 38.101139, 35.768909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479259, 37.961662, 35.929142>,  <38.665386, 37.729202, 36.196198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479259, 37.961662, 35.929142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136504, -0.792363, -0.594582,
		-0.874553, -0.185536, 0.448032,
		-0.465320, 0.581152, -0.667637,
		38.339664, 38.136009, 35.728851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029358, 37.618149, 36.515003>,  <38.665386, 37.729202, 36.196198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029358, 37.618149, 36.515003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858353, 37.286388, 36.371155>,  <37.755749, 37.087334, 36.284843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858353, 37.286388, 36.371155>,  <38.029358, 37.618149, 36.515003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858353, 37.286388, 36.371155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236850, -0.281149, 0.929977,
		-0.872431, 0.482753, -0.076249,
		-0.427512, -0.829400, -0.359623,
		37.730099, 37.037567, 36.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292149, 37.594578, 36.739197>,  <38.029358, 37.618149, 36.515003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292149, 37.594578, 36.739197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467133, 37.239616, 36.681026>,  <37.572124, 37.026642, 36.646126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467133, 37.239616, 36.681026>,  <37.292149, 37.594578, 36.739197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467133, 37.239616, 36.681026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277219, -0.286931, 0.916962,
		-0.855439, -0.360821, -0.371525,
		0.437462, -0.887400, -0.145426,
		37.598370, 36.973396, 36.637398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765854, 37.057220, 36.769917>,  <37.292149, 37.594578, 36.739197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765854, 37.057220, 36.769917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120934, 36.890495, 36.848148>,  <37.333981, 36.790459, 36.895088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120934, 36.890495, 36.848148>,  <36.765854, 37.057220, 36.769917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120934, 36.890495, 36.848148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350931, -0.337537, 0.873451,
		-0.298053, -0.843998, -0.445905,
		0.887700, -0.416817, 0.195581,
		37.387245, 36.765450, 36.906822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612507, 36.413826, 37.093403>,  <36.765854, 37.057220, 36.769917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612507, 36.413826, 37.093403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986572, 36.516567, 37.190971>,  <37.211010, 36.578213, 37.249512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986572, 36.516567, 37.190971>,  <36.612507, 36.413826, 37.093403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986572, 36.516567, 37.190971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178550, -0.252928, 0.950867,
		0.305926, -0.932767, -0.190668,
		0.935163, 0.256851, 0.243923,
		37.267120, 36.593624, 37.264149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748966, 35.893017, 37.542908>,  <36.612507, 36.413826, 37.093403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748966, 35.893017, 37.542908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030071, 36.168980, 37.612362>,  <37.198734, 36.334557, 37.654034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030071, 36.168980, 37.612362>,  <36.748966, 35.893017, 37.542908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030071, 36.168980, 37.612362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075468, -0.170392, 0.982482,
		0.707410, -0.703555, -0.067679,
		0.702762, 0.689910, 0.173633,
		37.240898, 36.375954, 37.664452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034100, 35.724674, 38.090363>,  <36.748966, 35.893017, 37.542908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034100, 35.724674, 38.090363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137035, 36.111187, 38.093685>,  <37.198799, 36.343094, 38.095680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137035, 36.111187, 38.093685>,  <37.034100, 35.724674, 38.090363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137035, 36.111187, 38.093685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215536, 0.049019, 0.975265,
		0.941976, -0.252769, 0.220884,
		0.257344, 0.966284, 0.008306,
		37.214237, 36.401073, 38.096176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425533, 35.703522, 38.686180>,  <37.034100, 35.724674, 38.090363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425533, 35.703522, 38.686180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421860, 36.093765, 38.598454>,  <37.419655, 36.327911, 38.545818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421860, 36.093765, 38.598454>,  <37.425533, 35.703522, 38.686180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421860, 36.093765, 38.598454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174185, 0.214408, 0.961087,
		0.984670, 0.047030, 0.167967,
		-0.009187, 0.975611, -0.219313,
		37.419106, 36.386448, 38.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944382, 35.952423, 39.182991>,  <37.425533, 35.703522, 38.686180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944382, 35.952423, 39.182991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692764, 36.230263, 39.043369>,  <37.541794, 36.396969, 38.959599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692764, 36.230263, 39.043369>,  <37.944382, 35.952423, 39.182991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692764, 36.230263, 39.043369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044191, 0.480237, 0.876025,
		0.776115, 0.535631, -0.332784,
		-0.629041, 0.694602, -0.349050,
		37.504051, 36.438644, 38.938656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259712, 36.584118, 39.229523>,  <37.944382, 35.952423, 39.182991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259712, 36.584118, 39.229523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860950, 36.611515, 39.245010>,  <37.621693, 36.627953, 39.254303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860950, 36.611515, 39.245010>,  <38.259712, 36.584118, 39.229523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860950, 36.611515, 39.245010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057968, 0.306633, 0.950061,
		0.053196, 0.949360, -0.309653,
		-0.996900, 0.068489, 0.038721,
		37.561882, 36.632061, 39.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228031, 37.214329, 39.460369>,  <38.259712, 36.584118, 39.229523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228031, 37.214329, 39.460369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866257, 37.064167, 39.541424>,  <37.649193, 36.974068, 39.590057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866257, 37.064167, 39.541424>,  <38.228031, 37.214329, 39.460369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866257, 37.064167, 39.541424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000313, 0.475587, 0.879669,
		-0.426605, 0.795542, -0.430256,
		-0.904438, -0.375406, 0.202639,
		37.594925, 36.951546, 39.602215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840267, 37.784279, 39.748558>,  <38.228031, 37.214329, 39.460369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840267, 37.784279, 39.748558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628685, 37.465153, 39.864285>,  <37.501736, 37.273678, 39.933720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628685, 37.465153, 39.864285>,  <37.840267, 37.784279, 39.748558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628685, 37.465153, 39.864285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045714, 0.367208, 0.929015,
		-0.847418, 0.478180, -0.230707,
		-0.528954, -0.797811, 0.289320,
		37.469997, 37.225811, 39.951080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293911, 38.138592, 40.082146>,  <37.840267, 37.784279, 39.748558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293911, 38.138592, 40.082146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285206, 37.755707, 40.197575>,  <37.279984, 37.525974, 40.266830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285206, 37.755707, 40.197575>,  <37.293911, 38.138592, 40.082146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285206, 37.755707, 40.197575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187709, 0.287416, 0.939232,
		-0.981983, -0.033724, -0.185933,
		-0.021765, -0.957212, 0.288568,
		37.278675, 37.468544, 40.284145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719711, 38.060875, 40.520630>,  <37.293911, 38.138592, 40.082146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719711, 38.060875, 40.520630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936489, 37.740200, 40.621502>,  <37.066555, 37.547794, 40.682026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936489, 37.740200, 40.621502>,  <36.719711, 38.060875, 40.520630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936489, 37.740200, 40.621502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047252, 0.270527, 0.961552,
		-0.839085, -0.533023, 0.108729,
		0.541944, -0.801687, 0.252182,
		37.099072, 37.499695, 40.697155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351654, 37.720097, 40.990108>,  <36.719711, 38.060875, 40.520630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351654, 37.720097, 40.990108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715061, 37.583870, 41.086941>,  <36.933105, 37.502132, 41.145039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715061, 37.583870, 41.086941>,  <36.351654, 37.720097, 40.990108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715061, 37.583870, 41.086941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149533, 0.275979, 0.949461,
		-0.390163, -0.898805, 0.199808,
		0.908522, -0.340567, 0.242078,
		36.987617, 37.481701, 41.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298950, 37.480721, 41.645115>,  <36.351654, 37.720097, 40.990108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298950, 37.480721, 41.645115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695770, 37.516781, 41.609974>,  <36.933861, 37.538418, 41.588890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695770, 37.516781, 41.609974>,  <36.298950, 37.480721, 41.645115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695770, 37.516781, 41.609974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061314, 0.263470, 0.962717,
		0.109933, -0.960446, 0.255847,
		0.992046, 0.090147, -0.087853,
		36.993385, 37.543827, 41.583618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113235, 36.788181, 41.984722>,  <36.298950, 37.480721, 41.645115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113235, 36.788181, 41.984722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747322, 36.771606, 42.145447>,  <35.527775, 36.761662, 42.241882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747322, 36.771606, 42.145447>,  <36.113235, 36.788181, 41.984722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747322, 36.771606, 42.145447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313030, -0.555996, -0.769988,
		0.255314, -0.830152, 0.495644,
		-0.914782, -0.041437, 0.401816,
		35.472889, 36.759174, 42.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902882, 36.069820, 41.895138>,  <36.113235, 36.788181, 41.984722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902882, 36.069820, 41.895138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553730, 36.262676, 41.925137>,  <35.344238, 36.378391, 41.943134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553730, 36.262676, 41.925137>,  <35.902882, 36.069820, 41.895138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553730, 36.262676, 41.925137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386423, -0.589218, -0.709577,
		-0.297930, -0.648353, 0.700626,
		-0.872878, 0.482143, 0.074993,
		35.291866, 36.407318, 41.947636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478348, 35.591000, 41.810604>,  <35.902882, 36.069820, 41.895138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478348, 35.591000, 41.810604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262924, 35.921505, 41.744583>,  <35.133671, 36.119808, 41.704971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262924, 35.921505, 41.744583>,  <35.478348, 35.591000, 41.810604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262924, 35.921505, 41.744583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469822, -0.457086, -0.755208,
		-0.699444, -0.329180, 0.634365,
		-0.538558, 0.826265, -0.165050,
		35.101357, 36.169384, 41.695068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738338, 35.487976, 41.784554>,  <35.478348, 35.591000, 41.810604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738338, 35.487976, 41.784554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742462, 35.838490, 41.591877>,  <34.744938, 36.048798, 41.476273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742462, 35.838490, 41.591877>,  <34.738338, 35.487976, 41.784554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742462, 35.838490, 41.591877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601764, -0.379282, -0.702870,
		-0.798608, 0.297108, 0.523404,
		0.010310, 0.876283, -0.481687,
		34.745556, 36.101376, 41.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001141, 35.685432, 41.655071>,  <34.738338, 35.487976, 41.784554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001141, 35.685432, 41.655071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184937, 35.935478, 41.402691>,  <34.295216, 36.085506, 41.251263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184937, 35.935478, 41.402691>,  <34.001141, 35.685432, 41.655071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184937, 35.935478, 41.402691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693198, -0.191734, -0.694777,
		-0.555290, 0.756618, 0.345228,
		0.459489, 0.625114, -0.630953,
		34.322784, 36.123013, 41.213406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463123, 36.092194, 41.321018>,  <34.001141, 35.685432, 41.655071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463123, 36.092194, 41.321018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785282, 36.110306, 41.084614>,  <33.978577, 36.121174, 40.942772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785282, 36.110306, 41.084614>,  <33.463123, 36.092194, 41.321018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785282, 36.110306, 41.084614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585018, -0.099714, -0.804867,
		-0.095375, 0.993986, -0.053820,
		0.805393, 0.045279, -0.591010,
		34.026901, 36.123890, 40.907310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210335, 36.516270, 40.811363>,  <33.463123, 36.092194, 41.321018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210335, 36.516270, 40.811363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527515, 36.325871, 40.659233>,  <33.717823, 36.211632, 40.567955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527515, 36.325871, 40.659233>,  <33.210335, 36.516270, 40.811363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527515, 36.325871, 40.659233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484997, -0.115300, -0.866881,
		0.368785, 0.871854, -0.322287,
		0.792953, -0.476001, -0.380326,
		33.765400, 36.183071, 40.545135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238384, 36.755150, 40.221661>,  <33.210335, 36.516270, 40.811363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238384, 36.755150, 40.221661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462093, 36.429550, 40.158897>,  <33.596317, 36.234192, 40.121239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462093, 36.429550, 40.158897>,  <33.238384, 36.755150, 40.221661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462093, 36.429550, 40.158897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448825, -0.138186, -0.882871,
		0.696971, 0.564193, -0.442626,
		0.559274, -0.813997, -0.156912,
		33.629875, 36.185352, 40.111824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415276, 36.858746, 39.658527>,  <33.238384, 36.755150, 40.221661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415276, 36.858746, 39.658527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442207, 36.462414, 39.705395>,  <33.458366, 36.224617, 39.733517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442207, 36.462414, 39.705395>,  <33.415276, 36.858746, 39.658527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442207, 36.462414, 39.705395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542248, -0.134917, -0.829316,
		0.837517, -0.007700, -0.546357,
		0.067327, -0.990827, 0.117170,
		33.462406, 36.165165, 39.740547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742825, 36.651199, 39.062496>,  <33.415276, 36.858746, 39.658527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742825, 36.651199, 39.062496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555874, 36.336559, 39.223896>,  <33.443703, 36.147774, 39.320736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555874, 36.336559, 39.223896>,  <33.742825, 36.651199, 39.062496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555874, 36.336559, 39.223896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348117, -0.255795, -0.901878,
		0.812633, -0.561985, -0.154276,
		-0.467378, -0.786602, 0.403503,
		33.415661, 36.100578, 39.344948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741135, 36.097542, 38.538483>,  <33.742825, 36.651199, 39.062496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741135, 36.097542, 38.538483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437344, 36.023525, 38.787945>,  <33.255070, 35.979115, 38.937622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437344, 36.023525, 38.787945>,  <33.741135, 36.097542, 38.538483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437344, 36.023525, 38.787945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533210, -0.372124, -0.759744,
		0.372665, -0.909551, 0.183952,
		-0.759479, -0.185045, 0.623659,
		33.209499, 35.968010, 38.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410412, 35.337830, 38.448631>,  <33.741135, 36.097542, 38.538483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410412, 35.337830, 38.448631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132607, 35.588753, 38.589565>,  <32.965923, 35.739307, 38.674126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132607, 35.588753, 38.589565>,  <33.410412, 35.337830, 38.448631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132607, 35.588753, 38.589565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677890, -0.406432, -0.612600,
		-0.241087, -0.664303, 0.707516,
		-0.694509, 0.627308, 0.352339,
		32.924255, 35.776947, 38.695267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.302975, 37.935913, 45.521072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946705, 38.113781, 45.483200>,  <35.732941, 38.220501, 45.460476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946705, 38.113781, 45.483200>,  <36.302975, 37.935913, 45.521072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946705, 38.113781, 45.483200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258227, -0.666205, -0.699636,
		-0.374184, -0.598699, 0.708199,
		-0.890677, 0.444669, -0.094683,
		35.679501, 38.247181, 45.454796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718456, 37.406029, 45.617775>,  <36.302975, 37.935913, 45.521072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718456, 37.406029, 45.617775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598724, 37.717876, 45.397739>,  <35.526886, 37.904984, 45.265717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598724, 37.717876, 45.397739>,  <35.718456, 37.406029, 45.617775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598724, 37.717876, 45.397739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352631, -0.626096, -0.695454,
		-0.886596, -0.014191, 0.462326,
		-0.299330, 0.779617, -0.550090,
		35.508926, 37.951763, 45.232712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170063, 37.064110, 45.155373>,  <35.718456, 37.406029, 45.617775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170063, 37.064110, 45.155373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219261, 37.425694, 44.991554>,  <35.248779, 37.642643, 44.893265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219261, 37.425694, 44.991554>,  <35.170063, 37.064110, 45.155373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219261, 37.425694, 44.991554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196837, -0.382259, -0.902847,
		-0.972691, 0.191659, 0.130917,
		0.122995, 0.903961, -0.409545,
		35.256161, 37.696880, 44.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556057, 37.232208, 44.798988>,  <35.170063, 37.064110, 45.155373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556057, 37.232208, 44.798988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841751, 37.457142, 44.632305>,  <35.013168, 37.592102, 44.532295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841751, 37.457142, 44.632305>,  <34.556057, 37.232208, 44.798988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841751, 37.457142, 44.632305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252774, -0.347949, -0.902794,
		-0.652663, 0.750144, -0.106376,
		0.714239, 0.562331, -0.416710,
		35.056023, 37.625843, 44.507294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305744, 37.470440, 44.161377>,  <34.556057, 37.232208, 44.798988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305744, 37.470440, 44.161377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701061, 37.511429, 44.116154>,  <34.938251, 37.536022, 44.089020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701061, 37.511429, 44.116154>,  <34.305744, 37.470440, 44.161377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701061, 37.511429, 44.116154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078943, -0.290704, -0.953551,
		-0.130584, 0.951309, -0.279210,
		0.988289, 0.102477, -0.113061,
		34.997547, 37.542171, 44.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468811, 37.822487, 43.537228>,  <34.305744, 37.470440, 44.161377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468811, 37.822487, 43.537228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810997, 37.638493, 43.632389>,  <35.016308, 37.528095, 43.689484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810997, 37.638493, 43.632389>,  <34.468811, 37.822487, 43.537228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810997, 37.638493, 43.632389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098465, -0.306530, -0.946755,
		0.508420, 0.833336, -0.216932,
		0.855461, -0.459989, 0.237900,
		35.067635, 37.500496, 43.703758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975475, 37.918068, 43.003468>,  <34.468811, 37.822487, 43.537228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975475, 37.918068, 43.003468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128128, 37.589676, 43.173336>,  <35.219719, 37.392643, 43.275257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.128128, 37.589676, 43.173336>,  <34.975475, 37.918068, 43.003468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128128, 37.589676, 43.173336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257838, -0.346656, -0.901859,
		0.887623, 0.453679, 0.079383,
		0.381635, -0.820978, 0.424675,
		35.242619, 37.343384, 43.300739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647091, 37.788532, 42.590744>,  <34.975475, 37.918068, 43.003468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647091, 37.788532, 42.590744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522987, 37.457020, 42.777020>,  <35.448524, 37.258114, 42.888786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522987, 37.457020, 42.777020>,  <35.647091, 37.788532, 42.590744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522987, 37.457020, 42.777020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269071, -0.546387, -0.793134,
		0.911780, -0.120770, 0.392520,
		-0.310255, -0.828780, 0.465689,
		35.429913, 37.208385, 42.916725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123505, 37.367207, 42.409348>,  <35.647091, 37.788532, 42.590744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123505, 37.367207, 42.409348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806293, 37.151554, 42.522793>,  <35.615967, 37.022163, 42.590862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806293, 37.151554, 42.522793>,  <36.123505, 37.367207, 42.409348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806293, 37.151554, 42.522793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133253, -0.607815, -0.782818,
		0.594431, -0.583005, 0.553856,
		-0.793029, -0.539134, 0.283617,
		35.568386, 36.989815, 42.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767620, 36.960823, 42.324665>,  <36.123505, 37.367207, 42.409348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767620, 36.960823, 42.324665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984371, 37.257999, 42.167488>,  <37.114422, 37.436306, 42.073181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984371, 37.257999, 42.167488>,  <36.767620, 36.960823, 42.324665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984371, 37.257999, 42.167488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460941, 0.128245, 0.878116,
		0.702779, -0.656960, -0.272957,
		0.541882, 0.742938, -0.392947,
		37.146935, 37.480881, 42.049603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304661, 36.976551, 42.820004>,  <36.767620, 36.960823, 42.324665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304661, 36.976551, 42.820004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321712, 37.312332, 42.603302>,  <37.331944, 37.513802, 42.473282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.321712, 37.312332, 42.603302>,  <37.304661, 36.976551, 42.820004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321712, 37.312332, 42.603302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228451, 0.519689, 0.823246,
		0.972622, -0.158859, -0.169620,
		0.042631, 0.839457, -0.541752,
		37.334503, 37.564171, 42.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060505, 37.252663, 42.865253>,  <37.304661, 36.976551, 42.820004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060505, 37.252663, 42.865253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796848, 37.547020, 42.803295>,  <37.638657, 37.723637, 42.766121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796848, 37.547020, 42.803295>,  <38.060505, 37.252663, 42.865253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796848, 37.547020, 42.803295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392406, 0.512277, 0.763930,
		0.641526, 0.442751, -0.626431,
		-0.659137, 0.735897, -0.154900,
		37.599106, 37.767788, 42.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319202, 37.805897, 43.182652>,  <38.060505, 37.252663, 42.865253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319202, 37.805897, 43.182652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980778, 38.005520, 43.107693>,  <37.777721, 38.125294, 43.062717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980778, 38.005520, 43.107693>,  <38.319202, 37.805897, 43.182652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980778, 38.005520, 43.107693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300901, 0.737261, 0.604900,
		0.440044, 0.455394, -0.773936,
		-0.846061, 0.499061, -0.187399,
		37.726959, 38.155239, 43.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496967, 38.482513, 43.052254>,  <38.319202, 37.805897, 43.182652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496967, 38.482513, 43.052254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108829, 38.513584, 43.143822>,  <37.875946, 38.532227, 43.198761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108829, 38.513584, 43.143822>,  <38.496967, 38.482513, 43.052254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108829, 38.513584, 43.143822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199839, 0.790601, 0.578804,
		-0.136020, 0.607384, -0.782677,
		-0.970342, 0.077680, 0.228917,
		37.817726, 38.536888, 43.212498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349655, 39.256180, 42.971706>,  <38.496967, 38.482513, 43.052254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349655, 39.256180, 42.971706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038170, 39.117725, 43.181011>,  <37.851280, 39.034653, 43.306595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038170, 39.117725, 43.181011>,  <38.349655, 39.256180, 42.971706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038170, 39.117725, 43.181011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017903, 0.845953, 0.532957,
		-0.627127, 0.405652, -0.664950,
		-0.778711, -0.346136, 0.523258,
		37.804558, 39.013885, 43.337990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810673, 39.856239, 42.977692>,  <38.349655, 39.256180, 42.971706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810673, 39.856239, 42.977692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730190, 39.602680, 43.276405>,  <37.681900, 39.450546, 43.455635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730190, 39.602680, 43.276405>,  <37.810673, 39.856239, 42.977692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730190, 39.602680, 43.276405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144661, 0.734790, 0.662689,
		-0.968808, 0.241367, -0.056143,
		-0.201205, -0.633897, 0.746787,
		37.669830, 39.412510, 43.500443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312443, 40.134502, 43.218109>,  <37.810673, 39.856239, 42.977692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312443, 40.134502, 43.218109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459290, 39.903561, 43.509830>,  <37.547398, 39.764996, 43.684864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459290, 39.903561, 43.509830>,  <37.312443, 40.134502, 43.218109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459290, 39.903561, 43.509830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097384, 0.803599, 0.587149,
		-0.925063, -0.144529, 0.351240,
		0.367117, -0.577355, 0.729305,
		37.569424, 39.730354, 43.728622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149837, 40.401150, 43.812347>,  <37.312443, 40.134502, 43.218109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149837, 40.401150, 43.812347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421562, 40.160320, 43.980179>,  <37.584599, 40.015823, 44.080875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421562, 40.160320, 43.980179>,  <37.149837, 40.401150, 43.812347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421562, 40.160320, 43.980179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003629, 0.574497, 0.818499,
		-0.733839, -0.554495, 0.392449,
		0.679314, -0.602071, 0.419575,
		37.625355, 39.979698, 44.106052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923496, 40.210594, 44.436535>,  <37.149837, 40.401150, 43.812347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923496, 40.210594, 44.436535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316853, 40.149807, 44.476234>,  <37.552868, 40.113335, 44.500053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316853, 40.149807, 44.476234>,  <36.923496, 40.210594, 44.436535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316853, 40.149807, 44.476234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008610, 0.585253, 0.810805,
		-0.181297, -0.796484, 0.576841,
		0.983391, -0.151964, 0.099247,
		37.611870, 40.104218, 44.506008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055809, 40.152161, 45.127659>,  <36.923496, 40.210594, 44.436535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055809, 40.152161, 45.127659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411781, 40.250893, 44.974243>,  <37.625366, 40.310131, 44.882195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411781, 40.250893, 44.974243>,  <37.055809, 40.152161, 45.127659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411781, 40.250893, 44.974243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136629, 0.658025, 0.740497,
		0.435153, -0.711392, 0.551872,
		0.889930, 0.246828, -0.383539,
		37.678761, 40.324940, 44.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565060, 40.214436, 45.697533>,  <37.055809, 40.152161, 45.127659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565060, 40.214436, 45.697533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733227, 40.407246, 45.390053>,  <37.834126, 40.522934, 45.205566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733227, 40.407246, 45.390053>,  <37.565060, 40.214436, 45.697533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733227, 40.407246, 45.390053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457768, 0.618795, 0.638390,
		0.783389, -0.620275, 0.039494,
		0.420416, 0.482029, -0.768699,
		37.859352, 40.551853, 45.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156727, 40.578419, 45.999844>,  <37.565060, 40.214436, 45.697533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156727, 40.578419, 45.999844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109821, 40.755535, 45.644272>,  <38.081680, 40.861805, 45.430931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109821, 40.755535, 45.644272>,  <38.156727, 40.578419, 45.999844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109821, 40.755535, 45.644272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293674, 0.870530, 0.394884,
		0.948686, -0.214750, -0.232115,
		-0.117261, 0.442787, -0.888926,
		38.074642, 40.888371, 45.377594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737587, 40.858585, 45.849289>,  <38.156727, 40.578419, 45.999844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737587, 40.858585, 45.849289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462597, 41.059498, 45.639492>,  <38.297604, 41.180046, 45.513615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462597, 41.059498, 45.639492>,  <38.737587, 40.858585, 45.849289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462597, 41.059498, 45.639492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374458, 0.863997, 0.336588,
		0.622221, 0.034996, -0.782059,
		-0.687476, 0.502280, -0.524492,
		38.256355, 41.210182, 45.482143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.053883, 43.188435, 44.735065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444710, 43.112076, 44.697319>,  <32.679207, 43.066261, 44.674671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444710, 43.112076, 44.697319>,  <32.053883, 43.188435, 44.735065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444710, 43.112076, 44.697319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133703, -0.205039, -0.969579,
		0.165742, 0.959957, -0.225860,
		0.977063, -0.190898, -0.094365,
		32.737827, 43.054806, 44.669010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182568, 43.344360, 44.044830>,  <32.053883, 43.188435, 44.735065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182568, 43.344360, 44.044830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509029, 43.130680, 44.132942>,  <32.704906, 43.002472, 44.185810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509029, 43.130680, 44.132942>,  <32.182568, 43.344360, 44.044830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509029, 43.130680, 44.132942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078329, -0.275416, -0.958129,
		0.572506, 0.799231, -0.182937,
		0.816150, -0.534205, 0.220281,
		32.753876, 42.970417, 44.199028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609810, 43.446999, 43.537121>,  <32.182568, 43.344360, 44.044830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609810, 43.446999, 43.537121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753944, 43.114929, 43.707287>,  <32.840424, 42.915688, 43.809387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753944, 43.114929, 43.707287>,  <32.609810, 43.446999, 43.537121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753944, 43.114929, 43.707287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143878, -0.401133, -0.904650,
		0.921662, 0.387182, -0.025098,
		0.360332, -0.830170, 0.425416,
		32.862045, 42.865879, 43.834911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261112, 43.359341, 43.306965>,  <32.609810, 43.446999, 43.537121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261112, 43.359341, 43.306965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160305, 42.989941, 43.422642>,  <33.099819, 42.768299, 43.492046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160305, 42.989941, 43.422642>,  <33.261112, 43.359341, 43.306965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160305, 42.989941, 43.422642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166953, -0.335845, -0.927003,
		0.953212, -0.185342, 0.238821,
		-0.252019, -0.923502, 0.289188,
		33.084698, 42.712891, 43.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787952, 42.909443, 42.970016>,  <33.261112, 43.359341, 43.306965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787952, 42.909443, 42.970016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462791, 42.690468, 43.049511>,  <33.267693, 42.559082, 43.097206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462791, 42.690468, 43.049511>,  <33.787952, 42.909443, 42.970016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462791, 42.690468, 43.049511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099694, -0.467004, -0.878617,
		0.573799, -0.694420, 0.434207,
		-0.812906, -0.547437, 0.198737,
		33.218918, 42.526237, 43.109131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978718, 42.209011, 42.733849>,  <33.787952, 42.909443, 42.970016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978718, 42.209011, 42.733849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582230, 42.216797, 42.786167>,  <33.344337, 42.221470, 42.817558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582230, 42.216797, 42.786167>,  <33.978718, 42.209011, 42.733849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582230, 42.216797, 42.786167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120432, -0.541370, -0.832115,
		0.054609, -0.840559, 0.538960,
		-0.991219, 0.019467, 0.130794,
		33.284863, 42.222637, 42.825405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860001, 41.512112, 42.684525>,  <33.978718, 42.209011, 42.733849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860001, 41.512112, 42.684525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502972, 41.680252, 42.619270>,  <33.288754, 41.781136, 42.580116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502972, 41.680252, 42.619270>,  <33.860001, 41.512112, 42.684525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502972, 41.680252, 42.619270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122583, -0.574403, -0.809342,
		-0.433913, -0.702402, 0.564226,
		-0.892576, 0.420349, -0.163138,
		33.235199, 41.806358, 42.570328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475170, 40.974335, 42.480247>,  <33.860001, 41.512112, 42.684525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475170, 40.974335, 42.480247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259438, 41.289696, 42.361897>,  <33.129997, 41.478912, 42.290886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259438, 41.289696, 42.361897>,  <33.475170, 40.974335, 42.480247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259438, 41.289696, 42.361897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290130, -0.503824, -0.813625,
		-0.790534, -0.352971, 0.500467,
		-0.539333, 0.788399, -0.295882,
		33.097637, 41.526215, 42.273132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726860, 40.745010, 42.449196>,  <33.475170, 40.974335, 42.480247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726860, 40.745010, 42.449196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800480, 41.050995, 42.202309>,  <32.844654, 41.234585, 42.054176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.800480, 41.050995, 42.202309>,  <32.726860, 40.745010, 42.449196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800480, 41.050995, 42.202309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448509, -0.493404, -0.745246,
		-0.874623, 0.413993, 0.252279,
		0.184051, 0.764959, -0.617222,
		32.855694, 41.280483, 42.017143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135166, 40.809357, 42.002483>,  <32.726860, 40.745010, 42.449196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135166, 40.809357, 42.002483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.432838, 40.995037, 41.810352>,  <32.611443, 41.106445, 41.695072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.432838, 40.995037, 41.810352>,  <32.135166, 40.809357, 42.002483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432838, 40.995037, 41.810352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258299, -0.463163, -0.847798,
		-0.616018, 0.754982, -0.224774,
		0.744180, 0.464200, -0.480328,
		32.656094, 41.134296, 41.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818634, 40.920883, 41.310753>,  <32.135166, 40.809357, 42.002483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818634, 40.920883, 41.310753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210915, 40.984093, 41.264709>,  <32.446285, 41.022018, 41.237083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210915, 40.984093, 41.264709>,  <31.818634, 40.920883, 41.310753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210915, 40.984093, 41.264709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046822, -0.381805, -0.923056,
		-0.189809, 0.910634, -0.367039,
		0.980704, 0.158019, -0.115108,
		32.505127, 41.031498, 41.230179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806492, 41.096783, 40.713249>,  <31.818634, 40.920883, 41.310753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806492, 41.096783, 40.713249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186256, 40.975037, 40.744171>,  <32.414116, 40.901989, 40.762722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186256, 40.975037, 40.744171>,  <31.806492, 41.096783, 40.713249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186256, 40.975037, 40.744171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045658, -0.377336, -0.924950,
		0.310695, 0.874629, -0.372145,
		0.949412, -0.304369, 0.077303,
		32.471081, 40.883724, 40.767361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194218, 41.431541, 40.118114>,  <31.806492, 41.096783, 40.713249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194218, 41.431541, 40.118114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422344, 41.123722, 40.233032>,  <32.559219, 40.939030, 40.301983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422344, 41.123722, 40.233032>,  <32.194218, 41.431541, 40.118114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422344, 41.123722, 40.233032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100537, -0.412513, -0.905387,
		0.815247, 0.487477, -0.312632,
		0.570321, -0.769544, 0.287291,
		32.593441, 40.892860, 40.319218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747147, 41.336357, 39.565300>,  <32.194218, 41.431541, 40.118114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747147, 41.336357, 39.565300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 40.995743, 39.771126>,  <32.682766, 40.791374, 39.894619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706909, 40.995743, 39.771126>,  <32.747147, 41.336357, 39.565300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706909, 40.995743, 39.771126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056290, -0.511485, -0.857447,
		0.993334, -0.115220, 0.003520,
		-0.100595, -0.851533, 0.514561,
		32.676731, 40.740284, 39.925495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451256, 41.533253, 39.670341>,  <32.747147, 41.336357, 39.565300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451256, 41.533253, 39.670341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770927, 41.745277, 39.556961>,  <33.962730, 41.872490, 39.488934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770927, 41.745277, 39.556961>,  <33.451256, 41.533253, 39.670341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770927, 41.745277, 39.556961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052232, 0.408546, 0.911242,
		0.598815, -0.743054, 0.298816,
		0.799182, 0.530058, -0.283455,
		34.010681, 41.904293, 39.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913216, 41.587585, 40.189240>,  <33.451256, 41.533253, 39.670341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913216, 41.587585, 40.189240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056210, 41.891811, 39.972446>,  <34.142006, 42.074348, 39.842369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056210, 41.891811, 39.972446>,  <33.913216, 41.587585, 40.189240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056210, 41.891811, 39.972446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161258, 0.521346, 0.837971,
		0.919891, -0.386963, 0.063727,
		0.357487, 0.760565, -0.541982,
		34.163456, 42.119980, 39.809853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405609, 41.846600, 40.691216>,  <33.913216, 41.587585, 40.189240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405609, 41.846600, 40.691216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391758, 42.134682, 40.414055>,  <34.383450, 42.307529, 40.247757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391758, 42.134682, 40.414055>,  <34.405609, 41.846600, 40.691216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391758, 42.134682, 40.414055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414359, 0.641264, 0.645823,
		0.909455, -0.264748, -0.320625,
		-0.034625, 0.720201, -0.692901,
		34.381371, 42.350742, 40.206184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067272, 42.201778, 40.663731>,  <34.405609, 41.846600, 40.691216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067272, 42.201778, 40.663731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787861, 42.459843, 40.539909>,  <34.620213, 42.614681, 40.465618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.787861, 42.459843, 40.539909>,  <35.067272, 42.201778, 40.663731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787861, 42.459843, 40.539909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346392, 0.683388, 0.642645,
		0.626153, 0.341682, -0.700847,
		-0.698530, 0.645162, -0.309550,
		34.578300, 42.653393, 40.447044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386131, 42.870987, 40.642620>,  <35.067272, 42.201778, 40.663731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386131, 42.870987, 40.642620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999790, 42.973240, 40.659489>,  <34.767986, 43.034592, 40.669609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999790, 42.973240, 40.659489>,  <35.386131, 42.870987, 40.642620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999790, 42.973240, 40.659489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184871, 0.565963, 0.803436,
		0.181518, 0.783798, -0.593897,
		-0.965854, 0.255632, 0.042169,
		34.710033, 43.049931, 40.672138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333717, 43.623314, 40.619091>,  <35.386131, 42.870987, 40.642620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333717, 43.623314, 40.619091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011902, 43.470383, 40.800880>,  <34.818813, 43.378624, 40.909954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.011902, 43.470383, 40.800880>,  <35.333717, 43.623314, 40.619091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011902, 43.470383, 40.800880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182270, 0.569346, 0.801637,
		-0.565237, 0.727785, -0.388376,
		-0.804540, -0.382326, 0.454469,
		34.770538, 43.355686, 40.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995262, 44.175426, 40.828339>,  <35.333717, 43.623314, 40.619091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995262, 44.175426, 40.828339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834171, 43.876560, 41.039833>,  <34.737518, 43.697243, 41.166729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834171, 43.876560, 41.039833>,  <34.995262, 44.175426, 40.828339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834171, 43.876560, 41.039833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079440, 0.546942, 0.833393,
		-0.911868, 0.377629, -0.160912,
		-0.402723, -0.747162, 0.528738,
		34.713356, 43.652412, 41.198456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523792, 44.477215, 41.222916>,  <34.995262, 44.175426, 40.828339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523792, 44.477215, 41.222916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578232, 44.133015, 41.419289>,  <34.610893, 43.926495, 41.537113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.578232, 44.133015, 41.419289>,  <34.523792, 44.477215, 41.222916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578232, 44.133015, 41.419289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161237, 0.469695, 0.867980,
		-0.977487, -0.197285, -0.074821,
		0.136097, -0.860503, 0.490931,
		34.619061, 43.874863, 41.566566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221691, 44.610786, 41.936817>,  <34.523792, 44.477215, 41.222916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221691, 44.610786, 41.936817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446308, 44.282436, 41.978443>,  <34.581078, 44.085426, 42.003418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446308, 44.282436, 41.978443>,  <34.221691, 44.610786, 41.936817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446308, 44.282436, 41.978443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143809, 0.220671, 0.964688,
		-0.814853, -0.526752, 0.241967,
		0.561547, -0.820875, 0.104063,
		34.614773, 44.036175, 42.009663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958015, 44.233330, 42.488075>,  <34.221691, 44.610786, 41.936817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958015, 44.233330, 42.488075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337563, 44.107845, 42.474014>,  <34.565292, 44.032555, 42.465576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337563, 44.107845, 42.474014>,  <33.958015, 44.233330, 42.488075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337563, 44.107845, 42.474014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093865, 0.174066, 0.980250,
		-0.301394, -0.933428, 0.194612,
		0.948868, -0.313709, -0.035154,
		34.622223, 44.013733, 42.463467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059944, 43.863892, 43.137222>,  <33.958015, 44.233330, 42.488075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059944, 43.863892, 43.137222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384552, 44.013226, 42.957420>,  <34.579319, 44.102825, 42.849541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384552, 44.013226, 42.957420>,  <34.059944, 43.863892, 43.137222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384552, 44.013226, 42.957420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281951, 0.423609, 0.860848,
		0.511799, -0.825334, 0.238505,
		0.811520, 0.373335, -0.449506,
		34.628010, 44.125225, 42.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580837, 43.820465, 43.619682>,  <34.059944, 43.863892, 43.137222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580837, 43.820465, 43.619682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754330, 44.092373, 43.383114>,  <34.858425, 44.255520, 43.241173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754330, 44.092373, 43.383114>,  <34.580837, 43.820465, 43.619682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754330, 44.092373, 43.383114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307279, 0.505441, 0.806293,
		0.847027, -0.531450, 0.010348,
		0.433734, 0.679772, -0.591425,
		34.884449, 44.296303, 43.205685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241104, 43.817665, 43.822323>,  <34.580837, 43.820465, 43.619682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241104, 43.817665, 43.822323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167114, 44.162918, 43.634369>,  <35.122723, 44.370068, 43.521595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167114, 44.162918, 43.634369>,  <35.241104, 43.817665, 43.822323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167114, 44.162918, 43.634369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175811, 0.499484, 0.848296,
		0.966890, 0.074299, -0.244138,
		-0.184971, 0.863131, -0.469884,
		35.111622, 44.421856, 43.493404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733040, 44.231430, 43.903946>,  <35.241104, 43.817665, 43.822323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733040, 44.231430, 43.903946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426022, 44.478214, 43.834396>,  <35.241810, 44.626286, 43.792667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426022, 44.478214, 43.834396>,  <35.733040, 44.231430, 43.903946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426022, 44.478214, 43.834396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208446, 0.496763, 0.842483,
		0.606150, 0.610403, -0.509892,
		-0.767550, 0.616956, -0.173876,
		35.195755, 44.663300, 43.782234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346687, 44.598396, 43.452080>,  <35.733040, 44.231430, 43.903946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346687, 44.598396, 43.452080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744110, 44.633125, 43.481220>,  <36.982563, 44.653965, 43.498703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744110, 44.633125, 43.481220>,  <36.346687, 44.598396, 43.452080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744110, 44.633125, 43.481220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111611, -0.637727, -0.762133,
		-0.019715, 0.765353, -0.643309,
		0.993556, 0.086825, 0.072849,
		37.042175, 44.659172, 43.503075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563061, 44.804714, 42.804668>,  <36.346687, 44.598396, 43.452080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563061, 44.804714, 42.804668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868408, 44.632404, 42.997208>,  <37.051617, 44.529018, 43.112732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868408, 44.632404, 42.997208>,  <36.563061, 44.804714, 42.804668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868408, 44.632404, 42.997208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086005, -0.670752, -0.736679,
		0.640207, 0.603758, -0.474985,
		0.763373, -0.430776, 0.481346,
		37.097420, 44.503170, 43.141613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089535, 44.810402, 42.255371>,  <36.563061, 44.804714, 42.804668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089535, 44.810402, 42.255371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200798, 44.561150, 42.547764>,  <37.267555, 44.411598, 42.723198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200798, 44.561150, 42.547764>,  <37.089535, 44.810402, 42.255371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200798, 44.561150, 42.547764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390994, -0.621656, -0.678725,
		0.877354, 0.474604, 0.070721,
		0.278162, -0.623133, 0.730979,
		37.284248, 44.374210, 42.767059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774651, 44.615089, 42.070026>,  <37.089535, 44.810402, 42.255371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774651, 44.615089, 42.070026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697315, 44.321396, 42.330341>,  <37.650913, 44.145180, 42.486530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697315, 44.321396, 42.330341>,  <37.774651, 44.615089, 42.070026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697315, 44.321396, 42.330341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242343, -0.678490, -0.693485,
		0.950731, 0.023633, 0.309116,
		-0.193343, -0.734229, 0.650789,
		37.639313, 44.101128, 42.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442673, 44.187088, 42.244640>,  <37.774651, 44.615089, 42.070026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442673, 44.187088, 42.244640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138535, 43.930378, 42.284630>,  <37.956051, 43.776352, 42.308624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138535, 43.930378, 42.284630>,  <38.442673, 44.187088, 42.244640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138535, 43.930378, 42.284630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364227, -0.548741, -0.752477,
		0.537784, -0.535730, 0.650986,
		-0.760347, -0.641777, 0.099977,
		37.910431, 43.737846, 42.314621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663559, 43.510757, 42.424923>,  <38.442673, 44.187088, 42.244640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663559, 43.510757, 42.424923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.303146, 43.449379, 42.262642>,  <38.086899, 43.412552, 42.165272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.303146, 43.449379, 42.262642>,  <38.663559, 43.510757, 42.424923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303146, 43.449379, 42.262642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386949, -0.706982, -0.591985,
		-0.195988, -0.690384, 0.696389,
		-0.901032, -0.153445, -0.405704,
		38.032837, 43.403347, 42.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740360, 42.878220, 42.292999>,  <38.663559, 43.510757, 42.424923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740360, 42.878220, 42.292999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404545, 42.968567, 42.095348>,  <38.203056, 43.022774, 41.976757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404545, 42.968567, 42.095348>,  <38.740360, 42.878220, 42.292999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404545, 42.968567, 42.095348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265695, -0.622624, -0.736033,
		-0.473902, -0.749215, 0.462704,
		-0.839537, 0.225869, -0.494126,
		38.152683, 43.036327, 41.947109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335484, 42.283798, 42.238789>,  <38.740360, 42.878220, 42.292999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335484, 42.283798, 42.238789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186771, 42.515186, 41.948364>,  <38.097546, 42.654018, 41.774109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186771, 42.515186, 41.948364>,  <38.335484, 42.283798, 42.238789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186771, 42.515186, 41.948364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075453, -0.760701, -0.644702,
		-0.925251, -0.294468, 0.239164,
		-0.371777, 0.578466, -0.726057,
		38.075237, 42.688725, 41.730549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664162, 42.065617, 41.943760>,  <38.335484, 42.283798, 42.238789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664162, 42.065617, 41.943760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866528, 42.267735, 41.664124>,  <37.987946, 42.389004, 41.496342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866528, 42.267735, 41.664124>,  <37.664162, 42.065617, 41.943760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866528, 42.267735, 41.664124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088140, -0.775938, -0.624621,
		-0.858069, 0.377622, -0.348022,
		0.505914, 0.505294, -0.699092,
		38.018303, 42.419323, 41.454395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276558, 41.837669, 41.338902>,  <37.664162, 42.065617, 41.943760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276558, 41.837669, 41.338902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624329, 41.998489, 41.224041>,  <37.832993, 42.094982, 41.155125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624329, 41.998489, 41.224041>,  <37.276558, 41.837669, 41.338902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624329, 41.998489, 41.224041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096602, -0.708320, -0.699250,
		-0.484528, 0.580206, -0.654670,
		0.869425, 0.402049, -0.287152,
		37.885155, 42.119102, 41.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220924, 41.952534, 40.654892>,  <37.276558, 41.837669, 41.338902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220924, 41.952534, 40.654892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613628, 41.923946, 40.725361>,  <37.849251, 41.906792, 40.767643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613628, 41.923946, 40.725361>,  <37.220924, 41.952534, 40.654892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613628, 41.923946, 40.725361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117238, -0.501874, -0.856958,
		0.149664, 0.861982, -0.484342,
		0.981762, -0.071473, 0.176170,
		37.908157, 41.902504, 40.778214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454895, 42.103672, 39.986000>,  <37.220924, 41.952534, 40.654892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454895, 42.103672, 39.986000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.758991, 41.953251, 40.197891>,  <37.941448, 41.862999, 40.325027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.758991, 41.953251, 40.197891>,  <37.454895, 42.103672, 39.986000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758991, 41.953251, 40.197891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389618, -0.388562, -0.834995,
		0.519834, 0.841193, -0.148886,
		0.760244, -0.376050, 0.529732,
		37.987064, 41.840435, 40.356812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062885, 42.205406, 39.704182>,  <37.454895, 42.103672, 39.986000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062885, 42.205406, 39.704182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133877, 41.875381, 39.918758>,  <38.176472, 41.677364, 40.047504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.133877, 41.875381, 39.918758>,  <38.062885, 42.205406, 39.704182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133877, 41.875381, 39.918758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343211, -0.458981, -0.819477,
		0.922338, 0.329552, 0.201712,
		0.177479, -0.825065, 0.536441,
		38.187119, 41.627861, 40.079689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824226, 41.986412, 39.574184>,  <38.062885, 42.205406, 39.704182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824226, 41.986412, 39.574184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584000, 41.694736, 39.705402>,  <38.439865, 41.519733, 39.784134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584000, 41.694736, 39.705402>,  <38.824226, 41.986412, 39.574184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584000, 41.694736, 39.705402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297301, -0.584504, -0.754962,
		0.742252, -0.355872, 0.567818,
		-0.600562, -0.729184, 0.328048,
		38.403831, 41.475983, 39.803818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.995472, 29.050526, 34.082836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.861803, 28.680998, 34.008125>,  <30.781603, 28.459280, 33.963299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.861803, 28.680998, 34.008125>,  <30.995472, 29.050526, 34.082836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861803, 28.680998, 34.008125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932709, 0.295629, 0.206537,
		-0.135587, 0.243226, -0.960446,
		-0.334171, -0.923820, -0.186775,
		30.761551, 28.403852, 33.952091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487490, 28.990942, 33.507042>,  <30.995472, 29.050526, 34.082836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487490, 28.990942, 33.507042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421778, 28.673353, 33.741177>,  <30.382351, 28.482800, 33.881657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421778, 28.673353, 33.741177>,  <30.487490, 28.990942, 33.507042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421778, 28.673353, 33.741177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952615, 0.281703, 0.114756,
		-0.256004, -0.538749, -0.802628,
		-0.164278, -0.793973, 0.585337,
		30.372494, 28.435162, 33.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709490, 28.770922, 33.351322>,  <30.487490, 28.990942, 33.507042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709490, 28.770922, 33.351322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792471, 28.560665, 33.681332>,  <29.842258, 28.434511, 33.879337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.792471, 28.560665, 33.681332>,  <29.709490, 28.770922, 33.351322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792471, 28.560665, 33.681332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933681, 0.145261, 0.327322,
		-0.291898, -0.838212, -0.460647,
		0.207451, -0.525642, 0.825024,
		29.854706, 28.402973, 33.928841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168364, 28.246552, 33.486057>,  <29.709490, 28.770922, 33.351322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168364, 28.246552, 33.486057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349365, 28.350935, 33.827148>,  <29.457966, 28.413565, 34.031803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349365, 28.350935, 33.827148>,  <29.168364, 28.246552, 33.486057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349365, 28.350935, 33.827148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861682, 0.374215, 0.342736,
		-0.229662, -0.889867, 0.394199,
		0.452504, 0.260960, 0.852725,
		29.485117, 28.429224, 34.082966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694544, 28.030355, 34.009914>,  <29.168364, 28.246552, 33.486057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694544, 28.030355, 34.009914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925070, 28.283567, 34.216656>,  <29.063385, 28.435493, 34.340698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925070, 28.283567, 34.216656>,  <28.694544, 28.030355, 34.009914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925070, 28.283567, 34.216656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815952, 0.410406, 0.407174,
		0.045634, -0.656386, 0.753044,
		0.576316, 0.633028, 0.516851,
		29.097965, 28.473476, 34.371712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305059, 28.137751, 34.570343>,  <28.694544, 28.030355, 34.009914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305059, 28.137751, 34.570343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552698, 28.451851, 34.566299>,  <28.701281, 28.640310, 34.563873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552698, 28.451851, 34.566299>,  <28.305059, 28.137751, 34.570343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552698, 28.451851, 34.566299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754685, 0.598462, 0.268874,
		0.217184, -0.158828, 0.963122,
		0.619097, 0.785249, -0.010112,
		28.738426, 28.687426, 34.563267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247236, 28.458181, 35.205257>,  <28.305059, 28.137751, 34.570343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247236, 28.458181, 35.205257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387514, 28.739616, 34.958042>,  <28.471682, 28.908478, 34.809711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.387514, 28.739616, 34.958042>,  <28.247236, 28.458181, 35.205257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387514, 28.739616, 34.958042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626729, 0.666712, 0.403369,
		0.695863, 0.245890, 0.674769,
		0.350692, 0.703587, -0.618046,
		28.492723, 28.950693, 34.772629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073404, 29.125639, 35.556870>,  <28.247236, 28.458181, 35.205257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073404, 29.125639, 35.556870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186640, 29.261721, 35.198177>,  <28.254581, 29.343370, 34.982964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186640, 29.261721, 35.198177>,  <28.073404, 29.125639, 35.556870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186640, 29.261721, 35.198177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584314, 0.802601, 0.120032,
		0.760551, 0.489991, 0.425995,
		0.283089, 0.340205, -0.896728,
		28.271566, 29.363783, 34.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395761, 29.715851, 35.769390>,  <28.073404, 29.125639, 35.556870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395761, 29.715851, 35.769390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280209, 29.738558, 35.387119>,  <28.210876, 29.752182, 35.157757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280209, 29.738558, 35.387119>,  <28.395761, 29.715851, 35.769390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280209, 29.738558, 35.387119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661070, 0.710221, 0.242017,
		0.692483, 0.701686, -0.167643,
		-0.288883, 0.056769, -0.955680,
		28.193544, 29.755589, 35.100414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277855, 30.442446, 35.670067>,  <28.395761, 29.715851, 35.769390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277855, 30.442446, 35.670067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062063, 30.258680, 35.387817>,  <27.932589, 30.148420, 35.218468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062063, 30.258680, 35.387817>,  <28.277855, 30.442446, 35.670067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062063, 30.258680, 35.387817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687266, 0.724411, 0.053798,
		0.486444, 0.513973, -0.706543,
		-0.539479, -0.459414, -0.705622,
		27.900219, 30.120857, 35.176132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237532, 30.947578, 35.172581>,  <28.277855, 30.442446, 35.670067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237532, 30.947578, 35.172581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927233, 30.727917, 35.048229>,  <27.741053, 30.596121, 34.973618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927233, 30.727917, 35.048229>,  <28.237532, 30.947578, 35.172581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927233, 30.727917, 35.048229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466614, 0.830840, -0.303276,
		0.424835, -0.090206, -0.900765,
		-0.775749, -0.549152, -0.310878,
		27.694508, 30.563171, 34.954967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011786, 31.207434, 34.571991>,  <28.237532, 30.947578, 35.172581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011786, 31.207434, 34.571991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690598, 30.990726, 34.671375>,  <27.497885, 30.860703, 34.731007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.690598, 30.990726, 34.671375>,  <28.011786, 31.207434, 34.571991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690598, 30.990726, 34.671375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590960, 0.777889, -0.213670,
		-0.077513, -0.318399, -0.944782,
		-0.802969, -0.541766, 0.248457,
		27.449707, 30.828197, 34.745911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592974, 31.300169, 33.973835>,  <28.011786, 31.207434, 34.571991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592974, 31.300169, 33.973835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345039, 31.186787, 34.266533>,  <27.196278, 31.118757, 34.442154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345039, 31.186787, 34.266533>,  <27.592974, 31.300169, 33.973835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345039, 31.186787, 34.266533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602468, 0.769392, -0.212293,
		-0.502825, -0.572442, -0.647671,
		-0.619838, -0.283455, 0.731747,
		27.159088, 31.101749, 34.486057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915943, 31.268116, 33.690556>,  <27.592974, 31.300169, 33.973835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915943, 31.268116, 33.690556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855957, 31.285042, 34.085670>,  <26.819965, 31.295197, 34.322739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855957, 31.285042, 34.085670>,  <26.915943, 31.268116, 33.690556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855957, 31.285042, 34.085670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580140, 0.805242, -0.122571,
		-0.800592, -0.591435, -0.096211,
		-0.149966, 0.042313, 0.987785,
		26.810966, 31.297735, 34.382008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248262, 31.359138, 33.743813>,  <26.915943, 31.268116, 33.690556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248262, 31.359138, 33.743813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423433, 31.502542, 34.073586>,  <26.528536, 31.588585, 34.271450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423433, 31.502542, 34.073586>,  <26.248262, 31.359138, 33.743813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423433, 31.502542, 34.073586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565140, 0.822976, -0.057680,
		-0.699168, -0.440660, 0.563013,
		0.437929, 0.358509, 0.824433,
		26.554811, 31.610096, 34.320915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647915, 31.647156, 34.108433>,  <26.248262, 31.359138, 33.743813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647915, 31.647156, 34.108433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968571, 31.803684, 34.289207>,  <26.160963, 31.897600, 34.397671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968571, 31.803684, 34.289207>,  <25.647915, 31.647156, 34.108433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968571, 31.803684, 34.289207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485063, 0.867643, 0.109129,
		-0.349416, -0.306700, 0.885349,
		0.801637, 0.391319, 0.451937,
		26.209063, 31.921080, 34.424789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337818, 31.958818, 34.706966>,  <25.647915, 31.647156, 34.108433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337818, 31.958818, 34.706966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.696014, 32.124943, 34.642948>,  <25.910933, 32.224617, 34.604538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.696014, 32.124943, 34.642948>,  <25.337818, 31.958818, 34.706966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696014, 32.124943, 34.642948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395484, 0.907441, 0.141928,
		0.204180, -0.063798, 0.976852,
		0.895490, 0.415309, -0.160050,
		25.964661, 32.249535, 34.594933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404470, 32.464973, 35.310818>,  <25.337818, 31.958818, 34.706966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404470, 32.464973, 35.310818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644014, 32.569019, 35.007843>,  <25.787741, 32.631447, 34.826057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.644014, 32.569019, 35.007843>,  <25.404470, 32.464973, 35.310818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644014, 32.569019, 35.007843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261390, 0.957473, 0.122152,
		0.756997, 0.124834, 0.641383,
		0.598858, 0.260119, -0.757434,
		25.823671, 32.647057, 34.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777122, 32.993759, 35.544735>,  <25.404470, 32.464973, 35.310818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777122, 32.993759, 35.544735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831499, 33.048504, 35.152248>,  <25.864124, 33.081348, 34.916756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831499, 33.048504, 35.152248>,  <25.777122, 32.993759, 35.544735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831499, 33.048504, 35.152248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109998, 0.986374, 0.122338,
		0.984592, 0.091302, 0.149140,
		0.135938, 0.136858, -0.981219,
		25.872282, 33.089561, 34.857883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188440, 33.632133, 35.428253>,  <25.777122, 32.993759, 35.544735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188440, 33.632133, 35.428253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011274, 33.561783, 35.076595>,  <25.904974, 33.519573, 34.865601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.011274, 33.561783, 35.076595>,  <26.188440, 33.632133, 35.428253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011274, 33.561783, 35.076595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088195, 0.984361, -0.152497,
		0.892215, 0.009993, -0.451501,
		-0.442916, -0.175880, -0.879143,
		25.878399, 33.509018, 34.812851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487957, 34.097244, 34.980522>,  <26.188440, 33.632133, 35.428253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487957, 34.097244, 34.980522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.152740, 33.967915, 34.804729>,  <25.951611, 33.890316, 34.699253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.152740, 33.967915, 34.804729>,  <26.487957, 34.097244, 34.980522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152740, 33.967915, 34.804729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153036, 0.912459, -0.379472,
		0.523706, -0.250756, -0.814158,
		-0.838041, -0.323327, -0.439485,
		25.901329, 33.870918, 34.672882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161581, 34.499187, 35.064152>,  <26.487957, 34.097244, 34.980522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161581, 34.499187, 35.064152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443445, 34.591312, 35.332603>,  <27.612564, 34.646587, 35.493675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443445, 34.591312, 35.332603>,  <27.161581, 34.499187, 35.064152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443445, 34.591312, 35.332603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625728, -0.647667, -0.434732,
		0.334543, 0.726281, -0.600498,
		0.704660, 0.230311, 0.671126,
		27.654842, 34.660404, 35.533943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797270, 34.546101, 34.654564>,  <27.161581, 34.499187, 35.064152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797270, 34.546101, 34.654564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892515, 34.471718, 35.035873>,  <27.949663, 34.427090, 35.264660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892515, 34.471718, 35.035873>,  <27.797270, 34.546101, 34.654564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892515, 34.471718, 35.035873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701307, -0.646096, -0.301211,
		0.671915, 0.740258, -0.023435,
		0.238115, -0.185953, 0.953270,
		27.963949, 34.415932, 35.321854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570921, 34.645870, 34.681610>,  <27.797270, 34.546101, 34.654564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570921, 34.645870, 34.681610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472290, 34.420170, 34.996780>,  <28.413113, 34.284748, 35.185883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.472290, 34.420170, 34.996780>,  <28.570921, 34.645870, 34.681610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472290, 34.420170, 34.996780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728515, -0.644091, -0.233264,
		0.639113, 0.516496, 0.569882,
		-0.246576, -0.564250, 0.787923,
		28.398317, 34.250896, 35.233158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172808, 34.458527, 34.984150>,  <28.570921, 34.645870, 34.681610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172808, 34.458527, 34.984150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929972, 34.170391, 35.118343>,  <28.784269, 33.997509, 35.198860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.929972, 34.170391, 35.118343>,  <29.172808, 34.458527, 34.984150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929972, 34.170391, 35.118343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758927, -0.650737, -0.023885,
		0.235520, 0.240110, 0.941742,
		-0.607091, -0.720339, 0.335488,
		28.747845, 33.954288, 35.218990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628656, 34.055706, 35.390072>,  <29.172808, 34.458527, 34.984150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628656, 34.055706, 35.390072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299156, 33.831528, 35.355816>,  <29.101456, 33.697021, 35.335262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299156, 33.831528, 35.355816>,  <29.628656, 34.055706, 35.390072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299156, 33.831528, 35.355816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564766, -0.824410, -0.037253,
		-0.049726, -0.079055, 0.995629,
		-0.823752, -0.560445, -0.085642,
		29.052031, 33.663395, 35.330124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664358, 33.496002, 35.891300>,  <29.628656, 34.055706, 35.390072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664358, 33.496002, 35.891300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431366, 33.388153, 35.584572>,  <29.291571, 33.323444, 35.400536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431366, 33.388153, 35.584572>,  <29.664358, 33.496002, 35.891300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431366, 33.388153, 35.584572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578138, -0.800560, -0.157672,
		-0.571377, -0.535172, 0.622189,
		-0.582481, -0.269621, -0.766825,
		29.256622, 33.307266, 35.354523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754438, 32.786728, 35.881939>,  <29.664358, 33.496002, 35.891300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754438, 32.786728, 35.881939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587002, 32.823383, 35.520523>,  <29.486540, 32.845375, 35.303673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587002, 32.823383, 35.520523>,  <29.754438, 32.786728, 35.881939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587002, 32.823383, 35.520523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558296, -0.758735, -0.335599,
		-0.716301, -0.644921, 0.266438,
		-0.418590, 0.091638, -0.903540,
		29.461426, 32.850876, 35.249462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470257, 32.138134, 35.673630>,  <29.754438, 32.786728, 35.881939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470257, 32.138134, 35.673630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.526840, 32.332195, 35.328465>,  <29.560789, 32.448631, 35.121365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.526840, 32.332195, 35.328465>,  <29.470257, 32.138134, 35.673630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526840, 32.332195, 35.328465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658817, -0.696746, -0.283734,
		-0.738885, -0.528362, -0.418190,
		0.141458, 0.485157, -0.862909,
		29.569277, 32.477741, 35.069592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453661, 31.611755, 35.063618>,  <29.470257, 32.138134, 35.673630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453661, 31.611755, 35.063618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639593, 31.928699, 34.905579>,  <29.751152, 32.118866, 34.810757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.639593, 31.928699, 34.905579>,  <29.453661, 31.611755, 35.063618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639593, 31.928699, 34.905579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606622, -0.610048, -0.509756,
		-0.644937, -0.002722, -0.764231,
		0.464830, 0.792360, -0.395094,
		29.779041, 32.166409, 34.787052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512192, 31.493261, 34.322380>,  <29.453661, 31.611755, 35.063618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512192, 31.493261, 34.322380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807320, 31.747936, 34.412052>,  <29.984396, 31.900742, 34.465855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.807320, 31.747936, 34.412052>,  <29.512192, 31.493261, 34.322380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807320, 31.747936, 34.412052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665455, -0.630444, -0.399636,
		-0.113112, 0.444038, -0.888839,
		0.737817, 0.636687, 0.224177,
		30.028666, 31.938942, 34.479305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978849, 31.506279, 33.637707>,  <29.512192, 31.493261, 34.322380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978849, 31.506279, 33.637707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189953, 31.653408, 33.943954>,  <30.316614, 31.741686, 34.127705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189953, 31.653408, 33.943954>,  <29.978849, 31.506279, 33.637707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189953, 31.653408, 33.943954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821513, -0.450092, -0.350048,
		0.215844, 0.813709, -0.539712,
		0.527757, 0.367825, 0.765622,
		30.348280, 31.763756, 34.173641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555019, 31.830032, 33.306076>,  <29.978849, 31.506279, 33.637707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555019, 31.830032, 33.306076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671610, 31.801958, 33.687675>,  <30.741564, 31.785114, 33.916634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671610, 31.801958, 33.687675>,  <30.555019, 31.830032, 33.306076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671610, 31.801958, 33.687675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894583, -0.333190, -0.297836,
		0.338766, 0.940244, -0.034332,
		0.291478, -0.070184, 0.954000,
		30.759052, 31.780903, 33.973877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220676, 32.170635, 33.255920>,  <30.555019, 31.830032, 33.306076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220676, 32.170635, 33.255920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188099, 31.965195, 33.597584>,  <31.168552, 31.841930, 33.802582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188099, 31.965195, 33.597584>,  <31.220676, 32.170635, 33.255920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188099, 31.965195, 33.597584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963277, -0.260568, -0.064829,
		0.255861, 0.817507, 0.515962,
		-0.081445, -0.513601, 0.854155,
		31.163666, 31.811113, 33.853828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745163, 32.403316, 33.746510>,  <31.220676, 32.170635, 33.255920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745163, 32.403316, 33.746510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.665802, 32.017727, 33.817383>,  <31.618185, 31.786373, 33.859905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.665802, 32.017727, 33.817383>,  <31.745163, 32.403316, 33.746510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665802, 32.017727, 33.817383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979482, -0.201531, 0.000347,
		0.035373, 0.173614, 0.984178,
		-0.198403, -0.963973, 0.177180,
		31.606281, 31.728535, 33.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219933, 32.250237, 34.197414>,  <31.745163, 32.403316, 33.746510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219933, 32.250237, 34.197414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.096989, 31.884813, 34.090870>,  <32.023224, 31.665560, 34.026943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.096989, 31.884813, 34.090870>,  <32.219933, 32.250237, 34.197414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096989, 31.884813, 34.090870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937176, -0.339142, 0.081755,
		-0.165023, -0.224502, 0.960399,
		-0.307357, -0.913554, -0.266364,
		32.004780, 31.610746, 34.010960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690018, 31.830204, 34.644527>,  <32.219933, 32.250237, 34.197414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690018, 31.830204, 34.644527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.534615, 31.594440, 34.361214>,  <32.441372, 31.452982, 34.191227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.534615, 31.594440, 34.361214>,  <32.690018, 31.830204, 34.644527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534615, 31.594440, 34.361214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802774, -0.593848, 0.053840,
		-0.452345, -0.547672, 0.703875,
		-0.388508, -0.589407, -0.708280,
		32.418060, 31.417618, 34.148731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699421, 31.221495, 34.943188>,  <32.690018, 31.830204, 34.644527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699421, 31.221495, 34.943188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.658676, 31.142311, 34.553226>,  <32.634232, 31.094801, 34.319248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.658676, 31.142311, 34.553226>,  <32.699421, 31.221495, 34.943188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658676, 31.142311, 34.553226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784600, -0.618466, 0.043608,
		-0.611577, -0.760468, 0.218315,
		-0.101859, -0.197960, -0.974903,
		32.628120, 31.082924, 34.260754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662571, 30.494335, 34.842663>,  <32.699421, 31.221495, 34.943188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662571, 30.494335, 34.842663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.798588, 30.655296, 34.502674>,  <32.880199, 30.751873, 34.298683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.798588, 30.655296, 34.502674>,  <32.662571, 30.494335, 34.842663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798588, 30.655296, 34.502674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741130, -0.671027, -0.021187,
		-0.578877, -0.622731, -0.526410,
		0.340041, 0.402403, -0.849967,
		32.900600, 30.776016, 34.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830978, 29.924227, 34.458450>,  <32.662571, 30.494335, 34.842663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830978, 29.924227, 34.458450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012138, 30.226824, 34.269726>,  <33.120834, 30.408382, 34.156490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.012138, 30.226824, 34.269726>,  <32.830978, 29.924227, 34.458450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012138, 30.226824, 34.269726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800456, -0.578060, -0.158480,
		-0.392622, -0.305886, -0.867342,
		0.452899, 0.756492, -0.471807,
		33.148006, 30.453772, 34.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912861, 29.778177, 33.771358>,  <32.830978, 29.924227, 34.458450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912861, 29.778177, 33.771358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190487, 30.035767, 33.900085>,  <33.357063, 30.190319, 33.977322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.190487, 30.035767, 33.900085>,  <32.912861, 29.778177, 33.771358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190487, 30.035767, 33.900085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715940, -0.664313, -0.214752,
		0.075496, 0.379458, -0.922124,
		0.694068, 0.643973, 0.321822,
		33.398708, 30.228958, 33.996632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546165, 29.649448, 33.372833>,  <32.912861, 29.778177, 33.771358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546165, 29.649448, 33.372833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651211, 29.848499, 33.703506>,  <33.714237, 29.967930, 33.901909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.651211, 29.848499, 33.703506>,  <33.546165, 29.649448, 33.372833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651211, 29.848499, 33.703506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840335, -0.539009, 0.057507,
		0.474205, 0.679584, -0.559728,
		0.262617, 0.497629, 0.826679,
		33.729996, 29.997787, 33.951511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.156532, 41.575073, 44.921902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788895, 41.615189, 45.074322>,  <38.568310, 41.639256, 45.165775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788895, 41.615189, 45.074322>,  <39.156532, 41.575073, 44.921902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788895, 41.615189, 45.074322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219841, 0.933070, 0.284693,
		-0.326998, 0.345432, -0.879630,
		-0.919099, 0.100284, 0.381052,
		38.513165, 41.645275, 45.188637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940926, 42.266487, 44.739937>,  <39.156532, 41.575073, 44.921902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940926, 42.266487, 44.739937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722195, 42.185486, 45.064892>,  <38.590958, 42.136887, 45.259865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722195, 42.185486, 45.064892>,  <38.940926, 42.266487, 44.739937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722195, 42.185486, 45.064892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221620, 0.900692, 0.373684,
		-0.807383, 0.384381, -0.447643,
		-0.546825, -0.202499, 0.812389,
		38.558147, 42.124737, 45.308609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420361, 42.877296, 44.816944>,  <38.940926, 42.266487, 44.739937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420361, 42.877296, 44.816944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.428532, 42.671036, 45.159565>,  <38.433434, 42.547279, 45.365139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.428532, 42.671036, 45.159565>,  <38.420361, 42.877296, 44.816944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428532, 42.671036, 45.159565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032494, 0.856624, 0.514917,
		-0.999263, 0.017314, 0.034253,
		0.020427, -0.515651, 0.856555,
		38.434658, 42.516342, 45.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015007, 43.309441, 45.203194>,  <38.420361, 42.877296, 44.816944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015007, 43.309441, 45.203194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181580, 43.064980, 45.472439>,  <38.281525, 42.918301, 45.633984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181580, 43.064980, 45.472439>,  <38.015007, 43.309441, 45.203194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181580, 43.064980, 45.472439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090916, 0.708653, 0.699676,
		-0.904611, -0.352562, 0.239540,
		0.416430, -0.611156, 0.673108,
		38.306507, 42.881634, 45.674370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719395, 43.338493, 45.921436>,  <38.015007, 43.309441, 45.203194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719395, 43.338493, 45.921436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061897, 43.158123, 46.022224>,  <38.267399, 43.049900, 46.082695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061897, 43.158123, 46.022224>,  <37.719395, 43.338493, 45.921436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061897, 43.158123, 46.022224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134753, 0.665901, 0.733770,
		-0.498659, -0.594344, 0.630947,
		0.856260, -0.450923, 0.251968,
		38.318775, 43.022846, 46.097816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689068, 43.143593, 46.664433>,  <37.719395, 43.338493, 45.921436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689068, 43.143593, 46.664433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074532, 43.179184, 46.563686>,  <38.305809, 43.200539, 46.503239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074532, 43.179184, 46.563686>,  <37.689068, 43.143593, 46.664433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074532, 43.179184, 46.563686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149067, 0.603277, 0.783477,
		0.221660, -0.792552, 0.568091,
		0.963662, 0.088982, -0.251866,
		38.363632, 43.205879, 46.488125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118782, 43.069347, 47.301678>,  <37.689068, 43.143593, 46.664433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118782, 43.069347, 47.301678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363544, 43.256752, 47.046783>,  <38.510403, 43.369194, 46.893848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.363544, 43.256752, 47.046783>,  <38.118782, 43.069347, 47.301678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363544, 43.256752, 47.046783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048337, 0.782021, 0.621375,
		0.789449, -0.411027, 0.455880,
		0.611910, 0.468508, -0.637234,
		38.547115, 43.397305, 46.855614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667946, 43.265594, 47.704472>,  <38.118782, 43.069347, 47.301678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667946, 43.265594, 47.704472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651371, 43.491123, 47.374527>,  <38.641426, 43.626438, 47.176559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.651371, 43.491123, 47.374527>,  <38.667946, 43.265594, 47.704472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651371, 43.491123, 47.374527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076373, 0.824940, 0.560038,
		0.996218, -0.039793, -0.077240,
		-0.041433, 0.563819, -0.824859,
		38.638943, 43.660271, 47.127068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193199, 43.713886, 47.798931>,  <38.667946, 43.265594, 47.704472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193199, 43.713886, 47.798931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952808, 43.880806, 47.526260>,  <38.808575, 43.980957, 47.362656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952808, 43.880806, 47.526260>,  <39.193199, 43.713886, 47.798931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952808, 43.880806, 47.526260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062847, 0.874915, 0.480181,
		0.796790, 0.245737, -0.552032,
		-0.600979, 0.417297, -0.681680,
		38.772514, 44.005997, 47.321758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512424, 44.367020, 47.647587>,  <39.193199, 43.713886, 47.798931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512424, 44.367020, 47.647587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132671, 44.392403, 47.524529>,  <38.904819, 44.407631, 47.450695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.132671, 44.392403, 47.524529>,  <39.512424, 44.367020, 47.647587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132671, 44.392403, 47.524529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113117, 0.844608, 0.523299,
		0.293045, 0.531612, -0.794679,
		-0.949384, 0.063458, -0.307642,
		38.847855, 44.411442, 47.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452442, 44.959656, 47.382694>,  <39.512424, 44.367020, 47.647587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452442, 44.959656, 47.382694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089981, 44.847687, 47.509521>,  <38.872505, 44.780506, 47.585617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089981, 44.847687, 47.509521>,  <39.452442, 44.959656, 47.382694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089981, 44.847687, 47.509521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015131, 0.770622, 0.637113,
		-0.422681, 0.572524, -0.702536,
		-0.906152, -0.279926, 0.317065,
		38.818134, 44.763710, 47.604641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153610, 45.644691, 47.592655>,  <39.452442, 44.959656, 47.382694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153610, 45.644691, 47.592655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949181, 45.336922, 47.745907>,  <38.826523, 45.152260, 47.837856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949181, 45.336922, 47.745907>,  <39.153610, 45.644691, 47.592655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949181, 45.336922, 47.745907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070695, 0.481852, 0.873396,
		-0.856624, 0.419285, -0.300657,
		-0.511074, -0.769427, 0.383125,
		38.795856, 45.106094, 47.860844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675755, 46.037312, 48.032829>,  <39.153610, 45.644691, 47.592655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675755, 46.037312, 48.032829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732098, 45.658474, 48.148186>,  <38.765903, 45.431171, 48.217400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732098, 45.658474, 48.148186>,  <38.675755, 46.037312, 48.032829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732098, 45.658474, 48.148186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214259, 0.255226, 0.942843,
		-0.966567, -0.194595, -0.166974,
		0.140856, -0.947097, 0.288387,
		38.774353, 45.374344, 48.234703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038361, 45.873650, 48.388428>,  <38.675755, 46.037312, 48.032829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038361, 45.873650, 48.388428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348988, 45.649933, 48.504452>,  <38.535366, 45.515701, 48.574066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348988, 45.649933, 48.504452>,  <38.038361, 45.873650, 48.388428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348988, 45.649933, 48.504452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337554, 0.019382, 0.941107,
		-0.531975, -0.828744, -0.173740,
		0.776569, -0.559292, 0.290057,
		38.581959, 45.482147, 48.591469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813881, 46.571487, 48.644421>,  <38.038361, 45.873650, 48.388428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813881, 46.571487, 48.644421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565601, 46.861538, 48.525139>,  <37.416634, 47.035568, 48.453568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565601, 46.861538, 48.525139>,  <37.813881, 46.571487, 48.644421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565601, 46.861538, 48.525139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108594, -0.297170, -0.948629,
		-0.776494, -0.621194, 0.105709,
		-0.620697, 0.725126, -0.298209,
		37.379391, 47.079075, 48.435677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283318, 46.292133, 48.209831>,  <37.813881, 46.571487, 48.644421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283318, 46.292133, 48.209831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254322, 46.677155, 48.105343>,  <37.236923, 46.908169, 48.042652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254322, 46.677155, 48.105343>,  <37.283318, 46.292133, 48.209831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254322, 46.677155, 48.105343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164034, -0.246833, -0.955074,
		-0.983788, -0.112080, -0.139999,
		-0.072489, 0.962555, -0.261216,
		37.232574, 46.965919, 48.026978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905159, 46.233101, 47.717106>,  <37.283318, 46.292133, 48.209831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905159, 46.233101, 47.717106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062988, 46.597126, 47.666351>,  <37.157684, 46.815540, 47.635899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062988, 46.597126, 47.666351>,  <36.905159, 46.233101, 47.717106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062988, 46.597126, 47.666351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015766, -0.144777, -0.989339,
		-0.918731, 0.388363, -0.071473,
		0.394570, 0.910063, -0.126888,
		37.181358, 46.870144, 47.628284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497154, 46.617031, 47.312702>,  <36.905159, 46.233101, 47.717106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497154, 46.617031, 47.312702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855305, 46.787743, 47.261856>,  <37.070194, 46.890171, 47.231350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.855305, 46.787743, 47.261856>,  <36.497154, 46.617031, 47.312702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855305, 46.787743, 47.261856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006772, -0.272362, -0.962171,
		-0.445259, 0.862366, -0.240976,
		0.895376, 0.426783, -0.127111,
		37.123917, 46.915779, 47.223724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461246, 47.030491, 46.698982>,  <36.497154, 46.617031, 47.312702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461246, 47.030491, 46.698982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848457, 46.946945, 46.754551>,  <37.080784, 46.896816, 46.787891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848457, 46.946945, 46.754551>,  <36.461246, 47.030491, 46.698982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848457, 46.946945, 46.754551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046999, -0.392972, -0.918349,
		0.246401, 0.895516, -0.370591,
		0.968028, -0.208865, 0.138917,
		37.138866, 46.884285, 46.796227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788643, 47.335468, 46.170479>,  <36.461246, 47.030491, 46.698982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788643, 47.335468, 46.170479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059216, 47.073330, 46.304920>,  <37.221558, 46.916046, 46.385586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059216, 47.073330, 46.304920>,  <36.788643, 47.335468, 46.170479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059216, 47.073330, 46.304920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175025, -0.300247, -0.937666,
		0.715407, 0.693093, -0.088395,
		0.676431, -0.655342, 0.336107,
		37.262146, 46.876728, 46.405754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259983, 47.415874, 45.687656>,  <36.788643, 47.335468, 46.170479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259983, 47.415874, 45.687656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337315, 47.073299, 45.879131>,  <37.383713, 46.867756, 45.994015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337315, 47.073299, 45.879131>,  <37.259983, 47.415874, 45.687656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337315, 47.073299, 45.879131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058709, -0.476921, -0.876983,
		0.979375, 0.197653, -0.041924,
		0.193333, -0.856434, 0.478689,
		37.395313, 46.816368, 46.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859398, 47.150734, 45.465595>,  <37.259983, 47.415874, 45.687656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859398, 47.150734, 45.465595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689774, 46.816620, 45.605576>,  <37.588001, 46.616150, 45.689564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689774, 46.816620, 45.605576>,  <37.859398, 47.150734, 45.465595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689774, 46.816620, 45.605576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131499, -0.439110, -0.888758,
		0.896037, -0.330868, 0.296048,
		-0.424059, -0.835290, 0.349950,
		37.562557, 46.566032, 45.710560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321358, 46.497944, 45.434448>,  <37.859398, 47.150734, 45.465595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321358, 46.497944, 45.434448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946465, 46.358479, 45.436443>,  <37.721527, 46.274799, 45.437641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.946465, 46.358479, 45.436443>,  <38.321358, 46.497944, 45.434448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946465, 46.358479, 45.436443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229040, -0.626328, -0.745154,
		0.262935, -0.697240, 0.666874,
		-0.937233, -0.348668, 0.004988,
		37.665295, 46.253880, 45.437939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324677, 45.819603, 45.317421>,  <38.321358, 46.497944, 45.434448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324677, 45.819603, 45.317421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939167, 45.877396, 45.227741>,  <37.707863, 45.912071, 45.173931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939167, 45.877396, 45.227741>,  <38.324677, 45.819603, 45.317421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939167, 45.877396, 45.227741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081654, -0.640390, -0.763697,
		-0.253919, -0.754338, 0.605392,
		-0.963773, 0.144484, -0.224202,
		37.650036, 45.920742, 45.160480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112778, 45.141830, 45.077297>,  <38.324677, 45.819603, 45.317421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112778, 45.141830, 45.077297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800961, 45.361069, 44.956036>,  <37.613869, 45.492611, 44.883278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800961, 45.361069, 44.956036>,  <38.112778, 45.141830, 45.077297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800961, 45.361069, 44.956036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116960, -0.602877, -0.789214,
		-0.615338, -0.579764, 0.534071,
		-0.779538, 0.548099, -0.303164,
		37.567097, 45.525497, 44.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506523, 44.745838, 45.089039>,  <38.112778, 45.141830, 45.077297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506523, 44.745838, 45.089039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429806, 45.043064, 44.832581>,  <37.383778, 45.221401, 44.678707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.429806, 45.043064, 44.832581>,  <37.506523, 44.745838, 45.089039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429806, 45.043064, 44.832581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001254, -0.653084, -0.757284,
		-0.981435, -0.146044, 0.124324,
		-0.191791, 0.743070, -0.641143,
		37.372269, 45.265984, 44.640236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807281, 44.642548, 44.798321>,  <37.506523, 44.745838, 45.089039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807281, 44.642548, 44.798321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007000, 44.878208, 44.544201>,  <37.126831, 45.019604, 44.391727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007000, 44.878208, 44.544201>,  <36.807281, 44.642548, 44.798321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007000, 44.878208, 44.544201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148855, -0.664009, -0.732758,
		-0.853549, 0.460431, -0.243840,
		0.499296, 0.589148, -0.635301,
		37.156788, 45.054955, 44.353611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474388, 44.476524, 44.201401>,  <36.807281, 44.642548, 44.798321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474388, 44.476524, 44.201401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795528, 44.673923, 44.067600>,  <36.988213, 44.792362, 43.987320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795528, 44.673923, 44.067600>,  <36.474388, 44.476524, 44.201401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795528, 44.673923, 44.067600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023594, -0.534331, -0.844946,
		-0.595712, 0.686258, -0.417345,
		0.802851, 0.493498, -0.334500,
		37.036385, 44.821972, 43.967251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904179, 44.863602, 44.392361>,  <36.474388, 44.476524, 44.201401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904179, 44.863602, 44.392361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536186, 44.942215, 44.256710>,  <35.315392, 44.989384, 44.175320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.536186, 44.942215, 44.256710>,  <35.904179, 44.863602, 44.392361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536186, 44.942215, 44.256710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072340, 0.765209, 0.639704,
		0.385223, 0.613049, -0.689763,
		-0.919984, 0.196531, -0.339125,
		35.260193, 45.001175, 44.154972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771770, 45.707104, 44.272015>,  <35.904179, 44.863602, 44.392361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771770, 45.707104, 44.272015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430328, 45.503338, 44.315571>,  <35.225464, 45.381077, 44.341705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430328, 45.503338, 44.315571>,  <35.771770, 45.707104, 44.272015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430328, 45.503338, 44.315571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271526, 0.613501, 0.741546,
		-0.444561, 0.603418, -0.662006,
		-0.853604, -0.509414, 0.108895,
		35.174248, 45.350513, 44.348240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286854, 46.248486, 44.375034>,  <35.771770, 45.707104, 44.272015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286854, 46.248486, 44.375034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139683, 45.906548, 44.521389>,  <35.051380, 45.701385, 44.609203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139683, 45.906548, 44.521389>,  <35.286854, 46.248486, 44.375034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139683, 45.906548, 44.521389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276331, 0.476228, 0.834774,
		-0.887847, 0.206028, -0.411436,
		-0.367924, -0.854845, 0.365886,
		35.029305, 45.650093, 44.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667625, 46.444126, 44.516045>,  <35.286854, 46.248486, 44.375034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667625, 46.444126, 44.516045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774109, 46.122944, 44.729362>,  <34.838001, 45.930237, 44.857353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774109, 46.122944, 44.729362>,  <34.667625, 46.444126, 44.516045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774109, 46.122944, 44.729362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322825, 0.447036, 0.834232,
		-0.908249, -0.394242, -0.140207,
		0.266211, -0.802952, 0.533291,
		34.853973, 45.882057, 44.889351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073185, 46.271770, 44.851120>,  <34.667625, 46.444126, 44.516045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073185, 46.271770, 44.851120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371628, 46.097012, 45.052097>,  <34.550694, 45.992157, 45.172684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371628, 46.097012, 45.052097>,  <34.073185, 46.271770, 44.851120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371628, 46.097012, 45.052097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329723, 0.413150, 0.848876,
		-0.578455, -0.799017, 0.164199,
		0.746105, -0.436896, 0.502443,
		34.595459, 45.965942, 45.202831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711670, 45.983589, 45.371334>,  <34.073185, 46.271770, 44.851120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711670, 45.983589, 45.371334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085732, 46.012314, 45.510086>,  <34.310169, 46.029549, 45.593338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085732, 46.012314, 45.510086>,  <33.711670, 45.983589, 45.371334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085732, 46.012314, 45.510086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345861, 0.396716, 0.850292,
		-0.076551, -0.915128, 0.395829,
		0.935158, 0.071811, 0.346876,
		34.366280, 46.033855, 45.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591831, 45.786720, 46.051334>,  <33.711670, 45.983589, 45.371334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591831, 45.786720, 46.051334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944313, 45.972641, 46.085835>,  <34.155804, 46.084194, 46.106537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944313, 45.972641, 46.085835>,  <33.591831, 45.786720, 46.051334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944313, 45.972641, 46.085835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195739, 0.192663, 0.961544,
		0.430308, -0.864200, 0.260755,
		0.881204, 0.464800, 0.086253,
		34.208675, 46.112080, 46.111710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534149, 45.070148, 46.428249>,  <33.591831, 45.786720, 46.051334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534149, 45.070148, 46.428249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422646, 44.748592, 46.638416>,  <33.355743, 44.555660, 46.764515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422646, 44.748592, 46.638416>,  <33.534149, 45.070148, 46.428249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422646, 44.748592, 46.638416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295566, -0.592359, -0.749501,
		0.913749, -0.053632, 0.402725,
		-0.278755, -0.803887, 0.525415,
		33.339020, 44.507427, 46.796040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078289, 44.525005, 46.299622>,  <33.534149, 45.070148, 46.428249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078289, 44.525005, 46.299622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749409, 44.350498, 46.445858>,  <33.552082, 44.245792, 46.533600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749409, 44.350498, 46.445858>,  <34.078289, 44.525005, 46.299622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749409, 44.350498, 46.445858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045176, -0.590251, -0.805955,
		0.567407, -0.679170, 0.465593,
		-0.822197, -0.436271, 0.365595,
		33.502750, 44.219616, 46.555538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203178, 43.830986, 46.252373>,  <34.078289, 44.525005, 46.299622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203178, 43.830986, 46.252373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804996, 43.860676, 46.276241>,  <33.566086, 43.878490, 46.290562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804996, 43.860676, 46.276241>,  <34.203178, 43.830986, 46.252373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804996, 43.860676, 46.276241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092645, -0.609681, -0.787214,
		-0.022050, -0.789165, 0.613786,
		-0.995455, 0.074222, 0.059669,
		33.506359, 43.882942, 46.294144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955948, 43.147587, 46.200359>,  <34.203178, 43.830986, 46.252373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955948, 43.147587, 46.200359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653412, 43.393909, 46.112053>,  <33.471889, 43.541702, 46.059071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653412, 43.393909, 46.112053>,  <33.955948, 43.147587, 46.200359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653412, 43.393909, 46.112053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273314, -0.604058, -0.748608,
		-0.594339, -0.505872, 0.625183,
		-0.756347, 0.615798, -0.220753,
		33.426510, 43.578651, 46.045826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328945, 42.738228, 46.281322>,  <33.955948, 43.147587, 46.200359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328945, 42.738228, 46.281322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281063, 43.053261, 46.039532>,  <33.252335, 43.242279, 45.894459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281063, 43.053261, 46.039532>,  <33.328945, 42.738228, 46.281322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281063, 43.053261, 46.039532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298301, -0.609254, -0.734729,
		-0.946935, 0.092362, 0.307868,
		-0.119708, 0.787578, -0.604475,
		33.245152, 43.289536, 45.858189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757717, 42.559551, 45.875973>,  <33.328945, 42.738228, 46.281322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757717, 42.559551, 45.875973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878803, 42.888233, 45.682823>,  <32.951454, 43.085442, 45.566933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878803, 42.888233, 45.682823>,  <32.757717, 42.559551, 45.875973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878803, 42.888233, 45.682823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369047, -0.366066, -0.854284,
		-0.878730, 0.436810, 0.192432,
		0.302717, 0.821701, -0.482876,
		32.969620, 43.134743, 45.537960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266537, 42.757378, 45.415169>,  <32.757717, 42.559551, 45.875973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266537, 42.757378, 45.415169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583542, 42.935562, 45.248562>,  <32.773746, 43.042473, 45.148598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583542, 42.935562, 45.248562>,  <32.266537, 42.757378, 45.415169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583542, 42.935562, 45.248562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197708, -0.458427, -0.866462,
		-0.576916, 0.769033, -0.275240,
		0.792515, 0.445458, -0.416517,
		32.821297, 43.069199, 45.123608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.390305, 43.622200, 49.820629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.694466, 43.679115, 49.567162>,  <36.876965, 43.713264, 49.415081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.694466, 43.679115, 49.567162>,  <36.390305, 43.622200, 49.820629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694466, 43.679115, 49.567162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346425, -0.736441, -0.581072,
		-0.549338, 0.661370, -0.510704,
		0.760407, 0.142284, -0.633670,
		36.922588, 43.721802, 49.377060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091446, 43.563709, 49.094891>,  <36.390305, 43.622200, 49.820629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091446, 43.563709, 49.094891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.484623, 43.491161, 49.082760>,  <36.720531, 43.447632, 49.075481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.484623, 43.491161, 49.082760>,  <36.091446, 43.563709, 49.094891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484623, 43.491161, 49.082760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176779, -0.886592, -0.427438,
		0.050638, 0.425510, -0.903536,
		0.982947, -0.181371, -0.030326,
		36.779507, 43.436749, 49.073662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174114, 43.324509, 48.304008>,  <36.091446, 43.563709, 49.094891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174114, 43.324509, 48.304008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.476444, 43.183094, 48.524460>,  <36.657845, 43.098248, 48.656731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.476444, 43.183094, 48.524460>,  <36.174114, 43.324509, 48.304008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476444, 43.183094, 48.524460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189007, -0.923678, -0.333310,
		0.626899, 0.147758, -0.764961,
		0.755827, -0.353534, 0.551125,
		36.703194, 43.077034, 48.689796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508118, 42.909698, 47.851292>,  <36.174114, 43.324509, 48.304008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508118, 42.909698, 47.851292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.607944, 42.810436, 48.225700>,  <36.667839, 42.750877, 48.450344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.607944, 42.810436, 48.225700>,  <36.508118, 42.909698, 47.851292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607944, 42.810436, 48.225700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057151, -0.961146, -0.270059,
		0.966670, 0.120892, -0.225687,
		0.249566, -0.248159, 0.936020,
		36.682816, 42.735989, 48.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016552, 42.439270, 47.734982>,  <36.508118, 42.909698, 47.851292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016552, 42.439270, 47.734982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910378, 42.361702, 48.112751>,  <36.846672, 42.315163, 48.339413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910378, 42.361702, 48.112751>,  <37.016552, 42.439270, 47.734982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910378, 42.361702, 48.112751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044365, -0.980983, -0.188956,
		0.963108, -0.008256, 0.268990,
		-0.265435, -0.193919, 0.944426,
		36.830746, 42.303528, 48.396080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440598, 41.890442, 47.952808>,  <37.016552, 42.439270, 47.734982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440598, 41.890442, 47.952808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.130516, 41.878567, 48.205215>,  <36.944469, 41.871441, 48.356659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.130516, 41.878567, 48.205215>,  <37.440598, 41.890442, 47.952808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130516, 41.878567, 48.205215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091972, -0.982948, -0.159230,
		0.624984, -0.181471, 0.759252,
		-0.775201, -0.029687, 0.631017,
		36.897957, 41.869659, 48.394520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511868, 41.288090, 48.214375>,  <37.440598, 41.890442, 47.952808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511868, 41.288090, 48.214375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.131779, 41.390087, 48.285995>,  <36.903725, 41.451286, 48.328968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.131779, 41.390087, 48.285995>,  <37.511868, 41.288090, 48.214375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131779, 41.390087, 48.285995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291315, -0.930942, -0.220187,
		0.110540, -0.261386, 0.958884,
		-0.950219, 0.254997, 0.179052,
		36.846714, 41.466587, 48.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253971, 40.740482, 48.439526>,  <37.511868, 41.288090, 48.214375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253971, 40.740482, 48.439526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.926647, 40.949951, 48.344753>,  <36.730255, 41.075634, 48.287891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.926647, 40.949951, 48.344753>,  <37.253971, 40.740482, 48.439526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926647, 40.949951, 48.344753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405033, -0.817849, -0.408744,
		-0.407823, -0.238513, 0.881358,
		-0.818308, 0.523674, -0.236932,
		36.681156, 41.107052, 48.273674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724091, 40.265419, 48.607475>,  <37.253971, 40.740482, 48.439526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724091, 40.265419, 48.607475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553955, 40.532204, 48.362774>,  <36.451874, 40.692276, 48.215954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553955, 40.532204, 48.362774>,  <36.724091, 40.265419, 48.607475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553955, 40.532204, 48.362774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493863, -0.737488, -0.460664,
		-0.758407, 0.106182, 0.643074,
		-0.425344, 0.666961, -0.611755,
		36.426353, 40.732292, 48.179245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941128, 40.034348, 48.498123>,  <36.724091, 40.265419, 48.607475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941128, 40.034348, 48.498123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017796, 40.275684, 48.188480>,  <36.063797, 40.420486, 48.002697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017796, 40.275684, 48.188480>,  <35.941128, 40.034348, 48.498123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017796, 40.275684, 48.188480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536611, -0.595979, -0.597375,
		-0.821774, 0.529890, 0.209533,
		0.191666, 0.603345, -0.774105,
		36.075294, 40.456688, 47.956249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279732, 40.127823, 48.100903>,  <35.941128, 40.034348, 48.498123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279732, 40.127823, 48.100903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579491, 40.193169, 47.844242>,  <35.759346, 40.232376, 47.690247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579491, 40.193169, 47.844242>,  <35.279732, 40.127823, 48.100903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579491, 40.193169, 47.844242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468045, -0.554763, -0.687875,
		-0.468338, 0.815813, -0.339277,
		0.749396, 0.163361, -0.641653,
		35.804310, 40.242176, 47.651745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940002, 40.249367, 47.442711>,  <35.279732, 40.127823, 48.100903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940002, 40.249367, 47.442711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311104, 40.163498, 47.320606>,  <35.533764, 40.111977, 47.247341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311104, 40.163498, 47.320606>,  <34.940002, 40.249367, 47.442711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311104, 40.163498, 47.320606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372981, -0.506137, -0.777632,
		0.012429, 0.835310, -0.549639,
		0.927756, -0.214670, -0.305263,
		35.589432, 40.099098, 47.229027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647564, 40.884232, 47.215996>,  <34.940002, 40.249367, 47.442711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647564, 40.884232, 47.215996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261330, 40.964680, 47.281948>,  <34.029587, 41.012951, 47.321522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.261330, 40.964680, 47.281948>,  <34.647564, 40.884232, 47.215996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261330, 40.964680, 47.281948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258921, 0.683815, 0.682171,
		0.024451, 0.701389, -0.712359,
		-0.965589, 0.201124, 0.164884,
		33.971653, 41.025017, 47.331413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532093, 41.632267, 47.116867>,  <34.647564, 40.884232, 47.215996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532093, 41.632267, 47.116867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255951, 41.474689, 47.359592>,  <34.090267, 41.380142, 47.505226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255951, 41.474689, 47.359592>,  <34.532093, 41.632267, 47.116867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255951, 41.474689, 47.359592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303964, 0.603187, 0.737408,
		-0.656519, 0.693521, -0.296667,
		-0.690354, -0.393947, 0.606809,
		34.048843, 41.356506, 47.541634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248669, 42.266724, 47.492054>,  <34.532093, 41.632267, 47.116867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248669, 42.266724, 47.492054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131847, 41.960976, 47.721989>,  <34.061756, 41.777527, 47.859951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131847, 41.960976, 47.721989>,  <34.248669, 42.266724, 47.492054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131847, 41.960976, 47.721989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066795, 0.583275, 0.809524,
		-0.954068, 0.274818, -0.119290,
		-0.292051, -0.764373, 0.574840,
		34.044231, 41.731663, 47.894440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545685, 42.488197, 47.761837>,  <34.248669, 42.266724, 47.492054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545685, 42.488197, 47.761837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731022, 42.221432, 47.995262>,  <33.842224, 42.061375, 48.135319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731022, 42.221432, 47.995262>,  <33.545685, 42.488197, 47.761837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731022, 42.221432, 47.995262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063484, 0.631842, 0.772493,
		-0.883902, -0.394976, 0.250422,
		0.463343, -0.666910, 0.583561,
		33.870026, 42.021358, 48.170330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225525, 42.608528, 48.395592>,  <33.545685, 42.488197, 47.761837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225525, 42.608528, 48.395592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.559929, 42.406300, 48.480896>,  <33.760571, 42.284962, 48.532078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.559929, 42.406300, 48.480896>,  <33.225525, 42.608528, 48.395592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559929, 42.406300, 48.480896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187615, 0.628614, 0.754748,
		-0.515638, -0.590968, 0.620382,
		0.836013, -0.505570, 0.213263,
		33.810734, 42.254627, 48.544876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241898, 42.471798, 49.109547>,  <33.225525, 42.608528, 48.395592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241898, 42.471798, 49.109547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625328, 42.407337, 49.015602>,  <33.855385, 42.368660, 48.959236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.625328, 42.407337, 49.015602>,  <33.241898, 42.471798, 49.109547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625328, 42.407337, 49.015602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277468, 0.714623, 0.642126,
		0.064357, -0.680694, 0.729736,
		0.958577, -0.161153, -0.234862,
		33.912903, 42.358990, 48.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572521, 42.477097, 49.708946>,  <33.241898, 42.471798, 49.109547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572521, 42.477097, 49.708946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870018, 42.532703, 49.447403>,  <34.048515, 42.566067, 49.290478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870018, 42.532703, 49.447403>,  <33.572521, 42.477097, 49.708946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870018, 42.532703, 49.447403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300019, 0.804669, 0.512344,
		0.597359, -0.577219, 0.556758,
		0.743741, 0.139015, -0.653854,
		34.093140, 42.574409, 49.251247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115009, 42.656120, 50.184120>,  <33.572521, 42.477097, 49.708946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115009, 42.656120, 50.184120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228424, 42.780418, 49.821232>,  <34.296474, 42.854996, 49.603500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.228424, 42.780418, 49.821232>,  <34.115009, 42.656120, 50.184120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228424, 42.780418, 49.821232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254025, 0.887909, 0.383522,
		0.924704, -0.339200, 0.172820,
		0.283539, 0.310744, -0.907218,
		34.313484, 42.873642, 49.549068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876842, 42.740852, 50.180168>,  <34.115009, 42.656120, 50.184120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876842, 42.740852, 50.180168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729370, 42.994186, 49.908005>,  <34.640884, 43.146187, 49.744705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729370, 42.994186, 49.908005>,  <34.876842, 42.740852, 50.180168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729370, 42.994186, 49.908005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354099, 0.772475, 0.527158,
		0.859468, -0.046578, -0.509063,
		-0.368685, 0.633334, -0.680411,
		34.618763, 43.184185, 49.703880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358471, 43.276241, 50.158253>,  <34.876842, 42.740852, 50.180168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358471, 43.276241, 50.158253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051552, 43.429642, 49.952660>,  <34.867401, 43.521683, 49.829304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051552, 43.429642, 49.952660>,  <35.358471, 43.276241, 50.158253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051552, 43.429642, 49.952660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084574, 0.854995, 0.511694,
		0.635686, 0.349154, -0.688473,
		-0.767301, 0.383503, -0.513979,
		34.821362, 43.544693, 49.798466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634811, 43.849083, 49.850952>,  <35.358471, 43.276241, 50.158253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634811, 43.849083, 49.850952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.239861, 43.908211, 49.873680>,  <35.002888, 43.943687, 49.887318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.239861, 43.908211, 49.873680>,  <35.634811, 43.849083, 49.850952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239861, 43.908211, 49.873680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154866, 0.826333, 0.541471,
		0.033089, 0.543437, -0.838797,
		-0.987381, 0.147818, 0.056818,
		34.943645, 43.952557, 49.890724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485493, 44.580109, 49.603531>,  <35.634811, 43.849083, 49.850952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485493, 44.580109, 49.603531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168560, 44.468868, 49.820740>,  <34.978401, 44.402126, 49.951065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168560, 44.468868, 49.820740>,  <35.485493, 44.580109, 49.603531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168560, 44.468868, 49.820740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018941, 0.900850, 0.433717,
		-0.609794, 0.333363, -0.719041,
		-0.792333, -0.278098, 0.543019,
		34.930859, 44.385441, 49.983646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009861, 45.205414, 49.524323>,  <35.485493, 44.580109, 49.603531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009861, 45.205414, 49.524323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884903, 44.996639, 49.841812>,  <34.809929, 44.871376, 50.032307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884903, 44.996639, 49.841812>,  <35.009861, 45.205414, 49.524323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884903, 44.996639, 49.841812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192178, 0.852985, 0.485267,
		-0.930312, -0.000943, -0.366770,
		-0.312391, -0.521934, 0.793723,
		34.791187, 44.840057, 50.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373928, 45.448917, 49.713627>,  <35.009861, 45.205414, 49.524323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373928, 45.448917, 49.713627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534153, 45.284145, 50.041008>,  <34.630287, 45.185284, 50.237438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534153, 45.284145, 50.041008>,  <34.373928, 45.448917, 49.713627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534153, 45.284145, 50.041008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148990, 0.852076, 0.501765,
		-0.904076, -0.322929, 0.279935,
		0.400561, -0.411926, 0.818454,
		34.654320, 45.160568, 50.286545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801620, 45.327858, 49.892300>,  <34.373928, 45.448917, 49.713627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801620, 45.327858, 49.892300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517372, 45.522511, 49.689041>,  <33.346825, 45.639301, 49.567085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517372, 45.522511, 49.689041>,  <33.801620, 45.327858, 49.892300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517372, 45.522511, 49.689041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021108, -0.736647, -0.675947,
		-0.703263, -0.469613, 0.533746,
		-0.710616, 0.486635, -0.508144,
		33.304188, 45.668499, 49.536598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284882, 44.848984, 49.758034>,  <33.801620, 45.327858, 49.892300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284882, 44.848984, 49.758034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237370, 45.133350, 49.480762>,  <33.208862, 45.303970, 49.314400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.237370, 45.133350, 49.480762>,  <33.284882, 44.848984, 49.758034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237370, 45.133350, 49.480762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030767, -0.695150, -0.718206,
		-0.992444, -0.106635, 0.060696,
		-0.118779, 0.710912, -0.693178,
		33.201736, 45.346622, 49.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807884, 44.592815, 49.307819>,  <33.284882, 44.848984, 49.758034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807884, 44.592815, 49.307819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023899, 44.865639, 49.110577>,  <33.153507, 45.029335, 48.992229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023899, 44.865639, 49.110577>,  <32.807884, 44.592815, 49.307819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023899, 44.865639, 49.110577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057384, -0.614363, -0.786934,
		-0.839684, 0.396675, -0.370917,
		0.540035, 0.682061, -0.493108,
		33.185909, 45.070255, 48.962643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555862, 44.450329, 48.662155>,  <32.807884, 44.592815, 49.307819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555862, 44.450329, 48.662155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.865379, 44.688293, 48.575127>,  <33.051090, 44.831070, 48.522911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.865379, 44.688293, 48.575127>,  <32.555862, 44.450329, 48.662155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865379, 44.688293, 48.575127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036581, -0.300927, -0.952945,
		-0.632387, 0.745337, -0.211092,
		0.773789, 0.594908, -0.217568,
		33.097515, 44.866764, 48.509857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367592, 44.698090, 48.063747>,  <32.555862, 44.450329, 48.662155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367592, 44.698090, 48.063747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762264, 44.759499, 48.085239>,  <32.999069, 44.796345, 48.098137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.762264, 44.759499, 48.085239>,  <32.367592, 44.698090, 48.063747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762264, 44.759499, 48.085239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089379, -0.235747, -0.967696,
		-0.135892, 0.959612, -0.246329,
		0.986684, 0.153519, 0.053733,
		33.058270, 44.805553, 48.101360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510197, 45.207428, 47.545967>,  <32.367592, 44.698090, 48.063747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510197, 45.207428, 47.545967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823307, 44.978359, 47.643387>,  <33.011173, 44.840919, 47.701839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823307, 44.978359, 47.643387>,  <32.510197, 45.207428, 47.545967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823307, 44.978359, 47.643387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080380, -0.295046, -0.952096,
		0.617094, 0.764852, -0.184923,
		0.782773, -0.572669, 0.243550,
		33.058140, 44.806557, 47.716454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956238, 45.325050, 46.920944>,  <32.510197, 45.207428, 47.545967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956238, 45.325050, 46.920944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057335, 44.980667, 47.097519>,  <33.117992, 44.774036, 47.203465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057335, 44.980667, 47.097519>,  <32.956238, 45.325050, 46.920944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057335, 44.980667, 47.097519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038573, -0.464854, -0.884547,
		0.966764, 0.206535, -0.150698,
		0.252742, -0.860961, 0.441437,
		33.133156, 44.722378, 47.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675205, 45.724335, 46.836136>,  <32.956238, 45.325050, 46.920944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675205, 45.724335, 46.836136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954304, 45.970463, 46.689426>,  <34.121765, 46.118141, 46.601398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954304, 45.970463, 46.689426>,  <33.675205, 45.724335, 46.836136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954304, 45.970463, 46.689426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177376, 0.347662, 0.920689,
		0.694035, -0.707467, 0.133437,
		0.697749, 0.615322, -0.366777,
		34.163628, 46.155060, 46.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299068, 45.555592, 47.201706>,  <33.675205, 45.724335, 46.836136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299068, 45.555592, 47.201706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.318508, 45.927425, 47.055553>,  <34.330170, 46.150528, 46.967861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.318508, 45.927425, 47.055553>,  <34.299068, 45.555592, 47.201706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318508, 45.927425, 47.055553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250382, 0.342798, 0.905427,
		0.966927, -0.135487, -0.216092,
		0.048598, 0.929588, -0.365384,
		34.333088, 46.206303, 46.945938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979733, 45.784954, 47.354412>,  <34.299068, 45.555592, 47.201706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979733, 45.784954, 47.354412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.743855, 46.104687, 47.308224>,  <34.602329, 46.296524, 47.280510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.743855, 46.104687, 47.308224>,  <34.979733, 45.784954, 47.354412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743855, 46.104687, 47.308224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294792, 0.346144, 0.890664,
		0.751904, 0.491179, -0.439754,
		-0.589694, 0.799329, -0.115471,
		34.566948, 46.344486, 47.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308613, 46.281292, 47.671852>,  <34.979733, 45.784954, 47.354412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308613, 46.281292, 47.671852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.983627, 46.502369, 47.597630>,  <34.788635, 46.635017, 47.553097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.983627, 46.502369, 47.597630>,  <35.308613, 46.281292, 47.671852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983627, 46.502369, 47.597630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213928, 0.578687, 0.786992,
		0.542346, 0.599706, -0.588399,
		-0.812463, 0.552697, -0.185554,
		34.739887, 46.668179, 47.541962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467815, 46.953136, 47.514397>,  <35.308613, 46.281292, 47.671852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467815, 46.953136, 47.514397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107834, 46.926640, 47.686768>,  <34.891846, 46.910740, 47.790192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107834, 46.926640, 47.686768>,  <35.467815, 46.953136, 47.514397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107834, 46.926640, 47.686768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303772, 0.613729, 0.728738,
		-0.312747, 0.786733, -0.532204,
		-0.899951, -0.066242, 0.430929,
		34.837849, 46.906769, 47.816048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398697, 47.642437, 47.834030>,  <35.467815, 46.953136, 47.514397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398697, 47.642437, 47.834030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085552, 47.434536, 47.970840>,  <34.897663, 47.309795, 48.052925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085552, 47.434536, 47.970840>,  <35.398697, 47.642437, 47.834030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085552, 47.434536, 47.970840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016174, 0.532522, 0.846262,
		-0.621981, 0.668040, -0.408487,
		-0.782865, -0.519752, 0.342023,
		34.850693, 47.278610, 48.073448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859497, 48.109085, 48.196140>,  <35.398697, 47.642437, 47.834030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859497, 48.109085, 48.196140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.804592, 47.746010, 48.354763>,  <34.771648, 47.528164, 48.449936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.804592, 47.746010, 48.354763>,  <34.859497, 48.109085, 48.196140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804592, 47.746010, 48.354763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142316, 0.378123, 0.914751,
		-0.980258, 0.181998, 0.077276,
		-0.137262, -0.907689, 0.396559,
		34.763412, 47.473701, 48.473732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528389, 48.190170, 48.799576>,  <34.859497, 48.109085, 48.196140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528389, 48.190170, 48.799576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700207, 47.834553, 48.862930>,  <34.803299, 47.621181, 48.900944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700207, 47.834553, 48.862930>,  <34.528389, 48.190170, 48.799576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700207, 47.834553, 48.862930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357352, 0.328421, 0.874322,
		-0.829331, -0.318962, 0.458775,
		0.429547, -0.889046, 0.158388,
		34.829071, 47.567841, 48.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207283, 47.806358, 49.438789>,  <34.528389, 48.190170, 48.799576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207283, 47.806358, 49.438789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579487, 47.698174, 49.339996>,  <34.802811, 47.633263, 49.280720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.579487, 47.698174, 49.339996>,  <34.207283, 47.806358, 49.438789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579487, 47.698174, 49.339996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327685, 0.313531, 0.891247,
		-0.163610, -0.910248, 0.380370,
		0.930513, -0.270458, -0.246978,
		34.858643, 47.617035, 49.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.106316, 40.048042, 35.208603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472572, 39.998306, 35.361519>,  <35.692326, 39.968464, 35.453270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472572, 39.998306, 35.361519>,  <35.106316, 40.048042, 35.208603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472572, 39.998306, 35.361519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364225, 0.145874, 0.919816,
		-0.170133, -0.981459, 0.088282,
		0.915639, -0.124337, 0.382290,
		35.747265, 39.961006, 35.476208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041653, 39.691841, 35.810673>,  <35.106316, 40.048042, 35.208603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041653, 39.691841, 35.810673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411644, 39.836685, 35.856773>,  <35.633640, 39.923592, 35.884434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411644, 39.836685, 35.856773>,  <35.041653, 39.691841, 35.810673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411644, 39.836685, 35.856773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246002, 0.339420, 0.907897,
		0.289640, -0.868141, 0.403037,
		0.924982, 0.362112, 0.115255,
		35.689140, 39.945320, 35.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196014, 39.389622, 36.372822>,  <35.041653, 39.691841, 35.810673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196014, 39.389622, 36.372822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441376, 39.703671, 36.338623>,  <35.588593, 39.892101, 36.318104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441376, 39.703671, 36.338623>,  <35.196014, 39.389622, 36.372822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441376, 39.703671, 36.338623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285334, 0.321253, 0.902985,
		0.736422, -0.529503, 0.421082,
		0.613407, 0.785127, -0.085493,
		35.625397, 39.939209, 36.312977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491985, 39.445873, 37.048840>,  <35.196014, 39.389622, 36.372822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491985, 39.445873, 37.048840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583057, 39.797043, 36.880360>,  <35.637703, 40.007744, 36.779270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583057, 39.797043, 36.880360>,  <35.491985, 39.445873, 37.048840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583057, 39.797043, 36.880360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070879, 0.416476, 0.906380,
		0.971152, -0.236223, 0.032599,
		0.227685, 0.877922, -0.421205,
		35.651363, 40.060421, 36.753998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911804, 39.664604, 37.495125>,  <35.491985, 39.445873, 37.048840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911804, 39.664604, 37.495125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790943, 39.991131, 37.298218>,  <35.718426, 40.187050, 37.180073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790943, 39.991131, 37.298218>,  <35.911804, 39.664604, 37.495125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790943, 39.991131, 37.298218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279910, 0.417661, 0.864413,
		0.911239, 0.398972, 0.102300,
		-0.302150, 0.816321, -0.492265,
		35.700298, 40.236027, 37.150539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148228, 40.208138, 37.868423>,  <35.911804, 39.664604, 37.495125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148228, 40.208138, 37.868423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843212, 40.356716, 37.656551>,  <35.660202, 40.445862, 37.529427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843212, 40.356716, 37.656551>,  <36.148228, 40.208138, 37.868423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843212, 40.356716, 37.656551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323705, 0.489824, 0.809498,
		0.560136, 0.788734, -0.253271,
		-0.762537, 0.371444, -0.529685,
		35.614452, 40.468151, 37.497646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108871, 40.924393, 38.084469>,  <36.148228, 40.208138, 37.868423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108871, 40.924393, 38.084469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750725, 40.851723, 37.921837>,  <35.535835, 40.808121, 37.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750725, 40.851723, 37.921837>,  <36.108871, 40.924393, 38.084469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750725, 40.851723, 37.921837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436780, 0.536244, 0.722265,
		0.086813, 0.824281, -0.559486,
		-0.895370, -0.181671, -0.406582,
		35.482113, 40.797222, 37.799862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740463, 41.584743, 38.033646>,  <36.108871, 40.924393, 38.084469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740463, 41.584743, 38.033646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474335, 41.286396, 38.046459>,  <35.314659, 41.107388, 38.054146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474335, 41.286396, 38.046459>,  <35.740463, 41.584743, 38.033646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474335, 41.286396, 38.046459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578038, 0.541815, 0.610171,
		-0.472466, 0.387441, -0.791622,
		-0.665318, -0.745873, 0.032033,
		35.274738, 41.062634, 38.056068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112244, 41.877266, 37.780647>,  <35.740463, 41.584743, 38.033646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112244, 41.877266, 37.780647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001331, 41.551514, 37.984570>,  <34.934784, 41.356064, 38.106922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001331, 41.551514, 37.984570>,  <35.112244, 41.877266, 37.780647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001331, 41.551514, 37.984570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694361, 0.536593, 0.479510,
		-0.664062, -0.221032, -0.714260,
		-0.277280, -0.814378, 0.509807,
		34.918148, 41.307201, 38.137512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451687, 42.026909, 38.016506>,  <35.112244, 41.877266, 37.780647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451687, 42.026909, 38.016506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489193, 41.695358, 38.237118>,  <34.511696, 41.496429, 38.369484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489193, 41.695358, 38.237118>,  <34.451687, 42.026909, 38.016506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489193, 41.695358, 38.237118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654513, 0.366113, 0.661493,
		-0.750214, -0.423003, -0.508180,
		0.093762, -0.828872, 0.551525,
		34.517323, 41.446697, 38.402576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794636, 41.826851, 38.306580>,  <34.451687, 42.026909, 38.016506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794636, 41.826851, 38.306580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088104, 41.687962, 38.540218>,  <34.264183, 41.604630, 38.680401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088104, 41.687962, 38.540218>,  <33.794636, 41.826851, 38.306580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088104, 41.687962, 38.540218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427214, 0.432748, 0.793862,
		-0.528414, -0.831965, 0.169154,
		0.733666, -0.347223, 0.584098,
		34.308205, 41.583794, 38.715446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439079, 41.588413, 38.869606>,  <33.794636, 41.826851, 38.306580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439079, 41.588413, 38.869606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813126, 41.642117, 39.000771>,  <34.037556, 41.674339, 39.079472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813126, 41.642117, 39.000771>,  <33.439079, 41.588413, 38.869606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813126, 41.642117, 39.000771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353902, 0.399632, 0.845605,
		-0.017514, -0.906790, 0.421218,
		0.935119, 0.134260, 0.327914,
		34.093662, 41.682396, 39.099144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133377, 40.861481, 39.099319>,  <33.439079, 41.588413, 38.869606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133377, 40.861481, 39.099319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959503, 40.636822, 39.380917>,  <32.855179, 40.502026, 39.549873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959503, 40.636822, 39.380917>,  <33.133377, 40.861481, 39.099319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959503, 40.636822, 39.380917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128277, -0.735123, -0.665687,
		0.891401, -0.379669, 0.247500,
		-0.434684, -0.561645, 0.703992,
		32.829098, 40.468327, 39.592113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405178, 40.142441, 38.949383>,  <33.133377, 40.861481, 39.099319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405178, 40.142441, 38.949383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057003, 40.149563, 39.146164>,  <32.848099, 40.153835, 39.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057003, 40.149563, 39.146164>,  <33.405178, 40.142441, 38.949383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057003, 40.149563, 39.146164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385195, -0.646907, -0.658131,
		0.306531, -0.762361, 0.569951,
		-0.870439, 0.017804, 0.491955,
		32.795872, 40.154903, 39.293751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301155, 39.448471, 39.195412>,  <33.405178, 40.142441, 38.949383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301155, 39.448471, 39.195412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941448, 39.623306, 39.188850>,  <32.725624, 39.728207, 39.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941448, 39.623306, 39.188850>,  <33.301155, 39.448471, 39.195412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941448, 39.623306, 39.188850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356020, -0.753232, -0.553075,
		-0.254103, -0.491520, 0.832970,
		-0.899267, 0.437092, -0.016408,
		32.671669, 39.754433, 39.183929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792294, 38.907944, 39.204288>,  <33.301155, 39.448471, 39.195412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792294, 38.907944, 39.204288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571636, 39.224075, 39.097660>,  <32.439240, 39.413754, 39.033684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571636, 39.224075, 39.097660>,  <32.792294, 38.907944, 39.204288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571636, 39.224075, 39.097660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585081, -0.594446, -0.551646,
		-0.594446, -0.148348, 0.790333,
		0.551646, -0.790333, 0.266571,
		32.406143, 39.461174, 39.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052826, 38.685516, 39.244251>,  <32.792294, 38.907944, 39.204288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052826, 38.685516, 39.244251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038322, 39.007500, 39.007362>,  <32.029621, 39.200691, 38.865227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038322, 39.007500, 39.007362>,  <32.052826, 38.685516, 39.244251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038322, 39.007500, 39.007362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688299, -0.449759, -0.569175,
		-0.724520, 0.386990, 0.570359,
		-0.036259, 0.804957, -0.592225,
		32.027443, 39.248985, 38.829697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381821, 38.951080, 39.255371>,  <32.052826, 38.685516, 39.244251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381821, 38.951080, 39.255371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545856, 39.069031, 38.910149>,  <31.644278, 39.139801, 38.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545856, 39.069031, 38.910149>,  <31.381821, 38.951080, 39.255371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545856, 39.069031, 38.910149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833841, -0.262163, -0.485777,
		-0.369508, 0.918867, 0.138374,
		0.410088, 0.294881, -0.863060,
		31.668882, 39.157494, 38.651230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832304, 39.190407, 38.905029>,  <31.381821, 38.951080, 39.255371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832304, 39.190407, 38.905029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111317, 39.133053, 38.624203>,  <31.278725, 39.098640, 38.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111317, 39.133053, 38.624203>,  <30.832304, 39.190407, 38.905029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111317, 39.133053, 38.624203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708295, -0.286294, -0.645254,
		-0.108480, 0.947353, -0.301255,
		0.697531, -0.143380, -0.702063,
		31.320576, 39.090038, 38.413586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553865, 39.536018, 38.220787>,  <30.832304, 39.190407, 38.905029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553865, 39.536018, 38.220787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821058, 39.248093, 38.145241>,  <30.981373, 39.075336, 38.099915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821058, 39.248093, 38.145241>,  <30.553865, 39.536018, 38.220787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821058, 39.248093, 38.145241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599210, -0.369748, -0.710094,
		0.441305, 0.587498, -0.678304,
		0.667980, -0.719815, -0.188863,
		31.021452, 39.032146, 38.088581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220499, 39.172398, 37.737850>,  <30.553865, 39.536018, 38.220787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220499, 39.172398, 37.737850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519047, 38.913364, 37.799263>,  <30.698175, 38.757946, 37.836109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519047, 38.913364, 37.799263>,  <30.220499, 39.172398, 37.737850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519047, 38.913364, 37.799263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479013, -0.682856, -0.551592,
		0.462041, 0.338147, -0.819862,
		0.746368, -0.647583, 0.153531,
		30.742956, 38.719090, 37.845322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493277, 38.967026, 37.092533>,  <30.220499, 39.172398, 37.737850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493277, 38.967026, 37.092533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557932, 38.676289, 37.359539>,  <30.596725, 38.501846, 37.519741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557932, 38.676289, 37.359539>,  <30.493277, 38.967026, 37.092533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557932, 38.676289, 37.359539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573040, -0.619819, -0.536143,
		0.803429, -0.295850, -0.516696,
		0.161640, -0.726840, 0.667515,
		30.606424, 38.458237, 37.559792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535707, 38.245811, 36.741219>,  <30.493277, 38.967026, 37.092533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535707, 38.245811, 36.741219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459114, 38.133678, 37.117462>,  <30.413158, 38.066399, 37.343208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459114, 38.133678, 37.117462>,  <30.535707, 38.245811, 36.741219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459114, 38.133678, 37.117462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638411, -0.692339, -0.336301,
		0.745496, -0.664893, -0.046391,
		-0.191486, -0.280328, 0.940611,
		30.401669, 38.049580, 37.399647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576311, 37.528011, 36.779984>,  <30.535707, 38.245811, 36.741219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576311, 37.528011, 36.779984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376095, 37.629375, 37.111103>,  <30.255966, 37.690193, 37.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376095, 37.629375, 37.111103>,  <30.576311, 37.528011, 36.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376095, 37.629375, 37.111103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621288, -0.771040, -0.139638,
		0.602878, -0.584194, 0.543375,
		-0.500539, 0.253408, 0.827795,
		30.225933, 37.705399, 37.359440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431389, 36.885391, 37.029900>,  <30.576311, 37.528011, 36.779984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431389, 36.885391, 37.029900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173689, 37.115658, 37.231316>,  <30.019070, 37.253819, 37.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173689, 37.115658, 37.231316>,  <30.431389, 36.885391, 37.029900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173689, 37.115658, 37.231316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734270, -0.649759, -0.196624,
		0.213989, -0.496409, 0.841301,
		-0.644249, 0.575666, 0.503539,
		29.980413, 37.288357, 37.382378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113995, 36.531620, 37.555656>,  <30.431389, 36.885391, 37.029900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113995, 36.531620, 37.555656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862106, 36.833145, 37.480598>,  <29.710974, 37.014061, 37.435562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862106, 36.833145, 37.480598>,  <30.113995, 36.531620, 37.555656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862106, 36.833145, 37.480598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760413, -0.647551, -0.049485,
		-0.158813, 0.111527, 0.980989,
		-0.629722, 0.753816, -0.187646,
		29.673189, 37.059292, 37.424305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660259, 36.662189, 38.054768>,  <30.113995, 36.531620, 37.555656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660259, 36.662189, 38.054768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481369, 36.776867, 37.715878>,  <29.374035, 36.845673, 37.512543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481369, 36.776867, 37.715878>,  <29.660259, 36.662189, 38.054768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481369, 36.776867, 37.715878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786243, -0.577584, 0.219587,
		-0.426391, 0.764332, 0.483722,
		-0.447227, 0.286693, -0.847228,
		29.347200, 36.862873, 37.461708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113680, 36.297943, 38.548580>,  <29.660259, 36.662189, 38.054768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113680, 36.297943, 38.548580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140219, 35.921558, 38.681355>,  <30.156141, 35.695728, 38.761021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140219, 35.921558, 38.681355>,  <30.113680, 36.297943, 38.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140219, 35.921558, 38.681355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410836, 0.328923, 0.850308,
		-0.909292, 0.079957, 0.408405,
		0.066346, -0.940966, 0.331937,
		30.160122, 35.639267, 38.780937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704733, 36.210609, 39.198650>,  <30.113680, 36.297943, 38.548580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704733, 36.210609, 39.198650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013666, 35.960396, 39.154449>,  <30.199026, 35.810268, 39.127930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013666, 35.960396, 39.154449>,  <29.704733, 36.210609, 39.198650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013666, 35.960396, 39.154449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445743, 0.409755, 0.795873,
		-0.452567, -0.663933, 0.595295,
		0.772331, -0.625535, -0.110502,
		30.245365, 35.772736, 39.121300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735197, 35.788609, 39.783054>,  <29.704733, 36.210609, 39.198650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735197, 35.788609, 39.783054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083872, 35.877907, 39.608547>,  <30.293076, 35.931484, 39.503845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083872, 35.877907, 39.608547>,  <29.735197, 35.788609, 39.783054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083872, 35.877907, 39.608547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347860, 0.345194, 0.871685,
		0.345194, -0.911594, 0.223243,
		-0.871685, -0.223243, 0.436265,
		30.345377, 35.944881, 39.477669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169657, 35.588303, 40.168392>,  <29.735197, 35.788609, 39.783054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169657, 35.588303, 40.168392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382208, 35.848495, 39.951317>,  <30.509739, 36.004612, 39.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382208, 35.848495, 39.951317>,  <30.169657, 35.588303, 40.168392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382208, 35.848495, 39.951317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432107, 0.342889, 0.834093,
		0.728642, -0.677720, -0.098873,
		0.531379, 0.650479, -0.542691,
		30.541622, 36.043640, 39.788509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879057, 35.546822, 40.385582>,  <30.169657, 35.588303, 40.168392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879057, 35.546822, 40.385582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820242, 35.898319, 40.203949>,  <30.784952, 36.109219, 40.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820242, 35.898319, 40.203949>,  <30.879057, 35.546822, 40.385582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820242, 35.898319, 40.203949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462106, 0.466921, 0.753951,
		0.874550, -0.098975, -0.474727,
		-0.147038, 0.878742, -0.454083,
		30.776131, 36.161942, 40.067722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413521, 35.809772, 40.472691>,  <30.879057, 35.546822, 40.385582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413521, 35.809772, 40.472691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197006, 36.134144, 40.383789>,  <31.067099, 36.328766, 40.330448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197006, 36.134144, 40.383789>,  <31.413521, 35.809772, 40.472691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197006, 36.134144, 40.383789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564370, 0.546328, 0.618880,
		0.623295, 0.209555, -0.753386,
		-0.541285, 0.810933, -0.222257,
		31.034620, 36.377422, 40.317112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940903, 36.364376, 40.404507>,  <31.413521, 35.809772, 40.472691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940903, 36.364376, 40.404507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583813, 36.533604, 40.466545>,  <31.369558, 36.635139, 40.503769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583813, 36.533604, 40.466545>,  <31.940903, 36.364376, 40.404507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583813, 36.533604, 40.466545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429329, 0.694093, 0.577850,
		0.136816, 0.582450, -0.801270,
		-0.892725, 0.423067, 0.155099,
		31.315994, 36.660522, 40.513073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043205, 37.166317, 40.393593>,  <31.940903, 36.364376, 40.404507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043205, 37.166317, 40.393593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695194, 37.116032, 40.584278>,  <31.486387, 37.085861, 40.698689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695194, 37.116032, 40.584278>,  <32.043205, 37.166317, 40.393593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695194, 37.116032, 40.584278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242240, 0.733159, 0.635451,
		-0.429390, 0.668336, -0.607413,
		-0.870025, -0.125716, 0.476709,
		31.434187, 37.078316, 40.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801447, 37.874943, 40.496414>,  <32.043205, 37.166317, 40.393593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801447, 37.874943, 40.496414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572596, 37.665813, 40.749184>,  <31.435286, 37.540337, 40.900845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572596, 37.665813, 40.749184>,  <31.801447, 37.874943, 40.496414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572596, 37.665813, 40.749184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073969, 0.800232, 0.595112,
		-0.816822, 0.293737, -0.496508,
		-0.572128, -0.522827, 0.631920,
		31.400957, 37.508965, 40.938759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311951, 38.308651, 40.676403>,  <31.801447, 37.874943, 40.496414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311951, 38.308651, 40.676403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345013, 38.023293, 40.954750>,  <31.364851, 37.852077, 41.121758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345013, 38.023293, 40.954750>,  <31.311951, 38.308651, 40.676403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345013, 38.023293, 40.954750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268807, 0.688336, 0.673748,
		-0.959641, 0.131364, 0.248662,
		0.082657, -0.713398, 0.695867,
		31.369810, 37.809273, 41.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021526, 38.662704, 41.215683>,  <31.311951, 38.308651, 40.676403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021526, 38.662704, 41.215683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231960, 38.369041, 41.387375>,  <31.358221, 38.192844, 41.490391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231960, 38.369041, 41.387375>,  <31.021526, 38.662704, 41.215683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231960, 38.369041, 41.387375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204957, 0.599300, 0.773842,
		-0.825364, -0.319134, 0.465755,
		0.526086, -0.734161, 0.429232,
		31.389786, 38.148792, 41.516144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864857, 38.724232, 41.875896>,  <31.021526, 38.662704, 41.215683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864857, 38.724232, 41.875896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204378, 38.513454, 41.893177>,  <31.408091, 38.386990, 41.903545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204378, 38.513454, 41.893177>,  <30.864857, 38.724232, 41.875896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204378, 38.513454, 41.893177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308158, 0.559462, 0.769442,
		-0.429619, -0.639792, 0.637254,
		0.848803, -0.526942, 0.043198,
		31.459019, 38.355373, 41.906136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951965, 38.636890, 42.530785>,  <30.864857, 38.724232, 41.875896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951965, 38.636890, 42.530785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316925, 38.596306, 42.372173>,  <31.535900, 38.571957, 42.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316925, 38.596306, 42.372173>,  <30.951965, 38.636890, 42.530785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316925, 38.596306, 42.372173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396881, 0.456183, 0.796481,
		0.100083, -0.884083, 0.456486,
		0.912397, -0.101457, -0.396532,
		31.590645, 38.565868, 42.253212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303125, 38.432217, 43.050896>,  <30.951965, 38.636890, 42.530785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303125, 38.432217, 43.050896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594721, 38.576351, 42.818092>,  <31.769678, 38.662834, 42.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594721, 38.576351, 42.818092>,  <31.303125, 38.432217, 43.050896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594721, 38.576351, 42.818092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450076, 0.388300, 0.804148,
		0.515761, -0.848161, 0.120885,
		0.728987, 0.360341, -0.582007,
		31.813417, 38.684452, 42.643490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985514, 38.201721, 43.491306>,  <31.303125, 38.432217, 43.050896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985514, 38.201721, 43.491306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058502, 38.495628, 43.229980>,  <32.102295, 38.671970, 43.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058502, 38.495628, 43.229980>,  <31.985514, 38.201721, 43.491306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058502, 38.495628, 43.229980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383083, 0.558833, 0.735495,
		0.905512, -0.384480, -0.179506,
		0.182469, 0.734765, -0.653318,
		32.113243, 38.716057, 43.033985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703259, 38.383175, 43.443951>,  <31.985514, 38.201721, 43.491306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703259, 38.383175, 43.443951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518532, 38.716644, 43.322819>,  <32.407696, 38.916725, 43.250141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518532, 38.716644, 43.322819>,  <32.703259, 38.383175, 43.443951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518532, 38.716644, 43.322819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362197, 0.488905, 0.793590,
		0.809651, 0.256814, -0.527742,
		-0.461820, 0.833678, -0.302825,
		32.379986, 38.966747, 43.231972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151394, 38.860291, 43.504734>,  <32.703259, 38.383175, 43.443951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151394, 38.860291, 43.504734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824242, 39.090439, 43.502781>,  <32.627953, 39.228527, 43.501610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824242, 39.090439, 43.502781>,  <33.151394, 38.860291, 43.504734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824242, 39.090439, 43.502781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391131, 0.562169, 0.728685,
		0.422013, 0.594063, -0.684831,
		-0.817876, 0.575373, -0.004886,
		32.578880, 39.263050, 43.501316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446552, 39.520412, 43.609886>,  <33.151394, 38.860291, 43.504734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446552, 39.520412, 43.609886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068405, 39.582607, 43.724506>,  <32.841518, 39.619923, 43.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068405, 39.582607, 43.724506>,  <33.446552, 39.520412, 43.609886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068405, 39.582607, 43.724506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322581, 0.573355, 0.753130,
		-0.047196, 0.804418, -0.592186,
		-0.945365, 0.155483, 0.286550,
		32.784798, 39.629253, 43.810471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227661, 40.247540, 43.691242>,  <33.446552, 39.520412, 43.609886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227661, 40.247540, 43.691242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968929, 40.058918, 43.930992>,  <32.813690, 39.945744, 44.074841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968929, 40.058918, 43.930992>,  <33.227661, 40.247540, 43.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968929, 40.058918, 43.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262603, 0.600146, 0.755556,
		-0.715995, 0.646114, -0.264362,
		-0.646831, -0.471552, 0.599373,
		32.774879, 39.917454, 44.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069809, 40.787170, 44.145256>,  <33.227661, 40.247540, 43.691242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069809, 40.787170, 44.145256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938950, 40.445755, 44.307465>,  <32.860432, 40.240906, 44.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938950, 40.445755, 44.307465>,  <33.069809, 40.787170, 44.145256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938950, 40.445755, 44.307465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201470, 0.356264, 0.912407,
		-0.923245, 0.380195, 0.055410,
		-0.327152, -0.853538, 0.405517,
		32.840805, 40.189693, 44.429119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688580, 40.993740, 44.766853>,  <33.069809, 40.787170, 44.145256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688580, 40.993740, 44.766853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792786, 40.611946, 44.824947>,  <32.855309, 40.382870, 44.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792786, 40.611946, 44.824947>,  <32.688580, 40.993740, 44.766853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792786, 40.611946, 44.824947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318917, 0.227066, 0.920181,
		-0.911275, -0.193404, 0.363555,
		0.260518, -0.954482, 0.145240,
		32.870941, 40.325600, 44.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270622, 40.794670, 45.345089>,  <32.688580, 40.993740, 44.766853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270622, 40.794670, 45.345089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554337, 40.513100, 45.330097>,  <32.724564, 40.344158, 45.321102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554337, 40.513100, 45.330097>,  <32.270622, 40.794670, 45.345089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554337, 40.513100, 45.330097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235837, 0.186853, 0.953660,
		-0.664304, -0.685253, 0.298544,
		0.709282, -0.703928, -0.037481,
		32.767120, 40.301922, 45.318851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191692, 40.367161, 45.951244>,  <32.270622, 40.794670, 45.345089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191692, 40.367161, 45.951244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568920, 40.301205, 45.835701>,  <32.795258, 40.261631, 45.766376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568920, 40.301205, 45.835701>,  <32.191692, 40.367161, 45.951244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568920, 40.301205, 45.835701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305900, 0.089014, 0.947893,
		-0.130589, -0.982287, 0.134387,
		0.943065, -0.164894, -0.288858,
		32.851841, 40.251736, 45.749043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481308, 39.848156, 46.327240>,  <32.191692, 40.367161, 45.951244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481308, 39.848156, 46.327240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807327, 40.027592, 46.180561>,  <33.002937, 40.135254, 46.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807327, 40.027592, 46.180561>,  <32.481308, 39.848156, 46.327240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807327, 40.027592, 46.180561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355065, 0.113408, 0.927937,
		0.457847, -0.886515, -0.066844,
		0.815049, 0.448587, -0.366694,
		33.051842, 40.162167, 46.070553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981670, 39.609264, 46.771973>,  <32.481308, 39.848156, 46.327240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981670, 39.609264, 46.771973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129143, 39.942524, 46.607079>,  <33.217628, 40.142479, 46.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129143, 39.942524, 46.607079>,  <32.981670, 39.609264, 46.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129143, 39.942524, 46.607079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383198, 0.267816, 0.883988,
		0.846896, -0.483878, -0.220522,
		0.368683, 0.833148, -0.412233,
		33.239746, 40.192467, 46.483410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544178, 39.683372, 47.180332>,  <32.981670, 39.609264, 46.771973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544178, 39.683372, 47.180332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483810, 40.038223, 47.005871>,  <33.447590, 40.251133, 46.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483810, 40.038223, 47.005871>,  <33.544178, 39.683372, 47.180332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483810, 40.038223, 47.005871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401381, 0.458195, 0.793064,
		0.903391, -0.055372, -0.425228,
		-0.150924, 0.887125, -0.436154,
		33.438534, 40.304359, 46.875023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170742, 40.057819, 47.124592>,  <33.544178, 39.683372, 47.180332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170742, 40.057819, 47.124592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879555, 40.332027, 47.129059>,  <33.704842, 40.496552, 47.131737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879555, 40.332027, 47.129059>,  <34.170742, 40.057819, 47.124592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879555, 40.332027, 47.129059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445853, 0.460967, 0.767283,
		0.520842, 0.563536, -0.641211,
		-0.727969, 0.685519, 0.011163,
		33.661163, 40.537682, 47.132408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858860, 40.010002, 46.692162>,  <34.170742, 40.057819, 47.124592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858860, 40.010002, 46.692162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244213, 39.923954, 46.756191>,  <35.475426, 39.872326, 46.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244213, 39.923954, 46.756191>,  <34.858860, 40.010002, 46.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244213, 39.923954, 46.756191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026354, -0.670038, -0.741859,
		0.266847, 0.710472, -0.651169,
		0.963378, -0.215124, 0.160074,
		35.533226, 39.859417, 46.804214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191292, 40.190525, 46.092537>,  <34.858860, 40.010002, 46.692162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191292, 40.190525, 46.092537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408611, 39.912640, 46.281086>,  <35.539001, 39.745907, 46.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408611, 39.912640, 46.281086>,  <35.191292, 40.190525, 46.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408611, 39.912640, 46.281086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043315, -0.537523, -0.842136,
		0.838421, 0.477950, -0.261944,
		0.543299, -0.694718, 0.471373,
		35.571602, 39.704224, 46.422497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839680, 40.022903, 45.684280>,  <35.191292, 40.190525, 46.092537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839680, 40.022903, 45.684280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726364, 39.698658, 45.889282>,  <35.658375, 39.504112, 46.012283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726364, 39.698658, 45.889282>,  <35.839680, 40.022903, 45.684280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726364, 39.698658, 45.889282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159494, -0.566772, -0.808289,
		0.945679, -0.147241, 0.289849,
		-0.283291, -0.810611, 0.512500,
		35.641376, 39.455475, 46.043034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273861, 39.453377, 45.413994>,  <35.839680, 40.022903, 45.684280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273861, 39.453377, 45.413994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996475, 39.258369, 45.626194>,  <35.830044, 39.141365, 45.753513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996475, 39.258369, 45.626194>,  <36.273861, 39.453377, 45.413994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996475, 39.258369, 45.626194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107106, -0.797879, -0.593227,
		0.712489, -0.354559, 0.605514,
		-0.693460, -0.487522, 0.530505,
		35.788437, 39.112114, 45.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476292, 38.826698, 45.526756>,  <36.273861, 39.453377, 45.413994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476292, 38.826698, 45.526756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 38.768440, 45.602295>,  <35.854759, 38.733486, 45.647617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 38.768440, 45.602295>,  <36.476292, 38.826698, 45.526756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087833, 38.768440, 45.602295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020058, -0.838943, -0.543850,
		0.237642, -0.524369, 0.817657,
		-0.971146, -0.145642, 0.188850,
		35.796490, 38.724747, 45.658951>
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
