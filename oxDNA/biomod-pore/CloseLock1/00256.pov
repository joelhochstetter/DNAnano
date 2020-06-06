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
	<24.857849, 34.762421, 34.678062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752672, 34.928688, 35.026333>,  <24.689566, 35.028450, 35.235294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752672, 34.928688, 35.026333>,  <24.857849, 34.762421, 34.678062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752672, 34.928688, 35.026333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949211, -0.050179, 0.310614,
		0.172804, 0.908129, -0.381367,
		-0.262941, 0.415673, 0.870677,
		24.673790, 35.053391, 35.287537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428679, 35.064030, 34.777489>,  <24.857849, 34.762421, 34.678062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428679, 35.064030, 34.777489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251682, 34.977398, 35.125580>,  <25.145485, 34.925419, 35.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251682, 34.977398, 35.125580>,  <25.428679, 35.064030, 34.777489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251682, 34.977398, 35.125580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871617, -0.332104, 0.360543,
		0.210923, 0.918043, 0.335723,
		-0.442489, -0.216575, 0.870229,
		25.118937, 34.912426, 35.386650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752239, 35.499767, 35.434601>,  <25.428679, 35.064030, 34.777489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752239, 35.499767, 35.434601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612007, 35.125786, 35.456310>,  <25.527868, 34.901398, 35.469337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612007, 35.125786, 35.456310>,  <25.752239, 35.499767, 35.434601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612007, 35.125786, 35.456310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857641, -0.297230, 0.419651,
		-0.376225, 0.193669, 0.906061,
		-0.350582, -0.934958, 0.054273,
		25.506832, 34.845299, 35.472591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160751, 35.350510, 35.966179>,  <25.752239, 35.499767, 35.434601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160751, 35.350510, 35.966179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020819, 35.012970, 35.803429>,  <25.936859, 34.810448, 35.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020819, 35.012970, 35.803429>,  <26.160751, 35.350510, 35.966179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020819, 35.012970, 35.803429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868522, -0.454927, 0.196752,
		-0.351126, -0.284548, 0.892045,
		-0.349830, -0.843845, -0.406873,
		25.915871, 34.759815, 35.681366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127569, 34.698425, 36.510715>,  <26.160751, 35.350510, 35.966179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127569, 34.698425, 36.510715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204693, 34.646198, 36.121712>,  <26.250967, 34.614864, 35.888309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204693, 34.646198, 36.121712>,  <26.127569, 34.698425, 36.510715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204693, 34.646198, 36.121712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871478, -0.432694, 0.230871,
		-0.450943, -0.892037, 0.030355,
		0.192811, -0.130563, -0.972511,
		26.262537, 34.607029, 35.829960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095547, 34.005302, 36.246410>,  <26.127569, 34.698425, 36.510715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095547, 34.005302, 36.246410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350309, 34.202862, 36.009628>,  <26.503168, 34.321396, 35.867558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350309, 34.202862, 36.009628>,  <26.095547, 34.005302, 36.246410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350309, 34.202862, 36.009628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726863, -0.640608, 0.247572,
		-0.256939, -0.587954, -0.767003,
		0.636909, 0.493895, -0.591959,
		26.541382, 34.351028, 35.832039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514091, 33.517323, 35.929840>,  <26.095547, 34.005302, 36.246410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514091, 33.517323, 35.929840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734369, 33.850933, 35.943287>,  <26.866535, 34.051102, 35.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734369, 33.850933, 35.943287>,  <26.514091, 33.517323, 35.929840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734369, 33.850933, 35.943287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826340, -0.550420, 0.119161,
		0.117887, -0.037842, -0.992306,
		0.550694, 0.834030, 0.033617,
		26.899578, 34.101143, 35.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219435, 33.427132, 35.521404>,  <26.514091, 33.517323, 35.929840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219435, 33.427132, 35.521404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279520, 33.710609, 35.797138>,  <27.315571, 33.880695, 35.962578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279520, 33.710609, 35.797138>,  <27.219435, 33.427132, 35.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279520, 33.710609, 35.797138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818342, -0.480368, 0.315537,
		0.554755, 0.516714, -0.652115,
		0.150212, 0.708698, 0.689335,
		27.324583, 33.923218, 36.003941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857616, 33.731209, 35.365345>,  <27.219435, 33.427132, 35.521404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857616, 33.731209, 35.365345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790386, 33.820320, 35.749454>,  <27.750048, 33.873787, 35.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790386, 33.820320, 35.749454>,  <27.857616, 33.731209, 35.365345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790386, 33.820320, 35.749454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929922, -0.287407, 0.229440,
		0.327103, 0.931540, -0.158860,
		-0.168076, 0.222778, 0.960271,
		27.739964, 33.887154, 36.037537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413641, 34.202271, 35.612762>,  <27.857616, 33.731209, 35.365345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413641, 34.202271, 35.612762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252787, 34.025688, 35.933613>,  <28.156275, 33.919739, 36.126122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252787, 34.025688, 35.933613>,  <28.413641, 34.202271, 35.612762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252787, 34.025688, 35.933613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914613, -0.153421, 0.374092,
		-0.042082, 0.884069, 0.465458,
		-0.402134, -0.441457, 0.802125,
		28.132147, 33.893250, 36.174252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854103, 34.379230, 36.082378>,  <28.413641, 34.202271, 35.612762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854103, 34.379230, 36.082378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656328, 34.085285, 36.268066>,  <28.537664, 33.908916, 36.379478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656328, 34.085285, 36.268066>,  <28.854103, 34.379230, 36.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656328, 34.085285, 36.268066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841761, -0.271648, 0.466525,
		-0.216729, 0.621431, 0.752896,
		-0.494435, -0.734868, 0.464223,
		28.507998, 33.864826, 36.407333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048796, 34.507957, 36.804115>,  <28.854103, 34.379230, 36.082378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048796, 34.507957, 36.804115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939064, 34.125259, 36.765358>,  <28.873224, 33.895641, 36.742104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939064, 34.125259, 36.765358>,  <29.048796, 34.507957, 36.804115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939064, 34.125259, 36.765358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900459, -0.290935, 0.323313,
		-0.337516, 0.001446, 0.941319,
		-0.274330, -0.956742, -0.096893,
		28.856766, 33.838238, 36.736290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113655, 34.160645, 37.510769>,  <29.048796, 34.507957, 36.804115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113655, 34.160645, 37.510769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126184, 33.880085, 37.225937>,  <29.133701, 33.711750, 37.055038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126184, 33.880085, 37.225937>,  <29.113655, 34.160645, 37.510769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126184, 33.880085, 37.225937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937035, -0.227320, 0.265125,
		-0.347828, -0.675553, 0.650111,
		0.031323, -0.701395, -0.712085,
		29.135582, 33.669666, 37.012310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534267, 33.560081, 37.845692>,  <29.113655, 34.160645, 37.510769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534267, 33.560081, 37.845692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537380, 33.481735, 37.453453>,  <29.539248, 33.434727, 37.218109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537380, 33.481735, 37.453453>,  <29.534267, 33.560081, 37.845692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537380, 33.481735, 37.453453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930246, -0.358341, 0.078958,
		-0.366854, -0.912814, 0.179412,
		0.007784, -0.195863, -0.980600,
		29.539715, 33.422977, 37.159271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954926, 33.023575, 37.770504>,  <29.534267, 33.560081, 37.845692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954926, 33.023575, 37.770504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996332, 33.158855, 37.396358>,  <30.021175, 33.240025, 37.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996332, 33.158855, 37.396358>,  <29.954926, 33.023575, 37.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996332, 33.158855, 37.396358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992019, -0.103176, 0.072481,
		-0.071994, -0.935401, -0.346183,
		0.103517, 0.338201, -0.935363,
		30.027388, 33.260315, 37.115749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593111, 32.761227, 37.538380>,  <29.954926, 33.023575, 37.770504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593111, 32.761227, 37.538380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526268, 33.081898, 37.308807>,  <30.486162, 33.274300, 37.171066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526268, 33.081898, 37.308807>,  <30.593111, 32.761227, 37.538380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526268, 33.081898, 37.308807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985532, 0.119101, -0.120593,
		-0.028321, -0.585777, -0.809977,
		-0.167110, 0.801673, -0.573929,
		30.476135, 33.322399, 37.136627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068310, 32.683502, 36.969421>,  <30.593111, 32.761227, 37.538380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068310, 32.683502, 36.969421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971157, 33.071163, 36.986156>,  <30.912865, 33.303761, 36.996197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971157, 33.071163, 36.986156>,  <31.068310, 32.683502, 36.969421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971157, 33.071163, 36.986156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969901, 0.243387, -0.007360,
		-0.017316, 0.038793, -0.999097,
		-0.242882, 0.969153, 0.041840,
		30.898293, 33.361908, 36.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403053, 33.043686, 36.406166>,  <31.068310, 32.683502, 36.969421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403053, 33.043686, 36.406166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329315, 33.316223, 36.689514>,  <31.285072, 33.479744, 36.859524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329315, 33.316223, 36.689514>,  <31.403053, 33.043686, 36.406166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329315, 33.316223, 36.689514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948125, 0.313192, -0.054501,
		-0.258990, 0.661580, -0.703730,
		-0.184345, 0.681340, 0.708374,
		31.274012, 33.520626, 36.902027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673944, 33.656208, 36.132576>,  <31.403053, 33.043686, 36.406166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673944, 33.656208, 36.132576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637949, 33.771103, 36.514027>,  <31.616352, 33.840038, 36.742897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637949, 33.771103, 36.514027>,  <31.673944, 33.656208, 36.132576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637949, 33.771103, 36.514027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967268, 0.253315, 0.014974,
		-0.237266, 0.923757, -0.300630,
		-0.089986, 0.287237, 0.953623,
		31.610952, 33.857273, 36.800114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923290, 34.376835, 36.296249>,  <31.673944, 33.656208, 36.132576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923290, 34.376835, 36.296249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946936, 34.222210, 36.664398>,  <31.961123, 34.129436, 36.885288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946936, 34.222210, 36.664398>,  <31.923290, 34.376835, 36.296249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946936, 34.222210, 36.664398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975486, 0.218149, 0.028968,
		-0.211975, 0.896094, 0.389978,
		0.059115, -0.386558, 0.920368,
		31.964670, 34.106243, 36.940510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445702, 34.711628, 36.629055>,  <31.923290, 34.376835, 36.296249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445702, 34.711628, 36.629055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394062, 34.400890, 36.875580>,  <32.363079, 34.214447, 37.023495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394062, 34.400890, 36.875580>,  <32.445702, 34.711628, 36.629055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394062, 34.400890, 36.875580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964817, 0.045154, 0.259015,
		-0.229044, 0.628068, 0.743687,
		-0.129098, -0.776848, 0.616313,
		32.355331, 34.167835, 37.060474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575287, 34.995560, 37.194901>,  <32.445702, 34.711628, 36.629055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575287, 34.995560, 37.194901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619328, 34.599636, 37.231026>,  <32.645752, 34.362083, 37.252701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619328, 34.599636, 37.231026>,  <32.575287, 34.995560, 37.194901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619328, 34.599636, 37.231026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977473, 0.124298, 0.170575,
		-0.180062, 0.069500, 0.981197,
		0.110106, -0.989808, 0.090315,
		32.652359, 34.302692, 37.258121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913857, 34.893764, 37.809776>,  <32.575287, 34.995560, 37.194901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913857, 34.893764, 37.809776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964851, 34.549873, 37.611938>,  <32.995449, 34.343540, 37.493237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964851, 34.549873, 37.611938>,  <32.913857, 34.893764, 37.809776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964851, 34.549873, 37.611938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942153, -0.050885, 0.331297,
		-0.309991, -0.508217, 0.803506,
		0.127484, -0.859725, -0.494592,
		33.003098, 34.291958, 37.463562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276146, 34.563023, 38.284241>,  <32.913857, 34.893764, 37.809776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276146, 34.563023, 38.284241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360115, 34.403774, 37.927044>,  <33.410496, 34.308228, 37.712727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360115, 34.403774, 37.927044>,  <33.276146, 34.563023, 38.284241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360115, 34.403774, 37.927044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973168, -0.002931, 0.230077,
		-0.094216, -0.917329, 0.386820,
		0.209923, -0.398118, -0.892992,
		33.423092, 34.284340, 37.659145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848255, 34.065399, 38.360390>,  <33.276146, 34.563023, 38.284241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848255, 34.065399, 38.360390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839893, 34.172749, 37.975155>,  <33.834877, 34.237160, 37.744015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839893, 34.172749, 37.975155>,  <33.848255, 34.065399, 38.360390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839893, 34.172749, 37.975155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985192, 0.169497, 0.025851,
		0.170178, -0.948286, -0.267941,
		-0.020902, 0.268373, -0.963088,
		33.833622, 34.253262, 37.686230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226486, 33.659637, 37.855591>,  <33.848255, 34.065399, 38.360390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226486, 33.659637, 37.855591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213669, 34.027828, 37.699799>,  <34.205978, 34.248741, 37.606323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213669, 34.027828, 37.699799>,  <34.226486, 33.659637, 37.855591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213669, 34.027828, 37.699799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999414, 0.034182, -0.001448,
		0.011980, -0.389297, -0.921034,
		-0.032047, 0.920478, -0.389479,
		34.204056, 34.303970, 37.582954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674843, 33.641712, 37.170769>,  <34.226486, 33.659637, 37.855591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674843, 33.641712, 37.170769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640907, 34.012856, 37.316032>,  <34.620544, 34.235542, 37.403191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640907, 34.012856, 37.316032>,  <34.674843, 33.641712, 37.170769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640907, 34.012856, 37.316032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989422, 0.121495, -0.079266,
		-0.117669, 0.352593, -0.928349,
		-0.084841, 0.927856, 0.363159,
		34.615456, 34.291214, 37.424980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159843, 34.142891, 36.790699>,  <34.674843, 33.641712, 37.170769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159843, 34.142891, 36.790699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091393, 34.331673, 37.136642>,  <35.050323, 34.444942, 37.344208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091393, 34.331673, 37.136642>,  <35.159843, 34.142891, 36.790699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091393, 34.331673, 37.136642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921103, 0.388193, -0.029585,
		-0.349693, 0.791558, -0.501150,
		-0.171124, 0.471956, 0.864855,
		35.040054, 34.473259, 37.396099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309700, 34.912354, 36.829662>,  <35.159843, 34.142891, 36.790699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309700, 34.912354, 36.829662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391476, 34.720276, 37.170864>,  <35.440540, 34.605030, 37.375584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391476, 34.720276, 37.170864>,  <35.309700, 34.912354, 36.829662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391476, 34.720276, 37.170864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921536, 0.388287, -0.002280,
		-0.330115, 0.786539, 0.521901,
		0.204441, -0.480198, 0.853003,
		35.452808, 34.576218, 37.426765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756470, 35.246239, 37.366676>,  <35.309700, 34.912354, 36.829662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756470, 35.246239, 37.366676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799263, 34.855431, 37.440418>,  <35.824940, 34.620945, 37.484661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799263, 34.855431, 37.440418>,  <35.756470, 35.246239, 37.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799263, 34.855431, 37.440418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993805, 0.099470, -0.049580,
		0.030103, 0.188513, 0.981609,
		0.106987, -0.977020, 0.184351,
		35.831360, 34.562325, 37.495724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124283, 35.168175, 37.974480>,  <35.756470, 35.246239, 37.366676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124283, 35.168175, 37.974480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163452, 34.837189, 37.753315>,  <36.186954, 34.638596, 37.620617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163452, 34.837189, 37.753315>,  <36.124283, 35.168175, 37.974480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163452, 34.837189, 37.753315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978553, 0.181232, -0.097922,
		0.181232, -0.531463, 0.827467,
		0.097922, -0.827467, -0.552910,
		36.192829, 34.588947, 37.587440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775291, 35.250748, 37.727871>,  <36.124283, 35.168175, 37.974480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775291, 35.250748, 37.727871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010101, 35.559464, 37.825634>,  <37.150990, 35.744694, 37.884293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010101, 35.559464, 37.825634>,  <36.775291, 35.250748, 37.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010101, 35.559464, 37.825634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421009, -0.033175, -0.906450,
		-0.691483, 0.635008, -0.344407,
		0.587029, 0.771793, 0.244404,
		37.186211, 35.791000, 37.898956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811642, 35.621567, 37.024151>,  <36.775291, 35.250748, 37.727871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811642, 35.621567, 37.024151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135464, 35.637054, 37.258457>,  <37.329758, 35.646347, 37.399040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135464, 35.637054, 37.258457>,  <36.811642, 35.621567, 37.024151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135464, 35.637054, 37.258457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586875, -0.077146, -0.805994,
		0.013984, 0.996268, -0.085176,
		0.809557, 0.038717, 0.585763,
		37.378330, 35.648670, 37.434185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292355, 36.231014, 36.978832>,  <36.811642, 35.621567, 37.024151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292355, 36.231014, 36.978832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493649, 35.903309, 37.088783>,  <37.614426, 35.706684, 37.154755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493649, 35.903309, 37.088783>,  <37.292355, 36.231014, 36.978832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493649, 35.903309, 37.088783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684814, 0.184081, -0.705085,
		0.527052, 0.543064, 0.653680,
		0.503236, -0.819265, 0.274877,
		37.644619, 35.657528, 37.171246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947308, 36.894344, 36.760010>,  <37.292355, 36.231014, 36.978832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947308, 36.894344, 36.760010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999401, 37.268917, 36.629696>,  <37.030659, 37.493660, 36.551510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999401, 37.268917, 36.629696>,  <36.947308, 36.894344, 36.760010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999401, 37.268917, 36.629696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964629, 0.195628, 0.176692,
		0.229192, 0.291249, 0.928787,
		0.130235, 0.936431, -0.325784,
		37.038471, 37.549847, 36.531960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729733, 37.446011, 37.339520>,  <36.947308, 36.894344, 36.760010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729733, 37.446011, 37.339520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694603, 37.523712, 36.948715>,  <36.673523, 37.570332, 36.714233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694603, 37.523712, 36.948715>,  <36.729733, 37.446011, 37.339520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694603, 37.523712, 36.948715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995518, 0.017431, 0.092955,
		0.035087, 0.980796, 0.191852,
		-0.087826, 0.194254, -0.977012,
		36.668255, 37.581989, 36.655613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422836, 38.133347, 37.209183>,  <36.729733, 37.446011, 37.339520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422836, 38.133347, 37.209183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 37.879292, 36.913441>,  <36.279800, 37.726856, 36.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333439, 37.879292, 36.913441>,  <36.422836, 38.133347, 37.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333439, 37.879292, 36.913441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974360, 0.125392, 0.186816,
		-0.025945, 0.762149, -0.646881,
		-0.223495, -0.635142, -0.739354,
		36.266392, 37.688747, 36.691635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657516, 38.366920, 37.002327>,  <36.422836, 38.133347, 37.209183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657516, 38.366920, 37.002327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718426, 38.015896, 36.820465>,  <35.754971, 37.805283, 36.711349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718426, 38.015896, 36.820465>,  <35.657516, 38.366920, 37.002327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718426, 38.015896, 36.820465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987934, -0.148306, -0.044615,
		-0.028275, 0.455958, -0.889552,
		0.152269, -0.877558, -0.454650,
		35.764107, 37.752628, 36.684071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207993, 38.396358, 36.335629>,  <35.657516, 38.366920, 37.002327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207993, 38.396358, 36.335629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292076, 38.006172, 36.361767>,  <35.342525, 37.772060, 36.377449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292076, 38.006172, 36.361767>,  <35.207993, 38.396358, 36.335629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292076, 38.006172, 36.361767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977538, -0.208678, 0.029553,
		-0.015191, -0.070092, -0.997425,
		0.210212, -0.975470, 0.065347,
		35.355141, 37.713531, 36.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829342, 38.051338, 35.758865>,  <35.207993, 38.396358, 36.335629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829342, 38.051338, 35.758865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907009, 37.769119, 36.031483>,  <34.953609, 37.599789, 36.195053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907009, 37.769119, 36.031483>,  <34.829342, 38.051338, 35.758865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907009, 37.769119, 36.031483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922845, -0.366976, -0.116986,
		0.332650, -0.606246, -0.722364,
		0.194169, -0.705545, 0.681546,
		34.965260, 37.557457, 36.235947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681450, 37.441238, 35.489285>,  <34.829342, 38.051338, 35.758865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681450, 37.441238, 35.489285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652897, 37.381641, 35.883789>,  <34.635765, 37.345882, 36.120491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652897, 37.381641, 35.883789>,  <34.681450, 37.441238, 35.489285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652897, 37.381641, 35.883789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949104, -0.293954, -0.113101,
		0.306766, -0.944135, -0.120431,
		-0.071381, -0.148998, 0.986258,
		34.631481, 37.336945, 36.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347797, 36.784466, 35.498631>,  <34.681450, 37.441238, 35.489285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347797, 36.784466, 35.498631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315235, 36.973869, 35.849438>,  <34.295700, 37.087513, 36.059921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315235, 36.973869, 35.849438>,  <34.347797, 36.784466, 35.498631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315235, 36.973869, 35.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954996, -0.288875, 0.067327,
		0.285229, -0.832069, 0.475715,
		-0.081401, 0.473510, 0.877019,
		34.290813, 37.115921, 36.112545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024960, 36.321571, 35.963379>,  <34.347797, 36.784466, 35.498631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024960, 36.321571, 35.963379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956642, 36.697063, 36.083122>,  <33.915653, 36.922359, 36.154968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956642, 36.697063, 36.083122>,  <34.024960, 36.321571, 35.963379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956642, 36.697063, 36.083122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985306, -0.163240, -0.050256,
		0.001691, -0.303547, 0.952815,
		-0.170792, 0.938729, 0.299362,
		33.905403, 36.978683, 36.172932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419823, 36.222363, 36.378448>,  <34.024960, 36.321571, 35.963379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419823, 36.222363, 36.378448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431400, 36.621387, 36.353058>,  <33.438347, 36.860802, 36.337822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431400, 36.621387, 36.353058>,  <33.419823, 36.222363, 36.378448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431400, 36.621387, 36.353058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985665, 0.017925, -0.167762,
		-0.166216, 0.067421, 0.983782,
		0.028945, 0.997564, -0.063475,
		33.440083, 36.920658, 36.334015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009930, 36.512531, 36.898022>,  <33.419823, 36.222363, 36.378448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009930, 36.512531, 36.898022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039364, 36.801964, 36.623497>,  <33.057026, 36.975624, 36.458782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039364, 36.801964, 36.623497>,  <33.009930, 36.512531, 36.898022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039364, 36.801964, 36.623497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994471, 0.104937, 0.004005,
		0.074917, 0.682218, 0.727300,
		0.073589, 0.723579, -0.686307,
		33.061440, 37.019039, 36.417606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454594, 36.938198, 37.116734>,  <33.009930, 36.512531, 36.898022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454594, 36.938198, 37.116734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554806, 37.025673, 36.739498>,  <32.614933, 37.078156, 36.513157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554806, 37.025673, 36.739498>,  <32.454594, 36.938198, 37.116734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554806, 37.025673, 36.739498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963592, 0.150311, -0.221125,
		0.093400, 0.964150, 0.248379,
		0.250532, 0.218683, -0.943086,
		32.629967, 37.091278, 36.456573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265167, 37.693062, 36.948162>,  <32.454594, 36.938198, 37.116734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265167, 37.693062, 36.948162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243320, 37.463200, 36.621532>,  <32.230213, 37.325283, 36.425556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243320, 37.463200, 36.621532>,  <32.265167, 37.693062, 36.948162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243320, 37.463200, 36.621532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929081, 0.328859, -0.169294,
		0.365823, 0.749413, -0.551863,
		-0.054614, -0.574657, -0.816570,
		32.226936, 37.290802, 36.376560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860569, 38.072533, 36.431183>,  <32.265167, 37.693062, 36.948162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860569, 38.072533, 36.431183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866678, 37.699203, 36.287697>,  <31.870344, 37.475204, 36.201607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866678, 37.699203, 36.287697>,  <31.860569, 38.072533, 36.431183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866678, 37.699203, 36.287697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994696, 0.022312, -0.100404,
		0.101712, 0.358343, -0.928033,
		0.015273, -0.933323, -0.358712,
		31.871260, 37.419205, 36.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320778, 37.919258, 35.950733>,  <31.860569, 38.072533, 36.431183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320778, 37.919258, 35.950733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425354, 37.533318, 35.961433>,  <31.488100, 37.301754, 35.967854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425354, 37.533318, 35.961433>,  <31.320778, 37.919258, 35.950733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425354, 37.533318, 35.961433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955531, -0.262635, -0.134100,
		0.136411, 0.009499, -0.990607,
		0.261442, -0.964848, 0.026750,
		31.503786, 37.243862, 35.969460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097729, 37.572632, 35.390648>,  <31.320778, 37.919258, 35.950733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097729, 37.572632, 35.390648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143503, 37.268490, 35.646389>,  <31.170967, 37.086006, 35.799831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143503, 37.268490, 35.646389>,  <31.097729, 37.572632, 35.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143503, 37.268490, 35.646389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970797, -0.222188, -0.090478,
		0.210851, -0.610324, -0.763575,
		0.114436, -0.760353, 0.639349,
		31.177834, 37.040382, 35.838192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579149, 37.076183, 35.276455>,  <31.097729, 37.572632, 35.390648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579149, 37.076183, 35.276455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670692, 36.935329, 35.639469>,  <30.725618, 36.850819, 35.857277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670692, 36.935329, 35.639469>,  <30.579149, 37.076183, 35.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670692, 36.935329, 35.639469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923570, -0.373171, 0.088105,
		0.307643, -0.858338, -0.410624,
		0.228857, -0.352135, 0.907538,
		30.739349, 36.829689, 35.911732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404837, 36.416149, 35.328476>,  <30.579149, 37.076183, 35.276455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404837, 36.416149, 35.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412090, 36.557945, 35.702431>,  <30.416443, 36.643021, 35.926804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412090, 36.557945, 35.702431>,  <30.404837, 36.416149, 35.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412090, 36.557945, 35.702431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962680, -0.246343, 0.112079,
		0.270033, -0.902028, 0.336791,
		0.018132, 0.354487, 0.934885,
		30.417530, 36.664291, 35.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098770, 35.878349, 35.659794>,  <30.404837, 36.416149, 35.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098770, 35.878349, 35.659794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095737, 36.163532, 35.940258>,  <30.093918, 36.334644, 36.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095737, 36.163532, 35.940258>,  <30.098770, 35.878349, 35.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095737, 36.163532, 35.940258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970783, -0.173424, 0.165843,
		0.239838, -0.679421, 0.693444,
		-0.007583, 0.712959, 0.701165,
		30.093462, 36.377419, 36.150608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830626, 35.573318, 36.350876>,  <30.098770, 35.878349, 35.659794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830626, 35.573318, 36.350876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787582, 35.969658, 36.383484>,  <29.761757, 36.207462, 36.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787582, 35.969658, 36.383484>,  <29.830626, 35.573318, 36.350876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787582, 35.969658, 36.383484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979180, -0.119822, 0.163858,
		0.172126, -0.062190, 0.983110,
		-0.107608, 0.990846, 0.081520,
		29.755301, 36.266911, 36.407940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510881, 35.755680, 37.093197>,  <29.830626, 35.573318, 36.350876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510881, 35.755680, 37.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426476, 36.077995, 36.871861>,  <29.375832, 36.271385, 36.739059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426476, 36.077995, 36.871861>,  <29.510881, 35.755680, 37.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426476, 36.077995, 36.871861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965966, -0.085258, 0.244216,
		0.149608, 0.586039, 0.796351,
		-0.211015, 0.805785, -0.553338,
		29.363171, 36.319733, 36.705860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162079, 36.397842, 37.510372>,  <29.510881, 35.755680, 37.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162079, 36.397842, 37.510372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060131, 36.440399, 37.125931>,  <28.998962, 36.465931, 36.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060131, 36.440399, 37.125931>,  <29.162079, 36.397842, 37.510372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060131, 36.440399, 37.125931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965603, 0.024929, 0.258823,
		0.051495, 0.994012, 0.096376,
		-0.254871, 0.106389, -0.961105,
		28.983669, 36.472317, 36.837601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609774, 36.942055, 37.500431>,  <29.162079, 36.397842, 37.510372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609774, 36.942055, 37.500431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562164, 36.714844, 37.174690>,  <28.533600, 36.578518, 36.979244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562164, 36.714844, 37.174690>,  <28.609774, 36.942055, 37.500431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562164, 36.714844, 37.174690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988394, -0.010195, 0.151570,
		-0.094399, 0.822945, -0.560223,
		-0.119022, -0.568029, -0.814357,
		28.526457, 36.544434, 36.930382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615602, 37.147690, 38.270813>,  <28.609774, 36.942055, 37.500431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615602, 37.147690, 38.270813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626411, 37.547531, 38.273849>,  <28.632896, 37.787437, 38.275673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626411, 37.547531, 38.273849>,  <28.615602, 37.147690, 38.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626411, 37.547531, 38.273849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685112, -0.024052, 0.728041,
		0.727937, -0.014470, -0.685492,
		0.027023, 0.999606, 0.007595,
		28.634518, 37.847412, 38.276127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246403, 37.290165, 38.630249>,  <28.615602, 37.147690, 38.270813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246403, 37.290165, 38.630249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050066, 37.631699, 38.699585>,  <28.932264, 37.836617, 38.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050066, 37.631699, 38.699585>,  <29.246403, 37.290165, 38.630249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050066, 37.631699, 38.699585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481043, 0.099711, 0.871008,
		0.726409, 0.510913, -0.459672,
		-0.490844, 0.853830, 0.173340,
		28.902813, 37.887848, 38.751587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884758, 36.853809, 38.598705>,  <29.246403, 37.290165, 38.630249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884758, 36.853809, 38.598705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044168, 37.085014, 38.313869>,  <30.139814, 37.223740, 38.142967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044168, 37.085014, 38.313869>,  <29.884758, 36.853809, 38.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044168, 37.085014, 38.313869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149395, 0.725132, 0.672209,
		0.904909, -0.374274, 0.202630,
		0.398524, 0.578016, -0.712093,
		30.163727, 37.258419, 38.100243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523218, 37.086014, 38.910191>,  <29.884758, 36.853809, 38.598705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523218, 37.086014, 38.910191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370476, 37.326202, 38.629158>,  <30.278830, 37.470314, 38.460537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370476, 37.326202, 38.629158>,  <30.523218, 37.086014, 38.910191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370476, 37.326202, 38.629158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240191, 0.798544, 0.551938,
		0.892464, 0.042008, -0.449158,
		-0.381858, 0.600469, -0.702582,
		30.255919, 37.506344, 38.418385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943567, 37.594589, 38.596783>,  <30.523218, 37.086014, 38.910191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943567, 37.594589, 38.596783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564991, 37.720627, 38.624962>,  <30.337845, 37.796249, 38.641869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564991, 37.720627, 38.624962>,  <30.943567, 37.594589, 38.596783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564991, 37.720627, 38.624962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283404, 0.706189, 0.648829,
		0.154698, 0.634043, -0.757666,
		-0.946441, 0.315098, 0.070444,
		30.281059, 37.815155, 38.646095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896835, 38.329628, 38.462799>,  <30.943567, 37.594589, 38.596783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896835, 38.329628, 38.462799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618917, 38.202354, 38.720798>,  <30.452168, 38.125988, 38.875599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618917, 38.202354, 38.720798>,  <30.896835, 38.329628, 38.462799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618917, 38.202354, 38.720798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268090, 0.717596, 0.642794,
		-0.667375, 0.619526, -0.413278,
		-0.694794, -0.318188, 0.644994,
		30.410479, 38.106899, 38.914295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387585, 38.959061, 38.756355>,  <30.896835, 38.329628, 38.462799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387585, 38.959061, 38.756355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416451, 38.643116, 38.999966>,  <30.433771, 38.453548, 39.146133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416451, 38.643116, 38.999966>,  <30.387585, 38.959061, 38.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416451, 38.643116, 38.999966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268626, 0.603449, 0.750793,
		-0.960537, 0.109419, 0.255725,
		0.072166, -0.789859, 0.609028,
		30.438101, 38.406158, 39.182674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974709, 39.091389, 39.393021>,  <30.387585, 38.959061, 38.756355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974709, 39.091389, 39.393021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271326, 38.837368, 39.479572>,  <30.449297, 38.684956, 39.531502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271326, 38.837368, 39.479572>,  <29.974709, 39.091389, 39.393021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271326, 38.837368, 39.479572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230582, 0.544109, 0.806708,
		-0.630036, -0.548316, 0.549912,
		0.741543, -0.635055, 0.216377,
		30.493790, 38.646851, 39.544487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939873, 38.967503, 40.144310>,  <29.974709, 39.091389, 39.393021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939873, 38.967503, 40.144310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 38.817017, 40.042160>,  <30.509886, 38.726727, 39.980869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 38.817017, 40.042160>,  <29.939873, 38.967503, 40.144310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296131, 38.817017, 40.042160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394503, 0.360091, 0.845401,
		-0.226095, -0.853697, 0.469130,
		0.890645, -0.376214, -0.255371,
		30.563324, 38.704151, 39.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249592, 38.493992, 40.781288>,  <29.939873, 38.967503, 40.144310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249592, 38.493992, 40.781288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534681, 38.655148, 40.551609>,  <30.705734, 38.751842, 40.413803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534681, 38.655148, 40.551609>,  <30.249592, 38.493992, 40.781288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534681, 38.655148, 40.551609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439145, 0.382030, 0.813145,
		0.546971, -0.831704, 0.095353,
		0.712723, 0.402893, -0.574198,
		30.748499, 38.776016, 40.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785807, 38.511887, 41.285851>,  <30.249592, 38.493992, 40.781288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785807, 38.511887, 41.285851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931511, 38.732136, 40.985416>,  <31.018934, 38.864285, 40.805157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931511, 38.732136, 40.985416>,  <30.785807, 38.511887, 41.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931511, 38.732136, 40.985416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687555, 0.384978, 0.615679,
		0.628158, -0.740680, -0.238351,
		0.364261, 0.550623, -0.751085,
		31.040789, 38.897324, 40.760090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512482, 38.431099, 41.266815>,  <30.785807, 38.511887, 41.285851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512482, 38.431099, 41.266815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459139, 38.775745, 41.070923>,  <31.427134, 38.982533, 40.953388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459139, 38.775745, 41.070923>,  <31.512482, 38.431099, 41.266815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459139, 38.775745, 41.070923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694518, 0.433757, 0.574021,
		0.707008, -0.263574, -0.656253,
		-0.133357, 0.861617, -0.489727,
		31.419132, 39.034229, 40.924004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103352, 38.629925, 40.944927>,  <31.512482, 38.431099, 41.266815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103352, 38.629925, 40.944927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891273, 38.968937, 40.954670>,  <31.764027, 39.172344, 40.960514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891273, 38.968937, 40.954670>,  <32.103352, 38.629925, 40.944927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891273, 38.968937, 40.954670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796022, 0.487669, 0.358508,
		0.291966, 0.209468, -0.933209,
		-0.530193, 0.847527, 0.024358,
		31.732216, 39.223194, 40.961979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532066, 39.171280, 40.690281>,  <32.103352, 38.629925, 40.944927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532066, 39.171280, 40.690281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264778, 39.397499, 40.883625>,  <32.104404, 39.533230, 40.999634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264778, 39.397499, 40.883625>,  <32.532066, 39.171280, 40.690281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264778, 39.397499, 40.883625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743661, 0.526373, 0.412189,
		-0.021316, 0.634891, -0.772308,
		-0.668217, 0.565549, 0.483364,
		32.064312, 39.567165, 41.028633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750198, 39.931873, 40.646168>,  <32.532066, 39.171280, 40.690281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750198, 39.931873, 40.646168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500778, 39.913250, 40.958328>,  <32.351128, 39.902077, 41.145622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500778, 39.913250, 40.958328>,  <32.750198, 39.931873, 40.646168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500778, 39.913250, 40.958328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647201, 0.529207, 0.548699,
		-0.438540, 0.847214, -0.299851,
		-0.623549, -0.046563, 0.780397,
		32.313713, 39.899281, 41.192448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748486, 40.623009, 40.954350>,  <32.750198, 39.931873, 40.646168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748486, 40.623009, 40.954350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634502, 40.392426, 41.260681>,  <32.566113, 40.254074, 41.444481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634502, 40.392426, 41.260681>,  <32.748486, 40.623009, 40.954350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634502, 40.392426, 41.260681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663592, 0.457893, 0.591590,
		-0.691696, 0.676775, 0.252055,
		-0.284959, -0.576463, 0.765826,
		32.549015, 40.219486, 41.490429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475136, 41.087288, 41.475494>,  <32.748486, 40.623009, 40.954350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475136, 41.087288, 41.475494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552773, 40.737995, 41.654285>,  <32.599354, 40.528419, 41.761559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552773, 40.737995, 41.654285>,  <32.475136, 41.087288, 41.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552773, 40.737995, 41.654285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620387, 0.462216, 0.633621,
		-0.759901, 0.154322, 0.631455,
		0.194087, -0.873236, 0.446978,
		32.611000, 40.476025, 41.788380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372993, 41.206417, 42.128468>,  <32.475136, 41.087288, 41.475494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372993, 41.206417, 42.128468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589100, 40.869892, 42.135479>,  <32.718765, 40.667976, 42.139687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589100, 40.869892, 42.135479>,  <32.372993, 41.206417, 42.128468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589100, 40.869892, 42.135479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530500, 0.356692, 0.768986,
		-0.653209, -0.406159, 0.639025,
		0.540266, -0.841312, 0.017527,
		32.751179, 40.617500, 42.140736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477245, 40.909931, 42.819542>,  <32.372993, 41.206417, 42.128468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477245, 40.909931, 42.819542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801258, 40.756268, 42.642334>,  <32.995667, 40.664070, 42.536011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801258, 40.756268, 42.642334>,  <32.477245, 40.909931, 42.819542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801258, 40.756268, 42.642334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532918, 0.167102, 0.829503,
		-0.244634, -0.908018, 0.340086,
		0.810032, -0.384162, -0.443020,
		33.044270, 40.641018, 42.509426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830517, 40.445595, 43.356567>,  <32.477245, 40.909931, 42.819542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830517, 40.445595, 43.356567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121197, 40.527283, 43.094212>,  <33.295605, 40.576298, 42.936798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121197, 40.527283, 43.094212>,  <32.830517, 40.445595, 43.356567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121197, 40.527283, 43.094212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656911, 0.072679, 0.750457,
		0.200932, -0.976222, -0.081342,
		0.726702, 0.204225, -0.655894,
		33.339207, 40.588551, 42.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299908, 39.917137, 43.350174>,  <32.830517, 40.445595, 43.356567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299908, 39.917137, 43.350174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503841, 40.229172, 43.205101>,  <33.626202, 40.416393, 43.118057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503841, 40.229172, 43.205101>,  <33.299908, 39.917137, 43.350174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503841, 40.229172, 43.205101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632054, -0.053668, 0.773064,
		0.583593, -0.623365, -0.520419,
		0.509831, 0.780087, -0.362679,
		33.656792, 40.463200, 43.096298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995312, 39.724766, 43.416008>,  <33.299908, 39.917137, 43.350174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995312, 39.724766, 43.416008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994049, 40.124763, 43.416439>,  <33.993294, 40.364761, 43.416698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994049, 40.124763, 43.416439>,  <33.995312, 39.724766, 43.416008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994049, 40.124763, 43.416439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724826, 0.001540, 0.688930,
		0.688924, 0.002956, -0.724827,
		-0.003153, 0.999994, 0.001082,
		33.993103, 40.424763, 43.416763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759789, 39.923714, 43.370270>,  <33.995312, 39.724766, 43.416008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759789, 39.923714, 43.370270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550228, 40.230698, 43.518078>,  <34.424492, 40.414886, 43.606762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550228, 40.230698, 43.518078>,  <34.759789, 39.923714, 43.370270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550228, 40.230698, 43.518078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550341, -0.026128, 0.834531,
		0.650120, 0.640569, -0.408675,
		-0.523897, 0.767456, 0.369518,
		34.393059, 40.460934, 43.628933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257748, 40.265041, 43.755188>,  <34.759789, 39.923714, 43.370270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257748, 40.265041, 43.755188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932098, 40.457264, 43.885590>,  <34.736710, 40.572598, 43.963829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932098, 40.457264, 43.885590>,  <35.257748, 40.265041, 43.755188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932098, 40.457264, 43.885590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460465, 0.192184, 0.866624,
		0.353807, 0.855648, -0.377739,
		-0.814121, 0.480553, 0.326000,
		34.687862, 40.601429, 43.983391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528362, 40.803963, 44.141415>,  <35.257748, 40.265041, 43.755188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528362, 40.803963, 44.141415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152695, 40.794128, 44.278442>,  <34.927292, 40.788227, 44.360661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152695, 40.794128, 44.278442>,  <35.528362, 40.803963, 44.141415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152695, 40.794128, 44.278442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338399, 0.104207, 0.935215,
		-0.058691, 0.994252, -0.089548,
		-0.939170, -0.024586, 0.342570,
		34.870945, 40.786751, 44.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432297, 41.464520, 44.512989>,  <35.528362, 40.803963, 44.141415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432297, 41.464520, 44.512989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188320, 41.166088, 44.619823>,  <35.041935, 40.987030, 44.683926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188320, 41.166088, 44.619823>,  <35.432297, 41.464520, 44.512989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188320, 41.166088, 44.619823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204266, 0.177627, 0.962665,
		-0.765667, 0.641727, 0.044056,
		-0.609943, -0.746080, 0.267086,
		35.005337, 40.942265, 44.699947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929646, 41.783260, 44.975842>,  <35.432297, 41.464520, 44.512989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929646, 41.783260, 44.975842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919971, 41.389988, 45.048256>,  <34.914165, 41.154026, 45.091705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919971, 41.389988, 45.048256>,  <34.929646, 41.783260, 44.975842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919971, 41.389988, 45.048256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245633, 0.169697, 0.954394,
		-0.969061, 0.067554, 0.237396,
		-0.024187, -0.983178, 0.181040,
		34.912716, 41.095036, 45.102570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417103, 41.678486, 45.499493>,  <34.929646, 41.783260, 44.975842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417103, 41.678486, 45.499493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699566, 41.395546, 45.486847>,  <34.869041, 41.225780, 45.479259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699566, 41.395546, 45.486847>,  <34.417103, 41.678486, 45.499493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699566, 41.395546, 45.486847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220822, 0.177583, 0.959011,
		-0.672743, -0.684191, 0.281600,
		0.706154, -0.707352, -0.031617,
		34.911411, 41.183342, 45.477364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253338, 41.317360, 46.028481>,  <34.417103, 41.678486, 45.499493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253338, 41.317360, 46.028481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630592, 41.196590, 45.972862>,  <34.856945, 41.124130, 45.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630592, 41.196590, 45.972862>,  <34.253338, 41.317360, 46.028481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630592, 41.196590, 45.972862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219324, 0.250917, 0.942835,
		-0.249777, -0.919719, 0.302869,
		0.943138, -0.301925, -0.139043,
		34.913532, 41.106014, 45.931149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311150, 41.047672, 46.616047>,  <34.253338, 41.317360, 46.028481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311150, 41.047672, 46.616047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685696, 41.051914, 46.475697>,  <34.910423, 41.054459, 46.391487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685696, 41.051914, 46.475697>,  <34.311150, 41.047672, 46.616047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685696, 41.051914, 46.475697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334282, 0.278152, 0.900493,
		0.107141, -0.960479, 0.256908,
		0.936363, 0.010600, -0.350872,
		34.966606, 41.055096, 46.370434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694183, 40.753918, 47.109505>,  <34.311150, 41.047672, 46.616047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694183, 40.753918, 47.109505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950329, 40.981224, 46.902813>,  <35.104015, 41.117607, 46.778797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950329, 40.981224, 46.902813>,  <34.694183, 40.753918, 47.109505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950329, 40.981224, 46.902813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450256, 0.267306, 0.851949,
		0.622258, -0.778217, -0.084692,
		0.640363, 0.568266, -0.516730,
		35.142437, 41.151703, 46.747795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262009, 40.649055, 47.481739>,  <34.694183, 40.753918, 47.109505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262009, 40.649055, 47.481739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313618, 40.977180, 47.258869>,  <35.344585, 41.174057, 47.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313618, 40.977180, 47.258869>,  <35.262009, 40.649055, 47.481739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313618, 40.977180, 47.258869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200423, 0.528699, 0.824808,
		0.971176, -0.218092, -0.096194,
		0.129026, 0.820313, -0.557170,
		35.352325, 41.223274, 47.091717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798504, 40.922722, 47.700520>,  <35.262009, 40.649055, 47.481739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798504, 40.922722, 47.700520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650951, 41.236145, 47.500534>,  <35.562420, 41.424198, 47.380543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650951, 41.236145, 47.500534>,  <35.798504, 40.922722, 47.700520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650951, 41.236145, 47.500534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146808, 0.580264, 0.801087,
		0.917809, 0.222108, -0.329081,
		-0.368882, 0.783557, -0.499964,
		35.540287, 41.471210, 47.350544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329315, 41.498756, 47.709255>,  <35.798504, 40.922722, 47.700520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329315, 41.498756, 47.709255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955383, 41.635872, 47.672176>,  <35.731026, 41.718140, 47.649929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955383, 41.635872, 47.672176>,  <36.329315, 41.498756, 47.709255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955383, 41.635872, 47.672176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142568, 0.601385, 0.786136,
		0.325223, 0.721687, -0.611063,
		-0.934829, 0.342788, -0.092695,
		35.674934, 41.738708, 47.644367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430176, 42.149555, 47.916416>,  <36.329315, 41.498756, 47.709255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430176, 42.149555, 47.916416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033596, 42.101948, 47.937855>,  <35.795650, 42.073383, 47.950718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033596, 42.101948, 47.937855>,  <36.430176, 42.149555, 47.916416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033596, 42.101948, 47.937855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024141, 0.570716, 0.820792,
		-0.128274, 0.812477, -0.568707,
		-0.991445, -0.119015, 0.053594,
		35.736164, 42.066242, 47.953934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161808, 42.830223, 48.097229>,  <36.430176, 42.149555, 47.916416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161808, 42.830223, 48.097229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867332, 42.579708, 48.199825>,  <35.690647, 42.429398, 48.261383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867332, 42.579708, 48.199825>,  <36.161808, 42.830223, 48.097229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867332, 42.579708, 48.199825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109092, 0.483846, 0.868327,
		-0.667926, 0.611272, -0.424525,
		-0.736189, -0.626290, 0.256488,
		35.646477, 42.391823, 48.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646950, 43.277798, 48.416225>,  <36.161808, 42.830223, 48.097229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646950, 43.277798, 48.416225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575352, 42.900948, 48.529613>,  <35.532394, 42.674835, 48.597645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575352, 42.900948, 48.529613>,  <35.646950, 43.277798, 48.416225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575352, 42.900948, 48.529613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012975, 0.290357, 0.956830,
		-0.983765, 0.167586, -0.064195,
		-0.178991, -0.942129, 0.283469,
		35.521656, 42.618309, 48.614655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061054, 43.234241, 48.868149>,  <35.646950, 43.277798, 48.416225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061054, 43.234241, 48.868149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240002, 42.886917, 48.953846>,  <35.347370, 42.678524, 49.005264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240002, 42.886917, 48.953846>,  <35.061054, 43.234241, 48.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240002, 42.886917, 48.953846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038253, 0.257906, 0.965412,
		-0.893531, -0.423700, 0.148595,
		0.447369, -0.868310, 0.214239,
		35.374214, 42.626423, 49.018116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663097, 42.939133, 49.456364>,  <35.061054, 43.234241, 48.868149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663097, 42.939133, 49.456364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022404, 42.767811, 49.495716>,  <35.237988, 42.665020, 49.519329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022404, 42.767811, 49.495716>,  <34.663097, 42.939133, 49.456364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022404, 42.767811, 49.495716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040930, 0.304439, 0.951652,
		-0.437546, -0.850808, 0.290997,
		0.898264, -0.428302, 0.098382,
		35.291882, 42.639320, 49.525230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720085, 42.612087, 50.167873>,  <34.663097, 42.939133, 49.456364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720085, 42.612087, 50.167873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104015, 42.644291, 50.060349>,  <35.334373, 42.663612, 49.995834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104015, 42.644291, 50.060349>,  <34.720085, 42.612087, 50.167873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104015, 42.644291, 50.060349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231285, 0.315475, 0.920317,
		0.158892, -0.945513, 0.284181,
		0.959823, 0.080505, -0.268809,
		35.391964, 42.668442, 49.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086868, 42.293850, 50.797211>,  <34.720085, 42.612087, 50.167873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086868, 42.293850, 50.797211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381180, 42.486610, 50.606884>,  <35.557766, 42.602264, 50.492687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381180, 42.486610, 50.606884>,  <35.086868, 42.293850, 50.797211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381180, 42.486610, 50.606884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472460, 0.138111, 0.870464,
		0.485190, -0.865275, -0.126058,
		0.735781, 0.481897, -0.475817,
		35.601913, 42.631180, 50.464138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692539, 42.027378, 51.056969>,  <35.086868, 42.293850, 50.797211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692539, 42.027378, 51.056969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798748, 42.375896, 50.891880>,  <35.862473, 42.585007, 50.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798748, 42.375896, 50.891880>,  <35.692539, 42.027378, 51.056969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798748, 42.375896, 50.891880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646032, 0.156965, 0.746997,
		0.715640, -0.464973, -0.521210,
		0.265522, 0.871299, -0.412718,
		35.878407, 42.637287, 50.768066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486099, 42.038628, 51.145370>,  <35.692539, 42.027378, 51.056969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486099, 42.038628, 51.145370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294647, 42.388210, 51.111626>,  <36.179775, 42.597958, 51.091377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294647, 42.388210, 51.111626>,  <36.486099, 42.038628, 51.145370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294647, 42.388210, 51.111626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383499, 0.294525, 0.875319,
		0.789835, 0.386603, -0.476129,
		-0.478633, 0.873953, -0.084364,
		36.151058, 42.650394, 51.086315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966995, 42.430592, 51.398159>,  <36.486099, 42.038628, 51.145370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966995, 42.430592, 51.398159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616627, 42.623177, 51.410488>,  <36.406406, 42.738728, 51.417885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616627, 42.623177, 51.410488>,  <36.966995, 42.430592, 51.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616627, 42.623177, 51.410488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234251, 0.368582, 0.899596,
		0.421765, 0.795197, -0.435633,
		-0.875923, 0.481466, 0.030821,
		36.353851, 42.767616, 51.419735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047012, 43.133121, 51.729801>,  <36.966995, 42.430592, 51.398159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047012, 43.133121, 51.729801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651012, 43.101608, 51.776592>,  <36.413410, 43.082699, 51.804668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651012, 43.101608, 51.776592>,  <37.047012, 43.133121, 51.729801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651012, 43.101608, 51.776592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051259, 0.571707, 0.818855,
		-0.131394, 0.816666, -0.561954,
		-0.990004, -0.078787, 0.116980,
		36.354012, 43.077972, 51.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933094, 43.763573, 52.010918>,  <37.047012, 43.133121, 51.729801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933094, 43.763573, 52.010918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601337, 43.551449, 52.081203>,  <36.402283, 43.424175, 52.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601337, 43.551449, 52.081203>,  <36.933094, 43.763573, 52.010918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601337, 43.551449, 52.081203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089423, 0.436497, 0.895251,
		-0.551461, 0.726802, -0.409450,
		-0.829394, -0.530310, 0.175718,
		36.352520, 43.392357, 52.133919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602661, 44.200516, 52.407192>,  <36.933094, 43.763573, 52.010918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602661, 44.200516, 52.407192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413509, 43.854580, 52.474651>,  <36.300018, 43.647018, 52.515125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413509, 43.854580, 52.474651>,  <36.602661, 44.200516, 52.407192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413509, 43.854580, 52.474651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208268, 0.295682, 0.932307,
		-0.856161, 0.405742, -0.319940,
		-0.472876, -0.864838, 0.168649,
		36.271648, 43.595127, 52.525246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879425, 44.320316, 52.579090>,  <36.602661, 44.200516, 52.407192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879425, 44.320316, 52.579090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981907, 43.961655, 52.723515>,  <36.043396, 43.746456, 52.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981907, 43.961655, 52.723515>,  <35.879425, 44.320316, 52.579090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981907, 43.961655, 52.723515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122264, 0.340470, 0.932272,
		-0.958859, -0.282996, -0.022399,
		0.256203, -0.896657, 0.361063,
		36.058769, 43.692657, 52.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251019, 44.137997, 53.091225>,  <35.879425, 44.320316, 52.579090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251019, 44.137997, 53.091225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576111, 43.921833, 53.178333>,  <35.771168, 43.792133, 53.230598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576111, 43.921833, 53.178333>,  <35.251019, 44.137997, 53.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576111, 43.921833, 53.178333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174204, 0.131283, 0.975919,
		-0.555986, -0.831097, 0.012557,
		0.812732, -0.540410, 0.217772,
		35.819931, 43.759708, 53.243664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059662, 43.555447, 53.620941>,  <35.251019, 44.137997, 53.091225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059662, 43.555447, 53.620941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439201, 43.680153, 53.640884>,  <35.666924, 43.754978, 53.652851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439201, 43.680153, 53.640884>,  <35.059662, 43.555447, 53.620941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439201, 43.680153, 53.640884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103467, 0.157848, 0.982028,
		0.298298, -0.936954, 0.182032,
		0.948848, 0.311771, 0.049858,
		35.723858, 43.773685, 53.655842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264214, 43.201893, 54.113731>,  <35.059662, 43.555447, 53.620941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264214, 43.201893, 54.113731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489223, 43.530968, 54.080856>,  <35.624229, 43.728413, 54.061131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489223, 43.530968, 54.080856>,  <35.264214, 43.201893, 54.113731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489223, 43.530968, 54.080856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143083, 0.194778, 0.970355,
		0.814306, -0.534087, 0.227279,
		0.562523, 0.822686, -0.082190,
		35.657982, 43.777775, 54.056198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847157, 43.129017, 54.590240>,  <35.264214, 43.201893, 54.113731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847157, 43.129017, 54.590240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781223, 43.522270, 54.558556>,  <35.741661, 43.758224, 54.539543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781223, 43.522270, 54.558556>,  <35.847157, 43.129017, 54.590240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781223, 43.522270, 54.558556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118645, 0.099492, 0.987939,
		0.979159, 0.153451, -0.133045,
		-0.164837, 0.983135, -0.079213,
		35.731773, 43.817211, 54.534790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329060, 43.740788, 54.656273>,  <35.847157, 43.129017, 54.590240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329060, 43.740788, 54.656273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963352, 43.808739, 54.803379>,  <35.743927, 43.849510, 54.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963352, 43.808739, 54.803379>,  <36.329060, 43.740788, 54.656273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963352, 43.808739, 54.803379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367304, -0.035288, 0.929431,
		0.170865, 0.984834, -0.030132,
		-0.914272, 0.169875, 0.367762,
		35.689072, 43.859699, 54.913708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853844, 43.254990, 54.949745>,  <36.329060, 43.740788, 54.656273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853844, 43.254990, 54.949745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667431, 43.548584, 55.147358>,  <36.555584, 43.724743, 55.265926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667431, 43.548584, 55.147358>,  <36.853844, 43.254990, 54.949745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667431, 43.548584, 55.147358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350434, -0.665844, 0.658671,
		0.812408, 0.133837, 0.567521,
		-0.466035, 0.733989, 0.494036,
		36.527622, 43.768780, 55.295570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834244, 43.123173, 55.647049>,  <36.853844, 43.254990, 54.949745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834244, 43.123173, 55.647049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523571, 43.366524, 55.581772>,  <36.337166, 43.512535, 55.542606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523571, 43.366524, 55.581772>,  <36.834244, 43.123173, 55.647049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523571, 43.366524, 55.581772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572400, -0.573564, 0.585989,
		0.262903, 0.548541, 0.793716,
		-0.776686, 0.608381, -0.163193,
		36.290565, 43.549038, 55.532814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317951, 42.692425, 55.181931>,  <36.834244, 43.123173, 55.647049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317951, 42.692425, 55.181931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616383, 42.436874, 55.256981>,  <37.795441, 42.283546, 55.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616383, 42.436874, 55.256981>,  <37.317951, 42.692425, 55.181931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616383, 42.436874, 55.256981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341335, -0.608903, -0.716051,
		0.571711, 0.470189, -0.672361,
		0.746081, -0.638874, 0.187625,
		37.840206, 42.245213, 55.313267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931927, 42.604660, 54.682507>,  <37.317951, 42.692425, 55.181931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931927, 42.604660, 54.682507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839718, 42.258293, 54.860069>,  <37.784393, 42.050472, 54.966606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839718, 42.258293, 54.860069>,  <37.931927, 42.604660, 54.682507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839718, 42.258293, 54.860069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081649, -0.437374, -0.895565,
		0.969636, -0.242690, 0.030122,
		-0.230519, -0.865913, 0.443909,
		37.770561, 41.998520, 54.993240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330994, 42.098202, 54.287811>,  <37.931927, 42.604660, 54.682507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330994, 42.098202, 54.287811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994183, 41.937748, 54.432079>,  <37.792095, 41.841476, 54.518639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994183, 41.937748, 54.432079>,  <38.330994, 42.098202, 54.287811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994183, 41.937748, 54.432079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128778, -0.499792, -0.856518,
		0.523840, -0.767657, 0.369181,
		-0.842026, -0.401136, 0.360669,
		37.741573, 41.817406, 54.540279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262432, 41.357632, 54.221344>,  <38.330994, 42.098202, 54.287811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262432, 41.357632, 54.221344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879948, 41.474049, 54.233696>,  <37.650455, 41.543900, 54.241108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879948, 41.474049, 54.233696>,  <38.262432, 41.357632, 54.221344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879948, 41.474049, 54.233696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186776, -0.525575, -0.829991,
		-0.225334, -0.799415, 0.556921,
		-0.956211, 0.291044, 0.030882,
		37.593086, 41.561363, 54.242962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713234, 40.888924, 54.371941>,  <38.262432, 41.357632, 54.221344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713234, 40.888924, 54.371941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580658, 41.179695, 54.131367>,  <37.501114, 41.354156, 53.987022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580658, 41.179695, 54.131367>,  <37.713234, 40.888924, 54.371941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580658, 41.179695, 54.131367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208547, -0.678145, -0.704718,
		-0.920140, -0.108142, 0.376361,
		-0.331437, 0.726928, -0.601436,
		37.481228, 41.397774, 53.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098679, 40.661449, 54.113701>,  <37.713234, 40.888924, 54.371941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098679, 40.661449, 54.113701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222878, 40.949959, 53.866039>,  <37.297398, 41.123066, 53.717442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222878, 40.949959, 53.866039>,  <37.098679, 40.661449, 54.113701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222878, 40.949959, 53.866039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143658, -0.608263, -0.780627,
		-0.939656, 0.331330, -0.085249,
		0.310499, 0.721274, -0.619156,
		37.316029, 41.166340, 53.680294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603741, 40.732346, 53.690670>,  <37.098679, 40.661449, 54.113701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603741, 40.732346, 53.690670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916363, 40.886574, 53.494507>,  <37.103935, 40.979111, 53.376808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916363, 40.886574, 53.494507>,  <36.603741, 40.732346, 53.690670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916363, 40.886574, 53.494507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214846, -0.571670, -0.791855,
		-0.585674, 0.724242, -0.363952,
		0.781555, 0.385575, -0.490413,
		37.150829, 41.002247, 53.347382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401978, 40.728497, 53.035709>,  <36.603741, 40.732346, 53.690670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401978, 40.728497, 53.035709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787842, 40.800106, 52.958370>,  <37.019360, 40.843071, 52.911968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787842, 40.800106, 52.958370>,  <36.401978, 40.728497, 53.035709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787842, 40.800106, 52.958370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117931, -0.362847, -0.924356,
		-0.235632, 0.914492, -0.328912,
		0.964660, 0.179019, -0.193345,
		37.077240, 40.853813, 52.900368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533825, 41.236237, 52.511372>,  <36.401978, 40.728497, 53.035709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533825, 41.236237, 52.511372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881432, 41.038425, 52.517658>,  <37.089996, 40.919739, 52.521431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881432, 41.038425, 52.517658>,  <36.533825, 41.236237, 52.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881432, 41.038425, 52.517658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032495, -0.088742, -0.995524,
		0.493710, 0.864619, -0.093188,
		0.869019, -0.494528, 0.015717,
		37.142136, 40.890068, 52.522373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910049, 41.440903, 51.967800>,  <36.533825, 41.236237, 52.511372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910049, 41.440903, 51.967800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093224, 41.093956, 52.045750>,  <37.203129, 40.885788, 52.092522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093224, 41.093956, 52.045750>,  <36.910049, 41.440903, 51.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093224, 41.093956, 52.045750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080816, -0.258921, -0.962512,
		0.885306, 0.425016, -0.188665,
		0.457932, -0.867365, 0.194877,
		37.230602, 40.833748, 52.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530289, 41.383930, 51.514172>,  <36.910049, 41.440903, 51.967800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530289, 41.383930, 51.514172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465412, 41.003899, 51.620792>,  <37.426487, 40.775879, 51.684765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465412, 41.003899, 51.620792>,  <37.530289, 41.383930, 51.514172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465412, 41.003899, 51.620792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112599, -0.286180, -0.951537,
		0.980314, -0.124320, 0.153394,
		-0.162193, -0.950077, 0.266548,
		37.416756, 40.718876, 51.700756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960659, 40.950768, 51.120720>,  <37.530289, 41.383930, 51.514172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960659, 40.950768, 51.120720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678104, 40.690456, 51.232079>,  <37.508572, 40.534271, 51.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678104, 40.690456, 51.232079>,  <37.960659, 40.950768, 51.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678104, 40.690456, 51.232079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018081, -0.409772, -0.912008,
		0.707592, -0.639199, 0.301226,
		-0.706389, -0.650777, 0.278395,
		37.466187, 40.495224, 51.315598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169518, 40.271770, 50.858593>,  <37.960659, 40.950768, 51.120720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169518, 40.271770, 50.858593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777470, 40.210651, 50.909218>,  <37.542240, 40.173981, 50.939594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777470, 40.210651, 50.909218>,  <38.169518, 40.271770, 50.858593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777470, 40.210651, 50.909218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033377, -0.501827, -0.864324,
		0.195580, -0.851365, 0.486751,
		-0.980119, -0.152798, 0.126563,
		37.483433, 40.164810, 50.947186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064487, 39.527473, 50.844997>,  <38.169518, 40.271770, 50.858593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064487, 39.527473, 50.844997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721565, 39.719318, 50.770161>,  <37.515812, 39.834423, 50.725258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721565, 39.719318, 50.770161>,  <38.064487, 39.527473, 50.844997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721565, 39.719318, 50.770161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025976, -0.403256, -0.914718,
		-0.514155, -0.779331, 0.358172,
		-0.857303, 0.479611, -0.187092,
		37.464375, 39.863201, 50.714035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725628, 39.087421, 50.256599>,  <38.064487, 39.527473, 50.844997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725628, 39.087421, 50.256599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494366, 39.413776, 50.253197>,  <37.355610, 39.609589, 50.251156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494366, 39.413776, 50.253197>,  <37.725628, 39.087421, 50.256599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494366, 39.413776, 50.253197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363106, -0.266611, -0.892789,
		-0.730680, -0.513080, 0.450394,
		-0.578153, 0.815885, -0.008505,
		37.320919, 39.658543, 50.250645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023914, 38.906273, 50.136402>,  <37.725628, 39.087421, 50.256599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023914, 38.906273, 50.136402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044479, 39.287357, 50.016602>,  <37.056816, 39.516006, 49.944721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044479, 39.287357, 50.016602>,  <37.023914, 38.906273, 50.136402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044479, 39.287357, 50.016602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377273, -0.259144, -0.889106,
		-0.924674, 0.158701, 0.346110,
		0.051410, 0.952711, -0.299497,
		37.059902, 39.573170, 49.926754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492363, 39.011597, 49.786411>,  <37.023914, 38.906273, 50.136402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492363, 39.011597, 49.786411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685261, 39.331226, 49.642796>,  <36.800999, 39.523006, 49.556625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685261, 39.331226, 49.642796>,  <36.492363, 39.011597, 49.786411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685261, 39.331226, 49.642796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352117, -0.198476, -0.914670,
		-0.802154, 0.567522, 0.185655,
		0.482247, 0.799079, -0.359042,
		36.829933, 39.570950, 49.535084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074158, 39.478027, 49.569046>,  <36.492363, 39.011597, 49.786411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074158, 39.478027, 49.569046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409367, 39.567146, 49.369816>,  <36.610493, 39.620617, 49.250278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409367, 39.567146, 49.369816>,  <36.074158, 39.478027, 49.569046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409367, 39.567146, 49.369816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487170, -0.105579, -0.866902,
		-0.245731, 0.969131, 0.020063,
		0.838023, 0.222798, -0.498075,
		36.660774, 39.633987, 49.220394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893196, 39.848209, 48.992050>,  <36.074158, 39.478027, 49.569046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893196, 39.848209, 48.992050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249611, 39.719032, 48.864452>,  <36.463459, 39.641525, 48.787895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249611, 39.719032, 48.864452>,  <35.893196, 39.848209, 48.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249611, 39.719032, 48.864452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405451, -0.250246, -0.879197,
		0.204100, 0.912736, -0.353916,
		0.891040, -0.322940, -0.318994,
		36.516922, 39.622150, 48.768753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088947, 40.178600, 48.350712>,  <35.893196, 39.848209, 48.992050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088947, 40.178600, 48.350712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366856, 39.890957, 48.345535>,  <36.533600, 39.718369, 48.342430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366856, 39.890957, 48.345535>,  <36.088947, 40.178600, 48.350712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366856, 39.890957, 48.345535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393685, -0.365184, -0.843595,
		0.601916, 0.591200, -0.536824,
		0.694773, -0.719113, -0.012937,
		36.575287, 39.675224, 48.341656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108681, 39.971298, 47.647808>,  <36.088947, 40.178600, 48.350712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108681, 39.971298, 47.647808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280602, 39.649776, 47.812328>,  <36.383755, 39.456863, 47.911041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280602, 39.649776, 47.812328>,  <36.108681, 39.971298, 47.647808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280602, 39.649776, 47.812328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328088, -0.563418, -0.758234,
		0.841205, 0.190949, -0.505877,
		0.429805, -0.803803, 0.411302,
		36.409542, 39.408634, 47.935719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557232, 39.572247, 47.116741>,  <36.108681, 39.971298, 47.647808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557232, 39.572247, 47.116741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451900, 39.313568, 47.403084>,  <36.388702, 39.158363, 47.574890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451900, 39.313568, 47.403084>,  <36.557232, 39.572247, 47.116741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451900, 39.313568, 47.403084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107779, -0.717676, -0.687986,
		0.958667, -0.258320, 0.119284,
		-0.263328, -0.646693, 0.715854,
		36.372902, 39.119560, 47.617840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913986, 38.967106, 46.824921>,  <36.557232, 39.572247, 47.116741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913986, 38.967106, 46.824921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662849, 38.837742, 47.108109>,  <36.512165, 38.760124, 47.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662849, 38.837742, 47.108109>,  <36.913986, 38.967106, 46.824921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662849, 38.837742, 47.108109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286103, -0.750014, -0.596343,
		0.723849, -0.576961, 0.378363,
		-0.627844, -0.323411, 0.707967,
		36.474495, 38.740719, 47.320499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987442, 38.167549, 47.007622>,  <36.913986, 38.967106, 46.824921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987442, 38.167549, 47.007622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618942, 38.276707, 47.118500>,  <36.397842, 38.342201, 47.185024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618942, 38.276707, 47.118500>,  <36.987442, 38.167549, 47.007622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618942, 38.276707, 47.118500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387585, -0.704302, -0.594757,
		0.032921, -0.655352, 0.754605,
		-0.921246, 0.272894, 0.277191,
		36.342567, 38.358574, 47.201656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569485, 37.591904, 46.702324>,  <36.987442, 38.167549, 47.007622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569485, 37.591904, 46.702324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292446, 37.862957, 46.801212>,  <36.126225, 38.025589, 46.860546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292446, 37.862957, 46.801212>,  <36.569485, 37.591904, 46.702324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292446, 37.862957, 46.801212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573364, -0.309226, -0.758705,
		-0.437680, -0.667224, 0.602701,
		-0.692597, 0.677637, 0.247220,
		36.084667, 38.066246, 46.875378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904072, 37.217117, 46.643730>,  <36.569485, 37.591904, 46.702324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904072, 37.217117, 46.643730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842297, 37.610779, 46.608871>,  <35.805229, 37.846973, 46.587955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842297, 37.610779, 46.608871>,  <35.904072, 37.217117, 46.643730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842297, 37.610779, 46.608871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648259, -0.167499, -0.742768,
		-0.745592, -0.058222, 0.663854,
		-0.154440, 0.984151, -0.087143,
		35.795963, 37.906025, 46.582729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133682, 37.458004, 46.865803>,  <35.904072, 37.217117, 46.643730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133682, 37.458004, 46.865803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281620, 37.710075, 46.592720>,  <35.370380, 37.861320, 46.428871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281620, 37.710075, 46.592720>,  <35.133682, 37.458004, 46.865803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281620, 37.710075, 46.592720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699043, -0.295291, -0.651261,
		-0.612010, 0.718106, 0.331313,
		0.369841, 0.630180, -0.682708,
		35.392570, 37.899128, 46.387909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528675, 37.722244, 46.546070>,  <35.133682, 37.458004, 46.865803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528675, 37.722244, 46.546070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812767, 37.837074, 46.288963>,  <34.983223, 37.905972, 46.134697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812767, 37.837074, 46.288963>,  <34.528675, 37.722244, 46.546070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812767, 37.837074, 46.288963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656104, -0.060977, -0.752203,
		-0.255136, 0.955964, 0.145046,
		0.710235, 0.287079, -0.642769,
		35.025837, 37.923199, 46.096134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131054, 38.032703, 46.007351>,  <34.528675, 37.722244, 46.546070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131054, 38.032703, 46.007351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487652, 37.969967, 45.837345>,  <34.701611, 37.932323, 45.735340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487652, 37.969967, 45.837345>,  <34.131054, 38.032703, 46.007351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487652, 37.969967, 45.837345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439548, -0.072290, -0.895306,
		0.109696, 0.984975, -0.133385,
		0.891496, -0.156840, -0.425013,
		34.755100, 37.922916, 45.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092068, 38.473721, 45.456833>,  <34.131054, 38.032703, 46.007351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092068, 38.473721, 45.456833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392864, 38.222477, 45.376842>,  <34.573341, 38.071732, 45.328850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392864, 38.222477, 45.376842>,  <34.092068, 38.473721, 45.456833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392864, 38.222477, 45.376842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162789, 0.117020, -0.979697,
		0.638761, 0.769273, -0.014252,
		0.751987, -0.628112, -0.199977,
		34.618462, 38.034042, 45.316849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448765, 38.778515, 44.852570>,  <34.092068, 38.473721, 45.456833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448765, 38.778515, 44.852570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542236, 38.389626, 44.857937>,  <34.598320, 38.156292, 44.861156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542236, 38.389626, 44.857937>,  <34.448765, 38.778515, 44.852570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542236, 38.389626, 44.857937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119734, -0.042469, -0.991897,
		0.964913, 0.230180, -0.126332,
		0.233681, -0.972221, 0.013419,
		34.612339, 38.097958, 44.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779690, 38.729706, 44.279202>,  <34.448765, 38.778515, 44.852570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779690, 38.729706, 44.279202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674927, 38.354362, 44.369434>,  <34.612068, 38.129158, 44.423576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674927, 38.354362, 44.369434>,  <34.779690, 38.729706, 44.279202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674927, 38.354362, 44.369434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019264, -0.228614, -0.973326,
		0.964899, -0.259271, 0.041801,
		-0.261912, -0.938357, 0.225584,
		34.596352, 38.072857, 44.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089279, 38.339176, 43.781567>,  <34.779690, 38.729706, 44.279202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089279, 38.339176, 43.781567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842995, 38.061321, 43.930370>,  <34.695225, 37.894608, 44.019653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842995, 38.061321, 43.930370>,  <35.089279, 38.339176, 43.781567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842995, 38.061321, 43.930370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045067, -0.440289, -0.896725,
		0.786686, -0.568885, 0.239784,
		-0.615707, -0.694634, 0.372007,
		34.658283, 37.852932, 44.041973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224319, 37.758640, 43.409775>,  <35.089279, 38.339176, 43.781567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224319, 37.758640, 43.409775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855896, 37.698330, 43.553398>,  <34.634842, 37.662144, 43.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855896, 37.698330, 43.553398>,  <35.224319, 37.758640, 43.409775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855896, 37.698330, 43.553398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256418, -0.459115, -0.850566,
		0.293097, -0.875488, 0.384208,
		-0.921056, -0.150780, 0.359056,
		34.579578, 37.653095, 43.661114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066376, 37.058495, 43.236752>,  <35.224319, 37.758640, 43.409775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066376, 37.058495, 43.236752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752869, 37.304813, 43.269001>,  <34.564766, 37.452606, 43.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752869, 37.304813, 43.269001>,  <35.066376, 37.058495, 43.236752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752869, 37.304813, 43.269001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428886, -0.442769, -0.787409,
		-0.449220, -0.651699, 0.611138,
		-0.783747, 0.615828, 0.080604,
		34.517738, 37.489555, 43.293190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596832, 36.579933, 43.044392>,  <35.066376, 37.058495, 43.236752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596832, 36.579933, 43.044392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400505, 36.928356, 43.036781>,  <34.282711, 37.137409, 43.032215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400505, 36.928356, 43.036781>,  <34.596832, 36.579933, 43.044392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400505, 36.928356, 43.036781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487659, -0.292745, -0.822490,
		-0.722005, -0.394412, 0.568462,
		-0.490814, 0.871057, -0.019025,
		34.253262, 37.189674, 43.031075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946095, 36.388226, 42.954525>,  <34.596832, 36.579933, 43.044392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946095, 36.388226, 42.954525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002705, 36.758442, 42.814041>,  <34.036671, 36.980572, 42.729752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002705, 36.758442, 42.814041>,  <33.946095, 36.388226, 42.954525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002705, 36.758442, 42.814041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359839, -0.282416, -0.889245,
		-0.922218, 0.252229, 0.293076,
		0.141524, 0.925538, -0.351211,
		34.045162, 37.036102, 42.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371075, 36.482254, 42.543011>,  <33.946095, 36.388226, 42.954525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371075, 36.482254, 42.543011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619839, 36.776218, 42.434837>,  <33.769096, 36.952599, 42.369934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619839, 36.776218, 42.434837>,  <33.371075, 36.482254, 42.543011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619839, 36.776218, 42.434837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405527, 0.006815, -0.914058,
		-0.669908, 0.678130, 0.302264,
		0.621910, 0.734910, -0.270434,
		33.806412, 36.996693, 42.353706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993118, 37.019218, 42.201283>,  <33.371075, 36.482254, 42.543011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993118, 37.019218, 42.201283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371655, 37.038628, 42.073486>,  <33.598778, 37.050274, 41.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371655, 37.038628, 42.073486>,  <32.993118, 37.019218, 42.201283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371655, 37.038628, 42.073486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321987, 0.057465, -0.944999,
		-0.027491, 0.997168, 0.070004,
		0.946345, 0.048520, -0.319495,
		33.655560, 37.053185, 41.977638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973801, 37.540649, 41.794983>,  <32.993118, 37.019218, 42.201283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973801, 37.540649, 41.794983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311352, 37.354218, 41.688675>,  <33.513882, 37.242359, 41.624889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311352, 37.354218, 41.688675>,  <32.973801, 37.540649, 41.794983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311352, 37.354218, 41.688675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216753, 0.156979, -0.963522,
		0.490803, 0.870703, 0.031446,
		0.843878, -0.466084, -0.265774,
		33.564514, 37.214394, 41.608944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268200, 37.959721, 41.254150>,  <32.973801, 37.540649, 41.794983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268200, 37.959721, 41.254150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425957, 37.595253, 41.206440>,  <33.520611, 37.376572, 41.177814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425957, 37.595253, 41.206440>,  <33.268200, 37.959721, 41.254150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425957, 37.595253, 41.206440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216266, 0.034124, -0.975738,
		0.893133, 0.410617, -0.183597,
		0.394389, -0.911169, -0.119280,
		33.544273, 37.321903, 41.170654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709110, 38.010937, 40.630989>,  <33.268200, 37.959721, 41.254150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709110, 38.010937, 40.630989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718559, 37.612885, 40.669285>,  <33.724228, 37.374054, 40.692265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718559, 37.612885, 40.669285>,  <33.709110, 38.010937, 40.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718559, 37.612885, 40.669285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060156, -0.097010, -0.993464,
		0.997909, 0.017707, -0.062154,
		0.023621, -0.995126, 0.095742,
		33.725647, 37.314346, 40.698006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180092, 37.822742, 40.147480>,  <33.709110, 38.010937, 40.630989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180092, 37.822742, 40.147480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934456, 37.512585, 40.206345>,  <33.787075, 37.326488, 40.241665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934456, 37.512585, 40.206345>,  <34.180092, 37.822742, 40.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934456, 37.512585, 40.206345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194157, -0.032313, -0.980438,
		0.764982, -0.630650, -0.130705,
		-0.614090, -0.775394, 0.147164,
		33.750229, 37.279968, 40.250492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672264, 37.302692, 40.354698>,  <34.180092, 37.822742, 40.147480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672264, 37.302692, 40.354698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994076, 37.221020, 40.131615>,  <35.187164, 37.172016, 39.997765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994076, 37.221020, 40.131615>,  <34.672264, 37.302692, 40.354698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994076, 37.221020, 40.131615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576256, 0.041121, 0.816234,
		-0.143724, -0.978069, 0.150743,
		0.804532, -0.204179, -0.557708,
		35.235435, 37.159767, 39.964302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156570, 36.749638, 40.598148>,  <34.672264, 37.302692, 40.354698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156570, 36.749638, 40.598148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395363, 36.996990, 40.393711>,  <35.538639, 37.145401, 40.271049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395363, 36.996990, 40.393711>,  <35.156570, 36.749638, 40.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395363, 36.996990, 40.393711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694316, -0.079084, 0.715312,
		0.401913, -0.781892, -0.476562,
		0.596985, 0.618377, -0.511095,
		35.574459, 37.182503, 40.240383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669678, 36.553955, 40.871906>,  <35.156570, 36.749638, 40.598148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669678, 36.553955, 40.871906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789204, 36.890938, 40.692585>,  <35.860920, 37.093128, 40.584991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789204, 36.890938, 40.692585>,  <35.669678, 36.553955, 40.871906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789204, 36.890938, 40.692585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629719, 0.178905, 0.755941,
		0.717052, -0.508190, -0.477053,
		0.298815, 0.842458, -0.448301,
		35.878849, 37.143677, 40.558094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436760, 36.490078, 40.745853>,  <35.669678, 36.553955, 40.871906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436760, 36.490078, 40.745853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335922, 36.877140, 40.749794>,  <36.275421, 37.109375, 40.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335922, 36.877140, 40.749794>,  <36.436760, 36.490078, 40.745853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335922, 36.877140, 40.749794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767002, 0.193588, 0.611744,
		0.590049, 0.161773, -0.790994,
		-0.252091, 0.967653, 0.009854,
		36.260296, 37.167435, 40.752750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989544, 36.984047, 40.661396>,  <36.436760, 36.490078, 40.745853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989544, 36.984047, 40.661396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724255, 37.224960, 40.839111>,  <36.565083, 37.369507, 40.945740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724255, 37.224960, 40.839111>,  <36.989544, 36.984047, 40.661396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724255, 37.224960, 40.839111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714721, 0.333555, 0.614748,
		0.222057, 0.725257, -0.651685,
		-0.663222, 0.602282, 0.444288,
		36.525288, 37.405643, 40.972397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449703, 37.356441, 40.888863>,  <36.989544, 36.984047, 40.661396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449703, 37.356441, 40.888863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107380, 37.454697, 41.070961>,  <36.901985, 37.513649, 41.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107380, 37.454697, 41.070961>,  <37.449703, 37.356441, 40.888863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107380, 37.454697, 41.070961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517198, 0.422777, 0.744154,
		-0.009674, 0.872308, -0.488862,
		-0.855811, 0.245640, 0.455245,
		36.850636, 37.528389, 41.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606602, 38.038612, 41.049438>,  <37.449703, 37.356441, 40.888863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606602, 38.038612, 41.049438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327045, 37.932808, 41.315247>,  <37.159309, 37.869324, 41.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327045, 37.932808, 41.315247>,  <37.606602, 38.038612, 41.049438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327045, 37.932808, 41.315247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530331, 0.431742, 0.729622,
		-0.479893, 0.862341, -0.161463,
		-0.698893, -0.264512, 0.664516,
		37.117378, 37.853455, 41.514603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578602, 38.533249, 41.611958>,  <37.606602, 38.038612, 41.049438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578602, 38.533249, 41.611958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386589, 38.248146, 41.816525>,  <37.271381, 38.077084, 41.939266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386589, 38.248146, 41.816525>,  <37.578602, 38.533249, 41.611958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386589, 38.248146, 41.816525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356765, 0.373975, 0.856073,
		-0.801431, 0.593395, 0.074769,
		-0.480027, -0.712759, 0.511418,
		37.242580, 38.034317, 41.969952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304974, 38.912643, 42.216633>,  <37.578602, 38.533249, 41.611958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304974, 38.912643, 42.216633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277710, 38.523037, 42.303020>,  <37.261353, 38.289272, 42.354851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277710, 38.523037, 42.303020>,  <37.304974, 38.912643, 42.216633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277710, 38.523037, 42.303020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213970, 0.197161, 0.956736,
		-0.974459, 0.111418, 0.194973,
		-0.068157, -0.974019, 0.215966,
		37.257263, 38.230831, 42.367809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035095, 38.837975, 42.907906>,  <37.304974, 38.912643, 42.216633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035095, 38.837975, 42.907906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244225, 38.513626, 42.802727>,  <37.369701, 38.319016, 42.739620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244225, 38.513626, 42.802727>,  <37.035095, 38.837975, 42.907906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244225, 38.513626, 42.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378293, -0.055722, 0.924007,
		-0.763905, -0.582562, 0.277615,
		0.522822, -0.810874, -0.262945,
		37.401070, 38.270363, 42.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905098, 38.380322, 43.541618>,  <37.035095, 38.837975, 42.907906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905098, 38.380322, 43.541618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228443, 38.243458, 43.350006>,  <37.422451, 38.161339, 43.235039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228443, 38.243458, 43.350006>,  <36.905098, 38.380322, 43.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228443, 38.243458, 43.350006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475307, -0.100739, 0.874034,
		-0.347315, -0.934227, 0.081196,
		0.808366, -0.342158, -0.479032,
		37.470955, 38.140812, 43.206295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151485, 37.838814, 43.898376>,  <36.905098, 38.380322, 43.541618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151485, 37.838814, 43.898376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475975, 37.953308, 43.694420>,  <37.670670, 38.022003, 43.572048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475975, 37.953308, 43.694420>,  <37.151485, 37.838814, 43.898376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475975, 37.953308, 43.694420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550849, -0.081559, 0.830610,
		0.196162, -0.954682, -0.223834,
		0.811225, 0.286232, -0.509887,
		37.719341, 38.039177, 43.541454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773113, 37.429817, 44.119450>,  <37.151485, 37.838814, 43.898376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773113, 37.429817, 44.119450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915855, 37.757961, 43.940716>,  <38.001499, 37.954849, 43.833477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915855, 37.757961, 43.940716>,  <37.773113, 37.429817, 44.119450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915855, 37.757961, 43.940716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730067, 0.053502, 0.681278,
		0.582803, -0.569333, -0.579829,
		0.356852, 0.820364, -0.446832,
		38.022911, 38.004070, 43.806667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522732, 37.339245, 44.168839>,  <37.773113, 37.429817, 44.119450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522732, 37.339245, 44.168839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461037, 37.726570, 44.090279>,  <38.424019, 37.958965, 44.043140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461037, 37.726570, 44.090279>,  <38.522732, 37.339245, 44.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461037, 37.726570, 44.090279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591666, 0.249721, 0.766532,
		0.791291, 0.002025, -0.611437,
		-0.154241, 0.968316, -0.196404,
		38.414764, 38.017063, 44.031357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225430, 37.564068, 44.292805>,  <38.522732, 37.339245, 44.168839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225430, 37.564068, 44.292805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973434, 37.873642, 44.318542>,  <38.822235, 38.059387, 44.333984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973434, 37.873642, 44.318542>,  <39.225430, 37.564068, 44.292805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973434, 37.873642, 44.318542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519876, 0.358726, 0.775271,
		0.576924, 0.521867, -0.628343,
		-0.629990, 0.773932, 0.064349,
		38.784439, 38.105824, 44.337849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668709, 38.182858, 44.491825>,  <39.225430, 37.564068, 44.292805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668709, 38.182858, 44.491825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288670, 38.279984, 44.570168>,  <39.060646, 38.338257, 44.617172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288670, 38.279984, 44.570168>,  <39.668709, 38.182858, 44.491825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288670, 38.279984, 44.570168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289959, 0.455767, 0.841546,
		0.115070, 0.856341, -0.503427,
		-0.950096, 0.242810, 0.195859,
		39.003639, 38.352825, 44.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615501, 38.906216, 44.611259>,  <39.668709, 38.182858, 44.491825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615501, 38.906216, 44.611259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317207, 38.736885, 44.817043>,  <39.138229, 38.635284, 44.940514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317207, 38.736885, 44.817043>,  <39.615501, 38.906216, 44.611259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317207, 38.736885, 44.817043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289530, 0.489542, 0.822509,
		-0.600044, 0.762326, -0.242501,
		-0.745734, -0.423330, 0.514463,
		39.093487, 38.609886, 44.971382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380081, 39.450466, 44.975887>,  <39.615501, 38.906216, 44.611259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380081, 39.450466, 44.975887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215565, 39.136673, 45.161545>,  <39.116856, 38.948399, 45.272938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215565, 39.136673, 45.161545>,  <39.380081, 39.450466, 44.975887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215565, 39.136673, 45.161545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099159, 0.544689, 0.832755,
		-0.906094, 0.296483, -0.301815,
		-0.411293, -0.784482, 0.464141,
		39.092178, 38.901329, 45.300789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963573, 39.758602, 45.357746>,  <39.380081, 39.450466, 44.975887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963573, 39.758602, 45.357746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995102, 39.400970, 45.534119>,  <39.014019, 39.186394, 45.639942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995102, 39.400970, 45.534119>,  <38.963573, 39.758602, 45.357746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995102, 39.400970, 45.534119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028976, 0.440062, 0.897500,
		-0.996468, -0.083515, 0.008777,
		0.078817, -0.894075, 0.440927,
		39.018745, 39.132748, 45.666397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423012, 39.773079, 45.885765>,  <38.963573, 39.758602, 45.357746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423012, 39.773079, 45.885765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679455, 39.487000, 45.997097>,  <38.833321, 39.315350, 46.063896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679455, 39.487000, 45.997097>,  <38.423012, 39.773079, 45.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679455, 39.487000, 45.997097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049488, 0.400443, 0.914984,
		-0.765857, -0.572826, 0.292120,
		0.641104, -0.715203, 0.278334,
		38.871788, 39.272438, 46.080597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051247, 39.581631, 46.508327>,  <38.423012, 39.773079, 45.885765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051247, 39.581631, 46.508327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431206, 39.457146, 46.519981>,  <38.659180, 39.382454, 46.526974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431206, 39.457146, 46.519981>,  <38.051247, 39.581631, 46.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431206, 39.457146, 46.519981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105028, 0.405566, 0.908012,
		-0.294402, -0.859454, 0.417931,
		0.949893, -0.311215, 0.029133,
		38.716175, 39.363781, 46.528721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102951, 39.237980, 47.161072>,  <38.051247, 39.581631, 46.508327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102951, 39.237980, 47.161072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478352, 39.330032, 47.058117>,  <38.703590, 39.385265, 46.996342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478352, 39.330032, 47.058117>,  <38.102951, 39.237980, 47.161072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478352, 39.330032, 47.058117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129268, 0.457055, 0.879994,
		0.320160, -0.859150, 0.399198,
		0.938502, 0.230136, -0.257392,
		38.759903, 39.399075, 46.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600220, 38.949596, 47.660824>,  <38.102951, 39.237980, 47.161072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600220, 38.949596, 47.660824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793896, 39.254585, 47.489147>,  <38.910099, 39.437576, 47.386143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793896, 39.254585, 47.489147>,  <38.600220, 38.949596, 47.660824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793896, 39.254585, 47.489147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185562, 0.389881, 0.901975,
		0.855061, -0.516366, 0.047291,
		0.484187, 0.762469, -0.429190,
		38.939152, 39.483326, 47.360390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058685, 39.161686, 48.216408>,  <38.600220, 38.949596, 47.660824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058685, 39.161686, 48.216408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079643, 39.458504, 47.949089>,  <39.092216, 39.636593, 47.788696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079643, 39.458504, 47.949089>,  <39.058685, 39.161686, 48.216408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079643, 39.458504, 47.949089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391355, 0.600432, 0.697368,
		0.918747, -0.298082, -0.258942,
		0.052395, 0.742043, -0.668301,
		39.095364, 39.681118, 47.748600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779823, 39.398613, 48.193333>,  <39.058685, 39.161686, 48.216408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779823, 39.398613, 48.193333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544544, 39.695946, 48.065910>,  <39.403378, 39.874344, 47.989456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544544, 39.695946, 48.065910>,  <39.779823, 39.398613, 48.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544544, 39.695946, 48.065910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231089, 0.531967, 0.814622,
		0.774994, 0.405548, -0.484680,
		-0.588202, 0.743332, -0.318553,
		39.368084, 39.918945, 47.970345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118313, 39.951908, 48.313904>,  <39.779823, 39.398613, 48.193333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118313, 39.951908, 48.313904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740631, 40.080276, 48.284267>,  <39.514023, 40.157299, 48.266487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740631, 40.080276, 48.284267>,  <40.118313, 39.951908, 48.313904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740631, 40.080276, 48.284267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141972, 0.599543, 0.787650,
		0.297195, 0.733183, -0.611652,
		-0.944203, 0.320923, -0.074090,
		39.457371, 40.176552, 48.262039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126137, 40.730782, 48.138866>,  <40.118313, 39.951908, 48.313904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126137, 40.730782, 48.138866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765392, 40.636837, 48.283913>,  <39.548946, 40.580471, 48.370941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765392, 40.636837, 48.283913>,  <40.126137, 40.730782, 48.138866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765392, 40.636837, 48.283913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067323, 0.752676, 0.654940,
		-0.426748, 0.615077, -0.662997,
		-0.901861, -0.234859, 0.362612,
		39.494835, 40.566380, 48.392696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742275, 41.348866, 48.154095>,  <40.126137, 40.730782, 48.138866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742275, 41.348866, 48.154095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573360, 41.105244, 48.422642>,  <39.472012, 40.959072, 48.583771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573360, 41.105244, 48.422642>,  <39.742275, 41.348866, 48.154095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573360, 41.105244, 48.422642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070714, 0.760518, 0.645454,
		-0.903700, 0.225092, -0.364225,
		-0.422286, -0.609053, 0.671363,
		39.446674, 40.922527, 48.624050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269119, 41.779984, 48.457195>,  <39.742275, 41.348866, 48.154095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269119, 41.779984, 48.457195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280308, 41.471378, 48.711433>,  <39.287022, 41.286217, 48.863976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280308, 41.471378, 48.711433>,  <39.269119, 41.779984, 48.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280308, 41.471378, 48.711433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032569, 0.636213, 0.770826,
		-0.999078, -0.000862, 0.042924,
		0.027973, -0.771513, 0.635598,
		39.288700, 41.239925, 48.902111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581646, 41.807156, 48.897987>,  <39.269119, 41.779984, 48.457195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581646, 41.807156, 48.897987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860924, 41.611809, 49.107376>,  <39.028488, 41.494598, 49.233009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860924, 41.611809, 49.107376>,  <38.581646, 41.807156, 48.897987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860924, 41.611809, 49.107376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048522, 0.697236, 0.715197,
		-0.714267, -0.524744, 0.463106,
		0.698189, -0.488370, 0.523474,
		39.070381, 41.465298, 49.264420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379620, 41.929390, 49.505695>,  <38.581646, 41.807156, 48.897987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379620, 41.929390, 49.505695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766315, 41.839394, 49.554340>,  <38.998333, 41.785397, 49.583527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766315, 41.839394, 49.554340>,  <38.379620, 41.929390, 49.505695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766315, 41.839394, 49.554340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083011, 0.725800, 0.682879,
		-0.241904, -0.650074, 0.720338,
		0.966743, -0.224987, 0.121611,
		39.056339, 41.771896, 49.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514996, 41.985344, 50.206547>,  <38.379620, 41.929390, 49.505695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514996, 41.985344, 50.206547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879185, 42.009331, 50.042870>,  <39.097698, 42.023724, 49.944664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879185, 42.009331, 50.042870>,  <38.514996, 41.985344, 50.206547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879185, 42.009331, 50.042870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219981, 0.767633, 0.601954,
		0.350207, -0.638079, 0.685719,
		0.910474, 0.059964, -0.409195,
		39.152328, 42.027321, 49.920113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883930, 42.065487, 50.759468>,  <38.514996, 41.985344, 50.206547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883930, 42.065487, 50.759468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129242, 42.188358, 50.468395>,  <39.276428, 42.262081, 50.293751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129242, 42.188358, 50.468395>,  <38.883930, 42.065487, 50.759468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129242, 42.188358, 50.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185460, 0.839526, 0.510687,
		0.767781, -0.448153, 0.457899,
		0.613284, 0.307173, -0.727686,
		39.313229, 42.280510, 50.250088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505222, 42.294254, 51.103256>,  <38.883930, 42.065487, 50.759468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505222, 42.294254, 51.103256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513897, 42.466568, 50.742378>,  <39.519100, 42.569954, 50.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513897, 42.466568, 50.742378>,  <39.505222, 42.294254, 51.103256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513897, 42.466568, 50.742378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017297, 0.902112, 0.431155,
		0.999615, -0.024953, 0.012109,
		0.021682, 0.430780, -0.902197,
		39.520401, 42.595802, 50.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053665, 42.759422, 51.182362>,  <39.505222, 42.294254, 51.103256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053665, 42.759422, 51.182362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814777, 42.892139, 50.890266>,  <39.671444, 42.971771, 50.715012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814777, 42.892139, 50.890266>,  <40.053665, 42.759422, 51.182362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814777, 42.892139, 50.890266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088622, 0.932152, 0.351055,
		0.797168, 0.144941, -0.586102,
		-0.597219, 0.331791, -0.730236,
		39.635612, 42.991676, 50.671196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345394, 43.351761, 50.792721>,  <40.053665, 42.759422, 51.182362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345394, 43.351761, 50.792721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959385, 43.404739, 50.702229>,  <39.727779, 43.436527, 50.647934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959385, 43.404739, 50.702229>,  <40.345394, 43.351761, 50.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959385, 43.404739, 50.702229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112814, 0.988803, 0.097680,
		0.236638, 0.068742, -0.969163,
		-0.965026, 0.132450, -0.226233,
		39.669876, 43.444473, 50.634357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384602, 43.834835, 50.270020>,  <40.345394, 43.351761, 50.792721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384602, 43.834835, 50.270020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032169, 43.820095, 50.458633>,  <39.820709, 43.811249, 50.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032169, 43.820095, 50.458633>,  <40.384602, 43.834835, 50.270020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032169, 43.820095, 50.458633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125791, 0.942796, 0.308726,
		-0.455939, 0.331326, -0.826040,
		-0.881077, -0.036852, 0.471536,
		39.767845, 43.809040, 50.600094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499233, 44.537773, 50.629658>,  <40.384602, 43.834835, 50.270020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499233, 44.537773, 50.629658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643898, 44.896366, 50.527275>,  <40.730698, 45.111523, 50.465843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643898, 44.896366, 50.527275>,  <40.499233, 44.537773, 50.629658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643898, 44.896366, 50.527275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550217, -0.426875, -0.717663,
		-0.752636, 0.118719, -0.647646,
		0.361664, 0.896484, -0.255960,
		40.752396, 45.165310, 50.450485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319500, 44.793468, 49.954361>,  <40.499233, 44.537773, 50.629658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319500, 44.793468, 49.954361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668949, 44.961266, 50.053001>,  <40.878620, 45.061943, 50.112186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668949, 44.961266, 50.053001>,  <40.319500, 44.793468, 49.954361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668949, 44.961266, 50.053001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430075, -0.428566, -0.794586,
		-0.227638, 0.800224, -0.554818,
		0.873622, 0.419492, 0.246598,
		40.931034, 45.087112, 50.126980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622402, 45.236389, 49.390465>,  <40.319500, 44.793468, 49.954361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622402, 45.236389, 49.390465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939816, 45.110863, 49.599010>,  <41.130264, 45.035545, 49.724136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939816, 45.110863, 49.599010>,  <40.622402, 45.236389, 49.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939816, 45.110863, 49.599010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356617, -0.454407, -0.816296,
		0.493081, 0.833686, -0.248674,
		0.793534, -0.313819, 0.521366,
		41.177876, 45.016716, 49.755421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077072, 45.174683, 48.907001>,  <40.622402, 45.236389, 49.390465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077072, 45.174683, 48.907001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262527, 45.003948, 49.217575>,  <41.373802, 44.901508, 49.403919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262527, 45.003948, 49.217575>,  <41.077072, 45.174683, 48.907001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262527, 45.003948, 49.217575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598413, -0.495397, -0.629669,
		0.653408, 0.756568, 0.025737,
		0.463638, -0.426832, 0.776437,
		41.401619, 44.875900, 49.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767590, 45.279911, 48.746429>,  <41.077072, 45.174683, 48.907001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767590, 45.279911, 48.746429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762192, 44.970791, 49.000233>,  <41.758953, 44.785320, 49.152515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762192, 44.970791, 49.000233>,  <41.767590, 45.279911, 48.746429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762192, 44.970791, 49.000233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520579, -0.547216, -0.655402,
		0.853707, 0.321466, 0.409688,
		-0.013498, -0.772796, 0.634511,
		41.758141, 44.738953, 49.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418228, 44.943886, 48.581150>,  <41.767590, 45.279911, 48.746429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418228, 44.943886, 48.581150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190617, 44.677296, 48.773819>,  <42.054050, 44.517342, 48.889420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190617, 44.677296, 48.773819>,  <42.418228, 44.943886, 48.581150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190617, 44.677296, 48.773819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206502, -0.682797, -0.700817,
		0.795964, -0.299322, 0.526163,
		-0.569032, -0.666480, 0.481671,
		42.019905, 44.477352, 48.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867111, 44.371635, 48.641476>,  <42.418228, 44.943886, 48.581150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867111, 44.371635, 48.641476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495361, 44.237877, 48.704021>,  <42.272312, 44.157623, 48.741547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495361, 44.237877, 48.704021>,  <42.867111, 44.371635, 48.641476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495361, 44.237877, 48.704021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219985, -0.841847, -0.492849,
		0.296440, -0.423642, 0.855950,
		-0.929371, -0.334396, 0.156363,
		42.216549, 44.137558, 48.750931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967022, 43.647476, 48.633495>,  <42.867111, 44.371635, 48.641476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967022, 43.647476, 48.633495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570820, 43.678516, 48.588093>,  <42.333099, 43.697140, 48.560852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570820, 43.678516, 48.588093>,  <42.967022, 43.647476, 48.633495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570820, 43.678516, 48.588093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007335, -0.854170, -0.519942,
		-0.137296, -0.514171, 0.846627,
		-0.990503, 0.077596, -0.113503,
		42.273670, 43.701794, 48.554043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671658, 43.044231, 48.891228>,  <42.967022, 43.647476, 48.633495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671658, 43.044231, 48.891228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461712, 43.214630, 48.596462>,  <42.335743, 43.316868, 48.419601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461712, 43.214630, 48.596462>,  <42.671658, 43.044231, 48.891228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461712, 43.214630, 48.596462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047132, -0.849878, -0.524868,
		-0.849878, -0.310219, 0.425996,
		0.524868, -0.425996, 0.736913,
		42.304253, 43.342430, 48.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113216, 42.570534, 48.697716>,  <42.671658, 43.044231, 48.891228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113216, 42.570534, 48.697716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127144, 42.827164, 48.391209>,  <42.135502, 42.981140, 48.207302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.127144, 42.827164, 48.391209>,  <42.113216, 42.570534, 48.697716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127144, 42.827164, 48.391209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154705, -0.754034, -0.638357,
		-0.987347, 0.140775, 0.072998,
		0.034822, 0.641572, -0.766272,
		42.137589, 43.019634, 48.161327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719238, 42.220779, 48.330166>,  <42.113216, 42.570534, 48.697716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719238, 42.220779, 48.330166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889271, 42.463436, 48.061451>,  <41.991291, 42.609032, 47.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889271, 42.463436, 48.061451>,  <41.719238, 42.220779, 48.330166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889271, 42.463436, 48.061451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075541, -0.715807, -0.694199,
		-0.901999, 0.345836, -0.258447,
		0.425077, 0.606644, -0.671783,
		42.016792, 42.645428, 47.859917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194614, 42.324524, 47.804157>,  <41.719238, 42.220779, 48.330166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194614, 42.324524, 47.804157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564919, 42.377472, 47.662479>,  <41.787102, 42.409241, 47.577473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564919, 42.377472, 47.662479>,  <41.194614, 42.324524, 47.804157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564919, 42.377472, 47.662479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205620, -0.609869, -0.765363,
		-0.317322, 0.781369, -0.537372,
		0.925757, 0.132372, -0.354191,
		41.842648, 42.417183, 47.556221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120491, 42.377758, 47.057827>,  <41.194614, 42.324524, 47.804157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120491, 42.377758, 47.057827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508816, 42.292995, 47.102776>,  <41.741810, 42.242138, 47.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508816, 42.292995, 47.102776>,  <41.120491, 42.377758, 47.057827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508816, 42.292995, 47.102776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037893, -0.598110, -0.800517,
		0.236846, 0.772891, -0.588680,
		0.970808, -0.211906, 0.112373,
		41.800056, 42.229424, 47.136486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387135, 42.582569, 46.384254>,  <41.120491, 42.377758, 47.057827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387135, 42.582569, 46.384254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627972, 42.319004, 46.564617>,  <41.772476, 42.160866, 46.672836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627972, 42.319004, 46.564617>,  <41.387135, 42.582569, 46.384254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627972, 42.319004, 46.564617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130378, -0.638308, -0.758659,
		0.787706, 0.397998, -0.470231,
		0.602097, -0.658908, 0.450909,
		41.808601, 42.121330, 46.699890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906891, 42.522038, 45.929596>,  <41.387135, 42.582569, 46.384254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906891, 42.522038, 45.929596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879158, 42.198399, 46.163025>,  <41.862518, 42.004215, 46.303082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879158, 42.198399, 46.163025>,  <41.906891, 42.522038, 45.929596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879158, 42.198399, 46.163025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071601, -0.579438, -0.811865,
		0.995021, -0.098075, -0.017757,
		-0.069335, -0.809094, 0.583575,
		41.858356, 41.955669, 46.338097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266220, 42.078625, 45.528412>,  <41.906891, 42.522038, 45.929596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266220, 42.078625, 45.528412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042091, 41.843414, 45.761742>,  <41.907616, 41.702290, 45.901741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042091, 41.843414, 45.761742>,  <42.266220, 42.078625, 45.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042091, 41.843414, 45.761742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222191, -0.571744, -0.789772,
		0.797919, -0.572134, 0.189705,
		-0.560318, -0.588024, 0.583328,
		41.873997, 41.667007, 45.936741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419102, 41.353626, 45.361938>,  <42.266220, 42.078625, 45.528412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419102, 41.353626, 45.361938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069603, 41.320438, 45.553638>,  <41.859905, 41.300526, 45.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069603, 41.320438, 45.553638>,  <42.419102, 41.353626, 45.361938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069603, 41.320438, 45.553638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299170, -0.685221, -0.664056,
		0.383490, -0.723594, 0.573887,
		-0.873746, -0.082969, 0.479253,
		41.807480, 41.295547, 45.697414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363903, 40.665791, 45.325108>,  <42.419102, 41.353626, 45.361938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363903, 40.665791, 45.325108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004852, 40.821892, 45.407055>,  <41.789421, 40.915554, 45.456223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004852, 40.821892, 45.407055>,  <42.363903, 40.665791, 45.325108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004852, 40.821892, 45.407055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431032, -0.680111, -0.593009,
		-0.092094, -0.620603, 0.778697,
		-0.897624, 0.390257, 0.204866,
		41.735565, 40.938969, 45.468513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920124, 40.061874, 45.441185>,  <42.363903, 40.665791, 45.325108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920124, 40.061874, 45.441185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673100, 40.362911, 45.349766>,  <41.524887, 40.543533, 45.294914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673100, 40.362911, 45.349766>,  <41.920124, 40.061874, 45.441185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673100, 40.362911, 45.349766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593792, -0.636666, -0.492004,
		-0.515783, -0.168133, 0.840059,
		-0.617559, 0.752587, -0.228545,
		41.487831, 40.588688, 45.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270077, 39.757973, 45.501167>,  <41.920124, 40.061874, 45.441185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270077, 39.757973, 45.501167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208416, 40.093441, 45.292221>,  <41.171421, 40.294724, 45.166855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208416, 40.093441, 45.292221>,  <41.270077, 39.757973, 45.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208416, 40.093441, 45.292221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482007, -0.525335, -0.701208,
		-0.862500, 0.143690, 0.485228,
		-0.154151, 0.838675, -0.522361,
		41.162170, 40.345043, 45.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566494, 39.757439, 45.370743>,  <41.270077, 39.757973, 45.501167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566494, 39.757439, 45.370743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727589, 39.977024, 45.077774>,  <40.824245, 40.108776, 44.901993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727589, 39.977024, 45.077774>,  <40.566494, 39.757439, 45.370743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727589, 39.977024, 45.077774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564156, -0.481251, -0.670914,
		-0.720786, 0.683402, 0.115884,
		0.402734, 0.548962, -0.732424,
		40.848408, 40.141712, 44.858047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004787, 39.912888, 44.969025>,  <40.566494, 39.757439, 45.370743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004787, 39.912888, 44.969025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314342, 39.981236, 44.725090>,  <40.500076, 40.022243, 44.578728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314342, 39.981236, 44.725090>,  <40.004787, 39.912888, 44.969025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314342, 39.981236, 44.725090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562179, -0.258084, -0.785715,
		-0.291643, 0.950893, -0.103669,
		0.773886, 0.170867, -0.609840,
		40.546509, 40.032497, 44.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670349, 39.947495, 44.271854>,  <40.004787, 39.912888, 44.969025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670349, 39.947495, 44.271854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062469, 39.887787, 44.220119>,  <40.297741, 39.851963, 44.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062469, 39.887787, 44.220119>,  <39.670349, 39.947495, 44.271854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062469, 39.887787, 44.220119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156018, -0.183679, -0.970526,
		0.121110, 0.971587, -0.203349,
		0.980301, -0.149266, -0.129340,
		40.356560, 39.843006, 44.181316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752621, 40.348354, 43.594658>,  <39.670349, 39.947495, 44.271854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752621, 40.348354, 43.594658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042805, 40.077305, 43.642868>,  <40.216915, 39.914673, 43.671795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042805, 40.077305, 43.642868>,  <39.752621, 40.348354, 43.594658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042805, 40.077305, 43.642868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129488, -0.306361, -0.943067,
		0.675970, 0.668555, -0.309998,
		0.725464, -0.677626, 0.120521,
		40.260445, 39.874016, 43.679024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246346, 40.379425, 42.994667>,  <39.752621, 40.348354, 43.594658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246346, 40.379425, 42.994667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271236, 40.014210, 43.155903>,  <40.286171, 39.795078, 43.252644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271236, 40.014210, 43.155903>,  <40.246346, 40.379425, 42.994667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271236, 40.014210, 43.155903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125497, -0.393512, -0.910713,
		0.990140, 0.107259, 0.090096,
		0.062228, -0.913041, 0.403093,
		40.289906, 39.740299, 43.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599586, 40.108093, 42.518024>,  <40.246346, 40.379425, 42.994667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599586, 40.108093, 42.518024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463062, 39.796127, 42.727879>,  <40.381149, 39.608948, 42.853790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463062, 39.796127, 42.727879>,  <40.599586, 40.108093, 42.518024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463062, 39.796127, 42.727879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088719, -0.582390, -0.808054,
		0.935754, -0.229253, 0.267969,
		-0.341311, -0.779914, 0.524634,
		40.360668, 39.562153, 42.885269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993019, 39.450565, 42.341290>,  <40.599586, 40.108093, 42.518024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993019, 39.450565, 42.341290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652691, 39.316040, 42.502777>,  <40.448494, 39.235325, 42.599670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652691, 39.316040, 42.502777>,  <40.993019, 39.450565, 42.341290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652691, 39.316040, 42.502777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029840, -0.736166, -0.676143,
		0.524602, -0.587326, 0.616313,
		-0.850825, -0.336315, 0.403720,
		40.397442, 39.215145, 42.623894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131290, 38.830257, 42.562847>,  <40.993019, 39.450565, 42.341290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131290, 38.830257, 42.562847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738052, 38.838352, 42.490055>,  <40.502110, 38.843208, 42.446381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738052, 38.838352, 42.490055>,  <41.131290, 38.830257, 42.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738052, 38.838352, 42.490055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108979, -0.733992, -0.670358,
		-0.147138, -0.678856, 0.719378,
		-0.983094, 0.020238, -0.181979,
		40.443123, 38.844425, 42.435463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906010, 38.139194, 42.703613>,  <41.131290, 38.830257, 42.562847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906010, 38.139194, 42.703613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631886, 38.328815, 42.482479>,  <40.467411, 38.442589, 42.349800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631886, 38.328815, 42.482479>,  <40.906010, 38.139194, 42.703613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631886, 38.328815, 42.482479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057608, -0.721456, -0.690059,
		-0.725995, -0.504735, 0.467091,
		-0.685283, 0.474071, -0.552851,
		40.426292, 38.471031, 42.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657906, 37.623867, 42.410244>,  <40.906010, 38.139194, 42.703613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657906, 37.623867, 42.410244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545528, 37.935139, 42.185562>,  <40.478104, 38.121902, 42.050755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545528, 37.935139, 42.185562>,  <40.657906, 37.623867, 42.410244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545528, 37.935139, 42.185562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059986, -0.569895, -0.819526,
		-0.957848, -0.263933, 0.113427,
		-0.280942, 0.778177, -0.561705,
		40.461246, 38.168591, 42.017052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029705, 37.451061, 42.008682>,  <40.657906, 37.623867, 42.410244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029705, 37.451061, 42.008682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195457, 37.753502, 41.806061>,  <40.294907, 37.934967, 41.684486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195457, 37.753502, 41.806061>,  <40.029705, 37.451061, 42.008682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195457, 37.753502, 41.806061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070007, -0.528460, -0.846067,
		-0.907409, 0.386053, -0.166049,
		0.414377, 0.756104, -0.506556,
		40.319771, 37.980331, 41.654095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744801, 37.336819, 41.341434>,  <40.029705, 37.451061, 42.008682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744801, 37.336819, 41.341434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033283, 37.596046, 41.243557>,  <40.206371, 37.751583, 41.184830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033283, 37.596046, 41.243557>,  <39.744801, 37.336819, 41.341434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033283, 37.596046, 41.243557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013100, -0.340409, -0.940186,
		-0.692599, 0.681272, -0.237015,
		0.721204, 0.648067, -0.244692,
		40.249645, 37.790466, 41.170151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607811, 37.533089, 40.736870>,  <39.744801, 37.336819, 41.341434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607811, 37.533089, 40.736870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990112, 37.648640, 40.759068>,  <40.219494, 37.717972, 40.772385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990112, 37.648640, 40.759068>,  <39.607811, 37.533089, 40.736870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990112, 37.648640, 40.759068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121236, -0.214953, -0.969070,
		-0.268016, 0.932922, -0.240466,
		0.955756, 0.288879, 0.055493,
		40.276840, 37.735302, 40.775715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678864, 38.075745, 40.198601>,  <39.607811, 37.533089, 40.736870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678864, 38.075745, 40.198601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025204, 37.892483, 40.278992>,  <40.233009, 37.782524, 40.327225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025204, 37.892483, 40.278992>,  <39.678864, 38.075745, 40.198601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025204, 37.892483, 40.278992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156934, -0.132715, -0.978651,
		0.475048, 0.878908, -0.043011,
		0.865853, -0.458157, 0.200976,
		40.284958, 37.755035, 40.339283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086796, 38.285801, 39.694901>,  <39.678864, 38.075745, 40.198601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086796, 38.285801, 39.694901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314171, 37.992329, 39.843807>,  <40.450596, 37.816246, 39.933151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314171, 37.992329, 39.843807>,  <40.086796, 38.285801, 39.694901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314171, 37.992329, 39.843807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378514, -0.168523, -0.910125,
		0.730480, 0.658260, 0.181915,
		0.568442, -0.733685, 0.372263,
		40.484703, 37.772224, 39.955486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825104, 38.397495, 39.591492>,  <40.086796, 38.285801, 39.694901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825104, 38.397495, 39.591492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766628, 38.003887, 39.632141>,  <40.731541, 37.767723, 39.656532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766628, 38.003887, 39.632141>,  <40.825104, 38.397495, 39.591492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766628, 38.003887, 39.632141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417155, -0.154472, -0.895612,
		0.897001, -0.088535, 0.433072,
		-0.146191, -0.984022, 0.101628,
		40.722771, 37.708679, 39.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492535, 38.077930, 39.457836>,  <40.825104, 38.397495, 39.591492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492535, 38.077930, 39.457836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218124, 37.791214, 39.407917>,  <41.053478, 37.619183, 39.377964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218124, 37.791214, 39.407917>,  <41.492535, 38.077930, 39.457836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218124, 37.791214, 39.407917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456488, -0.290468, -0.840980,
		0.566559, -0.633904, 0.526476,
		-0.686024, -0.716795, -0.124802,
		41.012318, 37.576176, 39.370476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903194, 37.455437, 39.272789>,  <41.492535, 38.077930, 39.457836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903194, 37.455437, 39.272789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526176, 37.364193, 39.175152>,  <41.299965, 37.309444, 39.116570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526176, 37.364193, 39.175152>,  <41.903194, 37.455437, 39.272789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526176, 37.364193, 39.175152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310328, -0.327161, -0.892559,
		0.123746, -0.917023, 0.379153,
		-0.942541, -0.228112, -0.244093,
		41.243416, 37.295761, 39.101925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996689, 36.879925, 38.950325>,  <41.903194, 37.455437, 39.272789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996689, 36.879925, 38.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639397, 37.014935, 38.831516>,  <41.425022, 37.095940, 38.760231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639397, 37.014935, 38.831516>,  <41.996689, 36.879925, 38.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639397, 37.014935, 38.831516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218132, -0.252342, -0.942731,
		-0.393147, -0.906863, 0.151774,
		-0.893227, 0.337525, -0.297024,
		41.371429, 37.116192, 38.742409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732758, 36.311558, 38.626835>,  <41.996689, 36.879925, 38.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732758, 36.311558, 38.626835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543755, 36.636353, 38.489769>,  <41.430351, 36.831230, 38.407528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543755, 36.636353, 38.489769>,  <41.732758, 36.311558, 38.626835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543755, 36.636353, 38.489769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093395, -0.340483, -0.935601,
		-0.876364, -0.474082, 0.085046,
		-0.472508, 0.811984, -0.342664,
		41.402000, 36.879948, 38.386971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279804, 35.958012, 38.173225>,  <41.732758, 36.311558, 38.626835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279804, 35.958012, 38.173225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340393, 36.339531, 38.069431>,  <41.376747, 36.568443, 38.007156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340393, 36.339531, 38.069431>,  <41.279804, 35.958012, 38.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340393, 36.339531, 38.069431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164904, -0.283217, -0.944772,
		-0.974609, 0.100317, -0.200184,
		0.151472, 0.953795, -0.259483,
		41.385834, 36.625668, 37.991585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859470, 36.154652, 37.639111>,  <41.279804, 35.958012, 38.173225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859470, 36.154652, 37.639111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172291, 36.403927, 37.636932>,  <41.359982, 36.553493, 37.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172291, 36.403927, 37.636932>,  <40.859470, 36.154652, 37.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172291, 36.403927, 37.636932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128262, -0.169489, -0.977150,
		-0.609874, 0.763483, -0.212481,
		0.782051, 0.623191, -0.005441,
		41.406906, 36.590885, 37.635300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814907, 36.748035, 37.119816>,  <40.859470, 36.154652, 37.639111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814907, 36.748035, 37.119816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181828, 36.596760, 37.169651>,  <41.401981, 36.505993, 37.199554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181828, 36.596760, 37.169651>,  <40.814907, 36.748035, 37.119816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181828, 36.596760, 37.169651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053174, -0.193744, -0.979610,
		0.394621, 0.905225, -0.157612,
		0.917304, -0.378194, 0.124590,
		41.457020, 36.483303, 37.207027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404537, 37.006500, 36.606754>,  <40.814907, 36.748035, 37.119816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404537, 37.006500, 36.606754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539062, 36.650356, 36.729492>,  <41.619778, 36.436668, 36.803135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539062, 36.650356, 36.729492>,  <41.404537, 37.006500, 36.606754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539062, 36.650356, 36.729492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355628, -0.181631, -0.916809,
		0.872022, 0.417458, 0.255551,
		0.336313, -0.890359, 0.306846,
		41.639957, 36.383247, 36.821545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884621, 37.442532, 36.850735>,  <41.404537, 37.006500, 36.606754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884621, 37.442532, 36.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237286, 37.542408, 37.010899>,  <42.448883, 37.602333, 37.106995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237286, 37.542408, 37.010899>,  <41.884621, 37.442532, 36.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237286, 37.542408, 37.010899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468182, -0.356820, -0.808384,
		-0.058976, 0.900185, -0.431497,
		0.881662, 0.249694, 0.400407,
		42.501785, 37.617317, 37.131020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157753, 37.909565, 36.342373>,  <41.884621, 37.442532, 36.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157753, 37.909565, 36.342373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386410, 37.687778, 36.584293>,  <42.523605, 37.554707, 36.729446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386410, 37.687778, 36.584293>,  <42.157753, 37.909565, 36.342373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386410, 37.687778, 36.584293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354463, -0.497900, -0.791487,
		0.739989, 0.666827, -0.088080,
		0.571640, -0.554470, 0.604805,
		42.557903, 37.521439, 36.765736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493450, 38.054943, 35.711060>,  <42.157753, 37.909565, 36.342373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493450, 38.054943, 35.711060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757076, 37.773834, 35.818207>,  <42.915253, 37.605171, 35.882496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757076, 37.773834, 35.818207>,  <42.493450, 38.054943, 35.711060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757076, 37.773834, 35.818207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740675, -0.668311, 0.068995,
		0.130535, -0.243879, -0.960981,
		0.659061, -0.702768, 0.267873,
		42.954796, 37.563004, 35.898567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917770, 37.808929, 35.124119>,  <42.493450, 38.054943, 35.711060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917770, 37.808929, 35.124119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159168, 37.670010, 34.837017>,  <43.304005, 37.586658, 34.664757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159168, 37.670010, 34.837017>,  <42.917770, 37.808929, 35.124119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159168, 37.670010, 34.837017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116983, -0.928983, 0.351150,
		-0.788741, -0.127950, -0.601262,
		0.603492, -0.347304, -0.717759,
		43.340218, 37.565819, 34.621689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589962, 37.306572, 34.699932>,  <42.917770, 37.808929, 35.124119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589962, 37.306572, 34.699932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986626, 37.256229, 34.710987>,  <43.224625, 37.226025, 34.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986626, 37.256229, 34.710987>,  <42.589962, 37.306572, 34.699932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986626, 37.256229, 34.710987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123019, -0.860872, 0.493726,
		-0.038349, -0.493009, -0.869179,
		0.991663, -0.125860, 0.027636,
		43.284126, 37.218472, 34.719276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595066, 36.593613, 34.504517>,  <42.589962, 37.306572, 34.699932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595066, 36.593613, 34.504517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954639, 36.672638, 34.660915>,  <43.170383, 36.720055, 34.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954639, 36.672638, 34.660915>,  <42.595066, 36.593613, 34.504517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954639, 36.672638, 34.660915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006822, -0.886115, 0.463416,
		0.438024, -0.419249, -0.795214,
		0.898937, 0.197562, 0.391000,
		43.224319, 36.731907, 34.778214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166698, 36.047771, 34.327778>,  <42.595066, 36.593613, 34.504517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166698, 36.047771, 34.327778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261837, 36.244389, 34.662876>,  <43.318920, 36.362358, 34.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261837, 36.244389, 34.662876>,  <43.166698, 36.047771, 34.327778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261837, 36.244389, 34.662876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026850, -0.858838, 0.511543,
		0.970932, -0.144162, -0.191073,
		0.237845, 0.491543, 0.837744,
		43.333191, 36.391853, 34.914200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656971, 35.520790, 34.599850>,  <43.166698, 36.047771, 34.327778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656971, 35.520790, 34.599850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537132, 35.779343, 34.880543>,  <43.465229, 35.934475, 35.048958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537132, 35.779343, 34.880543>,  <43.656971, 35.520790, 34.599850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537132, 35.779343, 34.880543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103973, -0.753258, 0.649455,
		0.948382, 0.121616, 0.292883,
		-0.299601, 0.646384, 0.701732,
		43.447250, 35.973259, 35.091061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111576, 35.450844, 35.185738>,  <43.656971, 35.520790, 34.599850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111576, 35.450844, 35.185738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777245, 35.603485, 35.343613>,  <43.576645, 35.695068, 35.438335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777245, 35.603485, 35.343613>,  <44.111576, 35.450844, 35.185738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777245, 35.603485, 35.343613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069465, -0.786656, 0.613471,
		0.544583, 0.485338, 0.684015,
		-0.835825, 0.381601, 0.394685,
		43.526497, 35.717964, 35.462017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092789, 35.190441, 35.841259>,  <44.111576, 35.450844, 35.185738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092789, 35.190441, 35.841259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709827, 35.301819, 35.810658>,  <43.480053, 35.368645, 35.792297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709827, 35.301819, 35.810658>,  <44.092789, 35.190441, 35.841259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709827, 35.301819, 35.810658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282479, -0.848148, 0.448164,
		0.059905, 0.450682, 0.890673,
		-0.957401, 0.278444, -0.076499,
		43.422607, 35.385353, 35.787708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765789, 35.058510, 36.529507>,  <44.092789, 35.190441, 35.841259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765789, 35.058510, 36.529507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485249, 35.065266, 36.244461>,  <43.316925, 35.069321, 36.073433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485249, 35.065266, 36.244461>,  <43.765789, 35.058510, 36.529507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485249, 35.065266, 36.244461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270352, -0.931329, 0.244000,
		-0.659560, 0.363786, 0.657754,
		-0.701349, 0.016892, -0.712618,
		43.274845, 35.070332, 36.030674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197670, 34.719318, 36.835449>,  <43.765789, 35.058510, 36.529507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197670, 34.719318, 36.835449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074768, 34.731365, 36.454990>,  <43.001026, 34.738594, 36.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074768, 34.731365, 36.454990>,  <43.197670, 34.719318, 36.835449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074768, 34.731365, 36.454990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569219, -0.806796, 0.158338,
		-0.762615, 0.590063, 0.265036,
		-0.307260, 0.030113, -0.951149,
		42.982590, 34.740398, 36.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394859, 34.657436, 36.852074>,  <43.197670, 34.719318, 36.835449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394859, 34.657436, 36.852074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498421, 34.534225, 36.485886>,  <42.560558, 34.460300, 36.266171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498421, 34.534225, 36.485886>,  <42.394859, 34.657436, 36.852074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498421, 34.534225, 36.485886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361559, -0.909789, 0.203861,
		-0.895681, 0.278218, -0.346914,
		0.258901, -0.308024, -0.915473,
		42.576092, 34.441818, 36.211243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794159, 34.320751, 36.526745>,  <42.394859, 34.657436, 36.852074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794159, 34.320751, 36.526745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095505, 34.173004, 36.309116>,  <42.276314, 34.084358, 36.178539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095505, 34.173004, 36.309116>,  <41.794159, 34.320751, 36.526745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095505, 34.173004, 36.309116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388439, -0.917542, 0.085044,
		-0.530617, 0.147268, -0.834720,
		0.753366, -0.369364, -0.544067,
		42.321514, 34.062195, 36.145897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519493, 33.841507, 36.150547>,  <41.794159, 34.320751, 36.526745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519493, 33.841507, 36.150547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902195, 33.736248, 36.100937>,  <42.131817, 33.673092, 36.071171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902195, 33.736248, 36.100937>,  <41.519493, 33.841507, 36.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902195, 33.736248, 36.100937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262190, -0.964711, 0.024252,
		-0.126034, 0.009316, -0.991982,
		0.956751, -0.263144, -0.124029,
		42.189220, 33.657303, 36.063728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534046, 33.267105, 35.647774>,  <41.519493, 33.841507, 36.150547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534046, 33.267105, 35.647774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884285, 33.254818, 35.840599>,  <42.094429, 33.247444, 35.956295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884285, 33.254818, 35.840599>,  <41.534046, 33.267105, 35.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884285, 33.254818, 35.840599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061608, -0.996927, 0.048379,
		0.479098, -0.072059, -0.874798,
		0.875597, -0.030716, 0.482066,
		42.146965, 33.245602, 35.985218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893581, 32.868496, 35.247353>,  <41.534046, 33.267105, 35.647774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893581, 32.868496, 35.247353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077988, 32.849449, 35.601799>,  <42.188629, 32.838020, 35.814468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077988, 32.849449, 35.601799>,  <41.893581, 32.868496, 35.247353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077988, 32.849449, 35.601799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075462, -0.997046, -0.014313,
		0.884180, -0.060270, -0.463243,
		0.461012, -0.047613, 0.886116,
		42.216290, 32.835167, 35.867634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487499, 32.377598, 35.170967>,  <41.893581, 32.868496, 35.247353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487499, 32.377598, 35.170967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378120, 32.426476, 35.552605>,  <42.312492, 32.455803, 35.781586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378120, 32.426476, 35.552605>,  <42.487499, 32.377598, 35.170967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378120, 32.426476, 35.552605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143227, -0.975669, 0.166003,
		0.951163, 0.182045, 0.249296,
		-0.273450, 0.122190, 0.954094,
		42.296085, 32.463131, 35.838833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077991, 32.029121, 35.513702>,  <42.487499, 32.377598, 35.170967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077991, 32.029121, 35.513702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744923, 32.068291, 35.731716>,  <42.545082, 32.091793, 35.862526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744923, 32.068291, 35.731716>,  <43.077991, 32.029121, 35.513702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744923, 32.068291, 35.731716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114205, -0.932718, 0.342044,
		0.541859, 0.347057, 0.765468,
		-0.832674, 0.097920, 0.545037,
		42.495121, 32.097668, 35.895226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283241, 31.656607, 36.122948>,  <43.077991, 32.029121, 35.513702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283241, 31.656607, 36.122948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884705, 31.689016, 36.112019>,  <42.645584, 31.708462, 36.105461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884705, 31.689016, 36.112019>,  <43.283241, 31.656607, 36.122948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884705, 31.689016, 36.112019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085449, -0.955437, 0.282557,
		-0.003215, 0.283857, 0.958861,
		-0.996337, 0.081025, -0.027327,
		42.585804, 31.713324, 36.103821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038906, 31.416798, 36.757023>,  <43.283241, 31.656607, 36.122948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038906, 31.416798, 36.757023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725666, 31.376190, 36.511600>,  <42.537724, 31.351826, 36.364346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725666, 31.376190, 36.511600>,  <43.038906, 31.416798, 36.757023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725666, 31.376190, 36.511600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023805, -0.980970, 0.192694,
		-0.621445, 0.165504, 0.765777,
		-0.783096, -0.101519, -0.613559,
		42.490738, 31.345734, 36.327534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556404, 30.913790, 37.143211>,  <43.038906, 31.416798, 36.757023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556404, 30.913790, 37.143211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399960, 30.909599, 36.775097>,  <42.306091, 30.907085, 36.554230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399960, 30.909599, 36.775097>,  <42.556404, 30.913790, 37.143211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399960, 30.909599, 36.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099829, -0.993552, 0.053735,
		-0.914911, 0.112888, 0.387547,
		-0.391114, -0.010475, -0.920282,
		42.282627, 30.906456, 36.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809944, 30.582624, 37.150234>,  <42.556404, 30.913790, 37.143211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809944, 30.582624, 37.150234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956329, 30.547173, 36.779675>,  <42.044163, 30.525902, 36.557339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956329, 30.547173, 36.779675>,  <41.809944, 30.582624, 37.150234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956329, 30.547173, 36.779675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120221, -0.991616, 0.047379,
		-0.922830, 0.094033, -0.373555,
		0.365968, -0.088632, -0.926398,
		42.066120, 30.520582, 36.501755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331612, 30.135576, 36.816978>,  <41.809944, 30.582624, 37.150234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331612, 30.135576, 36.816978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653389, 30.123680, 36.579662>,  <41.846455, 30.116543, 36.437271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653389, 30.123680, 36.579662>,  <41.331612, 30.135576, 36.816978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653389, 30.123680, 36.579662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133581, -0.982223, -0.131888,
		-0.578819, 0.185348, -0.794112,
		0.804440, -0.029739, -0.593289,
		41.894722, 30.114759, 36.401676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051575, 29.823349, 36.202351>,  <41.331612, 30.135576, 36.816978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051575, 29.823349, 36.202351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442600, 29.742949, 36.227520>,  <41.677216, 29.694708, 36.242622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442600, 29.742949, 36.227520>,  <41.051575, 29.823349, 36.202351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442600, 29.742949, 36.227520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194177, -0.975813, -0.100423,
		0.081591, 0.085952, -0.992953,
		0.977568, -0.201002, 0.062928,
		41.735870, 29.682648, 36.246399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259102, 29.374414, 35.641613>,  <41.051575, 29.823349, 36.202351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259102, 29.374414, 35.641613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572792, 29.319944, 35.883751>,  <41.761005, 29.287262, 36.029034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572792, 29.319944, 35.883751>,  <41.259102, 29.374414, 35.641613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572792, 29.319944, 35.883751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139301, -0.989355, -0.042098,
		0.604634, -0.051311, -0.794849,
		0.784228, -0.136177, 0.605345,
		41.808060, 29.279091, 36.065353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736961, 28.994305, 35.147297>,  <41.259102, 29.374414, 35.641613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736961, 28.994305, 35.147297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737522, 28.607214, 35.046497>,  <41.737858, 28.374960, 34.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737522, 28.607214, 35.046497>,  <41.736961, 28.994305, 35.147297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737522, 28.607214, 35.046497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284807, 0.241950, -0.927548,
		0.958584, -0.070466, 0.275956,
		0.001407, -0.967726, -0.251999,
		41.737946, 28.316896, 34.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342747, 28.859282, 34.923920>,  <41.736961, 28.994305, 35.147297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342747, 28.859282, 34.923920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107224, 28.586779, 34.749935>,  <41.965908, 28.423277, 34.645542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107224, 28.586779, 34.749935>,  <42.342747, 28.859282, 34.923920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107224, 28.586779, 34.749935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402907, 0.219131, -0.888621,
		0.700693, -0.698478, 0.145457,
		-0.588808, -0.681256, -0.434966,
		41.930580, 28.382402, 34.619446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594601, 28.742378, 35.648331>,  <42.342747, 28.859282, 34.923920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594601, 28.742378, 35.648331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406914, 28.451231, 35.448315>,  <42.294300, 28.276543, 35.328304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406914, 28.451231, 35.448315>,  <42.594601, 28.742378, 35.648331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406914, 28.451231, 35.448315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778697, -0.073973, -0.623024,
		0.416490, -0.681715, 0.601499,
		-0.469219, -0.727869, -0.500041,
		42.266148, 28.232870, 35.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849453, 28.075596, 35.810261>,  <42.594601, 28.742378, 35.648331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849453, 28.075596, 35.810261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713631, 28.141478, 35.439838>,  <42.632137, 28.181005, 35.217587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713631, 28.141478, 35.439838>,  <42.849453, 28.075596, 35.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713631, 28.141478, 35.439838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910089, -0.191153, -0.367695,
		-0.237578, -0.967643, -0.084989,
		-0.339551, 0.164703, -0.926055,
		42.611767, 28.190887, 35.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062733, 27.516779, 35.334293>,  <42.849453, 28.075596, 35.810261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062733, 27.516779, 35.334293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017761, 27.866114, 35.144707>,  <42.990776, 28.075714, 35.030956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017761, 27.866114, 35.144707>,  <43.062733, 27.516779, 35.334293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017761, 27.866114, 35.144707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943302, -0.056111, -0.327158,
		-0.312313, -0.483876, -0.817511,
		-0.112432, 0.873336, -0.473966,
		42.984032, 28.128115, 35.002518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420109, 27.451181, 34.621895>,  <43.062733, 27.516779, 35.334293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420109, 27.451181, 34.621895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342865, 27.840738, 34.669640>,  <43.296520, 28.074472, 34.698284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342865, 27.840738, 34.669640>,  <43.420109, 27.451181, 34.621895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342865, 27.840738, 34.669640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832555, 0.227014, -0.505288,
		-0.519192, 0.001798, -0.854656,
		-0.193110, 0.973890, 0.119360,
		43.284931, 28.132906, 34.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332077, 27.835167, 33.938900>,  <43.420109, 27.451181, 34.621895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332077, 27.835167, 33.938900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490307, 28.020458, 34.256123>,  <43.585243, 28.131632, 34.446457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490307, 28.020458, 34.256123>,  <43.332077, 27.835167, 33.938900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490307, 28.020458, 34.256123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889097, 0.023369, -0.457122,
		-0.230284, 0.885932, -0.402609,
		0.395570, 0.463227, 0.793061,
		43.608978, 28.159426, 34.494041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716206, 28.382839, 33.670837>,  <43.332077, 27.835167, 33.938900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716206, 28.382839, 33.670837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877655, 28.302351, 34.027847>,  <43.974525, 28.254059, 34.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877655, 28.302351, 34.027847>,  <43.716206, 28.382839, 33.670837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877655, 28.302351, 34.027847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902411, -0.073245, -0.424605,
		0.150812, 0.976804, 0.152020,
		0.403622, -0.201220, 0.892525,
		43.998741, 28.241985, 34.295605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210552, 28.713123, 33.247440>,  <43.716206, 28.382839, 33.670837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210552, 28.713123, 33.247440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257385, 28.921350, 32.909138>,  <44.285484, 29.046288, 32.706158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257385, 28.921350, 32.909138>,  <44.210552, 28.713123, 33.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257385, 28.921350, 32.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766017, 0.494666, 0.410517,
		0.632068, -0.695925, -0.340849,
		0.117083, 0.520570, -0.845753,
		44.292511, 29.077522, 32.655411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933201, 28.869604, 33.196335>,  <44.210552, 28.713123, 33.247440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933201, 28.869604, 33.196335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735115, 29.113337, 32.948631>,  <44.616264, 29.259577, 32.800011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735115, 29.113337, 32.948631>,  <44.933201, 28.869604, 33.196335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735115, 29.113337, 32.948631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427626, 0.791430, 0.436778,
		0.756239, -0.048510, -0.652495,
		-0.495216, 0.609332, -0.619254,
		44.586552, 29.296137, 32.762856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486790, 29.384729, 32.849102>,  <44.933201, 28.869604, 33.196335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486790, 29.384729, 32.849102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112141, 29.524319, 32.861465>,  <44.887352, 29.608072, 32.868885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112141, 29.524319, 32.861465>,  <45.486790, 29.384729, 32.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112141, 29.524319, 32.861465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335063, 0.866525, 0.369955,
		0.102321, 0.356865, -0.928535,
		-0.936623, 0.348972, 0.030909,
		44.831154, 29.629011, 32.870739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499035, 30.038399, 32.450253>,  <45.486790, 29.384729, 32.849102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499035, 30.038399, 32.450253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164089, 30.046562, 32.668758>,  <44.963123, 30.051460, 32.799862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164089, 30.046562, 32.668758>,  <45.499035, 30.038399, 32.450253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164089, 30.046562, 32.668758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265007, 0.889176, 0.373010,
		-0.478113, 0.457109, -0.749973,
		-0.837365, 0.020407, 0.546264,
		44.912880, 30.052685, 32.832638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240200, 30.688328, 32.287800>,  <45.499035, 30.038399, 32.450253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240200, 30.688328, 32.287800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102314, 30.593845, 32.651203>,  <45.019585, 30.537155, 32.869244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102314, 30.593845, 32.651203>,  <45.240200, 30.688328, 32.287800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102314, 30.593845, 32.651203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284850, 0.895867, 0.341003,
		-0.894446, 0.376335, -0.241533,
		-0.344713, -0.236208, 0.908504,
		44.998901, 30.522984, 32.923756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731705, 31.248018, 32.534931>,  <45.240200, 30.688328, 32.287800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731705, 31.248018, 32.534931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864887, 31.050358, 32.856167>,  <44.944798, 30.931763, 33.048908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864887, 31.050358, 32.856167>,  <44.731705, 31.248018, 32.534931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864887, 31.050358, 32.856167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087955, 0.831698, 0.548218,
		-0.938830, -0.253170, 0.233458,
		0.332958, -0.494150, 0.803091,
		44.964775, 30.902113, 33.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242970, 31.491026, 32.977127>,  <44.731705, 31.248018, 32.534931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242970, 31.491026, 32.977127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546185, 31.322292, 33.176094>,  <44.728115, 31.221052, 33.295475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546185, 31.322292, 33.176094>,  <44.242970, 31.491026, 32.977127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546185, 31.322292, 33.176094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086897, 0.821198, 0.563988,
		-0.646391, -0.384302, 0.659158,
		0.758042, -0.421836, 0.497420,
		44.773598, 31.195742, 33.325321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162266, 31.547651, 33.682980>,  <44.242970, 31.491026, 32.977127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162266, 31.547651, 33.682980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558887, 31.513960, 33.643536>,  <44.796860, 31.493746, 33.619869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558887, 31.513960, 33.643536>,  <44.162266, 31.547651, 33.682980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558887, 31.513960, 33.643536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123410, 0.846510, 0.517871,
		0.039856, -0.525667, 0.849756,
		0.991555, -0.084228, -0.098611,
		44.856354, 31.488691, 33.613953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400543, 31.750816, 34.337536>,  <44.162266, 31.547651, 33.682980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400543, 31.750816, 34.337536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716290, 31.771961, 34.092880>,  <44.905739, 31.784649, 33.946087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716290, 31.771961, 34.092880>,  <44.400543, 31.750816, 34.337536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716290, 31.771961, 34.092880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273621, 0.861569, 0.427588,
		0.549575, -0.504881, 0.665629,
		0.789366, 0.052862, -0.611643,
		44.953098, 31.787819, 33.909386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011189, 32.011234, 34.786312>,  <44.400543, 31.750816, 34.337536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011189, 32.011234, 34.786312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107414, 32.064472, 34.401726>,  <45.165150, 32.096413, 34.170975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107414, 32.064472, 34.401726>,  <45.011189, 32.011234, 34.786312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107414, 32.064472, 34.401726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262912, 0.944590, 0.196538,
		0.934348, -0.300060, 0.192242,
		0.240563, 0.133092, -0.961466,
		45.179585, 32.104401, 34.113285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719414, 32.266510, 34.765198>,  <45.011189, 32.011234, 34.786312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719414, 32.266510, 34.765198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546654, 32.348515, 34.413876>,  <45.442997, 32.397717, 34.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546654, 32.348515, 34.413876>,  <45.719414, 32.266510, 34.765198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546654, 32.348515, 34.413876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318044, 0.945887, 0.064392,
		0.843983, -0.251530, -0.473736,
		-0.431904, 0.205015, -0.878310,
		45.417084, 32.410019, 34.150383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066448, 32.848614, 34.523376>,  <45.719414, 32.266510, 34.765198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066448, 32.848614, 34.523376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754574, 32.872837, 34.274086>,  <45.567448, 32.887371, 34.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754574, 32.872837, 34.274086>,  <46.066448, 32.848614, 34.523376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754574, 32.872837, 34.274086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042190, 0.998131, 0.044210,
		0.624743, 0.008176, -0.780788,
		-0.779690, 0.060561, -0.623231,
		45.520668, 32.891006, 34.087116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201866, 33.279129, 33.941849>,  <46.066448, 32.848614, 34.523376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201866, 33.279129, 33.941849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804070, 33.275753, 33.983624>,  <45.565392, 33.273727, 34.008686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804070, 33.275753, 33.983624>,  <46.201866, 33.279129, 33.941849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804070, 33.275753, 33.983624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011717, 0.999458, -0.030761,
		-0.104117, -0.031816, -0.994056,
		-0.994496, -0.008445, 0.104433,
		45.505722, 33.273220, 34.014954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934681, 33.590668, 33.292271>,  <46.201866, 33.279129, 33.941849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934681, 33.590668, 33.292271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696285, 33.626556, 33.611454>,  <45.553246, 33.648090, 33.802963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696285, 33.626556, 33.611454>,  <45.934681, 33.590668, 33.292271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696285, 33.626556, 33.611454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220728, 0.973762, 0.055374,
		-0.772058, 0.209135, -0.600158,
		-0.595991, 0.089720, 0.797963,
		45.517487, 33.653473, 33.850842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774902, 34.326145, 33.294750>,  <45.934681, 33.590668, 33.292271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774902, 34.326145, 33.294750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605492, 34.225582, 33.642868>,  <45.503845, 34.165245, 33.851738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.605492, 34.225582, 33.642868>,  <45.774902, 34.326145, 33.294750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605492, 34.225582, 33.642868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141131, 0.930674, 0.337532,
		-0.894821, 0.265781, -0.358687,
		-0.423530, -0.251409, 0.870296,
		45.478432, 34.150158, 33.903957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092346, 34.713306, 33.337536>,  <45.774902, 34.326145, 33.294750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092346, 34.713306, 33.337536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249016, 34.632153, 33.696518>,  <45.343018, 34.583462, 33.911907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249016, 34.632153, 33.696518>,  <45.092346, 34.713306, 33.337536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249016, 34.632153, 33.696518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059928, 0.967691, 0.244912,
		-0.918152, -0.149708, 0.366858,
		0.391671, -0.202882, 0.897459,
		45.366516, 34.571289, 33.965755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895790, 35.192501, 33.739414>,  <45.092346, 34.713306, 33.337536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895790, 35.192501, 33.739414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156773, 35.039352, 34.001015>,  <45.313362, 34.947464, 34.157974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156773, 35.039352, 34.001015>,  <44.895790, 35.192501, 33.739414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156773, 35.039352, 34.001015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240366, 0.922982, 0.300547,
		-0.718700, -0.038893, 0.694232,
		0.652452, -0.382873, 0.653998,
		45.352509, 34.924492, 34.197216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713112, 35.468319, 34.352440>,  <44.895790, 35.192501, 33.739414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713112, 35.468319, 34.352440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100449, 35.369381, 34.365963>,  <45.332851, 35.310020, 34.374077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100449, 35.369381, 34.365963>,  <44.713112, 35.468319, 34.352440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100449, 35.369381, 34.365963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243532, 0.965714, 0.089936,
		-0.054894, -0.078855, 0.995374,
		0.968338, -0.247343, 0.033808,
		45.390949, 35.295177, 34.376106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912243, 35.773357, 34.999771>,  <44.713112, 35.468319, 34.352440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912243, 35.773357, 34.999771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261021, 35.737446, 34.807251>,  <45.470287, 35.715900, 34.691738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261021, 35.737446, 34.807251>,  <44.912243, 35.773357, 34.999771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261021, 35.737446, 34.807251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229827, 0.943059, 0.240457,
		0.432307, -0.320282, 0.842929,
		0.871946, -0.089777, -0.481300,
		45.522606, 35.710514, 34.662861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480286, 36.107700, 35.448158>,  <44.912243, 35.773357, 34.999771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480286, 36.107700, 35.448158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591660, 36.086952, 35.064537>,  <45.658482, 36.074505, 34.834362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591660, 36.086952, 35.064537>,  <45.480286, 36.107700, 35.448158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591660, 36.086952, 35.064537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371081, 0.926812, 0.057607,
		0.885876, -0.371926, 0.277300,
		0.278431, -0.051868, -0.959055,
		45.675190, 36.071392, 34.776821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266808, 36.324268, 35.400955>,  <45.480286, 36.107700, 35.448158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266808, 36.324268, 35.400955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115131, 36.366882, 35.033291>,  <46.024124, 36.392452, 34.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115131, 36.366882, 35.033291>,  <46.266808, 36.324268, 35.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115131, 36.366882, 35.033291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232150, 0.972532, 0.016953,
		0.895724, -0.206956, -0.393507,
		-0.379190, 0.106537, -0.919165,
		46.001373, 36.398842, 34.757542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801495, 36.650578, 34.988258>,  <46.266808, 36.324268, 35.400955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801495, 36.650578, 34.988258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435047, 36.721264, 34.844318>,  <46.215179, 36.763676, 34.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435047, 36.721264, 34.844318>,  <46.801495, 36.650578, 34.988258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435047, 36.721264, 34.844318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128540, 0.979696, 0.153860,
		0.379736, 0.094699, -0.920235,
		-0.916121, 0.176714, -0.359853,
		46.160210, 36.774277, 34.736362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365429, 36.320534, 35.429722>,  <46.801495, 36.650578, 34.988258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365429, 36.320534, 35.429722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301395, 36.202663, 35.052883>,  <47.262978, 36.131939, 34.826782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301395, 36.202663, 35.052883>,  <47.365429, 36.320534, 35.429722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301395, 36.202663, 35.052883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708650, -0.698702, 0.098135,
		-0.687161, -0.651904, 0.320673,
		-0.160080, -0.294680, -0.942092,
		47.253372, 36.114258, 34.770256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058270, 35.704697, 35.405483>,  <47.365429, 36.320534, 35.429722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058270, 35.704697, 35.405483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288357, 35.789543, 35.089474>,  <47.426407, 35.840450, 34.899868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288357, 35.789543, 35.089474>,  <47.058270, 35.704697, 35.405483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288357, 35.789543, 35.089474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629252, -0.731828, 0.261667,
		-0.522655, -0.647637, -0.554435,
		0.575216, 0.212118, -0.790021,
		47.460922, 35.853180, 34.852467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138950, 35.205181, 34.914165>,  <47.058270, 35.704697, 35.405483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138950, 35.205181, 34.914165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.478558, 35.415737, 34.895939>,  <47.682323, 35.542072, 34.885002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.478558, 35.415737, 34.895939>,  <47.138950, 35.205181, 34.914165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.478558, 35.415737, 34.895939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510344, -0.794679, 0.328685,
		0.136806, -0.302316, -0.943339,
		0.849019, 0.526394, -0.045568,
		47.733265, 35.573654, 34.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.705582, 34.796089, 34.547680>,  <47.138950, 35.205181, 34.914165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.705582, 34.796089, 34.547680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834713, 35.057739, 34.821293>,  <47.912193, 35.214729, 34.985462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834713, 35.057739, 34.821293>,  <47.705582, 34.796089, 34.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834713, 35.057739, 34.821293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460623, -0.739952, 0.490200,
		0.826805, 0.156831, -0.540183,
		0.322832, 0.654121, 0.684036,
		47.931564, 35.253975, 35.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.151497, 43.826725, 45.019829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755554, 43.784866, 45.058250>,  <36.517986, 43.759750, 45.081303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755554, 43.784866, 45.058250>,  <37.151497, 43.826725, 45.019829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755554, 43.784866, 45.058250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029647, -0.509118, -0.860186,
		0.138922, -0.854311, 0.500853,
		-0.989859, -0.104650, 0.096055,
		36.458595, 43.753471, 45.087067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085468, 43.280762, 44.652637>,  <37.151497, 43.826725, 45.019829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085468, 43.280762, 44.652637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703220, 43.389641, 44.697723>,  <36.473873, 43.454967, 44.724773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703220, 43.389641, 44.697723>,  <37.085468, 43.280762, 44.652637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703220, 43.389641, 44.697723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265666, -0.630797, -0.729052,
		-0.127346, -0.726639, 0.675114,
		-0.955617, 0.272196, 0.112714,
		36.416534, 43.471298, 44.731537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716286, 42.695080, 44.441319>,  <37.085468, 43.280762, 44.652637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716286, 42.695080, 44.441319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440685, 42.984783, 44.430553>,  <36.275326, 43.158607, 44.424095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440685, 42.984783, 44.430553>,  <36.716286, 42.695080, 44.441319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440685, 42.984783, 44.430553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447537, -0.454369, -0.770233,
		-0.570081, -0.518643, 0.637194,
		-0.688998, 0.724264, -0.026915,
		36.233986, 43.202061, 44.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966621, 42.332615, 44.322453>,  <36.716286, 42.695080, 44.441319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966621, 42.332615, 44.322453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922855, 42.711685, 44.202488>,  <35.896595, 42.939125, 44.130508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.922855, 42.711685, 44.202488>,  <35.966621, 42.332615, 44.322453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922855, 42.711685, 44.202488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418503, -0.317595, -0.850875,
		-0.901600, 0.032411, 0.431355,
		-0.109419, 0.947672, -0.299908,
		35.890030, 42.995987, 44.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185753, 42.471352, 44.191273>,  <35.966621, 42.332615, 44.322453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185753, 42.471352, 44.191273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382622, 42.755665, 43.990257>,  <35.500744, 42.926254, 43.869648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382622, 42.755665, 43.990257>,  <35.185753, 42.471352, 44.191273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382622, 42.755665, 43.990257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432212, -0.301584, -0.849847,
		-0.755619, 0.635475, 0.158779,
		0.492172, 0.710787, -0.502542,
		35.530273, 42.968903, 43.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757370, 42.579548, 43.634983>,  <35.185753, 42.471352, 44.191273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757370, 42.579548, 43.634983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092594, 42.751804, 43.500992>,  <35.293728, 42.855156, 43.420597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092594, 42.751804, 43.500992>,  <34.757370, 42.579548, 43.634983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092594, 42.751804, 43.500992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195110, -0.336820, -0.921132,
		-0.509502, 0.837319, -0.198253,
		0.838057, 0.430637, -0.334980,
		35.344009, 42.880997, 43.400497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591965, 42.966614, 43.067150>,  <34.757370, 42.579548, 43.634983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591965, 42.966614, 43.067150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980495, 42.883270, 43.021336>,  <35.213612, 42.833263, 42.993847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980495, 42.883270, 43.021336>,  <34.591965, 42.966614, 43.067150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980495, 42.883270, 43.021336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180636, -0.333440, -0.925305,
		0.154607, 0.919458, -0.361515,
		0.971323, -0.208361, -0.114535,
		35.271893, 42.820763, 42.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863358, 43.131279, 42.371059>,  <34.591965, 42.966614, 43.067150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863358, 43.131279, 42.371059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169781, 42.902946, 42.489246>,  <35.353634, 42.765945, 42.560158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169781, 42.902946, 42.489246>,  <34.863358, 43.131279, 42.371059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169781, 42.902946, 42.489246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048018, -0.407573, -0.911909,
		0.640974, 0.712764, -0.284815,
		0.766059, -0.570834, 0.295469,
		35.399597, 42.731697, 42.577888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436108, 43.184444, 41.802307>,  <34.863358, 43.131279, 42.371059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436108, 43.184444, 41.802307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458267, 42.848869, 42.018871>,  <35.471561, 42.647526, 42.148808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458267, 42.848869, 42.018871>,  <35.436108, 43.184444, 41.802307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458267, 42.848869, 42.018871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113853, -0.533396, -0.838168,
		0.991952, 0.108074, 0.065966,
		0.055398, -0.838933, 0.541408,
		35.474888, 42.597191, 42.181293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874542, 42.791561, 41.515099>,  <35.436108, 43.184444, 41.802307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874542, 42.791561, 41.515099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712582, 42.503090, 41.739941>,  <35.615406, 42.330009, 41.874847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712582, 42.503090, 41.739941>,  <35.874542, 42.791561, 41.515099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712582, 42.503090, 41.739941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166258, -0.662571, -0.730314,
		0.899118, -0.202251, 0.388177,
		-0.404902, -0.721175, 0.562104,
		35.591110, 42.286736, 41.908573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325237, 42.183681, 41.674946>,  <35.874542, 42.791561, 41.515099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325237, 42.183681, 41.674946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950493, 42.044472, 41.688690>,  <35.725647, 41.960945, 41.696938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.950493, 42.044472, 41.688690>,  <36.325237, 42.183681, 41.674946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950493, 42.044472, 41.688690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148077, -0.483780, -0.862572,
		0.316816, -0.803019, 0.504766,
		-0.936857, -0.348021, 0.034361,
		35.669437, 41.940067, 41.698997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383434, 41.437565, 41.620777>,  <36.325237, 42.183681, 41.674946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383434, 41.437565, 41.620777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011524, 41.510338, 41.492767>,  <35.788376, 41.554001, 41.415962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011524, 41.510338, 41.492767>,  <36.383434, 41.437565, 41.620777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011524, 41.510338, 41.492767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223438, -0.411971, -0.883377,
		-0.292553, -0.892850, 0.342391,
		-0.929779, 0.181932, -0.320020,
		35.732590, 41.564919, 41.396763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238865, 40.896755, 41.312794>,  <36.383434, 41.437565, 41.620777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238865, 40.896755, 41.312794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967747, 41.144821, 41.154812>,  <35.805077, 41.293659, 41.060024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967747, 41.144821, 41.154812>,  <36.238865, 40.896755, 41.312794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967747, 41.144821, 41.154812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126661, -0.430654, -0.893585,
		-0.724256, -0.655695, 0.213346,
		-0.677798, 0.620162, -0.394955,
		35.764408, 41.330872, 41.036324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737213, 40.498840, 40.929386>,  <36.238865, 40.896755, 41.312794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737213, 40.498840, 40.929386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715614, 40.865856, 40.771801>,  <35.702656, 41.086067, 40.677250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715614, 40.865856, 40.771801>,  <35.737213, 40.498840, 40.929386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715614, 40.865856, 40.771801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104813, -0.387147, -0.916041,
		-0.993025, -0.090760, -0.075264,
		-0.054002, 0.917540, -0.393959,
		35.699413, 41.141117, 40.653614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531734, 40.279984, 40.281944>,  <35.737213, 40.498840, 40.929386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531734, 40.279984, 40.281944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586040, 40.668686, 40.204735>,  <35.618626, 40.901909, 40.158409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586040, 40.668686, 40.204735>,  <35.531734, 40.279984, 40.281944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586040, 40.668686, 40.204735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249794, -0.222107, -0.942481,
		-0.958734, 0.079739, -0.272893,
		0.135764, 0.971756, -0.193024,
		35.626770, 40.960213, 40.146828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344009, 40.435326, 39.608555>,  <35.531734, 40.279984, 40.281944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344009, 40.435326, 39.608555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599335, 40.730114, 39.697491>,  <35.752529, 40.906986, 39.750851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599335, 40.730114, 39.697491>,  <35.344009, 40.435326, 39.608555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599335, 40.730114, 39.697491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589368, -0.282086, -0.757016,
		-0.495177, 0.614253, -0.614404,
		0.638314, 0.736967, 0.222339,
		35.790829, 40.951202, 39.764191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519207, 40.705349, 38.938423>,  <35.344009, 40.435326, 39.608555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519207, 40.705349, 38.938423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797344, 40.840824, 39.191971>,  <35.964226, 40.922108, 39.344097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797344, 40.840824, 39.191971>,  <35.519207, 40.705349, 38.938423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797344, 40.840824, 39.191971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708210, -0.172949, -0.684491,
		-0.122203, 0.924867, -0.360121,
		0.695345, 0.338688, 0.633865,
		36.005947, 40.942432, 39.382130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997765, 40.967953, 38.519543>,  <35.519207, 40.705349, 38.938423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997765, 40.967953, 38.519543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189137, 40.929951, 38.868732>,  <36.303959, 40.907150, 39.078247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.189137, 40.929951, 38.868732>,  <35.997765, 40.967953, 38.519543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189137, 40.929951, 38.868732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811275, -0.332646, -0.480812,
		0.336069, 0.938255, -0.082074,
		0.478425, -0.095001, 0.872974,
		36.332664, 40.901451, 39.130623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588497, 41.497692, 38.571163>,  <35.997765, 40.967953, 38.519543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588497, 41.497692, 38.571163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657425, 41.162334, 38.778004>,  <36.698780, 40.961121, 38.902107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657425, 41.162334, 38.778004>,  <36.588497, 41.497692, 38.571163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657425, 41.162334, 38.778004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723260, -0.248695, -0.644240,
		0.668730, 0.485015, 0.563525,
		0.172320, -0.838398, 0.517102,
		36.709122, 40.910816, 38.933136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379349, 41.309475, 38.563507>,  <36.588497, 41.497692, 38.571163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379349, 41.309475, 38.563507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232765, 40.945995, 38.643490>,  <37.144817, 40.727909, 38.691479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232765, 40.945995, 38.643490>,  <37.379349, 41.309475, 38.563507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232765, 40.945995, 38.643490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622475, -0.399168, -0.673194,
		0.691546, -0.122224, 0.711917,
		-0.366455, -0.908695, 0.199961,
		37.122829, 40.673386, 38.703480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923439, 40.919312, 38.576550>,  <37.379349, 41.309475, 38.563507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923439, 40.919312, 38.576550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637135, 40.643856, 38.530163>,  <37.465351, 40.478580, 38.502331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637135, 40.643856, 38.530163>,  <37.923439, 40.919312, 38.576550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637135, 40.643856, 38.530163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470057, -0.352282, -0.809286,
		0.516455, -0.633772, 0.575853,
		-0.715766, -0.688644, -0.115971,
		37.422405, 40.437263, 38.495373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187344, 40.181042, 38.679714>,  <37.923439, 40.919312, 38.576550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187344, 40.181042, 38.679714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858131, 40.163502, 38.453194>,  <37.660603, 40.152977, 38.317280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858131, 40.163502, 38.453194>,  <38.187344, 40.181042, 38.679714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858131, 40.163502, 38.453194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532862, -0.404838, -0.743078,
		-0.196677, -0.913336, 0.356560,
		-0.823029, -0.043851, -0.566304,
		37.611221, 40.150345, 38.283302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966492, 39.927357, 38.689560>,  <38.187344, 40.181042, 38.679714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966492, 39.927357, 38.689560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243038, 39.660591, 38.578384>,  <39.408966, 39.500534, 38.511681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243038, 39.660591, 38.578384>,  <38.966492, 39.927357, 38.689560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243038, 39.660591, 38.578384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709041, 0.700193, 0.083606,
		0.138852, -0.254871, 0.956954,
		0.691362, -0.666911, -0.277938,
		39.450447, 39.460518, 38.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384281, 39.541271, 39.227764>,  <38.966492, 39.927357, 38.689560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384281, 39.541271, 39.227764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513733, 39.658245, 38.867821>,  <39.591404, 39.728428, 38.651855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513733, 39.658245, 38.867821>,  <39.384281, 39.541271, 39.227764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513733, 39.658245, 38.867821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555025, 0.711557, 0.430853,
		0.766297, -0.638881, 0.067972,
		0.323629, 0.292435, -0.899859,
		39.610821, 39.745975, 38.597862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080254, 39.452145, 39.220375>,  <39.384281, 39.541271, 39.227764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080254, 39.452145, 39.220375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.040077, 39.728889, 38.934372>,  <40.015972, 39.894936, 38.762772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.040077, 39.728889, 38.934372>,  <40.080254, 39.452145, 39.220375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040077, 39.728889, 38.934372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660889, 0.583589, 0.471858,
		0.743732, -0.425146, -0.515862,
		-0.100443, 0.691863, -0.715008,
		40.009945, 39.936447, 38.719868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710476, 39.782032, 39.292484>,  <40.080254, 39.452145, 39.220375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710476, 39.782032, 39.292484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473129, 40.038006, 39.097183>,  <40.330719, 40.191589, 38.980003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473129, 40.038006, 39.097183>,  <40.710476, 39.782032, 39.292484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473129, 40.038006, 39.097183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420050, 0.763614, 0.490360,
		0.686638, 0.085872, -0.721910,
		-0.593368, 0.639938, -0.488256,
		40.295120, 40.229988, 38.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205044, 40.291729, 39.075272>,  <40.710476, 39.782032, 39.292484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205044, 40.291729, 39.075272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844509, 40.464973, 39.075077>,  <40.628189, 40.568920, 39.074959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.844509, 40.464973, 39.075077>,  <41.205044, 40.291729, 39.075272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844509, 40.464973, 39.075077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377441, 0.786036, 0.489576,
		0.212426, 0.441089, -0.871961,
		-0.901340, 0.433113, -0.000490,
		40.574108, 40.594906, 39.074928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268841, 41.105400, 38.968792>,  <41.205044, 40.291729, 39.075272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268841, 41.105400, 38.968792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907211, 41.025715, 39.120037>,  <40.690235, 40.977905, 39.210785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.907211, 41.025715, 39.120037>,  <41.268841, 41.105400, 38.968792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907211, 41.025715, 39.120037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064548, 0.810928, 0.581575,
		-0.422482, 0.550191, -0.720277,
		-0.904070, -0.199212, 0.378116,
		40.635990, 40.965950, 39.233471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811604, 41.817921, 39.038227>,  <41.268841, 41.105400, 38.968792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811604, 41.817921, 39.038227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.636997, 41.570961, 39.299999>,  <40.532234, 41.422787, 39.457062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.636997, 41.570961, 39.299999>,  <40.811604, 41.817921, 39.038227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636997, 41.570961, 39.299999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029451, 0.736803, 0.675466,
		-0.899214, 0.275579, -0.339810,
		-0.436517, -0.617396, 0.654427,
		40.506042, 41.385742, 39.496326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160595, 42.215534, 39.349567>,  <40.811604, 41.817921, 39.038227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160595, 42.215534, 39.349567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268642, 41.910351, 39.584492>,  <40.333473, 41.727242, 39.725445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268642, 41.910351, 39.584492>,  <40.160595, 42.215534, 39.349567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268642, 41.910351, 39.584492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085943, 0.588441, 0.803959,
		-0.958983, -0.267641, 0.093379,
		0.270121, -0.762958, 0.587307,
		40.349678, 41.681465, 39.760685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621708, 42.183987, 39.871990>,  <40.160595, 42.215534, 39.349567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621708, 42.183987, 39.871990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938850, 42.009727, 40.042442>,  <40.129135, 41.905170, 40.144714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.938850, 42.009727, 40.042442>,  <39.621708, 42.183987, 39.871990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938850, 42.009727, 40.042442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222285, 0.444330, 0.867848,
		-0.567418, -0.782803, 0.255453,
		0.792860, -0.435649, 0.426126,
		40.176708, 41.879032, 40.170280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405052, 41.914803, 40.566147>,  <39.621708, 42.183987, 39.871990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405052, 41.914803, 40.566147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802387, 41.958443, 40.580971>,  <40.040791, 41.984627, 40.589867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802387, 41.958443, 40.580971>,  <39.405052, 41.914803, 40.566147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802387, 41.958443, 40.580971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078331, 0.403488, 0.911626,
		0.084502, -0.908458, 0.409346,
		0.993340, 0.109099, 0.037065,
		40.100388, 41.991173, 40.592091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522827, 41.856525, 41.251007>,  <39.405052, 41.914803, 40.566147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522827, 41.856525, 41.251007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863216, 42.014256, 41.112236>,  <40.067448, 42.108894, 41.028973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.863216, 42.014256, 41.112236>,  <39.522827, 41.856525, 41.251007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863216, 42.014256, 41.112236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195430, 0.375390, 0.906029,
		0.487501, -0.838805, 0.242384,
		0.850970, 0.394321, -0.346931,
		40.118507, 42.132553, 41.008156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086353, 41.788311, 41.843220>,  <39.522827, 41.856525, 41.251007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086353, 41.788311, 41.843220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196346, 42.076500, 41.588566>,  <40.262341, 42.249413, 41.435776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196346, 42.076500, 41.588566>,  <40.086353, 41.788311, 41.843220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196346, 42.076500, 41.588566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281842, 0.572664, 0.769818,
		0.919211, -0.391117, -0.045587,
		0.274983, 0.720474, -0.636633,
		40.278843, 42.292641, 41.397575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816074, 41.958229, 41.928833>,  <40.086353, 41.788311, 41.843220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816074, 41.958229, 41.928833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606979, 42.264278, 41.778454>,  <40.481522, 42.447906, 41.688229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606979, 42.264278, 41.778454>,  <40.816074, 41.958229, 41.928833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606979, 42.264278, 41.778454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029043, 0.456723, 0.889135,
		0.851996, 0.453869, -0.260969,
		-0.522742, 0.765119, -0.375945,
		40.450157, 42.493813, 41.665668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175125, 42.519535, 42.257652>,  <40.816074, 41.958229, 41.928833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175125, 42.519535, 42.257652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826485, 42.677769, 42.141838>,  <40.617302, 42.772709, 42.072350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826485, 42.677769, 42.141838>,  <41.175125, 42.519535, 42.257652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826485, 42.677769, 42.141838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024201, 0.624625, 0.780550,
		0.489626, 0.673317, -0.553995,
		-0.871597, 0.395584, -0.289537,
		40.565006, 42.796444, 42.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207619, 43.215843, 42.407871>,  <41.175125, 42.519535, 42.257652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207619, 43.215843, 42.407871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818642, 43.124470, 42.389179>,  <40.585255, 43.069645, 42.377964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818642, 43.124470, 42.389179>,  <41.207619, 43.215843, 42.407871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818642, 43.124470, 42.389179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176820, 0.591844, 0.786420,
		-0.151983, 0.773008, -0.615922,
		-0.972438, -0.228429, -0.046733,
		40.526909, 43.055943, 42.375160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845055, 43.874397, 42.292805>,  <41.207619, 43.215843, 42.407871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845055, 43.874397, 42.292805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 43.587055, 42.468094>,  <40.499260, 43.414650, 42.573269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.628933, 43.587055, 42.468094>,  <40.845055, 43.874397, 42.292805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628933, 43.587055, 42.468094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152874, 0.595917, 0.788360,
		-0.827466, 0.358962, -0.431794,
		-0.540305, -0.718352, 0.438225,
		40.466843, 43.371552, 42.599560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371254, 44.327412, 42.589363>,  <40.845055, 43.874397, 42.292805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371254, 44.327412, 42.589363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302944, 43.966778, 42.748348>,  <40.261959, 43.750397, 42.843739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302944, 43.966778, 42.748348>,  <40.371254, 44.327412, 42.589363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302944, 43.966778, 42.748348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418029, 0.431580, 0.799368,
		-0.892238, -0.029639, -0.450593,
		-0.170774, -0.901587, 0.397462,
		40.251713, 43.696301, 42.867588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654522, 44.313831, 42.784096>,  <40.371254, 44.327412, 42.589363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654522, 44.313831, 42.784096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818695, 44.041172, 43.026386>,  <39.917198, 43.877575, 43.171761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818695, 44.041172, 43.026386>,  <39.654522, 44.313831, 42.784096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818695, 44.041172, 43.026386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578211, 0.319105, 0.750895,
		-0.705135, -0.658429, -0.263164,
		0.410434, -0.681647, 0.605723,
		39.941826, 43.836678, 43.208103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.116425, 43.968960, 43.120819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434826, 43.905823, 43.354557>,  <39.625866, 43.867939, 43.494801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434826, 43.905823, 43.354557>,  <39.116425, 43.968960, 43.120819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434826, 43.905823, 43.354557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576899, 0.094362, 0.811347,
		-0.183209, -0.982945, -0.015949,
		0.796004, -0.157847, 0.584348,
		39.673626, 43.858467, 43.529861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857430, 43.686459, 43.729721>,  <39.116425, 43.968960, 43.120819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857430, 43.686459, 43.729721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223324, 43.801033, 43.843716>,  <39.442860, 43.869778, 43.912113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223324, 43.801033, 43.843716>,  <38.857430, 43.686459, 43.729721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223324, 43.801033, 43.843716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348836, 0.203900, 0.914734,
		0.203900, -0.936152, 0.286432,
		-0.914734, -0.286432, -0.284989,
		39.497746, 43.886963, 43.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045082, 43.302986, 44.339539>,  <38.857430, 43.686459, 43.729721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045082, 43.302986, 44.339539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268764, 43.633682, 44.364193>,  <39.402973, 43.832100, 44.378986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268764, 43.633682, 44.364193>,  <39.045082, 43.302986, 44.339539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268764, 43.633682, 44.364193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233289, 0.085583, 0.968634,
		0.795531, -0.556040, 0.240727,
		0.559201, 0.826738, 0.061634,
		39.436523, 43.881702, 44.382683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226002, 43.313320, 45.090786>,  <39.045082, 43.302986, 44.339539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226002, 43.313320, 45.090786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339668, 43.669846, 44.949478>,  <39.407867, 43.883762, 44.864693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339668, 43.669846, 44.949478>,  <39.226002, 43.313320, 45.090786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339668, 43.669846, 44.949478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163982, 0.408216, 0.898036,
		0.944649, -0.197259, 0.262160,
		0.284164, 0.891318, -0.353274,
		39.424919, 43.937241, 44.843494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630848, 43.660007, 45.622784>,  <39.226002, 43.313320, 45.090786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630848, 43.660007, 45.622784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490654, 43.956463, 45.393742>,  <39.406536, 44.134335, 45.256317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490654, 43.956463, 45.393742>,  <39.630848, 43.660007, 45.622784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490654, 43.956463, 45.393742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394873, 0.437452, 0.807905,
		0.849256, 0.509263, 0.139336,
		-0.350484, 0.741139, -0.572603,
		39.385509, 44.178806, 45.221962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705246, 44.175789, 46.103386>,  <39.630848, 43.660007, 45.622784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705246, 44.175789, 46.103386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469215, 44.323021, 45.815964>,  <39.327595, 44.411362, 45.643509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469215, 44.323021, 45.815964>,  <39.705246, 44.175789, 46.103386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469215, 44.323021, 45.815964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404752, 0.635222, 0.657776,
		0.698557, 0.678977, -0.225850,
		-0.590079, 0.368081, -0.718556,
		39.292191, 44.433445, 45.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715599, 44.965466, 46.207588>,  <39.705246, 44.175789, 46.103386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715599, 44.965466, 46.207588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378525, 44.885361, 46.007675>,  <39.176281, 44.837299, 45.887730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378525, 44.885361, 46.007675>,  <39.715599, 44.965466, 46.207588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378525, 44.885361, 46.007675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527516, 0.492876, 0.691954,
		0.107759, 0.846740, -0.520979,
		-0.842683, -0.200260, -0.499781,
		39.125721, 44.825283, 45.857742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499622, 45.568047, 45.928291>,  <39.715599, 44.965466, 46.207588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499622, 45.568047, 45.928291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193886, 45.312916, 45.966148>,  <39.010445, 45.159836, 45.988861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193886, 45.312916, 45.966148>,  <39.499622, 45.568047, 45.928291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193886, 45.312916, 45.966148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379520, 0.563658, 0.733658,
		-0.521292, 0.524848, -0.672896,
		-0.764342, -0.637827, 0.094640,
		38.964584, 45.121567, 45.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861408, 45.935726, 46.029858>,  <39.499622, 45.568047, 45.928291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861408, 45.935726, 46.029858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753338, 45.567326, 46.142109>,  <38.688496, 45.346283, 46.209461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753338, 45.567326, 46.142109>,  <38.861408, 45.935726, 46.029858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753338, 45.567326, 46.142109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120356, 0.321488, 0.939234,
		-0.955258, 0.219985, -0.197708,
		-0.270178, -0.921006, 0.280628,
		38.672283, 45.291023, 46.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511021, 46.142502, 46.556709>,  <38.861408, 45.935726, 46.029858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511021, 46.142502, 46.556709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.541370, 45.752483, 46.640160>,  <38.559582, 45.518471, 46.690231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.541370, 45.752483, 46.640160>,  <38.511021, 46.142502, 46.556709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541370, 45.752483, 46.640160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049858, 0.205260, 0.977437,
		-0.995870, -0.084565, -0.033040,
		0.075875, -0.975047, 0.208628,
		38.564133, 45.459969, 46.702747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928955, 45.929012, 46.917561>,  <38.511021, 46.142502, 46.556709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928955, 45.929012, 46.917561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237843, 45.690105, 47.004230>,  <38.423176, 45.546761, 47.056232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237843, 45.690105, 47.004230>,  <37.928955, 45.929012, 46.917561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237843, 45.690105, 47.004230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053559, 0.278624, 0.958906,
		-0.633099, -0.752087, 0.183168,
		0.772216, -0.597272, 0.216677,
		38.469509, 45.510925, 47.069233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729576, 45.567432, 47.502434>,  <37.928955, 45.929012, 46.917561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729576, 45.567432, 47.502434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129299, 45.553616, 47.496880>,  <38.369133, 45.545326, 47.493546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129299, 45.553616, 47.496880>,  <37.729576, 45.567432, 47.502434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129299, 45.553616, 47.496880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015375, 0.043107, 0.998952,
		-0.033911, -0.998473, 0.043608,
		0.999307, -0.034545, -0.013889,
		38.429092, 45.543251, 47.492714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849434, 45.437565, 48.203926>,  <37.729576, 45.567432, 47.502434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849434, 45.437565, 48.203926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203815, 45.544846, 48.052586>,  <38.416447, 45.609215, 47.961781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203815, 45.544846, 48.052586>,  <37.849434, 45.437565, 48.203926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203815, 45.544846, 48.052586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316650, 0.246227, 0.916027,
		0.338841, -0.931364, 0.133220,
		0.885957, 0.268204, -0.378349,
		38.469604, 45.625305, 47.939079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333912, 45.116947, 48.672489>,  <37.849434, 45.437565, 48.203926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333912, 45.116947, 48.672489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548290, 45.391808, 48.476288>,  <38.676918, 45.556725, 48.358566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548290, 45.391808, 48.476288>,  <38.333912, 45.116947, 48.672489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548290, 45.391808, 48.476288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356767, 0.342225, 0.869252,
		0.765168, -0.640864, -0.061740,
		0.535943, 0.687150, -0.490499,
		38.709072, 45.597954, 48.329140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142216, 45.082993, 48.858852>,  <38.333912, 45.116947, 48.672489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142216, 45.082993, 48.858852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105770, 45.456459, 48.720314>,  <39.083900, 45.680538, 48.637192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105770, 45.456459, 48.720314>,  <39.142216, 45.082993, 48.858852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105770, 45.456459, 48.720314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312429, 0.357037, 0.880291,
		0.945561, -0.028001, -0.324238,
		-0.091116, 0.933670, -0.346349,
		39.078434, 45.736561, 48.616409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841358, 45.396332, 48.967155>,  <39.142216, 45.082993, 48.858852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841358, 45.396332, 48.967155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575165, 45.687523, 48.901199>,  <39.415451, 45.862236, 48.861626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.575165, 45.687523, 48.901199>,  <39.841358, 45.396332, 48.967155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575165, 45.687523, 48.901199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409109, 0.540506, 0.735176,
		0.624314, 0.421787, -0.657517,
		-0.665479, 0.727976, -0.164888,
		39.375523, 45.905914, 48.851734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270325, 45.985607, 49.066944>,  <39.841358, 45.396332, 48.967155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270325, 45.985607, 49.066944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900654, 46.133595, 49.104931>,  <39.678852, 46.222385, 49.127724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900654, 46.133595, 49.104931>,  <40.270325, 45.985607, 49.066944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900654, 46.133595, 49.104931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282479, 0.494653, 0.821903,
		0.257102, 0.786411, -0.561655,
		-0.924178, 0.369969, 0.094968,
		39.623402, 46.244587, 49.133423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375572, 46.682976, 49.299709>,  <40.270325, 45.985607, 49.066944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375572, 46.682976, 49.299709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006664, 46.583187, 49.417812>,  <39.785320, 46.523315, 49.488674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006664, 46.583187, 49.417812>,  <40.375572, 46.682976, 49.299709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006664, 46.583187, 49.417812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154225, 0.462915, 0.872883,
		-0.354436, 0.850573, -0.388460,
		-0.922274, -0.249471, 0.295253,
		39.729980, 46.508347, 49.506390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085201, 47.333836, 49.566139>,  <40.375572, 46.682976, 49.299709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085201, 47.333836, 49.566139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868439, 47.037945, 49.725712>,  <39.738380, 46.860413, 49.821453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868439, 47.037945, 49.725712>,  <40.085201, 47.333836, 49.566139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868439, 47.037945, 49.725712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069554, 0.512513, 0.855858,
		-0.837553, 0.436051, -0.329187,
		-0.541910, -0.739723, 0.398928,
		39.705864, 46.816029, 49.845390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529602, 47.624958, 49.963699>,  <40.085201, 47.333836, 49.566139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529602, 47.624958, 49.963699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.546307, 47.256584, 50.118690>,  <39.556328, 47.035561, 50.211685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.546307, 47.256584, 50.118690>,  <39.529602, 47.624958, 49.963699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546307, 47.256584, 50.118690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110688, 0.381166, 0.917857,
		-0.992977, -0.081218, -0.086019,
		0.041759, -0.920932, 0.387479,
		39.558834, 46.980305, 50.234936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970818, 47.590221, 50.370083>,  <39.529602, 47.624958, 49.963699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970818, 47.590221, 50.370083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169720, 47.283588, 50.532608>,  <39.289059, 47.099609, 50.630123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169720, 47.283588, 50.532608>,  <38.970818, 47.590221, 50.370083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169720, 47.283588, 50.532608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072381, 0.503334, 0.861055,
		-0.864582, -0.398751, 0.305769,
		0.497250, -0.766585, 0.406312,
		39.318893, 47.053612, 50.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546616, 47.247734, 50.955833>,  <38.970818, 47.590221, 50.370083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546616, 47.247734, 50.955833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933422, 47.186546, 51.037308>,  <39.165504, 47.149834, 51.086193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.933422, 47.186546, 51.037308>,  <38.546616, 47.247734, 50.955833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933422, 47.186546, 51.037308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110447, 0.468759, 0.876394,
		-0.229541, -0.869980, 0.436401,
		0.967012, -0.152969, 0.203687,
		39.223526, 47.140656, 51.098415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638313, 46.858238, 51.569489>,  <38.546616, 47.247734, 50.955833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638313, 46.858238, 51.569489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946045, 47.109554, 51.523220>,  <39.130684, 47.260345, 51.495461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946045, 47.109554, 51.523220>,  <38.638313, 46.858238, 51.569489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946045, 47.109554, 51.523220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069968, 0.262835, 0.962301,
		0.635009, -0.732233, 0.246167,
		0.769329, 0.628294, -0.115669,
		39.176846, 47.298042, 51.488518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819454, 46.643570, 52.266842>,  <38.638313, 46.858238, 51.569489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819454, 46.643570, 52.266842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707592, 46.312054, 52.460705>,  <38.640476, 46.113144, 52.577023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707592, 46.312054, 52.460705>,  <38.819454, 46.643570, 52.266842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707592, 46.312054, 52.460705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483905, -0.314321, -0.816724,
		0.829234, -0.462930, -0.313156,
		-0.279654, -0.828793, 0.484660,
		38.623695, 46.063416, 52.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925678, 45.882851, 51.882748>,  <38.819454, 46.643570, 52.266842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925678, 45.882851, 51.882748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613319, 45.834175, 52.127823>,  <38.425903, 45.804970, 52.274868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.613319, 45.834175, 52.127823>,  <38.925678, 45.882851, 51.882748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613319, 45.834175, 52.127823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541567, -0.356900, -0.761136,
		0.311293, -0.926182, 0.212799,
		-0.780898, -0.121691, 0.612690,
		38.379051, 45.797668, 52.311630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693451, 45.190960, 51.735134>,  <38.925678, 45.882851, 51.882748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693451, 45.190960, 51.735134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389118, 45.384609, 51.907993>,  <38.206516, 45.500797, 52.011711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389118, 45.384609, 51.907993>,  <38.693451, 45.190960, 51.735134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389118, 45.384609, 51.907993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632985, -0.406857, -0.658633,
		-0.143034, -0.774658, 0.615992,
		-0.760836, 0.484121, 0.432152,
		38.160866, 45.529846, 52.037640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172314, 44.688881, 51.800091>,  <38.693451, 45.190960, 51.735134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172314, 44.688881, 51.800091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987698, 45.043056, 51.821877>,  <37.876926, 45.255562, 51.834949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987698, 45.043056, 51.821877>,  <38.172314, 44.688881, 51.800091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987698, 45.043056, 51.821877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727360, -0.342563, -0.594642,
		-0.507863, -0.314071, 0.802144,
		-0.461544, 0.885443, 0.054468,
		37.849236, 45.308689, 51.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477165, 44.568787, 51.646351>,  <38.172314, 44.688881, 51.800091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477165, 44.568787, 51.646351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466862, 44.964252, 51.587185>,  <37.460682, 45.201530, 51.551685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466862, 44.964252, 51.587185>,  <37.477165, 44.568787, 51.646351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466862, 44.964252, 51.587185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709323, -0.122336, -0.694187,
		-0.704413, 0.087040, 0.704433,
		-0.025755, 0.988665, -0.147915,
		37.459137, 45.260853, 51.542812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703220, 44.754402, 51.564938>,  <37.477165, 44.568787, 51.646351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703220, 44.754402, 51.564938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926842, 45.046700, 51.408237>,  <37.061012, 45.222080, 51.314217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926842, 45.046700, 51.408237>,  <36.703220, 44.754402, 51.564938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926842, 45.046700, 51.408237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509339, -0.070151, -0.857702,
		-0.654246, 0.679033, 0.332980,
		0.559049, 0.730748, -0.391754,
		37.094555, 45.265923, 51.290710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212002, 45.135040, 51.173908>,  <36.703220, 44.754402, 51.564938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212002, 45.135040, 51.173908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573132, 45.231670, 51.031616>,  <36.789810, 45.289650, 50.946239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573132, 45.231670, 51.031616>,  <36.212002, 45.135040, 51.173908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573132, 45.231670, 51.031616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310543, -0.205925, -0.927986,
		-0.297433, 0.948281, -0.110895,
		0.902827, 0.241576, -0.355731,
		36.843979, 45.304142, 50.924896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143791, 45.610676, 50.568417>,  <36.212002, 45.135040, 51.173908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143791, 45.610676, 50.568417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512012, 45.459332, 50.529568>,  <36.732944, 45.368526, 50.506260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512012, 45.459332, 50.529568>,  <36.143791, 45.610676, 50.568417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512012, 45.459332, 50.529568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170171, -0.164642, -0.971563,
		0.351608, 0.910900, -0.215946,
		0.920551, -0.378357, -0.097120,
		36.788177, 45.345825, 50.500431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410057, 45.917236, 50.019341>,  <36.143791, 45.610676, 50.568417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410057, 45.917236, 50.019341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605392, 45.569431, 50.048946>,  <36.722591, 45.360748, 50.066711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605392, 45.569431, 50.048946>,  <36.410057, 45.917236, 50.019341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605392, 45.569431, 50.048946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174563, -0.180435, -0.967973,
		0.855019, 0.459773, -0.239897,
		0.488334, -0.869512, 0.074016,
		36.751892, 45.308578, 50.071152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868683, 45.822105, 49.460194>,  <36.410057, 45.917236, 50.019341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868683, 45.822105, 49.460194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822880, 45.443134, 49.579704>,  <36.795399, 45.215752, 49.651409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822880, 45.443134, 49.579704>,  <36.868683, 45.822105, 49.460194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822880, 45.443134, 49.579704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100374, -0.288182, -0.952300,
		0.988339, -0.139034, -0.062098,
		-0.114506, -0.947428, 0.298777,
		36.788528, 45.158905, 49.669338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352898, 45.539288, 49.163544>,  <36.868683, 45.822105, 49.460194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352898, 45.539288, 49.163544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098587, 45.237175, 49.227219>,  <36.946003, 45.055908, 49.265423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098587, 45.237175, 49.227219>,  <37.352898, 45.539288, 49.163544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098587, 45.237175, 49.227219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078075, -0.268099, -0.960222,
		0.767916, -0.598057, 0.229419,
		-0.635775, -0.755282, 0.159184,
		36.907856, 45.010590, 49.274975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621517, 45.034443, 48.732624>,  <37.352898, 45.539288, 49.163544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621517, 45.034443, 48.732624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259903, 44.890717, 48.825233>,  <37.042934, 44.804482, 48.880798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259903, 44.890717, 48.825233>,  <37.621517, 45.034443, 48.732624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259903, 44.890717, 48.825233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114204, -0.318916, -0.940877,
		0.411911, -0.877031, 0.247277,
		-0.904039, -0.359318, 0.231525,
		36.988689, 44.782921, 48.894691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674461, 44.423920, 48.416759>,  <37.621517, 45.034443, 48.732624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674461, 44.423920, 48.416759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287655, 44.516521, 48.459259>,  <37.055573, 44.572083, 48.484756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287655, 44.516521, 48.459259>,  <37.674461, 44.423920, 48.416759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287655, 44.516521, 48.459259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198642, -0.424290, -0.883470,
		-0.159444, -0.875435, 0.456280,
		-0.967015, 0.231500, 0.106247,
		36.997551, 44.585972, 48.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314831, 43.803852, 48.194355>,  <37.674461, 44.423920, 48.416759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314831, 43.803852, 48.194355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038418, 44.092964, 48.197418>,  <36.872570, 44.266430, 48.199257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.038418, 44.092964, 48.197418>,  <37.314831, 43.803852, 48.194355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038418, 44.092964, 48.197418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286169, -0.263840, -0.921138,
		-0.663760, -0.638731, 0.389160,
		-0.691036, 0.722780, 0.007659,
		36.831108, 44.309799, 48.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588425, 43.475639, 47.861584>,  <37.314831, 43.803852, 48.194355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588425, 43.475639, 47.861584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535835, 43.872154, 47.858196>,  <36.504280, 44.110062, 47.856163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535835, 43.872154, 47.858196>,  <36.588425, 43.475639, 47.861584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535835, 43.872154, 47.858196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476906, -0.070740, -0.876103,
		-0.869065, -0.111145, 0.482050,
		-0.131475, 0.991283, -0.008472,
		36.496391, 44.169540, 47.855656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873226, 43.602737, 47.579464>,  <36.588425, 43.475639, 47.861584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873226, 43.602737, 47.579464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123402, 43.908546, 47.517071>,  <36.273506, 44.092033, 47.479633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123402, 43.908546, 47.517071>,  <35.873226, 43.602737, 47.579464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123402, 43.908546, 47.517071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129878, -0.095113, -0.986957,
		-0.769390, 0.637538, 0.039808,
		0.625437, 0.764525, -0.155981,
		36.311031, 44.137905, 47.470276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532326, 44.004803, 47.072823>,  <35.873226, 43.602737, 47.579464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532326, 44.004803, 47.072823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911652, 44.130619, 47.056034>,  <36.139248, 44.206108, 47.045959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911652, 44.130619, 47.056034>,  <35.532326, 44.004803, 47.072823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911652, 44.130619, 47.056034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072258, 0.085238, -0.993737,
		-0.308992, 0.945410, 0.103560,
		0.948316, 0.314540, -0.041976,
		36.196148, 44.224979, 47.043442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554825, 44.583096, 46.575432>,  <35.532326, 44.004803, 47.072823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554825, 44.583096, 46.575432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918064, 44.416412, 46.591927>,  <36.136009, 44.316402, 46.601822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918064, 44.416412, 46.591927>,  <35.554825, 44.583096, 46.575432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918064, 44.416412, 46.591927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007699, -0.081835, -0.996616,
		0.418677, 0.905347, -0.071106,
		0.908103, -0.416712, 0.041233,
		36.190495, 44.291397, 46.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883644, 44.893284, 46.036694>,  <35.554825, 44.583096, 46.575432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883644, 44.893284, 46.036694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091351, 44.562580, 46.123257>,  <36.215973, 44.364159, 46.175194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091351, 44.562580, 46.123257>,  <35.883644, 44.893284, 46.036694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091351, 44.562580, 46.123257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179572, -0.142012, -0.973440,
		0.835534, 0.544334, 0.074721,
		0.519266, -0.826760, 0.216403,
		36.247131, 44.314552, 46.188179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296539, 44.907429, 45.490768>,  <35.883644, 44.893284, 46.036694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296539, 44.907429, 45.490768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317818, 44.531792, 45.626572>,  <36.330585, 44.306408, 45.708054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.317818, 44.531792, 45.626572>,  <36.296539, 44.907429, 45.490768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317818, 44.531792, 45.626572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002976, -0.340140, -0.940370,
		0.998580, 0.049013, -0.020889,
		0.053195, -0.939097, 0.339511,
		36.333775, 44.250061, 45.728424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698467, 44.558525, 44.961975>,  <36.296539, 44.907429, 45.490768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698467, 44.558525, 44.961975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498680, 44.275738, 45.162262>,  <36.378807, 44.106064, 45.282436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.498680, 44.275738, 45.162262>,  <36.698467, 44.558525, 44.961975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498680, 44.275738, 45.162262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094731, -0.529943, -0.842725,
		0.861136, -0.468350, 0.197719,
		-0.499470, -0.706971, 0.500721,
		36.348839, 44.063648, 45.312477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.023228, 29.681299, 36.287479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628777, 29.680889, 36.221085>,  <42.392105, 29.680643, 36.181248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628777, 29.680889, 36.221085>,  <43.023228, 29.681299, 36.287479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628777, 29.680889, 36.221085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003867, 0.999851, 0.016797,
		0.165945, 0.017206, -0.985985,
		-0.986127, -0.001026, -0.165987,
		42.332939, 29.680582, 36.171288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865166, 29.877390, 35.573174>,  <43.023228, 29.681299, 36.287479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865166, 29.877390, 35.573174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.570095, 29.960936, 35.829990>,  <42.393055, 30.011063, 35.984081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.570095, 29.960936, 35.829990>,  <42.865166, 29.877390, 35.573174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570095, 29.960936, 35.829990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100582, 0.974331, -0.201401,
		-0.667625, -0.083991, -0.739745,
		-0.737673, 0.208865, 0.642039,
		42.348793, 30.023596, 36.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498016, 30.415895, 35.300392>,  <42.865166, 29.877390, 35.573174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498016, 30.415895, 35.300392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365456, 30.444433, 35.676708>,  <42.285919, 30.461555, 35.902496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.365456, 30.444433, 35.676708>,  <42.498016, 30.415895, 35.300392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365456, 30.444433, 35.676708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071181, 0.992404, -0.100335,
		-0.940802, -0.100217, -0.323803,
		-0.331398, 0.071347, 0.940789,
		42.266037, 30.465837, 35.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911369, 30.922768, 35.257793>,  <42.498016, 30.415895, 35.300392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911369, 30.922768, 35.257793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040699, 30.910982, 35.636124>,  <42.118298, 30.903910, 35.863121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040699, 30.910982, 35.636124>,  <41.911369, 30.922768, 35.257793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040699, 30.910982, 35.636124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027003, 0.998821, 0.040347,
		-0.945903, -0.038585, 0.322147,
		0.323324, -0.029465, 0.945830,
		42.137695, 30.902142, 35.919872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426315, 31.337440, 35.646690>,  <41.911369, 30.922768, 35.257793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426315, 31.337440, 35.646690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765625, 31.326738, 35.858246>,  <41.969212, 31.320316, 35.985180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765625, 31.326738, 35.858246>,  <41.426315, 31.337440, 35.646690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765625, 31.326738, 35.858246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031290, 0.999510, 0.000378,
		-0.528640, 0.016228, 0.848691,
		0.848270, -0.026756, 0.528888,
		42.020107, 31.318712, 36.016911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330616, 31.919250, 36.019501>,  <41.426315, 31.337440, 35.646690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330616, 31.919250, 36.019501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.715889, 31.831806, 36.082104>,  <41.947052, 31.779339, 36.119667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.715889, 31.831806, 36.082104>,  <41.330616, 31.919250, 36.019501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715889, 31.831806, 36.082104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229057, 0.972028, -0.051915,
		-0.140783, 0.085853, 0.986311,
		0.963179, -0.218612, 0.156510,
		42.004841, 31.766222, 36.129055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472126, 32.184898, 36.662086>,  <41.330616, 31.919250, 36.019501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472126, 32.184898, 36.662086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773899, 32.163113, 36.400440>,  <41.954964, 32.150040, 36.243454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773899, 32.163113, 36.400440>,  <41.472126, 32.184898, 36.662086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773899, 32.163113, 36.400440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086103, 0.996152, 0.016360,
		0.650704, -0.068664, 0.756220,
		0.754434, -0.054468, -0.654112,
		42.000229, 32.146770, 36.204208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034966, 32.492725, 37.113564>,  <41.472126, 32.184898, 36.662086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034966, 32.492725, 37.113564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.125008, 32.478008, 36.724106>,  <42.179031, 32.469177, 36.490433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.125008, 32.478008, 36.724106>,  <42.034966, 32.492725, 37.113564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125008, 32.478008, 36.724106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322086, 0.945918, 0.038716,
		0.919559, -0.322311, 0.224782,
		0.225104, -0.036797, -0.973640,
		42.192539, 32.466969, 36.432014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779175, 32.756855, 37.040981>,  <42.034966, 32.492725, 37.113564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779175, 32.756855, 37.040981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604137, 32.780632, 36.682098>,  <42.499115, 32.794899, 36.466770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.604137, 32.780632, 36.682098>,  <42.779175, 32.756855, 37.040981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604137, 32.780632, 36.682098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425008, 0.892988, -0.148126,
		0.792388, -0.446138, -0.416030,
		-0.437595, 0.059443, -0.897205,
		42.472858, 32.798466, 36.412937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241016, 32.977024, 36.610619>,  <42.779175, 32.756855, 37.040981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241016, 32.977024, 36.610619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895313, 33.063313, 36.428841>,  <42.687889, 33.115086, 36.319775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895313, 33.063313, 36.428841>,  <43.241016, 32.977024, 36.610619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895313, 33.063313, 36.428841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361066, 0.895034, -0.261811,
		0.350263, -0.390357, -0.851432,
		-0.864261, 0.215721, -0.454442,
		42.636036, 33.128029, 36.292507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445156, 33.293583, 36.051884>,  <43.241016, 32.977024, 36.610619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445156, 33.293583, 36.051884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065434, 33.418846, 36.041008>,  <42.837601, 33.494003, 36.034481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065434, 33.418846, 36.041008>,  <43.445156, 33.293583, 36.051884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065434, 33.418846, 36.041008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308004, 0.909418, -0.279449,
		-0.062787, -0.273658, -0.959776,
		-0.949311, 0.313161, -0.027188,
		42.780640, 33.512794, 36.032852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325241, 33.619373, 35.347912>,  <43.445156, 33.293583, 36.051884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325241, 33.619373, 35.347912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019466, 33.734344, 35.578743>,  <42.836002, 33.803329, 35.717239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019466, 33.734344, 35.578743>,  <43.325241, 33.619373, 35.347912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019466, 33.734344, 35.578743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193335, 0.956122, -0.220120,
		-0.615023, -0.056700, -0.786468,
		-0.764440, 0.287430, 0.577075,
		42.790134, 33.820572, 35.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808319, 34.121784, 34.931850>,  <43.325241, 33.619373, 35.347912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808319, 34.121784, 34.931850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785748, 34.205940, 35.322247>,  <42.772205, 34.256435, 35.556484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785748, 34.205940, 35.322247>,  <42.808319, 34.121784, 34.931850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785748, 34.205940, 35.322247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185728, 0.962694, -0.196787,
		-0.980980, 0.170164, -0.093397,
		-0.056427, 0.210391, 0.975988,
		42.768818, 34.269058, 35.615044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619064, 34.750233, 34.941971>,  <42.808319, 34.121784, 34.931850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619064, 34.750233, 34.941971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736061, 34.738960, 35.324314>,  <42.806259, 34.732197, 35.553719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736061, 34.738960, 35.324314>,  <42.619064, 34.750233, 34.941971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736061, 34.738960, 35.324314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315432, 0.946464, -0.068620,
		-0.902748, 0.321578, 0.285717,
		0.292487, -0.028178, 0.955854,
		42.823807, 34.730507, 35.611069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231739, 35.211842, 35.262596>,  <42.619064, 34.750233, 34.941971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231739, 35.211842, 35.262596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567619, 35.157803, 35.472988>,  <42.769146, 35.125378, 35.599224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567619, 35.157803, 35.472988>,  <42.231739, 35.211842, 35.262596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567619, 35.157803, 35.472988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202683, 0.976539, -0.072743,
		-0.503813, 0.167689, 0.847380,
		0.839697, -0.135101, 0.525981,
		42.819527, 35.117271, 35.630783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246357, 35.839268, 35.573807>,  <42.231739, 35.211842, 35.262596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246357, 35.839268, 35.573807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616489, 35.704891, 35.644123>,  <42.838570, 35.624264, 35.686314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616489, 35.704891, 35.644123>,  <42.246357, 35.839268, 35.573807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616489, 35.704891, 35.644123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375592, 0.875594, -0.303752,
		-0.051882, 0.347098, 0.936393,
		0.925332, -0.335942, 0.175795,
		42.894089, 35.604107, 35.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518608, 36.367115, 35.961742>,  <42.246357, 35.839268, 35.573807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518608, 36.367115, 35.961742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814358, 36.159523, 35.790169>,  <42.991806, 36.034969, 35.687225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814358, 36.159523, 35.790169>,  <42.518608, 36.367115, 35.961742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814358, 36.159523, 35.790169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315821, 0.829963, -0.459802,
		0.594631, 0.204497, 0.777557,
		0.739372, -0.518981, -0.428938,
		43.036171, 36.003830, 35.661488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107784, 36.809414, 36.042217>,  <42.518608, 36.367115, 35.961742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107784, 36.809414, 36.042217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206505, 36.544907, 35.758862>,  <43.265736, 36.386204, 35.588848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.206505, 36.544907, 35.758862>,  <43.107784, 36.809414, 36.042217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206505, 36.544907, 35.758862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414316, 0.732824, -0.539732,
		0.876032, -0.160292, 0.454833,
		0.246798, -0.661268, -0.708390,
		43.280544, 36.346527, 35.546345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877720, 36.871838, 35.926865>,  <43.107784, 36.809414, 36.042217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877720, 36.871838, 35.926865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696529, 36.739334, 35.595787>,  <43.587814, 36.659832, 35.397141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696529, 36.739334, 35.595787>,  <43.877720, 36.871838, 35.926865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696529, 36.739334, 35.595787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348019, 0.789042, -0.506257,
		0.820789, -0.517376, -0.242132,
		-0.452977, -0.331263, -0.827693,
		43.560635, 36.639954, 35.347481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378250, 36.939590, 35.362083>,  <43.877720, 36.871838, 35.926865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378250, 36.939590, 35.362083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024429, 36.889751, 35.182285>,  <43.812138, 36.859848, 35.074406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.024429, 36.889751, 35.182285>,  <44.378250, 36.939590, 35.362083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024429, 36.889751, 35.182285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254079, 0.679434, -0.688341,
		0.391169, -0.723079, -0.569336,
		-0.884551, -0.124601, -0.449492,
		43.759064, 36.852371, 35.047436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481022, 36.779106, 34.608307>,  <44.378250, 36.939590, 35.362083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481022, 36.779106, 34.608307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121628, 36.943516, 34.669998>,  <43.905991, 37.042160, 34.707012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121628, 36.943516, 34.669998>,  <44.481022, 36.779106, 34.608307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121628, 36.943516, 34.669998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202540, 0.699797, -0.685026,
		-0.389490, -0.584248, -0.712005,
		-0.898485, 0.411021, 0.154230,
		43.852081, 37.066822, 34.716267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026520, 36.685562, 34.059570>,  <44.481022, 36.779106, 34.608307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026520, 36.685562, 34.059570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403145, 36.769733, 34.164783>,  <45.629120, 36.820236, 34.227909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403145, 36.769733, 34.164783>,  <45.026520, 36.685562, 34.059570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403145, 36.769733, 34.164783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239772, -0.967138, -0.084580,
		0.236587, 0.142705, -0.961073,
		0.941560, 0.210428, 0.263029,
		45.685612, 36.832863, 34.243690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560966, 36.458824, 33.501480>,  <45.026520, 36.685562, 34.059570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560966, 36.458824, 33.501480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672253, 36.449177, 33.885567>,  <45.739025, 36.443390, 34.116020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672253, 36.449177, 33.885567>,  <45.560966, 36.458824, 33.501480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672253, 36.449177, 33.885567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165746, -0.983483, -0.072728,
		0.946109, 0.179386, -0.269625,
		0.278218, -0.024119, 0.960215,
		45.755718, 36.441940, 34.173630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120190, 36.008396, 33.548050>,  <45.560966, 36.458824, 33.501480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120190, 36.008396, 33.548050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.979225, 36.031235, 33.921692>,  <45.894646, 36.044937, 34.145878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.979225, 36.031235, 33.921692>,  <46.120190, 36.008396, 33.548050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979225, 36.031235, 33.921692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069320, -0.996988, 0.034789,
		0.933273, -0.052492, 0.355310,
		-0.352414, 0.057098, 0.934101,
		45.873501, 36.048363, 34.201923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423126, 35.382088, 33.818897>,  <46.120190, 36.008396, 33.548050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423126, 35.382088, 33.818897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177097, 35.497143, 34.112553>,  <46.029480, 35.566177, 34.288746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177097, 35.497143, 34.112553>,  <46.423126, 35.382088, 33.818897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177097, 35.497143, 34.112553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251974, -0.953966, 0.162661,
		0.747128, -0.084935, 0.659231,
		-0.615069, 0.287638, 0.734136,
		45.992577, 35.583435, 34.332794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606556, 34.983681, 34.451080>,  <46.423126, 35.382088, 33.818897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606556, 34.983681, 34.451080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223236, 35.097790, 34.457722>,  <45.993244, 35.166256, 34.461708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223236, 35.097790, 34.457722>,  <46.606556, 34.983681, 34.451080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223236, 35.097790, 34.457722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285621, -0.954465, -0.086127,
		-0.008719, -0.087279, 0.996146,
		-0.958303, 0.285271, 0.016607,
		45.935745, 35.183372, 34.462704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350891, 34.541317, 34.889729>,  <46.606556, 34.983681, 34.451080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350891, 34.541317, 34.889729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.024597, 34.668011, 34.696133>,  <45.828819, 34.744026, 34.579975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.024597, 34.668011, 34.696133>,  <46.350891, 34.541317, 34.889729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024597, 34.668011, 34.696133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317201, -0.944667, -0.083589,
		-0.483687, 0.085336, 0.871071,
		-0.815740, 0.316736, -0.483992,
		45.779877, 34.763031, 34.550934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726109, 34.175243, 35.163963>,  <46.350891, 34.541317, 34.889729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726109, 34.175243, 35.163963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.615711, 34.306911, 34.802750>,  <45.549473, 34.385910, 34.586021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.615711, 34.306911, 34.802750>,  <45.726109, 34.175243, 35.163963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615711, 34.306911, 34.802750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368358, -0.904017, -0.216945,
		-0.887774, 0.272767, 0.370750,
		-0.275989, 0.329167, -0.903039,
		45.532913, 34.405663, 34.531837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005447, 34.011425, 35.058144>,  <45.726109, 34.175243, 35.163963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005447, 34.011425, 35.058144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148121, 34.047352, 34.686184>,  <45.233727, 34.068909, 34.463009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148121, 34.047352, 34.686184>,  <45.005447, 34.011425, 35.058144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148121, 34.047352, 34.686184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339078, -0.915047, -0.218439,
		-0.870518, 0.393222, -0.295930,
		0.356685, 0.089812, -0.929898,
		45.255127, 34.074295, 34.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491634, 33.673115, 34.719761>,  <45.005447, 34.011425, 35.058144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491634, 33.673115, 34.719761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780842, 33.683453, 34.443623>,  <44.954369, 33.689655, 34.277939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780842, 33.683453, 34.443623>,  <44.491634, 33.673115, 34.719761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780842, 33.683453, 34.443623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244609, -0.924984, -0.290811,
		-0.646071, 0.379127, -0.662461,
		0.723020, 0.025841, -0.690343,
		44.997749, 33.691204, 34.236519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230194, 33.293968, 34.115471>,  <44.491634, 33.673115, 34.719761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230194, 33.293968, 34.115471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627197, 33.268425, 34.073795>,  <44.865398, 33.253101, 34.048790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.627197, 33.268425, 34.073795>,  <44.230194, 33.293968, 34.115471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627197, 33.268425, 34.073795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075808, -0.990457, -0.115105,
		-0.095845, 0.122141, -0.987874,
		0.992506, -0.063856, -0.104189,
		44.924950, 33.249268, 34.042538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392258, 32.928425, 33.478748>,  <44.230194, 33.293968, 34.115471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392258, 32.928425, 33.478748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740799, 32.916946, 33.674679>,  <44.949924, 32.910061, 33.792236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740799, 32.916946, 33.674679>,  <44.392258, 32.928425, 33.478748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740799, 32.916946, 33.674679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157280, -0.929279, -0.334221,
		0.464772, 0.368263, -0.805214,
		0.871349, -0.028693, 0.489824,
		45.002205, 32.908340, 33.821625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889160, 32.769245, 32.951012>,  <44.392258, 32.928425, 33.478748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889160, 32.769245, 32.951012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031933, 32.654613, 33.306644>,  <45.117596, 32.585835, 33.520023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031933, 32.654613, 33.306644>,  <44.889160, 32.769245, 32.951012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031933, 32.654613, 33.306644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232192, -0.894686, -0.381606,
		0.904812, 0.342646, -0.252802,
		0.356934, -0.286583, 0.889083,
		45.139011, 32.568638, 33.573368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470501, 32.276505, 32.827759>,  <44.889160, 32.769245, 32.951012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470501, 32.276505, 32.827759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385971, 32.218021, 33.214325>,  <45.335255, 32.182930, 33.446266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385971, 32.218021, 33.214325>,  <45.470501, 32.276505, 32.827759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385971, 32.218021, 33.214325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187013, -0.976529, -0.106848,
		0.959359, 0.158153, 0.233706,
		-0.211323, -0.146211, 0.966419,
		45.322575, 32.174156, 33.504250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997425, 31.843004, 33.178677>,  <45.470501, 32.276505, 32.827759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997425, 31.843004, 33.178677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666901, 31.809084, 33.401394>,  <45.468586, 31.788731, 33.535027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666901, 31.809084, 33.401394>,  <45.997425, 31.843004, 33.178677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666901, 31.809084, 33.401394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010675, -0.986064, -0.166025,
		0.563117, -0.143132, 0.813888,
		-0.826309, -0.084803, 0.556797,
		45.419006, 31.783644, 33.568432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095459, 31.216494, 33.590343>,  <45.997425, 31.843004, 33.178677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095459, 31.216494, 33.590343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705811, 31.305931, 33.577126>,  <45.472023, 31.359594, 33.569195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.705811, 31.305931, 33.577126>,  <46.095459, 31.216494, 33.590343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705811, 31.305931, 33.577126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219979, -0.971469, -0.088643,
		-0.051921, -0.079080, 0.995516,
		-0.974122, 0.223595, -0.033044,
		45.413574, 31.373009, 33.567211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763268, 30.789257, 34.119743>,  <46.095459, 31.216494, 33.590343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763268, 30.789257, 34.119743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478546, 30.910297, 33.866203>,  <45.307713, 30.982922, 33.714081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.478546, 30.910297, 33.866203>,  <45.763268, 30.789257, 34.119743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.478546, 30.910297, 33.866203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301821, -0.946646, -0.112986,
		-0.634219, 0.110884, 0.765161,
		-0.711808, 0.302599, -0.633848,
		45.265003, 31.001078, 33.676048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198189, 30.358587, 34.224476>,  <45.763268, 30.789257, 34.119743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198189, 30.358587, 34.224476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104649, 30.526913, 33.873882>,  <45.048523, 30.627909, 33.663525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104649, 30.526913, 33.873882>,  <45.198189, 30.358587, 34.224476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104649, 30.526913, 33.873882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489336, -0.829927, -0.267901,
		-0.840155, 0.366246, 0.400004,
		-0.233856, 0.420815, -0.876485,
		45.034492, 30.653156, 33.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480896, 30.291225, 34.107395>,  <45.198189, 30.358587, 34.224476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480896, 30.291225, 34.107395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633995, 30.348085, 33.742256>,  <44.725857, 30.382200, 33.523170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633995, 30.348085, 33.742256>,  <44.480896, 30.291225, 34.107395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633995, 30.348085, 33.742256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446754, -0.836399, -0.317564,
		-0.808648, 0.529368, -0.256627,
		0.382751, 0.142148, -0.912850,
		44.748821, 30.390730, 33.468403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844379, 30.109144, 33.609985>,  <44.480896, 30.291225, 34.107395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844379, 30.109144, 33.609985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160645, 30.109072, 33.365086>,  <44.350403, 30.109028, 33.218147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160645, 30.109072, 33.365086>,  <43.844379, 30.109144, 33.609985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160645, 30.109072, 33.365086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352794, -0.817426, -0.455359,
		-0.500386, 0.576034, -0.646373,
		0.790664, -0.000181, -0.612250,
		44.397842, 30.109016, 33.181412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592724, 30.119772, 32.809307>,  <43.844379, 30.109144, 33.609985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592724, 30.119772, 32.809307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967545, 29.983446, 32.839722>,  <44.192436, 29.901649, 32.857971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.967545, 29.983446, 32.839722>,  <43.592724, 30.119772, 32.809307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967545, 29.983446, 32.839722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220894, -0.747175, -0.626846,
		0.270448, 0.570591, -0.775425,
		0.937051, -0.340815, 0.076032,
		44.248661, 29.881201, 32.862530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736008, 29.994587, 32.145123>,  <43.592724, 30.119772, 32.809307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736008, 29.994587, 32.145123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002220, 29.775934, 32.348400>,  <44.161945, 29.644743, 32.470367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002220, 29.775934, 32.348400>,  <43.736008, 29.994587, 32.145123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002220, 29.775934, 32.348400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149962, -0.764938, -0.626403,
		0.731154, 0.340677, -0.591061,
		0.665527, -0.546634, 0.508198,
		44.201878, 29.611944, 32.500858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.624424, 43.230038, 40.530849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522652, 42.971859, 40.818920>,  <40.461586, 42.816952, 40.991764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522652, 42.971859, 40.818920>,  <40.624424, 43.230038, 40.530849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522652, 42.971859, 40.818920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367177, -0.753401, -0.545498,
		0.894675, 0.125641, 0.428685,
		-0.254434, -0.645447, 0.720181,
		40.446320, 42.778225, 41.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188965, 42.702526, 40.590691>,  <40.624424, 43.230038, 40.530849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188965, 42.702526, 40.590691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843216, 42.545670, 40.716602>,  <40.635765, 42.451557, 40.792149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843216, 42.545670, 40.716602>,  <41.188965, 42.702526, 40.590691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843216, 42.545670, 40.716602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143001, -0.791830, -0.593765,
		0.482089, -0.468221, 0.740513,
		-0.864373, -0.392142, 0.314776,
		40.583904, 42.428028, 40.811035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358192, 41.996891, 40.780769>,  <41.188965, 42.702526, 40.590691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358192, 41.996891, 40.780769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961143, 41.970181, 40.740276>,  <40.722916, 41.954155, 40.715981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961143, 41.970181, 40.740276>,  <41.358192, 41.996891, 40.780769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961143, 41.970181, 40.740276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115728, -0.771150, -0.626047,
		-0.036264, -0.633142, 0.773186,
		-0.992619, -0.066776, -0.101237,
		40.663357, 41.950150, 40.709904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131237, 41.257351, 40.781216>,  <41.358192, 41.996891, 40.780769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131237, 41.257351, 40.781216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832245, 41.445461, 40.593552>,  <40.652851, 41.558327, 40.480953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832245, 41.445461, 40.593552>,  <41.131237, 41.257351, 40.781216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832245, 41.445461, 40.593552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048433, -0.742966, -0.667574,
		-0.662519, -0.476274, 0.578128,
		-0.747478, 0.470281, -0.469162,
		40.608002, 41.586544, 40.452805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675793, 40.767269, 40.640423>,  <41.131237, 41.257351, 40.781216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675793, 40.767269, 40.640423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560814, 41.028305, 40.359997>,  <40.491825, 41.184929, 40.191742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560814, 41.028305, 40.359997>,  <40.675793, 40.767269, 40.640423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560814, 41.028305, 40.359997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167871, -0.754956, -0.633925,
		-0.942970, -0.064531, 0.326562,
		-0.287448, 0.652592, -0.701068,
		40.474579, 41.224083, 40.149677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035530, 40.489670, 40.279976>,  <40.675793, 40.767269, 40.640423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035530, 40.489670, 40.279976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177013, 40.782459, 40.047047>,  <40.261902, 40.958134, 39.907288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177013, 40.782459, 40.047047>,  <40.035530, 40.489670, 40.279976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177013, 40.782459, 40.047047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134225, -0.576405, -0.806065,
		-0.925675, 0.363274, -0.105629,
		0.353708, 0.731976, -0.582325,
		40.283127, 41.002052, 39.872349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508648, 40.690285, 39.813709>,  <40.035530, 40.489670, 40.279976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508648, 40.690285, 39.813709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851723, 40.800018, 39.639759>,  <40.057568, 40.865856, 39.535389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851723, 40.800018, 39.639759>,  <39.508648, 40.690285, 39.813709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851723, 40.800018, 39.639759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232127, -0.548091, -0.803563,
		-0.458792, 0.790152, -0.406411,
		0.857687, 0.274330, -0.434875,
		40.109028, 40.882317, 39.509296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386917, 41.034470, 39.122570>,  <39.508648, 40.690285, 39.813709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386917, 41.034470, 39.122570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758354, 40.886154, 39.116589>,  <39.981216, 40.797165, 39.112999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758354, 40.886154, 39.116589>,  <39.386917, 41.034470, 39.122570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758354, 40.886154, 39.116589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191098, -0.443268, -0.875783,
		0.318104, 0.816105, -0.482475,
		0.928596, -0.370790, -0.014951,
		40.036934, 40.774918, 39.112103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519814, 41.047890, 38.401764>,  <39.386917, 41.034470, 39.122570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519814, 41.047890, 38.401764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745571, 40.779015, 38.593437>,  <39.881027, 40.617687, 38.708443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745571, 40.779015, 38.593437>,  <39.519814, 41.047890, 38.401764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745571, 40.779015, 38.593437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283985, -0.703145, -0.651875,
		0.775118, 0.231836, -0.587745,
		0.564398, -0.672190, 0.479182,
		39.914890, 40.577358, 38.737190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983345, 40.780483, 37.860157>,  <39.519814, 41.047890, 38.401764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983345, 40.780483, 37.860157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876682, 40.509319, 38.134186>,  <39.812683, 40.346622, 38.298603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876682, 40.509319, 38.134186>,  <39.983345, 40.780483, 37.860157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876682, 40.509319, 38.134186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275564, -0.627514, -0.728211,
		0.923557, -0.382967, -0.019475,
		-0.266660, -0.677911, 0.685076,
		39.796684, 40.305946, 38.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107101, 40.080067, 37.460152>,  <39.983345, 40.780483, 37.860157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107101, 40.080067, 37.460152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920845, 40.025307, 37.809879>,  <39.809093, 39.992451, 38.019718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920845, 40.025307, 37.809879>,  <40.107101, 40.080067, 37.460152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920845, 40.025307, 37.809879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394638, -0.852171, -0.343606,
		0.792112, -0.505037, 0.342777,
		-0.465638, -0.136901, 0.874322,
		39.781155, 39.984238, 38.072174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226967, 39.242405, 37.636097>,  <40.107101, 40.080067, 37.460152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226967, 39.242405, 37.636097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924858, 39.441631, 37.806503>,  <39.743591, 39.561169, 37.908745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924858, 39.441631, 37.806503>,  <40.226967, 39.242405, 37.636097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924858, 39.441631, 37.806503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647396, -0.668263, -0.366474,
		0.102160, -0.552588, 0.827170,
		-0.755276, 0.498067, 0.426013,
		39.698277, 39.591053, 37.934307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384350, 38.666210, 37.193916>,  <40.226967, 39.242405, 37.636097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384350, 38.666210, 37.193916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076363, 38.718151, 37.443806>,  <39.891571, 38.749317, 37.593739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076363, 38.718151, 37.443806>,  <40.384350, 38.666210, 37.193916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076363, 38.718151, 37.443806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048155, 0.988107, -0.146031,
		-0.636259, -0.082356, -0.767067,
		-0.769971, 0.129851, 0.624727,
		39.845371, 38.757107, 37.631226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089951, 38.595085, 37.630390>,  <40.384350, 38.666210, 37.193916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089951, 38.595085, 37.630390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132450, 38.479816, 38.011055>,  <41.157951, 38.410656, 38.239456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132450, 38.479816, 38.011055>,  <41.089951, 38.595085, 37.630390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132450, 38.479816, 38.011055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949991, 0.312064, -0.011570,
		-0.293647, 0.905303, 0.306918,
		0.106252, -0.288172, 0.951666,
		41.164326, 38.393364, 38.296555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461899, 37.907173, 37.696522>,  <41.089951, 38.595085, 37.630390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461899, 37.907173, 37.696522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417458, 37.518528, 37.780064>,  <41.390793, 37.285339, 37.830189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417458, 37.518528, 37.780064>,  <41.461899, 37.907173, 37.696522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417458, 37.518528, 37.780064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342377, 0.234711, 0.909774,
		-0.932971, 0.029573, -0.358736,
		-0.111104, -0.971615, 0.208854,
		41.384125, 37.227043, 37.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736340, 37.862652, 37.936428>,  <41.461899, 37.907173, 37.696522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736340, 37.862652, 37.936428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915173, 37.530758, 38.070087>,  <41.022472, 37.331623, 38.150284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915173, 37.530758, 38.070087>,  <40.736340, 37.862652, 37.936428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915173, 37.530758, 38.070087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448421, 0.115329, 0.886351,
		-0.773973, -0.546114, -0.320509,
		0.447085, -0.829734, 0.334151,
		41.049297, 37.281837, 38.170334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254963, 37.428513, 38.283489>,  <40.736340, 37.862652, 37.936428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254963, 37.428513, 38.283489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607025, 37.322231, 38.440826>,  <40.818264, 37.258461, 38.535229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607025, 37.322231, 38.440826>,  <40.254963, 37.428513, 38.283489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607025, 37.322231, 38.440826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325497, 0.265313, 0.907557,
		-0.345504, -0.926827, 0.147031,
		0.880158, -0.265706, 0.393346,
		40.871071, 37.242519, 38.558830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003281, 37.050819, 38.791058>,  <40.254963, 37.428513, 38.283489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003281, 37.050819, 38.791058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386162, 37.093819, 38.898537>,  <40.615891, 37.119617, 38.963024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386162, 37.093819, 38.898537>,  <40.003281, 37.050819, 38.791058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386162, 37.093819, 38.898537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284617, 0.181517, 0.941299,
		0.052416, -0.977494, 0.204346,
		0.957207, 0.107500, 0.268697,
		40.673325, 37.126068, 38.979145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136181, 36.627430, 39.315384>,  <40.003281, 37.050819, 38.791058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136181, 36.627430, 39.315384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417923, 36.909744, 39.345741>,  <40.586967, 37.079132, 39.363956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417923, 36.909744, 39.345741>,  <40.136181, 36.627430, 39.315384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417923, 36.909744, 39.345741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261447, 0.158533, 0.952110,
		0.659950, -0.690463, 0.296187,
		0.704352, 0.705782, 0.075896,
		40.629230, 37.121479, 39.368511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524811, 36.494053, 40.002167>,  <40.136181, 36.627430, 39.315384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524811, 36.494053, 40.002167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584702, 36.867085, 39.870785>,  <40.620636, 37.090904, 39.791958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584702, 36.867085, 39.870785>,  <40.524811, 36.494053, 40.002167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584702, 36.867085, 39.870785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011218, 0.333778, 0.942585,
		0.988664, -0.137445, 0.060437,
		0.149727, 0.932578, -0.328453,
		40.629620, 37.146858, 39.772247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176029, 36.742119, 40.370476>,  <40.524811, 36.494053, 40.002167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176029, 36.742119, 40.370476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961327, 37.055595, 40.245434>,  <40.832504, 37.243683, 40.170410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961327, 37.055595, 40.245434>,  <41.176029, 36.742119, 40.370476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961327, 37.055595, 40.245434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069719, 0.328033, 0.942090,
		0.840853, 0.527465, -0.121434,
		-0.536754, 0.783693, -0.312602,
		40.800301, 37.290703, 40.151653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484875, 37.273323, 40.617264>,  <41.176029, 36.742119, 40.370476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484875, 37.273323, 40.617264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119015, 37.415123, 40.539551>,  <40.899498, 37.500202, 40.492924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119015, 37.415123, 40.539551>,  <41.484875, 37.273323, 40.617264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119015, 37.415123, 40.539551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012649, 0.505458, 0.862759,
		0.404050, 0.786665, -0.466801,
		-0.914650, 0.354502, -0.194279,
		40.844620, 37.521473, 40.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524475, 37.862915, 41.008438>,  <41.484875, 37.273323, 40.617264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524475, 37.862915, 41.008438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133568, 37.829426, 40.930519>,  <40.899025, 37.809330, 40.883766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133568, 37.829426, 40.930519>,  <41.524475, 37.862915, 41.008438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133568, 37.829426, 40.930519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209944, 0.510600, 0.833793,
		0.029653, 0.855732, -0.516569,
		-0.977264, -0.083726, -0.194797,
		40.840389, 37.804310, 40.872082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277615, 38.513702, 40.987965>,  <41.524475, 37.862915, 41.008438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277615, 38.513702, 40.987965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935574, 38.311520, 41.034103>,  <40.730347, 38.190208, 41.061787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935574, 38.311520, 41.034103>,  <41.277615, 38.513702, 40.987965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935574, 38.311520, 41.034103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272863, 0.627940, 0.728861,
		-0.440840, 0.591779, -0.674876,
		-0.855106, -0.505459, 0.115346,
		40.679043, 38.159882, 41.068707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756271, 38.976635, 40.987617>,  <41.277615, 38.513702, 40.987965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756271, 38.976635, 40.987617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610405, 38.658764, 41.181732>,  <40.522884, 38.468040, 41.298199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610405, 38.658764, 41.181732>,  <40.756271, 38.976635, 40.987617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610405, 38.658764, 41.181732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360517, 0.601022, 0.713302,
		-0.858516, 0.085161, -0.505667,
		-0.364662, -0.794682, 0.485285,
		40.501007, 38.420361, 41.327316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064564, 39.181526, 41.225338>,  <40.756271, 38.976635, 40.987617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064564, 39.181526, 41.225338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155739, 38.872864, 41.462852>,  <40.210442, 38.687664, 41.605362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155739, 38.872864, 41.462852>,  <40.064564, 39.181526, 41.225338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155739, 38.872864, 41.462852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399189, 0.482173, 0.779844,
		-0.888084, -0.414788, -0.198134,
		0.227935, -0.771660, 0.593789,
		40.224121, 38.641365, 41.640991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479710, 38.963371, 41.573425>,  <40.064564, 39.181526, 41.225338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479710, 38.963371, 41.573425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786980, 38.824879, 41.788841>,  <39.971344, 38.741783, 41.918091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786980, 38.824879, 41.788841>,  <39.479710, 38.963371, 41.573425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786980, 38.824879, 41.788841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320197, 0.520640, 0.791459,
		-0.554415, -0.780421, 0.289081,
		0.768179, -0.346234, 0.538539,
		40.017433, 38.721008, 41.950401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164368, 38.704525, 42.237415>,  <39.479710, 38.963371, 41.573425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164368, 38.704525, 42.237415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553383, 38.790329, 42.273529>,  <39.786793, 38.841812, 42.295197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553383, 38.790329, 42.273529>,  <39.164368, 38.704525, 42.237415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553383, 38.790329, 42.273529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214402, 0.674883, 0.706091,
		0.090535, -0.706058, 0.702343,
		0.972540, 0.214510, 0.090280,
		39.845146, 38.854683, 42.300613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737164, 38.364944, 42.775055>,  <39.164368, 38.704525, 42.237415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737164, 38.364944, 42.775055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432693, 38.233898, 42.998943>,  <38.250011, 38.155270, 43.133274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432693, 38.233898, 42.998943>,  <38.737164, 38.364944, 42.775055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432693, 38.233898, 42.998943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460587, -0.334520, -0.822166,
		0.456593, -0.883608, 0.103731,
		-0.761172, -0.327618, 0.559717,
		38.204342, 38.135612, 43.166859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598946, 37.699020, 42.585346>,  <38.737164, 38.364944, 42.775055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598946, 37.699020, 42.585346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270916, 37.839149, 42.766346>,  <38.074097, 37.923225, 42.874947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270916, 37.839149, 42.766346>,  <38.598946, 37.699020, 42.585346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270916, 37.839149, 42.766346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517046, -0.114731, -0.848234,
		-0.245244, -0.929574, 0.275223,
		-0.820072, 0.350328, 0.452495,
		38.024895, 37.944248, 42.902096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060246, 37.204445, 42.597469>,  <38.598946, 37.699020, 42.585346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060246, 37.204445, 42.597469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827213, 37.527390, 42.634911>,  <37.687393, 37.721157, 42.657375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827213, 37.527390, 42.634911>,  <38.060246, 37.204445, 42.597469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827213, 37.527390, 42.634911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656372, -0.399428, -0.640026,
		-0.479347, -0.434305, 0.762631,
		-0.582583, 0.807364, 0.093601,
		37.652439, 37.769600, 42.662991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361565, 37.049477, 42.764854>,  <38.060246, 37.204445, 42.597469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361565, 37.049477, 42.764854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297394, 37.415276, 42.616280>,  <37.258892, 37.634754, 42.527134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297394, 37.415276, 42.616280>,  <37.361565, 37.049477, 42.764854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297394, 37.415276, 42.616280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606181, -0.388263, -0.694115,
		-0.778979, 0.113805, 0.616636,
		-0.160423, 0.914494, -0.371435,
		37.249268, 37.689625, 42.504848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599182, 37.152744, 42.660427>,  <37.361565, 37.049477, 42.764854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599182, 37.152744, 42.660427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791252, 37.422005, 42.435467>,  <36.906494, 37.583561, 42.300491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791252, 37.422005, 42.435467>,  <36.599182, 37.152744, 42.660427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791252, 37.422005, 42.435467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615757, -0.197956, -0.762664,
		-0.624719, 0.712518, 0.319443,
		0.480177, 0.673150, -0.562405,
		36.935307, 37.623951, 42.266747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135365, 37.539146, 42.349152>,  <36.599182, 37.152744, 42.660427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135365, 37.539146, 42.349152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431561, 37.636162, 42.098442>,  <36.609280, 37.694370, 41.948017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431561, 37.636162, 42.098442>,  <36.135365, 37.539146, 42.349152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431561, 37.636162, 42.098442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573117, -0.259204, -0.777400,
		-0.351012, 0.934873, -0.052935,
		0.740492, 0.242539, -0.626775,
		36.653709, 37.708923, 41.910408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769428, 37.882473, 41.847202>,  <36.135365, 37.539146, 42.349152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769428, 37.882473, 41.847202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108051, 37.775852, 41.662907>,  <36.311226, 37.711880, 41.552330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108051, 37.775852, 41.662907>,  <35.769428, 37.882473, 41.847202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108051, 37.775852, 41.662907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515629, -0.195774, -0.834146,
		0.132143, 0.943727, -0.303177,
		0.846561, -0.266554, -0.460743,
		36.362019, 37.695885, 41.524685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724251, 38.334564, 41.272121>,  <35.769428, 37.882473, 41.847202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724251, 38.334564, 41.272121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998878, 38.057720, 41.183033>,  <36.163654, 37.891613, 41.129581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998878, 38.057720, 41.183033>,  <35.724251, 38.334564, 41.272121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998878, 38.057720, 41.183033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418891, -0.126162, -0.899229,
		0.594270, 0.710677, -0.376539,
		0.686566, -0.692114, -0.222722,
		36.204849, 37.850086, 41.116215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765934, 38.376221, 40.522343>,  <35.724251, 38.334564, 41.272121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765934, 38.376221, 40.522343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927902, 38.015491, 40.582687>,  <36.025085, 37.799053, 40.618893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927902, 38.015491, 40.582687>,  <35.765934, 38.376221, 40.522343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927902, 38.015491, 40.582687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288963, -0.282747, -0.914634,
		0.867489, 0.326765, -0.375083,
		0.404924, -0.901820, 0.150857,
		36.049377, 37.744946, 40.627945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160522, 38.260929, 39.875790>,  <35.765934, 38.376221, 40.522343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160522, 38.260929, 39.875790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064415, 37.931850, 40.081875>,  <36.006748, 37.734406, 40.205524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064415, 37.931850, 40.081875>,  <36.160522, 38.260929, 39.875790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064415, 37.931850, 40.081875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407309, -0.396330, -0.822813,
		0.881118, -0.407550, -0.239864,
		-0.240272, -0.822695, 0.515212,
		35.992332, 37.685043, 40.236439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413937, 37.644592, 39.424767>,  <36.160522, 38.260929, 39.875790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413937, 37.644592, 39.424767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150539, 37.497871, 39.687626>,  <35.992500, 37.409840, 39.845341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150539, 37.497871, 39.687626>,  <36.413937, 37.644592, 39.424767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150539, 37.497871, 39.687626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403065, -0.565506, -0.719543,
		0.635553, -0.738686, 0.224534,
		-0.658492, -0.366806, 0.657147,
		35.952991, 37.387829, 39.884769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305042, 37.028694, 39.251148>,  <36.413937, 37.644592, 39.424767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305042, 37.028694, 39.251148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966297, 37.079754, 39.457653>,  <35.763050, 37.110390, 39.581554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966297, 37.079754, 39.457653>,  <36.305042, 37.028694, 39.251148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966297, 37.079754, 39.457653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529606, -0.290701, -0.796876,
		0.048361, -0.948261, 0.313786,
		-0.846864, 0.127645, 0.516263,
		35.712238, 37.118046, 39.612534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.982971, 39.081936, 46.594364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593273, 39.168182, 46.567936>,  <39.359455, 39.219929, 46.552078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593273, 39.168182, 46.567936>,  <39.982971, 39.081936, 46.594364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593273, 39.168182, 46.567936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107100, -0.700222, -0.705846,
		-0.198457, -0.680588, 0.705277,
		-0.974240, 0.215615, -0.066073,
		39.301003, 39.232868, 46.548115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701546, 38.378010, 46.508026>,  <39.982971, 39.081936, 46.594364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701546, 38.378010, 46.508026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436920, 38.643433, 46.368298>,  <39.278145, 38.802685, 46.284462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436920, 38.643433, 46.368298>,  <39.701546, 38.378010, 46.508026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436920, 38.643433, 46.368298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117504, -0.551804, -0.825654,
		-0.740624, -0.505177, 0.443025,
		-0.661565, 0.663557, -0.349319,
		39.238449, 38.842499, 46.263500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084133, 37.983662, 46.335144>,  <39.701546, 38.378010, 46.508026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084133, 37.983662, 46.335144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071609, 38.322323, 46.122654>,  <39.064095, 38.525520, 45.995159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071609, 38.322323, 46.122654>,  <39.084133, 37.983662, 46.335144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071609, 38.322323, 46.122654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292223, -0.516013, -0.805194,
		-0.955838, 0.130026, 0.263567,
		-0.031308, 0.846655, -0.531221,
		39.062218, 38.576321, 45.963287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535469, 37.840992, 45.835781>,  <39.084133, 37.983662, 46.335144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535469, 37.840992, 45.835781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703522, 38.174023, 45.691391>,  <38.804352, 38.373840, 45.604755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703522, 38.174023, 45.691391>,  <38.535469, 37.840992, 45.835781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703522, 38.174023, 45.691391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352767, -0.216656, -0.910284,
		-0.836089, 0.509779, 0.202682,
		0.420131, 0.832578, -0.360977,
		38.829559, 38.423798, 45.583099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026199, 38.203926, 45.526676>,  <38.535469, 37.840992, 45.835781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026199, 38.203926, 45.526676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368000, 38.331745, 45.362862>,  <38.573078, 38.408436, 45.264572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368000, 38.331745, 45.362862>,  <38.026199, 38.203926, 45.526676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368000, 38.331745, 45.362862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294147, -0.352168, -0.888513,
		-0.428146, 0.879699, -0.206934,
		0.854499, 0.319544, -0.409540,
		38.624352, 38.427608, 45.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788017, 38.639275, 44.870621>,  <38.026199, 38.203926, 45.526676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788017, 38.639275, 44.870621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172409, 38.549446, 44.806023>,  <38.403046, 38.495548, 44.767265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172409, 38.549446, 44.806023>,  <37.788017, 38.639275, 44.870621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172409, 38.549446, 44.806023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186518, -0.094950, -0.977853,
		0.204268, 0.969820, -0.133132,
		0.960982, -0.224576, -0.161493,
		38.460705, 38.482075, 44.757576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987747, 39.154755, 44.415966>,  <37.788017, 38.639275, 44.870621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987747, 39.154755, 44.415966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214359, 38.826305, 44.388241>,  <38.350327, 38.629234, 44.371605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214359, 38.826305, 44.388241>,  <37.987747, 39.154755, 44.415966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214359, 38.826305, 44.388241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151726, -0.021268, -0.988194,
		0.809955, 0.570354, -0.136634,
		0.566526, -0.821124, -0.069311,
		38.384315, 38.579967, 44.367447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357224, 39.260494, 43.865932>,  <37.987747, 39.154755, 44.415966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357224, 39.260494, 43.865932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372448, 38.865166, 43.924953>,  <38.381584, 38.627968, 43.960365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.372448, 38.865166, 43.924953>,  <38.357224, 39.260494, 43.865932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372448, 38.865166, 43.924953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176599, -0.151991, -0.972477,
		0.983547, 0.010960, -0.180322,
		0.038066, -0.988321, 0.147555,
		38.383869, 38.568668, 43.969219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599239, 38.973888, 43.147392>,  <38.357224, 39.260494, 43.865932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599239, 38.973888, 43.147392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426075, 38.684273, 43.362190>,  <38.322178, 38.510506, 43.491070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.426075, 38.684273, 43.362190>,  <38.599239, 38.973888, 43.147392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426075, 38.684273, 43.362190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426693, -0.360157, -0.829590,
		0.794056, -0.588267, -0.153027,
		-0.432907, -0.724037, 0.536994,
		38.296204, 38.467060, 43.523289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298332, 38.772141, 43.268742>,  <38.599239, 38.973888, 43.147392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298332, 38.772141, 43.268742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633595, 38.881123, 43.079739>,  <39.834751, 38.946510, 42.966335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633595, 38.881123, 43.079739>,  <39.298332, 38.772141, 43.268742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633595, 38.881123, 43.079739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357178, 0.380549, 0.852998,
		0.412224, -0.883712, 0.221640,
		0.838150, 0.272461, -0.472514,
		39.885040, 38.962860, 42.937984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878860, 38.570934, 43.631119>,  <39.298332, 38.772141, 43.268742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878860, 38.570934, 43.631119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031666, 38.862888, 43.404377>,  <40.123348, 39.038063, 43.268330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.031666, 38.862888, 43.404377>,  <39.878860, 38.570934, 43.631119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031666, 38.862888, 43.404377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463690, 0.379203, 0.800748,
		0.799412, -0.568741, -0.193584,
		0.382010, 0.729890, -0.566859,
		40.146271, 39.081856, 43.234318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558556, 38.626133, 43.849045>,  <39.878860, 38.570934, 43.631119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558556, 38.626133, 43.849045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497986, 38.972832, 43.658962>,  <40.461643, 39.180851, 43.544910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.497986, 38.972832, 43.658962>,  <40.558556, 38.626133, 43.849045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497986, 38.972832, 43.658962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490714, 0.483244, 0.725035,
		0.858062, -0.123403, -0.498499,
		-0.151425, 0.866745, -0.475209,
		40.452557, 39.232857, 43.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251534, 38.937485, 43.661720>,  <40.558556, 38.626133, 43.849045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251534, 38.937485, 43.661720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966537, 39.214642, 43.706005>,  <40.795540, 39.380936, 43.732574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.966537, 39.214642, 43.706005>,  <41.251534, 38.937485, 43.661720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966537, 39.214642, 43.706005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542953, 0.444472, 0.712493,
		0.444472, 0.567757, -0.692890,
		-0.712493, 0.692890, 0.110710,
		40.752789, 39.422508, 43.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577957, 39.648796, 43.848869>,  <41.251534, 38.937485, 43.661720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577957, 39.648796, 43.848869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.203289, 39.728455, 43.964100>,  <40.978489, 39.776249, 44.033237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.203289, 39.728455, 43.964100>,  <41.577957, 39.648796, 43.848869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203289, 39.728455, 43.964100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350116, 0.550872, 0.757600,
		-0.007821, 0.810483, -0.585710,
		-0.936674, 0.199142, 0.288072,
		40.922287, 39.788197, 44.050522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479145, 40.368999, 43.759125>,  <41.577957, 39.648796, 43.848869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479145, 40.368999, 43.759125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194656, 40.255650, 44.016457>,  <41.023964, 40.187641, 44.170853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194656, 40.255650, 44.016457>,  <41.479145, 40.368999, 43.759125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194656, 40.255650, 44.016457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342591, 0.659397, 0.669199,
		-0.613839, 0.696345, -0.371895,
		-0.711220, -0.283372, 0.643325,
		40.981289, 40.170639, 44.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149143, 40.968739, 43.972267>,  <41.479145, 40.368999, 43.759125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149143, 40.968739, 43.972267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.071247, 40.701614, 44.259628>,  <41.024509, 40.541340, 44.432045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.071247, 40.701614, 44.259628>,  <41.149143, 40.968739, 43.972267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071247, 40.701614, 44.259628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171098, 0.698070, 0.695287,
		-0.965817, 0.258317, -0.021681,
		-0.194739, -0.667811, 0.718405,
		41.012825, 40.501270, 44.475151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792816, 41.424751, 44.443699>,  <41.149143, 40.968739, 43.972267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792816, 41.424751, 44.443699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.906551, 41.099163, 44.646324>,  <40.974792, 40.903809, 44.767899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.906551, 41.099163, 44.646324>,  <40.792816, 41.424751, 44.443699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906551, 41.099163, 44.646324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202467, 0.567434, 0.798139,
		-0.937102, -0.124377, 0.326143,
		0.284335, -0.813971, 0.506561,
		40.991852, 40.854973, 44.798294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616589, 41.624413, 44.968071>,  <40.792816, 41.424751, 44.443699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616589, 41.624413, 44.968071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853733, 41.321693, 45.078178>,  <40.996021, 41.140064, 45.144245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853733, 41.321693, 45.078178>,  <40.616589, 41.624413, 44.968071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853733, 41.321693, 45.078178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279126, 0.513750, 0.811264,
		-0.755381, -0.404134, 0.515825,
		0.592865, -0.756794, 0.275273,
		41.031593, 41.094654, 45.160759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565327, 41.475758, 45.704609>,  <40.616589, 41.624413, 44.968071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565327, 41.475758, 45.704609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922230, 41.305214, 45.645164>,  <41.136372, 41.202888, 45.609497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922230, 41.305214, 45.645164>,  <40.565327, 41.475758, 45.704609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922230, 41.305214, 45.645164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385148, 0.546930, 0.743323,
		-0.235646, -0.720475, 0.652217,
		0.892262, -0.426362, -0.148608,
		41.189907, 41.177307, 45.600582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773087, 41.170235, 46.396404>,  <40.565327, 41.475758, 45.704609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773087, 41.170235, 46.396404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.100571, 41.202881, 46.169056>,  <41.297062, 41.222469, 46.032646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.100571, 41.202881, 46.169056>,  <40.773087, 41.170235, 46.396404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100571, 41.202881, 46.169056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453625, 0.514938, 0.727367,
		0.352042, -0.853333, 0.384563,
		0.818713, 0.081616, -0.568373,
		41.346184, 41.227367, 45.998543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267338, 40.909485, 46.812126>,  <40.773087, 41.170235, 46.396404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267338, 40.909485, 46.812126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434254, 41.159420, 46.548176>,  <41.534405, 41.309383, 46.389805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434254, 41.159420, 46.548176>,  <41.267338, 40.909485, 46.812126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434254, 41.159420, 46.548176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497011, 0.450989, 0.741343,
		0.760820, -0.637323, -0.122359,
		0.417293, 0.624842, -0.659878,
		41.559441, 41.346874, 46.350212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859016, 40.931747, 47.130852>,  <41.267338, 40.909485, 46.812126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859016, 40.931747, 47.130852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894997, 41.238403, 46.876553>,  <41.916584, 41.422398, 46.723972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894997, 41.238403, 46.876553>,  <41.859016, 40.931747, 47.130852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894997, 41.238403, 46.876553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421633, 0.548998, 0.721683,
		0.902294, -0.332967, -0.273858,
		0.089949, 0.766638, -0.635747,
		41.921982, 41.468395, 46.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570980, 41.232666, 47.163891>,  <41.859016, 40.931747, 47.130852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570980, 41.232666, 47.163891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.331524, 41.518852, 47.019810>,  <42.187851, 41.690563, 46.933361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.331524, 41.518852, 47.019810>,  <42.570980, 41.232666, 47.163891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331524, 41.518852, 47.019810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403823, 0.657911, 0.635674,
		0.691781, 0.235081, -0.682771,
		-0.598637, 0.715465, -0.360199,
		42.151932, 41.733490, 46.911751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.543339, 42.369320, 47.398067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881641, 42.170174, 47.474838>,  <35.084621, 42.050686, 47.520901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881641, 42.170174, 47.474838>,  <34.543339, 42.369320, 47.398067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881641, 42.170174, 47.474838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088919, -0.223156, -0.970719,
		0.526114, 0.838054, -0.144466,
		0.845753, -0.497863, 0.191924,
		35.135368, 42.020813, 47.532417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926815, 42.479286, 46.821171>,  <34.543339, 42.369320, 47.398067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926815, 42.479286, 46.821171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116058, 42.164150, 46.978897>,  <35.229603, 41.975071, 47.073532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116058, 42.164150, 46.978897>,  <34.926815, 42.479286, 46.821171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116058, 42.164150, 46.978897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143485, -0.372691, -0.916795,
		0.869242, 0.490320, -0.063280,
		0.473107, -0.787837, 0.394313,
		35.257992, 41.927799, 47.097191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563168, 42.339478, 46.412121>,  <34.926815, 42.479286, 46.821171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563168, 42.339478, 46.412121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.449299, 42.015522, 46.617271>,  <35.380978, 41.821148, 46.740360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.449299, 42.015522, 46.617271>,  <35.563168, 42.339478, 46.412121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449299, 42.015522, 46.617271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051869, -0.547238, -0.835368,
		0.957220, -0.211206, 0.197794,
		-0.284675, -0.809890, 0.512872,
		35.363895, 41.772556, 46.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097931, 41.784687, 46.269188>,  <35.563168, 42.339478, 46.412121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097931, 41.784687, 46.269188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753098, 41.610893, 46.373524>,  <35.546200, 41.506618, 46.436127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753098, 41.610893, 46.373524>,  <36.097931, 41.784687, 46.269188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753098, 41.610893, 46.373524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024067, -0.549238, -0.835320,
		0.506199, -0.713835, 0.483944,
		-0.862081, -0.434485, 0.260844,
		35.494473, 41.480549, 46.451778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098743, 41.282265, 45.862793>,  <36.097931, 41.784687, 46.269188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098743, 41.282265, 45.862793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756706, 41.182476, 46.044598>,  <35.551483, 41.122601, 46.153679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756706, 41.182476, 46.044598>,  <36.098743, 41.282265, 45.862793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756706, 41.182476, 46.044598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265813, -0.541715, -0.797426,
		0.445154, -0.802687, 0.396902,
		-0.855091, -0.249475, 0.454511,
		35.500179, 41.107632, 46.180950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093254, 40.545635, 45.808895>,  <36.098743, 41.282265, 45.862793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093254, 40.545635, 45.808895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737171, 40.722649, 45.852154>,  <35.523521, 40.828857, 45.878109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737171, 40.722649, 45.852154>,  <36.093254, 40.545635, 45.808895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737171, 40.722649, 45.852154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343450, -0.495975, -0.797528,
		-0.299295, -0.747108, 0.593508,
		-0.890205, 0.442537, 0.108152,
		35.470108, 40.855412, 45.884598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512871, 39.977665, 45.628143>,  <36.093254, 40.545635, 45.808895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512871, 39.977665, 45.628143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.322098, 40.327053, 45.588982>,  <35.207634, 40.536686, 45.565483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.322098, 40.327053, 45.588982>,  <35.512871, 39.977665, 45.628143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322098, 40.327053, 45.588982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431388, -0.329674, -0.839773,
		-0.765795, -0.358278, 0.534037,
		-0.476930, 0.873471, -0.097905,
		35.179020, 40.589096, 45.559608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845745, 39.828495, 45.389614>,  <35.512871, 39.977665, 45.628143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845745, 39.828495, 45.389614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.870056, 40.216171, 45.294136>,  <34.884644, 40.448776, 45.236851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.870056, 40.216171, 45.294136>,  <34.845745, 39.828495, 45.389614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870056, 40.216171, 45.294136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480938, -0.181115, -0.857844,
		-0.874646, 0.166933, 0.455113,
		0.060775, 0.969191, -0.238696,
		34.888287, 40.506927, 45.222527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104408, 40.065701, 45.155937>,  <34.845745, 39.828495, 45.389614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104408, 40.065701, 45.155937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368767, 40.324238, 45.003380>,  <34.527382, 40.479359, 44.911846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368767, 40.324238, 45.003380>,  <34.104408, 40.065701, 45.155937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368767, 40.324238, 45.003380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546007, 0.065460, -0.835219,
		-0.514871, 0.760236, 0.396169,
		0.660897, 0.646341, -0.381390,
		34.567036, 40.518139, 44.888962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690285, 40.545986, 44.867741>,  <34.104408, 40.065701, 45.155937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690285, 40.545986, 44.867741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048439, 40.605000, 44.699684>,  <34.263332, 40.640408, 44.598850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048439, 40.605000, 44.699684>,  <33.690285, 40.545986, 44.867741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048439, 40.605000, 44.699684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444466, 0.353399, -0.823140,
		0.027038, 0.923766, 0.382001,
		0.895388, 0.147530, -0.420138,
		34.317055, 40.649258, 44.573643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611103, 41.153610, 44.461590>,  <33.690285, 40.545986, 44.867741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611103, 41.153610, 44.461590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944023, 40.989822, 44.312130>,  <34.143776, 40.891552, 44.222454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.944023, 40.989822, 44.312130>,  <33.611103, 41.153610, 44.461590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944023, 40.989822, 44.312130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265602, 0.297080, -0.917169,
		0.486555, 0.862601, 0.138505,
		0.832298, -0.409466, -0.373654,
		34.193714, 40.866982, 44.200035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826572, 41.585751, 43.958286>,  <33.611103, 41.153610, 44.461590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826572, 41.585751, 43.958286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999729, 41.237064, 43.866444>,  <34.103622, 41.027851, 43.811337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999729, 41.237064, 43.866444>,  <33.826572, 41.585751, 43.958286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999729, 41.237064, 43.866444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236170, 0.136141, -0.962128,
		0.869960, 0.470720, -0.146939,
		0.432889, -0.871715, -0.229607,
		34.129597, 40.975548, 43.797562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145035, 41.719940, 43.296021>,  <33.826572, 41.585751, 43.958286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145035, 41.719940, 43.296021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096542, 41.324375, 43.330311>,  <34.067448, 41.087036, 43.350883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096542, 41.324375, 43.330311>,  <34.145035, 41.719940, 43.296021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096542, 41.324375, 43.330311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335119, -0.040515, -0.941304,
		0.934343, -0.142846, -0.326493,
		-0.121234, -0.988915, 0.085726,
		34.060173, 41.027702, 43.356030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242748, 41.521000, 42.614597>,  <34.145035, 41.719940, 43.296021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242748, 41.521000, 42.614597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066521, 41.200291, 42.776123>,  <33.960785, 41.007866, 42.873039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.066521, 41.200291, 42.776123>,  <34.242748, 41.521000, 42.614597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066521, 41.200291, 42.776123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514245, -0.143303, -0.845587,
		0.735834, -0.580197, -0.349171,
		-0.440570, -0.801770, 0.403810,
		33.934349, 40.959759, 42.897266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947220, 41.348995, 42.503300>,  <34.242748, 41.521000, 42.614597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947220, 41.348995, 42.503300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142639, 41.645321, 42.318897>,  <35.259892, 41.823116, 42.208256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142639, 41.645321, 42.318897>,  <34.947220, 41.348995, 42.503300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142639, 41.645321, 42.318897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179337, 0.431813, 0.883954,
		0.853909, -0.514527, 0.078106,
		0.488546, 0.740810, -0.461003,
		35.289204, 41.867565, 42.180595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545471, 41.405998, 42.853863>,  <34.947220, 41.348995, 42.503300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545471, 41.405998, 42.853863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535526, 41.751308, 42.652218>,  <35.529560, 41.958496, 42.531231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535526, 41.751308, 42.652218>,  <35.545471, 41.405998, 42.853863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535526, 41.751308, 42.652218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268707, 0.491483, 0.828397,
		0.962901, -0.114867, -0.244186,
		-0.024858, 0.863279, -0.504115,
		35.528069, 42.010292, 42.500984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177204, 41.828503, 43.011169>,  <35.545471, 41.405998, 42.853863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177204, 41.828503, 43.011169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952187, 42.121731, 42.858250>,  <35.817177, 42.297668, 42.766499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952187, 42.121731, 42.858250>,  <36.177204, 41.828503, 43.011169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952187, 42.121731, 42.858250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179882, 0.559852, 0.808831,
		0.806963, 0.386232, -0.446806,
		-0.562542, 0.733069, -0.382304,
		35.783424, 42.341652, 42.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627247, 42.430508, 43.067486>,  <36.177204, 41.828503, 43.011169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627247, 42.430508, 43.067486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247894, 42.546158, 43.015350>,  <36.020283, 42.615547, 42.984070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247894, 42.546158, 43.015350>,  <36.627247, 42.430508, 43.067486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247894, 42.546158, 43.015350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134463, 0.738778, 0.660399,
		0.287226, 0.608782, -0.739517,
		-0.948378, 0.289121, -0.130338,
		35.963383, 42.632893, 42.976250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643383, 43.255356, 43.019096>,  <36.627247, 42.430508, 43.067486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643383, 43.255356, 43.019096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269791, 43.156639, 43.122456>,  <36.045635, 43.097408, 43.184471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269791, 43.156639, 43.122456>,  <36.643383, 43.255356, 43.019096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269791, 43.156639, 43.122456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049764, 0.626265, 0.778021,
		-0.353833, 0.739517, -0.572640,
		-0.933984, -0.246793, 0.258394,
		35.989597, 43.082600, 43.199974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210449, 43.919380, 43.245663>,  <36.643383, 43.255356, 43.019096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210449, 43.919380, 43.245663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007534, 43.622849, 43.421432>,  <35.885784, 43.444931, 43.526894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.007534, 43.622849, 43.421432>,  <36.210449, 43.919380, 43.245663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007534, 43.622849, 43.421432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225279, 0.378094, 0.897939,
		-0.831812, 0.554504, -0.024796,
		-0.507286, -0.741330, 0.439421,
		35.855347, 43.400448, 43.553257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819016, 44.206276, 43.725189>,  <36.210449, 43.919380, 43.245663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819016, 44.206276, 43.725189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864704, 43.829960, 43.852859>,  <35.892117, 43.604172, 43.929462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864704, 43.829960, 43.852859>,  <35.819016, 44.206276, 43.725189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864704, 43.829960, 43.852859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155211, 0.334230, 0.929623,
		-0.981255, -0.056647, 0.184198,
		0.114225, -0.940787, 0.319173,
		35.898972, 43.547722, 43.948612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349087, 44.136341, 44.333611>,  <35.819016, 44.206276, 43.725189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349087, 44.136341, 44.333611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610523, 43.837608, 44.382694>,  <35.767384, 43.658367, 44.412144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610523, 43.837608, 44.382694>,  <35.349087, 44.136341, 44.333611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610523, 43.837608, 44.382694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189643, 0.318562, 0.928738,
		-0.732703, -0.583744, 0.349841,
		0.653591, -0.746834, 0.122708,
		35.806602, 43.613560, 44.419506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147648, 43.746933, 44.939938>,  <35.349087, 44.136341, 44.333611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147648, 43.746933, 44.939938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537880, 43.687481, 44.875244>,  <35.772018, 43.651810, 44.836430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537880, 43.687481, 44.875244>,  <35.147648, 43.746933, 44.939938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537880, 43.687481, 44.875244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180834, 0.125518, 0.975471,
		-0.124684, -0.980895, 0.149330,
		0.975578, -0.148629, -0.161729,
		35.830555, 43.642891, 44.826725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307087, 43.180695, 45.373196>,  <35.147648, 43.746933, 44.939938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307087, 43.180695, 45.373196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642868, 43.378529, 45.283127>,  <35.844337, 43.497231, 45.229088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642868, 43.378529, 45.283127>,  <35.307087, 43.180695, 45.373196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642868, 43.378529, 45.283127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130715, 0.218414, 0.967062,
		0.527479, -0.841235, 0.118698,
		0.839452, 0.494589, -0.225170,
		35.894703, 43.526905, 45.215576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693279, 43.148640, 45.978203>,  <35.307087, 43.180695, 45.373196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693279, 43.148640, 45.978203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880089, 43.438984, 45.776207>,  <35.992176, 43.613190, 45.655010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880089, 43.438984, 45.776207>,  <35.693279, 43.148640, 45.978203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880089, 43.438984, 45.776207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329870, 0.386857, 0.861120,
		0.820411, -0.568746, -0.058768,
		0.467024, 0.725858, -0.504994,
		36.020195, 43.656742, 45.624710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436020, 43.001793, 46.064564>,  <35.693279, 43.148640, 45.978203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436020, 43.001793, 46.064564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387207, 43.388351, 45.974060>,  <36.357918, 43.620285, 45.919758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387207, 43.388351, 45.974060>,  <36.436020, 43.001793, 46.064564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387207, 43.388351, 45.974060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288950, 0.252678, 0.923397,
		0.949534, 0.047309, -0.310075,
		-0.122034, 0.966393, -0.226256,
		36.350597, 43.678268, 45.906181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059914, 43.293396, 46.356422>,  <36.436020, 43.001793, 46.064564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059914, 43.293396, 46.356422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781979, 43.576611, 46.306007>,  <36.615215, 43.746540, 46.275757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781979, 43.576611, 46.306007>,  <37.059914, 43.293396, 46.356422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781979, 43.576611, 46.306007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192286, 0.351787, 0.916118,
		0.692982, 0.612320, -0.380581,
		-0.694840, 0.708033, -0.126042,
		36.573528, 43.789021, 46.268196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446857, 43.840836, 46.550632>,  <37.059914, 43.293396, 46.356422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446857, 43.840836, 46.550632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076405, 43.990059, 46.572899>,  <36.854134, 44.079594, 46.586258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076405, 43.990059, 46.572899>,  <37.446857, 43.840836, 46.550632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076405, 43.990059, 46.572899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161691, 0.259319, 0.952161,
		0.340779, 0.890830, -0.300485,
		-0.926135, 0.373062, 0.055668,
		36.798565, 44.101978, 46.589600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870232, 44.293545, 46.026096>,  <37.446857, 43.840836, 46.550632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870232, 44.293545, 46.026096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195236, 44.526402, 46.013908>,  <38.390240, 44.666115, 46.006596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195236, 44.526402, 46.013908>,  <37.870232, 44.293545, 46.026096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195236, 44.526402, 46.013908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233088, -0.372355, -0.898344,
		-0.534310, 0.722816, -0.438235,
		0.812516, 0.582142, -0.030473,
		38.438992, 44.701046, 46.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045887, 44.450603, 45.311466>,  <37.870232, 44.293545, 46.026096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045887, 44.450603, 45.311466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384624, 44.592957, 45.469555>,  <38.587868, 44.678368, 45.564407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384624, 44.592957, 45.469555>,  <38.045887, 44.450603, 45.311466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384624, 44.592957, 45.469555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493765, -0.249996, -0.832885,
		-0.197601, 0.900474, -0.387429,
		0.846847, 0.355878, 0.395223,
		38.638680, 44.699718, 45.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421207, 44.906509, 44.747265>,  <38.045887, 44.450603, 45.311466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421207, 44.906509, 44.747265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682533, 44.769630, 45.017399>,  <38.839329, 44.687504, 45.179482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682533, 44.769630, 45.017399>,  <38.421207, 44.906509, 44.747265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682533, 44.769630, 45.017399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630705, -0.247439, -0.735517,
		0.418797, 0.906462, 0.054171,
		0.653314, -0.342199, 0.675337,
		38.878529, 44.666969, 45.220001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999138, 45.152470, 44.437561>,  <38.421207, 44.906509, 44.747265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999138, 45.152470, 44.437561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132893, 44.869678, 44.686840>,  <39.213146, 44.700005, 44.836407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.132893, 44.869678, 44.686840>,  <38.999138, 45.152470, 44.437561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132893, 44.869678, 44.686840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704388, -0.251829, -0.663641,
		0.626115, 0.660886, 0.413775,
		0.334390, -0.706974, 0.623194,
		39.233212, 44.657585, 44.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663345, 45.145565, 44.416031>,  <38.999138, 45.152470, 44.437561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663345, 45.145565, 44.416031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587326, 44.775059, 44.546207>,  <39.541714, 44.552753, 44.624313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.587326, 44.775059, 44.546207>,  <39.663345, 45.145565, 44.416031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587326, 44.775059, 44.546207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625750, -0.369712, -0.686841,
		0.756517, 0.073110, 0.649875,
		-0.190051, -0.926266, 0.325441,
		39.530312, 44.497177, 44.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355671, 44.791515, 44.515087>,  <39.663345, 45.145565, 44.416031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355671, 44.791515, 44.515087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064995, 44.520828, 44.467796>,  <39.890591, 44.358418, 44.439423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064995, 44.520828, 44.467796>,  <40.355671, 44.791515, 44.515087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064995, 44.520828, 44.467796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513134, -0.420278, -0.748371,
		0.456747, -0.604500, 0.652658,
		-0.726688, -0.676717, -0.118229,
		39.846989, 44.317814, 44.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739887, 44.251492, 44.295513>,  <40.355671, 44.791515, 44.515087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739887, 44.251492, 44.295513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372574, 44.130875, 44.192886>,  <40.152187, 44.058502, 44.131310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372574, 44.130875, 44.192886>,  <40.739887, 44.251492, 44.295513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372574, 44.130875, 44.192886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362283, -0.378575, -0.851723,
		0.159705, -0.875072, 0.456884,
		-0.918284, -0.301546, -0.256563,
		40.097088, 44.040413, 44.115917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735527, 43.512413, 44.164299>,  <40.739887, 44.251492, 44.295513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735527, 43.512413, 44.164299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405422, 43.625587, 43.968792>,  <40.207359, 43.693493, 43.851486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405422, 43.625587, 43.968792>,  <40.735527, 43.512413, 44.164299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405422, 43.625587, 43.968792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350340, -0.422331, -0.836002,
		-0.442961, -0.861152, 0.249407,
		-0.825256, 0.282938, -0.488772,
		40.157845, 43.710468, 43.822163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560856, 42.911160, 43.810329>,  <40.735527, 43.512413, 44.164299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560856, 42.911160, 43.810329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.342419, 43.191658, 43.627010>,  <40.211357, 43.359959, 43.517017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.342419, 43.191658, 43.627010>,  <40.560856, 42.911160, 43.810329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342419, 43.191658, 43.627010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244213, -0.390050, -0.887818,
		-0.801337, -0.596754, 0.041751,
		-0.546094, 0.701246, -0.458296,
		40.178589, 43.402031, 43.489521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070305, 42.581844, 43.417435>,  <40.560856, 42.911160, 43.810329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070305, 42.581844, 43.417435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123486, 42.938377, 43.244068>,  <40.155396, 43.152298, 43.140049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123486, 42.938377, 43.244068>,  <40.070305, 42.581844, 43.417435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123486, 42.938377, 43.244068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086708, -0.446083, -0.890781,
		-0.987322, 0.080852, -0.136594,
		0.132954, 0.891332, -0.433417,
		40.163372, 43.205776, 43.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496906, 42.589504, 42.940903>,  <40.070305, 42.581844, 43.417435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496906, 42.589504, 42.940903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797176, 42.827728, 42.826504>,  <39.977337, 42.970661, 42.757862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797176, 42.827728, 42.826504>,  <39.496906, 42.589504, 42.940903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797176, 42.827728, 42.826504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113876, -0.309776, -0.943966,
		-0.650783, 0.741180, -0.164721,
		0.750675, 0.595559, -0.286000,
		40.022381, 43.006397, 42.740704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267006, 42.836353, 42.341583>,  <39.496906, 42.589504, 42.940903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267006, 42.836353, 42.341583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656902, 42.924793, 42.329025>,  <39.890842, 42.977856, 42.321491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656902, 42.924793, 42.329025>,  <39.267006, 42.836353, 42.341583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656902, 42.924793, 42.329025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034749, -0.289036, -0.956687,
		-0.220598, 0.931436, -0.289420,
		0.974746, 0.221100, -0.031395,
		39.949326, 42.991123, 42.319607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350800, 43.281376, 41.750633>,  <39.267006, 42.836353, 42.341583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350800, 43.281376, 41.750633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718830, 43.139034, 41.816139>,  <39.939648, 43.053627, 41.855442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718830, 43.139034, 41.816139>,  <39.350800, 43.281376, 41.750633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718830, 43.139034, 41.816139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138273, -0.096117, -0.985719,
		0.366514, 0.929585, -0.039230,
		0.920080, -0.355856, 0.163765,
		39.994854, 43.032276, 41.865269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765862, 43.451710, 41.187202>,  <39.350800, 43.281376, 41.750633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765862, 43.451710, 41.187202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967331, 43.146049, 41.348392>,  <40.088215, 42.962654, 41.445107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.967331, 43.146049, 41.348392>,  <39.765862, 43.451710, 41.187202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967331, 43.146049, 41.348392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270876, -0.303248, -0.913601,
		0.820326, 0.569317, 0.054250,
		0.503677, -0.764146, 0.402977,
		40.118435, 42.916805, 41.469284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.785458, 34.419800, 36.410702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.809837, 34.337635, 36.801411>,  <33.824463, 34.288334, 37.035835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.809837, 34.337635, 36.801411>,  <33.785458, 34.419800, 36.410702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809837, 34.337635, 36.801411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970878, -0.239356, 0.010241,
		0.231693, -0.948954, -0.214020,
		0.060946, -0.205414, 0.976775,
		33.828121, 34.276012, 37.094444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516827, 33.722725, 36.491947>,  <33.785458, 34.419800, 36.410702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516827, 33.722725, 36.491947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499557, 33.889423, 36.855145>,  <33.489197, 33.989445, 37.073063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499557, 33.889423, 36.855145>,  <33.516827, 33.722725, 36.491947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499557, 33.889423, 36.855145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960425, -0.267633, 0.077171,
		0.275171, -0.868730, 0.411813,
		-0.043174, 0.416751, 0.907995,
		33.486607, 34.014450, 37.127544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219124, 33.174500, 36.798500>,  <33.516827, 33.722725, 36.491947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219124, 33.174500, 36.798500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163078, 33.510864, 37.007587>,  <33.129452, 33.712685, 37.133038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163078, 33.510864, 37.007587>,  <33.219124, 33.174500, 36.798500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163078, 33.510864, 37.007587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964955, -0.234276, 0.118225,
		0.221877, -0.487832, 0.844269,
		-0.140118, 0.840913, 0.522717,
		33.121044, 33.763138, 37.164402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924187, 33.062916, 37.474884>,  <33.219124, 33.174500, 36.798500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924187, 33.062916, 37.474884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827629, 33.434635, 37.363071>,  <32.769695, 33.657665, 37.295982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827629, 33.434635, 37.363071>,  <32.924187, 33.062916, 37.474884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827629, 33.434635, 37.363071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954023, -0.174518, 0.243689,
		0.177676, 0.325506, 0.928696,
		-0.241396, 0.929295, -0.279532,
		32.755211, 33.713425, 37.279213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314407, 33.120548, 37.913910>,  <32.924187, 33.062916, 37.474884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314407, 33.120548, 37.913910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305882, 33.418587, 37.647266>,  <32.300766, 33.597412, 37.487278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305882, 33.418587, 37.647266>,  <32.314407, 33.120548, 37.913910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305882, 33.418587, 37.647266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995717, 0.044177, 0.081219,
		0.089965, 0.665489, 0.740966,
		-0.021316, 0.745100, -0.666613,
		32.299488, 33.642117, 37.447281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844595, 33.695889, 38.184891>,  <32.314407, 33.120548, 37.913910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844595, 33.695889, 38.184891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887423, 33.782806, 37.796806>,  <31.913120, 33.834957, 37.563953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887423, 33.782806, 37.796806>,  <31.844595, 33.695889, 38.184891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887423, 33.782806, 37.796806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994017, 0.044555, -0.099718,
		0.021559, 0.975088, 0.220768,
		0.107070, 0.217297, -0.970215,
		31.919544, 33.847996, 37.505741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369211, 34.110893, 38.097942>,  <31.844595, 33.695889, 38.184891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369211, 34.110893, 38.097942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445339, 34.040928, 37.711536>,  <31.491016, 33.998947, 37.479694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445339, 34.040928, 37.711536>,  <31.369211, 34.110893, 38.097942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445339, 34.040928, 37.711536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976874, 0.063931, -0.204036,
		0.097447, 0.982506, -0.158702,
		0.190321, -0.174914, -0.966014,
		31.502436, 33.988453, 37.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999933, 34.584557, 37.583439>,  <31.369211, 34.110893, 38.097942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999933, 34.584557, 37.583439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067122, 34.239418, 37.392742>,  <31.107433, 34.032333, 37.278324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067122, 34.239418, 37.392742>,  <30.999933, 34.584557, 37.583439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067122, 34.239418, 37.392742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968851, -0.055222, -0.241407,
		0.181970, 0.502443, -0.845244,
		0.167970, -0.862845, -0.476744,
		31.117512, 33.980564, 37.249718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634394, 34.616680, 36.957142>,  <30.999933, 34.584557, 37.583439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634394, 34.616680, 36.957142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.700130, 34.222290, 36.945465>,  <30.739573, 33.985657, 36.938457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.700130, 34.222290, 36.945465>,  <30.634394, 34.616680, 36.957142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700130, 34.222290, 36.945465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967467, -0.155344, -0.199692,
		0.192356, 0.061059, -0.979424,
		0.164340, -0.985972, -0.029192,
		30.749432, 33.926498, 36.936707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159269, 34.402119, 36.496471>,  <30.634394, 34.616680, 36.957142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159269, 34.402119, 36.496471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259502, 34.078949, 36.709812>,  <30.319643, 33.885048, 36.837814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259502, 34.078949, 36.709812>,  <30.159269, 34.402119, 36.496471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259502, 34.078949, 36.709812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916503, -0.375431, -0.138107,
		0.311816, -0.454208, -0.834545,
		0.250585, -0.807928, 0.533349,
		30.334679, 33.836571, 36.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837795, 33.890900, 36.083309>,  <30.159269, 34.402119, 36.496471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837795, 33.890900, 36.083309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906332, 33.643974, 36.390442>,  <29.947454, 33.495819, 36.574722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906332, 33.643974, 36.390442>,  <29.837795, 33.890900, 36.083309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906332, 33.643974, 36.390442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935557, -0.346250, -0.069604,
		0.308829, -0.706424, -0.636860,
		0.171342, -0.617314, 0.767831,
		29.957735, 33.458778, 36.620792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622465, 33.149494, 35.937733>,  <29.837795, 33.890900, 36.083309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622465, 33.149494, 35.937733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584024, 33.220943, 36.329418>,  <29.560961, 33.263813, 36.564430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584024, 33.220943, 36.329418>,  <29.622465, 33.149494, 35.937733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584024, 33.220943, 36.329418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980970, -0.183735, -0.062760,
		0.168706, -0.966611, 0.192877,
		-0.096102, 0.178619, 0.979214,
		29.555193, 33.274529, 36.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087088, 32.585491, 36.252483>,  <29.622465, 33.149494, 35.937733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087088, 32.585491, 36.252483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111080, 32.908237, 36.487556>,  <29.125475, 33.101883, 36.628601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111080, 32.908237, 36.487556>,  <29.087088, 32.585491, 36.252483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111080, 32.908237, 36.487556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996968, 0.019185, 0.075411,
		0.049572, -0.590426, 0.805568,
		0.059979, 0.806864, 0.587685,
		29.129074, 33.150295, 36.663860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459974, 32.560932, 36.722492>,  <29.087088, 32.585491, 36.252483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459974, 32.560932, 36.722492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565573, 32.946609, 36.732529>,  <28.628933, 33.178017, 36.738552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565573, 32.946609, 36.732529>,  <28.459974, 32.560932, 36.722492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565573, 32.946609, 36.732529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945356, 0.263826, -0.191567,
		-0.191329, 0.026849, 0.981159,
		0.263998, 0.964197, 0.025096,
		28.644772, 33.235870, 36.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987473, 32.918091, 37.080727>,  <28.459974, 32.560932, 36.722492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987473, 32.918091, 37.080727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152546, 33.233269, 36.897930>,  <28.251589, 33.422375, 36.788254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152546, 33.233269, 36.897930>,  <27.987473, 32.918091, 37.080727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152546, 33.233269, 36.897930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908718, 0.390649, -0.147056,
		0.062651, 0.475962, 0.877231,
		0.412683, 0.787943, -0.456990,
		28.276350, 33.469650, 36.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545254, 33.355145, 37.208538>,  <27.987473, 32.918091, 37.080727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545254, 33.355145, 37.208538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744026, 33.529671, 36.908489>,  <27.863289, 33.634388, 36.728458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744026, 33.529671, 36.908489>,  <27.545254, 33.355145, 37.208538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744026, 33.529671, 36.908489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829471, 0.492851, -0.262823,
		0.255024, 0.752810, 0.606827,
		0.496931, 0.436319, -0.750123,
		27.893106, 33.660568, 36.683453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558910, 34.129330, 37.296749>,  <27.545254, 33.355145, 37.208538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558910, 34.129330, 37.296749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588934, 34.036125, 36.908920>,  <27.606949, 33.980202, 36.676224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.588934, 34.036125, 36.908920>,  <27.558910, 34.129330, 37.296749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588934, 34.036125, 36.908920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825719, 0.530602, -0.191441,
		0.559065, 0.814964, -0.152579,
		0.075059, -0.233015, -0.969572,
		27.611452, 33.966221, 36.618050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565943, 34.767937, 36.923195>,  <27.558910, 34.129330, 37.296749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565943, 34.767937, 36.923195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485102, 34.528309, 36.613285>,  <27.436598, 34.384533, 36.427338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485102, 34.528309, 36.613285>,  <27.565943, 34.767937, 36.923195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485102, 34.528309, 36.613285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674193, 0.658912, -0.333616,
		0.710366, 0.454922, -0.537053,
		-0.202101, -0.599067, -0.774774,
		27.424471, 34.348587, 36.380852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535009, 35.215195, 36.250309>,  <27.565943, 34.767937, 36.923195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535009, 35.215195, 36.250309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334431, 34.882534, 36.154888>,  <27.214085, 34.682938, 36.097633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334431, 34.882534, 36.154888>,  <27.535009, 35.215195, 36.250309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334431, 34.882534, 36.154888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737997, 0.555056, -0.383761,
		0.451566, -0.016383, -0.892087,
		-0.501446, -0.831651, -0.238554,
		27.183996, 34.633038, 36.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835217, 35.800587, 35.991871>,  <27.535009, 35.215195, 36.250309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835217, 35.800587, 35.991871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940159, 36.139553, 36.176502>,  <28.003124, 36.342934, 36.287281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940159, 36.139553, 36.176502>,  <27.835217, 35.800587, 35.991871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940159, 36.139553, 36.176502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951773, -0.306087, 0.020968,
		0.159051, 0.433816, -0.886852,
		0.262358, 0.847416, 0.461578,
		28.018866, 36.393780, 36.314976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368099, 36.160664, 35.625195>,  <27.835217, 35.800587, 35.991871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368099, 36.160664, 35.625195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404221, 36.272224, 36.007622>,  <28.425894, 36.339161, 36.237076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404221, 36.272224, 36.007622>,  <28.368099, 36.160664, 35.625195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404221, 36.272224, 36.007622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992526, -0.104329, -0.063312,
		0.082087, 0.954635, -0.286241,
		0.090303, 0.278904, 0.956064,
		28.431311, 36.355896, 36.294441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668739, 36.825314, 35.640095>,  <28.368099, 36.160664, 35.625195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668739, 36.825314, 35.640095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763393, 36.685993, 36.002903>,  <28.820187, 36.602402, 36.220589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.763393, 36.685993, 36.002903>,  <28.668739, 36.825314, 35.640095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763393, 36.685993, 36.002903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970329, 0.132415, -0.202304,
		-0.049641, 0.927983, 0.369300,
		0.236636, -0.348300, 0.907023,
		28.834385, 36.581505, 36.275009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131126, 37.276760, 35.859413>,  <28.668739, 36.825314, 35.640095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131126, 37.276760, 35.859413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187252, 36.985798, 36.128098>,  <29.220926, 36.811222, 36.289307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187252, 36.985798, 36.128098>,  <29.131126, 37.276760, 35.859413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187252, 36.985798, 36.128098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928372, 0.332467, 0.166107,
		-0.344149, 0.600291, 0.721950,
		0.140312, -0.727403, 0.671712,
		29.229345, 36.767578, 36.329613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458618, 37.491299, 36.478222>,  <29.131126, 37.276760, 35.859413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458618, 37.491299, 36.478222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560547, 37.106380, 36.440166>,  <29.621704, 36.875431, 36.417332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560547, 37.106380, 36.440166>,  <29.458618, 37.491299, 36.478222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560547, 37.106380, 36.440166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950795, 0.231410, 0.206003,
		-0.176219, -0.142955, 0.973915,
		0.254823, -0.962296, -0.095142,
		29.636993, 36.817692, 36.411625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876627, 37.344879, 36.960209>,  <29.458618, 37.491299, 36.478222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876627, 37.344879, 36.960209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.955681, 37.049736, 36.702061>,  <30.003113, 36.872650, 36.547173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.955681, 37.049736, 36.702061>,  <29.876627, 37.344879, 36.960209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955681, 37.049736, 36.702061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978188, 0.105502, 0.178935,
		-0.063941, -0.666655, 0.742619,
		0.197636, -0.737862, -0.645368,
		30.014971, 36.828377, 36.508450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534454, 37.119934, 37.188686>,  <29.876627, 37.344879, 36.960209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534454, 37.119934, 37.188686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488935, 36.934380, 36.837265>,  <30.461624, 36.823048, 36.626411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488935, 36.934380, 36.837265>,  <30.534454, 37.119934, 37.188686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488935, 36.934380, 36.837265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987996, 0.040149, -0.149172,
		0.104473, -0.884982, 0.453753,
		-0.113797, -0.463890, -0.878553,
		30.454796, 36.795212, 36.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950027, 36.610649, 37.175106>,  <30.534454, 37.119934, 37.188686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950027, 36.610649, 37.175106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899004, 36.633640, 36.779041>,  <30.868389, 36.647434, 36.541401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899004, 36.633640, 36.779041>,  <30.950027, 36.610649, 37.175106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899004, 36.633640, 36.779041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986852, -0.092549, -0.132504,
		-0.099254, -0.994048, -0.044912,
		-0.127559, 0.057473, -0.990165,
		30.860737, 36.650883, 36.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353729, 36.117531, 36.784950>,  <30.950027, 36.610649, 37.175106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353729, 36.117531, 36.784950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281275, 36.394524, 36.505623>,  <31.237803, 36.560719, 36.338024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281275, 36.394524, 36.505623>,  <31.353729, 36.117531, 36.784950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281275, 36.394524, 36.505623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972401, 0.019931, -0.232465,
		-0.147060, -0.721158, -0.676982,
		-0.181137, 0.692484, -0.698323,
		31.226934, 36.602268, 36.296127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814680, 36.048061, 36.315144>,  <31.353729, 36.117531, 36.784950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814680, 36.048061, 36.315144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.696995, 36.415398, 36.209251>,  <31.626385, 36.635799, 36.145718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.696995, 36.415398, 36.209251>,  <31.814680, 36.048061, 36.315144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696995, 36.415398, 36.209251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928926, 0.209617, -0.305217,
		-0.224802, -0.335715, -0.914746,
		-0.294212, 0.918344, -0.264732,
		31.608730, 36.690903, 36.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047073, 36.205257, 35.634808>,  <31.814680, 36.048061, 36.315144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047073, 36.205257, 35.634808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991299, 36.562572, 35.805737>,  <31.957834, 36.776962, 35.908295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991299, 36.562572, 35.805737>,  <32.047073, 36.205257, 35.634808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991299, 36.562572, 35.805737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954507, 0.236112, -0.182122,
		-0.263582, 0.382487, -0.885567,
		-0.139433, 0.893283, 0.427321,
		31.949469, 36.830559, 35.933933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354053, 36.663948, 35.195656>,  <32.047073, 36.205257, 35.634808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354053, 36.663948, 35.195656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326847, 36.843071, 35.552273>,  <32.310524, 36.950546, 35.766243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326847, 36.843071, 35.552273>,  <32.354053, 36.663948, 35.195656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326847, 36.843071, 35.552273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934465, 0.341633, -0.100311,
		-0.349500, 0.826290, -0.441695,
		-0.068011, 0.447807, 0.891540,
		32.306442, 36.977413, 35.819736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817162, 37.320091, 35.239841>,  <32.354053, 36.663948, 35.195656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817162, 37.320091, 35.239841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776691, 37.304306, 35.637474>,  <32.752411, 37.294834, 35.876053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776691, 37.304306, 35.637474>,  <32.817162, 37.320091, 35.239841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776691, 37.304306, 35.637474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988865, 0.105621, 0.104832,
		-0.109133, 0.993623, 0.028337,
		-0.101171, -0.039462, 0.994086,
		32.746342, 37.292469, 35.935699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198486, 37.888371, 35.473610>,  <32.817162, 37.320091, 35.239841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198486, 37.888371, 35.473610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157158, 37.633511, 35.779125>,  <33.132362, 37.480595, 35.962433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.157158, 37.633511, 35.779125>,  <33.198486, 37.888371, 35.473610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157158, 37.633511, 35.779125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948608, 0.167801, 0.268300,
		-0.299111, 0.752253, 0.587068,
		-0.103319, -0.637149, 0.763784,
		33.126163, 37.442368, 36.008259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528713, 38.177834, 36.048904>,  <33.198486, 37.888371, 35.473610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528713, 38.177834, 36.048904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.509228, 37.788391, 36.138100>,  <33.497536, 37.554726, 36.191616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.509228, 37.788391, 36.138100>,  <33.528713, 38.177834, 36.048904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509228, 37.788391, 36.138100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909188, 0.049208, 0.413469,
		-0.413527, 0.222880, 0.882791,
		-0.048714, -0.973603, 0.222988,
		33.494614, 37.496311, 36.204998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723969, 38.085739, 36.772930>,  <33.528713, 38.177834, 36.048904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723969, 38.085739, 36.772930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.783195, 37.728146, 36.603760>,  <33.818733, 37.513588, 36.502258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.783195, 37.728146, 36.603760>,  <33.723969, 38.085739, 36.772930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783195, 37.728146, 36.603760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918542, -0.034184, 0.393842,
		-0.366547, -0.446790, 0.816101,
		0.148067, -0.893985, -0.422926,
		33.827614, 37.459949, 36.476883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104275, 37.710644, 37.285748>,  <33.723969, 38.085739, 36.772930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104275, 37.710644, 37.285748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161842, 37.519070, 36.939358>,  <34.196381, 37.404125, 36.731525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161842, 37.519070, 36.939358>,  <34.104275, 37.710644, 37.285748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161842, 37.519070, 36.939358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983864, -0.024756, 0.177199,
		-0.106304, -0.877503, 0.467640,
		0.143916, -0.478931, -0.865975,
		34.205017, 37.375389, 36.679565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596581, 37.161343, 37.440781>,  <34.104275, 37.710644, 37.285748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596581, 37.161343, 37.440781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602230, 37.184563, 37.041496>,  <34.605621, 37.198494, 36.801926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.602230, 37.184563, 37.041496>,  <34.596581, 37.161343, 37.440781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602230, 37.184563, 37.041496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992154, 0.123212, 0.021204,
		0.124223, -0.990681, -0.055852,
		0.014124, 0.058048, -0.998214,
		34.606468, 37.201977, 36.742031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185776, 36.817661, 37.257637>,  <34.596581, 37.161343, 37.440781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185776, 36.817661, 37.257637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.112652, 37.027927, 36.925312>,  <35.068779, 37.154087, 36.725918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.112652, 37.027927, 36.925312>,  <35.185776, 36.817661, 37.257637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112652, 37.027927, 36.925312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981287, 0.149531, -0.121310,
		0.060464, -0.837445, -0.543166,
		-0.182811, 0.525667, -0.830816,
		35.057808, 37.185627, 36.676067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647812, 36.532871, 36.777428>,  <35.185776, 36.817661, 37.257637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647812, 36.532871, 36.777428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543350, 36.898575, 36.653534>,  <35.480675, 37.117996, 36.579197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.543350, 36.898575, 36.653534>,  <35.647812, 36.532871, 36.777428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543350, 36.898575, 36.653534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954526, 0.196786, -0.223953,
		-0.143800, -0.354134, -0.924073,
		-0.261155, 0.914256, -0.309733,
		35.465004, 37.172852, 36.560616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956154, 36.603004, 36.106224>,  <35.647812, 36.532871, 36.777428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956154, 36.603004, 36.106224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.890099, 36.958466, 36.277348>,  <35.850464, 37.171741, 36.380024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.890099, 36.958466, 36.277348>,  <35.956154, 36.603004, 36.106224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890099, 36.958466, 36.277348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930088, 0.284631, -0.232211,
		-0.328124, 0.359554, -0.873531,
		-0.165142, 0.888654, 0.427811,
		35.840557, 37.225063, 36.405689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180317, 37.088024, 35.565151>,  <35.956154, 36.603004, 36.106224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180317, 37.088024, 35.565151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181713, 37.299740, 35.904526>,  <36.182552, 37.426769, 36.108150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.181713, 37.299740, 35.904526>,  <36.180317, 37.088024, 35.565151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181713, 37.299740, 35.904526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910897, 0.348399, -0.221098,
		-0.412619, 0.773609, -0.480911,
		0.003494, 0.529289, 0.848434,
		36.182762, 37.458527, 36.159058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333927, 37.864925, 35.369720>,  <36.180317, 37.088024, 35.565151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333927, 37.864925, 35.369720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428085, 37.777344, 35.748486>,  <36.484581, 37.724796, 35.975746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428085, 37.777344, 35.748486>,  <36.333927, 37.864925, 35.369720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428085, 37.777344, 35.748486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939032, 0.302469, -0.163494,
		-0.250616, 0.927671, 0.276800,
		0.235392, -0.218950, 0.946917,
		36.498703, 37.711658, 36.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.048534, 42.019012, 47.120701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.657681, 42.103325, 47.131908>,  <42.423168, 42.153912, 47.138634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.657681, 42.103325, 47.131908>,  <43.048534, 42.019012, 47.120701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657681, 42.103325, 47.131908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171073, 0.701015, 0.692324,
		0.126291, 0.681284, -0.721043,
		-0.977131, 0.210785, 0.028018,
		42.364540, 42.166561, 47.140312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947506, 42.742699, 46.938496>,  <43.048534, 42.019012, 47.120701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947506, 42.742699, 46.938496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.623253, 42.627594, 47.142483>,  <42.428699, 42.558533, 47.264877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.623253, 42.627594, 47.142483>,  <42.947506, 42.742699, 46.938496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623253, 42.627594, 47.142483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078778, 0.809404, 0.581944,
		-0.580234, 0.511917, -0.633459,
		-0.810631, -0.287761, 0.509971,
		42.380062, 42.541267, 47.295475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670479, 43.401886, 47.069092>,  <42.947506, 42.742699, 46.938496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670479, 43.401886, 47.069092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453354, 43.171360, 47.313457>,  <42.323078, 43.033047, 47.460075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453354, 43.171360, 47.313457>,  <42.670479, 43.401886, 47.069092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453354, 43.171360, 47.313457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210106, 0.797462, 0.565606,
		-0.813147, 0.178662, -0.553961,
		-0.542815, -0.576311, 0.610916,
		42.290508, 42.998466, 47.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085243, 43.793221, 47.153793>,  <42.670479, 43.401886, 47.069092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085243, 43.793221, 47.153793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120373, 43.549728, 47.469193>,  <42.141449, 43.403633, 47.658432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.120373, 43.549728, 47.469193>,  <42.085243, 43.793221, 47.153793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120373, 43.549728, 47.469193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239376, 0.755465, 0.609895,
		-0.966947, -0.242309, -0.079370,
		0.087822, -0.608735, 0.788498,
		42.146721, 43.367107, 47.705742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418327, 43.974346, 47.590794>,  <42.085243, 43.793221, 47.153793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418327, 43.974346, 47.590794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.687557, 43.779884, 47.813725>,  <41.849094, 43.663208, 47.947483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.687557, 43.779884, 47.813725>,  <41.418327, 43.974346, 47.590794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687557, 43.779884, 47.813725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171313, 0.630602, 0.756963,
		-0.719457, -0.604973, 0.341159,
		0.673077, -0.486158, 0.557331,
		41.889481, 43.634037, 47.980923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063354, 43.897694, 48.242096>,  <41.418327, 43.974346, 47.590794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063354, 43.897694, 48.242096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.447166, 43.826260, 48.329193>,  <41.677452, 43.783398, 48.381451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.447166, 43.826260, 48.329193>,  <41.063354, 43.897694, 48.242096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447166, 43.826260, 48.329193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116947, 0.450683, 0.884991,
		-0.256180, -0.874638, 0.411558,
		0.959529, -0.178586, 0.217742,
		41.735023, 43.772682, 48.394516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130196, 43.532219, 48.884254>,  <41.063354, 43.897694, 48.242096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130196, 43.532219, 48.884254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468578, 43.742531, 48.848682>,  <41.671608, 43.868717, 48.827339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468578, 43.742531, 48.848682>,  <41.130196, 43.532219, 48.884254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468578, 43.742531, 48.848682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159218, 0.408217, 0.898893,
		0.508928, -0.746264, 0.429048,
		0.845956, 0.525784, -0.088934,
		41.722366, 43.900265, 48.822002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363762, 43.519043, 49.467854>,  <41.130196, 43.532219, 48.884254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363762, 43.519043, 49.467854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.578659, 43.815086, 49.306057>,  <41.707600, 43.992710, 49.208981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.578659, 43.815086, 49.306057>,  <41.363762, 43.519043, 49.467854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578659, 43.815086, 49.306057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246405, 0.596385, 0.763943,
		0.806630, -0.310757, 0.502771,
		0.537245, 0.740105, -0.404490,
		41.739834, 44.037117, 49.184711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636181, 43.796398, 50.049755>,  <41.363762, 43.519043, 49.467854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636181, 43.796398, 50.049755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.691990, 44.088650, 49.782410>,  <41.725475, 44.264000, 49.622002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.691990, 44.088650, 49.782410>,  <41.636181, 43.796398, 50.049755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691990, 44.088650, 49.782410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158274, 0.682742, 0.713311,
		0.977489, 0.006265, 0.210895,
		0.139518, 0.730633, -0.668364,
		41.733845, 44.307838, 49.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040390, 44.237858, 50.340324>,  <41.636181, 43.796398, 50.049755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040390, 44.237858, 50.340324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837616, 44.460426, 50.076988>,  <41.715954, 44.593967, 49.918987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837616, 44.460426, 50.076988>,  <42.040390, 44.237858, 50.340324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837616, 44.460426, 50.076988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129931, 0.705702, 0.696493,
		0.852138, 0.438614, -0.285446,
		-0.506931, 0.556420, -0.658345,
		41.685535, 44.627354, 49.879486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052319, 44.933983, 50.615192>,  <42.040390, 44.237858, 50.340324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052319, 44.933983, 50.615192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.787468, 44.973923, 50.318108>,  <41.628559, 44.997887, 50.139858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.787468, 44.973923, 50.318108>,  <42.052319, 44.933983, 50.615192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787468, 44.973923, 50.318108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452261, 0.737005, 0.502278,
		0.597534, 0.668471, -0.442832,
		-0.662128, 0.099852, -0.742709,
		41.588829, 45.003880, 50.095295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087364, 45.595009, 50.575233>,  <42.052319, 44.933983, 50.615192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087364, 45.595009, 50.575233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.741798, 45.454952, 50.430428>,  <41.534458, 45.370918, 50.343544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.741798, 45.454952, 50.430428>,  <42.087364, 45.595009, 50.575233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741798, 45.454952, 50.430428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482905, 0.371781, 0.792831,
		-0.143011, 0.859757, -0.490271,
		-0.863916, -0.350138, -0.362012,
		41.482624, 45.349911, 50.321823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659260, 46.085598, 50.633446>,  <42.087364, 45.595009, 50.575233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659260, 46.085598, 50.633446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441540, 45.750191, 50.623455>,  <41.310909, 45.548946, 50.617458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441540, 45.750191, 50.623455>,  <41.659260, 46.085598, 50.633446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441540, 45.750191, 50.623455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359858, 0.206485, 0.909872,
		-0.757788, 0.504230, -0.414137,
		-0.544298, -0.838520, -0.024980,
		41.278252, 45.498634, 50.615963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909241, 46.248016, 50.812843>,  <41.659260, 46.085598, 50.633446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909241, 46.248016, 50.812843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.023090, 45.871262, 50.884216>,  <41.091400, 45.645210, 50.927040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.023090, 45.871262, 50.884216>,  <40.909241, 46.248016, 50.812843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023090, 45.871262, 50.884216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207529, 0.121178, 0.970695,
		-0.935907, -0.313311, -0.160979,
		0.284622, -0.941888, 0.178433,
		41.108479, 45.588696, 50.937748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399166, 46.735596, 51.199596>,  <40.909241, 46.248016, 50.812843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399166, 46.735596, 51.199596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035095, 46.896763, 51.161156>,  <39.816654, 46.993462, 51.138092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.035095, 46.896763, 51.161156>,  <40.399166, 46.735596, 51.199596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035095, 46.896763, 51.161156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214886, -0.657634, -0.722040,
		-0.354121, -0.636533, 0.685145,
		-0.910177, 0.402918, -0.096100,
		39.762043, 47.017639, 51.132324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972309, 46.099445, 51.181282>,  <40.399166, 46.735596, 51.199596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972309, 46.099445, 51.181282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781231, 46.409035, 51.015022>,  <39.666584, 46.594788, 50.915264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781231, 46.409035, 51.015022>,  <39.972309, 46.099445, 51.181282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781231, 46.409035, 51.015022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226534, -0.565645, -0.792924,
		-0.848817, -0.284616, 0.445538,
		-0.477695, 0.773977, -0.415653,
		39.637924, 46.641228, 50.890327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478584, 45.824406, 50.802822>,  <39.972309, 46.099445, 51.181282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478584, 45.824406, 50.802822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.489674, 46.178413, 50.616936>,  <39.496326, 46.390820, 50.505402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.489674, 46.178413, 50.616936>,  <39.478584, 45.824406, 50.802822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489674, 46.178413, 50.616936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096421, -0.460364, -0.882478,
		-0.994954, 0.069274, 0.072572,
		0.027724, 0.885023, -0.464720,
		39.497990, 46.443920, 50.477520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978470, 45.779587, 50.297298>,  <39.478584, 45.824406, 50.802822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978470, 45.779587, 50.297298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172798, 46.110672, 50.184959>,  <39.289394, 46.309322, 50.117558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172798, 46.110672, 50.184959>,  <38.978470, 45.779587, 50.297298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172798, 46.110672, 50.184959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274833, -0.160359, -0.948025,
		-0.829726, 0.537755, 0.149577,
		0.485820, 0.827710, -0.280847,
		39.318542, 46.358986, 50.100704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558720, 46.067097, 49.876507>,  <38.978470, 45.779587, 50.297298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558720, 46.067097, 49.876507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907413, 46.226173, 49.762012>,  <39.116631, 46.321617, 49.693317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.907413, 46.226173, 49.762012>,  <38.558720, 46.067097, 49.876507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907413, 46.226173, 49.762012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252963, -0.135029, -0.958007,
		-0.419639, 0.907530, -0.017108,
		0.871730, 0.397689, -0.286235,
		39.168934, 46.345482, 49.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415257, 46.640121, 49.375687>,  <38.558720, 46.067097, 49.876507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415257, 46.640121, 49.375687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777798, 46.487110, 49.303913>,  <38.995323, 46.395302, 49.260849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777798, 46.487110, 49.303913>,  <38.415257, 46.640121, 49.375687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777798, 46.487110, 49.303913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256220, -0.159907, -0.953300,
		0.335972, 0.910001, -0.242943,
		0.906352, -0.382529, -0.179436,
		39.049702, 46.372353, 49.250084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623791, 46.981960, 48.869263>,  <38.415257, 46.640121, 49.375687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623791, 46.981960, 48.869263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826015, 46.637779, 48.843861>,  <38.947350, 46.431271, 48.828617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826015, 46.637779, 48.843861>,  <38.623791, 46.981960, 48.869263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826015, 46.637779, 48.843861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281688, -0.095035, -0.954788,
		0.815512, 0.500594, -0.290425,
		0.505562, -0.860450, -0.063509,
		38.977684, 46.379642, 48.824806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645306, 46.892162, 48.215511>,  <38.623791, 46.981960, 48.869263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645306, 46.892162, 48.215511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792690, 46.546017, 48.351383>,  <38.881123, 46.338329, 48.432907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792690, 46.546017, 48.351383>,  <38.645306, 46.892162, 48.215511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792690, 46.546017, 48.351383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015992, -0.359434, -0.933034,
		0.929505, 0.349219, -0.118599,
		0.368462, -0.865363, 0.339680,
		38.903229, 46.286407, 48.453289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229904, 46.608982, 47.703060>,  <38.645306, 46.892162, 48.215511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229904, 46.608982, 47.703060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057446, 46.305088, 47.897758>,  <38.953972, 46.122753, 48.014576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057446, 46.305088, 47.897758>,  <39.229904, 46.608982, 47.703060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057446, 46.305088, 47.897758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130039, -0.481508, -0.866741,
		0.892862, -0.436988, 0.108806,
		-0.431146, -0.759731, 0.486746,
		38.928101, 46.077168, 48.043781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575325, 46.058838, 47.534595>,  <39.229904, 46.608982, 47.703060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575325, 46.058838, 47.534595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.219872, 45.909752, 47.641487>,  <39.006599, 45.820301, 47.705624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.219872, 45.909752, 47.641487>,  <39.575325, 46.058838, 47.534595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219872, 45.909752, 47.641487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002201, -0.586151, -0.810199,
		0.458610, -0.719383, 0.521694,
		-0.888635, -0.372714, 0.267232,
		38.953281, 45.797939, 47.721657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658882, 45.317841, 47.546753>,  <39.575325, 46.058838, 47.534595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658882, 45.317841, 47.546753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.272079, 45.410259, 47.503838>,  <39.039997, 45.465710, 47.478088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.272079, 45.410259, 47.503838>,  <39.658882, 45.317841, 47.546753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272079, 45.410259, 47.503838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060669, -0.617913, -0.783903,
		-0.247411, -0.751532, 0.611545,
		-0.967010, 0.231048, -0.107284,
		38.981976, 45.479572, 47.471653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414764, 44.667587, 47.132298>,  <39.658882, 45.317841, 47.546753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414764, 44.667587, 47.132298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110527, 44.926788, 47.148220>,  <38.927982, 45.082310, 47.157772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110527, 44.926788, 47.148220>,  <39.414764, 44.667587, 47.132298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110527, 44.926788, 47.148220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297589, -0.293489, -0.908463,
		-0.577006, -0.702819, 0.416065,
		-0.760596, 0.648005, 0.039807,
		38.882347, 45.121189, 47.160164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849289, 44.250854, 46.993122>,  <39.414764, 44.667587, 47.132298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849289, 44.250854, 46.993122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747478, 44.627983, 46.907055>,  <38.686390, 44.854259, 46.855415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747478, 44.627983, 46.907055>,  <38.849289, 44.250854, 46.993122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747478, 44.627983, 46.907055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461685, -0.313972, -0.829619,
		-0.849742, -0.111821, 0.515203,
		-0.254529, 0.942824, -0.215169,
		38.671120, 44.910831, 46.842503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193855, 44.216305, 46.679783>,  <38.849289, 44.250854, 46.993122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193855, 44.216305, 46.679783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349583, 44.560112, 46.547321>,  <38.443020, 44.766396, 46.467846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349583, 44.560112, 46.547321>,  <38.193855, 44.216305, 46.679783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349583, 44.560112, 46.547321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056858, -0.381260, -0.922718,
		-0.919346, 0.340405, -0.197302,
		0.389321, 0.859515, -0.331155,
		38.466377, 44.817966, 46.447975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494862, 44.617924, 46.933258>,  <38.193855, 44.216305, 46.679783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494862, 44.617924, 46.933258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113995, 44.501644, 46.970943>,  <36.885475, 44.431877, 46.993553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113995, 44.501644, 46.970943>,  <37.494862, 44.617924, 46.933258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113995, 44.501644, 46.970943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019465, 0.365370, 0.930659,
		-0.304962, 0.884308, -0.353551,
		-0.952166, -0.290697, 0.094211,
		36.828346, 44.414436, 46.999207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099915, 45.192394, 47.262993>,  <37.494862, 44.617924, 46.933258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099915, 45.192394, 47.262993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869381, 44.872509, 47.330276>,  <36.731060, 44.680576, 47.370647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869381, 44.872509, 47.330276>,  <37.099915, 45.192394, 47.262993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869381, 44.872509, 47.330276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148735, 0.305038, 0.940654,
		-0.803567, 0.517111, -0.294749,
		-0.576332, -0.799718, 0.168205,
		36.696480, 44.632595, 47.380737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530567, 45.424976, 47.771122>,  <37.099915, 45.192394, 47.262993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530567, 45.424976, 47.771122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516212, 45.025299, 47.778233>,  <36.507599, 44.785492, 47.782501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516212, 45.025299, 47.778233>,  <36.530567, 45.424976, 47.771122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516212, 45.025299, 47.778233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262011, 0.026577, 0.964699,
		-0.964398, 0.029959, -0.262754,
		-0.035885, -0.999198, 0.017781,
		36.505447, 44.725540, 47.783566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868904, 45.182194, 48.029953>,  <36.530567, 45.424976, 47.771122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868904, 45.182194, 48.029953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149284, 44.904682, 48.096100>,  <36.317513, 44.738174, 48.135788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149284, 44.904682, 48.096100>,  <35.868904, 45.182194, 48.029953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149284, 44.904682, 48.096100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124120, 0.109663, 0.986189,
		-0.702330, -0.711792, -0.009243,
		0.700948, -0.693777, 0.165368,
		36.359570, 44.696548, 48.145710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727585, 44.888561, 48.670895>,  <35.868904, 45.182194, 48.029953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727585, 44.888561, 48.670895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101692, 44.762562, 48.606327>,  <36.326157, 44.686962, 48.567585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101692, 44.762562, 48.606327>,  <35.727585, 44.888561, 48.670895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101692, 44.762562, 48.606327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133809, -0.107551, 0.985154,
		-0.327680, -0.942980, -0.058440,
		0.935265, -0.314995, -0.161422,
		36.382271, 44.668064, 48.557899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792576, 44.314781, 49.155167>,  <35.727585, 44.888561, 48.670895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792576, 44.314781, 49.155167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161098, 44.441708, 49.065277>,  <36.382214, 44.517864, 49.011345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161098, 44.441708, 49.065277>,  <35.792576, 44.314781, 49.155167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161098, 44.441708, 49.065277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273805, -0.119096, 0.954383,
		0.276080, -0.940811, -0.196608,
		0.921309, 0.317318, -0.224719,
		36.437492, 44.536903, 48.997860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219002, 43.924610, 49.579937>,  <35.792576, 44.314781, 49.155167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219002, 43.924610, 49.579937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425419, 44.248169, 49.467236>,  <36.549267, 44.442303, 49.399612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425419, 44.248169, 49.467236>,  <36.219002, 43.924610, 49.579937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425419, 44.248169, 49.467236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340788, 0.107901, 0.933927,
		0.785853, -0.577964, -0.219982,
		0.516041, 0.808897, -0.281758,
		36.580231, 44.490837, 49.382710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458736, 43.292130, 49.812893>,  <36.219002, 43.924610, 49.579937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458736, 43.292130, 49.812893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173603, 43.091595, 50.009071>,  <36.002525, 42.971275, 50.126778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173603, 43.091595, 50.009071>,  <36.458736, 43.292130, 49.812893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173603, 43.091595, 50.009071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293349, -0.422063, -0.857793,
		0.637040, -0.755333, 0.153794,
		-0.712830, -0.501334, 0.490447,
		35.959755, 42.941196, 50.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614868, 42.676167, 49.537766>,  <36.458736, 43.292130, 49.812893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614868, 42.676167, 49.537766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243317, 42.655544, 49.684475>,  <36.020386, 42.643169, 49.772503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243317, 42.655544, 49.684475>,  <36.614868, 42.676167, 49.537766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243317, 42.655544, 49.684475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265799, -0.596856, -0.757043,
		0.257944, -0.800690, 0.540704,
		-0.928879, -0.051557, 0.366778,
		35.964653, 42.640076, 49.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437031, 41.994961, 49.609684>,  <36.614868, 42.676167, 49.537766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437031, 41.994961, 49.609684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090973, 42.190418, 49.564507>,  <35.883339, 42.307693, 49.537399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090973, 42.190418, 49.564507>,  <36.437031, 41.994961, 49.609684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090973, 42.190418, 49.564507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208959, -0.555923, -0.804541,
		-0.455919, -0.672443, 0.583059,
		-0.865144, 0.488641, -0.112942,
		35.831429, 42.337009, 49.530624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929363, 41.554359, 49.407295>,  <36.437031, 41.994961, 49.609684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929363, 41.554359, 49.407295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802265, 41.906498, 49.266426>,  <35.726006, 42.117783, 49.181904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802265, 41.906498, 49.266426>,  <35.929363, 41.554359, 49.407295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802265, 41.906498, 49.266426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221771, -0.430117, -0.875109,
		-0.921876, -0.199961, 0.331904,
		-0.317745, 0.880349, -0.352169,
		35.706940, 42.170601, 49.160774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223675, 41.427933, 49.072910>,  <35.929363, 41.554359, 49.407295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223675, 41.427933, 49.072910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313648, 41.796314, 48.945629>,  <35.367630, 42.017342, 48.869263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313648, 41.796314, 48.945629>,  <35.223675, 41.427933, 49.072910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313648, 41.796314, 48.945629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412352, -0.205911, -0.887450,
		-0.882821, 0.330824, 0.333442,
		0.224930, 0.920954, -0.318198,
		35.381126, 42.072601, 48.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671658, 41.633228, 48.631802>,  <35.223675, 41.427933, 49.072910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671658, 41.633228, 48.631802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991219, 41.857620, 48.545021>,  <35.182953, 41.992256, 48.492954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991219, 41.857620, 48.545021>,  <34.671658, 41.633228, 48.631802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991219, 41.857620, 48.545021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114925, -0.211680, -0.970559,
		-0.590385, 0.800310, -0.104640,
		0.798898, 0.560977, -0.216948,
		35.230888, 42.025913, 48.479939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453613, 41.803196, 48.024250>,  <34.671658, 41.633228, 48.631802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453613, 41.803196, 48.024250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840519, 41.901997, 48.000957>,  <35.072662, 41.961277, 47.986980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840519, 41.901997, 48.000957>,  <34.453613, 41.803196, 48.024250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840519, 41.901997, 48.000957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039749, -0.079163, -0.996069,
		-0.250641, 0.965776, -0.066753,
		0.967264, 0.247002, -0.058230,
		35.130699, 41.976097, 47.983490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.909737, 43.904808, 51.578892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.098335, 44.048805, 51.256874>,  <39.211494, 44.135204, 51.063663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.098335, 44.048805, 51.256874>,  <38.909737, 43.904808, 51.578892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098335, 44.048805, 51.256874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244401, -0.823786, -0.511513,
		-0.847322, 0.437932, -0.300433,
		0.471501, 0.359990, -0.805043,
		39.239784, 44.156803, 51.015362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563892, 43.747166, 51.014347>,  <38.909737, 43.904808, 51.578892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563892, 43.747166, 51.014347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.932560, 43.776443, 50.861942>,  <39.153759, 43.794010, 50.770500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.932560, 43.776443, 50.861942>,  <38.563892, 43.747166, 51.014347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932560, 43.776443, 50.861942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174593, -0.798737, -0.575792,
		-0.346474, 0.597211, -0.723391,
		0.921669, 0.073198, -0.381010,
		39.209061, 43.798405, 50.747639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520226, 43.712334, 50.229580>,  <38.563892, 43.747166, 51.014347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520226, 43.712334, 50.229580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888222, 43.616947, 50.354000>,  <39.109020, 43.559715, 50.428650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.888222, 43.616947, 50.354000>,  <38.520226, 43.712334, 50.229580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888222, 43.616947, 50.354000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067796, -0.878473, -0.472957,
		0.386029, 0.414029, -0.824355,
		0.919992, -0.238463, 0.311047,
		39.164219, 43.545406, 50.447315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813709, 43.364639, 49.681385>,  <38.520226, 43.712334, 50.229580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813709, 43.364639, 49.681385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.074146, 43.250721, 49.962803>,  <39.230408, 43.182369, 50.131653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.074146, 43.250721, 49.962803>,  <38.813709, 43.364639, 49.681385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074146, 43.250721, 49.962803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205081, -0.826441, -0.524344,
		0.730767, 0.485679, -0.479683,
		0.651092, -0.284799, 0.703540,
		39.269474, 43.165279, 50.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429058, 43.280632, 49.369755>,  <38.813709, 43.364639, 49.681385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429058, 43.280632, 49.369755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.465134, 43.062508, 49.703102>,  <39.486778, 42.931633, 49.903111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.465134, 43.062508, 49.703102>,  <39.429058, 43.280632, 49.369755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465134, 43.062508, 49.703102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188886, -0.812226, -0.551916,
		0.977849, 0.207187, 0.029750,
		0.090186, -0.545310, 0.833369,
		39.492188, 42.898914, 49.953114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030083, 42.763241, 49.259518>,  <39.429058, 43.280632, 49.369755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030083, 42.763241, 49.259518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.815216, 42.639263, 49.573303>,  <39.686295, 42.564877, 49.761574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.815216, 42.639263, 49.573303>,  <40.030083, 42.763241, 49.259518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815216, 42.639263, 49.573303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049837, -0.916751, -0.396339,
		0.842002, -0.251996, 0.477003,
		-0.537168, -0.309946, 0.784464,
		39.654064, 42.546280, 49.808643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359528, 42.138981, 49.431511>,  <40.030083, 42.763241, 49.259518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359528, 42.138981, 49.431511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.991096, 42.092674, 49.580219>,  <39.770039, 42.064892, 49.669445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.991096, 42.092674, 49.580219>,  <40.359528, 42.138981, 49.431511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991096, 42.092674, 49.580219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101785, -0.849999, -0.516856,
		0.375835, -0.513906, 0.771134,
		-0.921080, -0.115762, 0.371767,
		39.714771, 42.057945, 49.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285069, 41.408234, 49.629982>,  <40.359528, 42.138981, 49.431511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285069, 41.408234, 49.629982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.899860, 41.515835, 49.623795>,  <39.668736, 41.580395, 49.620083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.899860, 41.515835, 49.623795>,  <40.285069, 41.408234, 49.629982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899860, 41.515835, 49.623795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239559, -0.881078, -0.407814,
		-0.123332, -0.389026, 0.912934,
		-0.963016, 0.268998, -0.015471,
		39.610954, 41.596535, 49.619152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927383, 40.824131, 49.943394>,  <40.285069, 41.408234, 49.629982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927383, 40.824131, 49.943394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.687969, 41.035069, 49.702179>,  <39.544319, 41.161633, 49.557449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.687969, 41.035069, 49.702179>,  <39.927383, 40.824131, 49.943394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687969, 41.035069, 49.702179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206848, -0.828980, -0.519621,
		-0.773928, -0.186276, 0.605258,
		-0.598540, 0.527346, -0.603040,
		39.508408, 41.193272, 49.521267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465405, 40.268250, 49.797913>,  <39.927383, 40.824131, 49.943394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465405, 40.268250, 49.797913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399796, 40.553364, 49.525139>,  <39.360432, 40.724434, 49.361477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399796, 40.553364, 49.525139>,  <39.465405, 40.268250, 49.797913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399796, 40.553364, 49.525139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126637, -0.700787, -0.702041,
		-0.978295, -0.028791, 0.205209,
		-0.164020, 0.712789, -0.681930,
		39.350590, 40.767200, 49.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810783, 40.134739, 49.464825>,  <39.465405, 40.268250, 49.797913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810783, 40.134739, 49.464825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.007061, 40.363247, 49.201656>,  <39.124828, 40.500351, 49.043755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.007061, 40.363247, 49.201656>,  <38.810783, 40.134739, 49.464825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007061, 40.363247, 49.201656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361259, -0.553738, -0.750244,
		-0.792912, 0.605822, -0.065339,
		0.490695, 0.571274, -0.657924,
		39.154270, 40.534630, 49.004280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337772, 40.362423, 48.921535>,  <38.810783, 40.134739, 49.464825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337772, 40.362423, 48.921535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.691395, 40.443485, 48.753075>,  <38.903568, 40.492123, 48.651997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.691395, 40.443485, 48.753075>,  <38.337772, 40.362423, 48.921535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691395, 40.443485, 48.753075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254874, -0.546287, -0.797878,
		-0.391765, 0.812712, -0.431299,
		0.884059, 0.202654, -0.421155,
		38.956612, 40.504280, 48.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737068, 40.414814, 49.219784>,  <38.337772, 40.362423, 48.921535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737068, 40.414814, 49.219784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407097, 40.202206, 49.296711>,  <37.209114, 40.074642, 49.342869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.407097, 40.202206, 49.296711>,  <37.737068, 40.414814, 49.219784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407097, 40.202206, 49.296711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146799, 0.127103, 0.980966,
		-0.545848, 0.837455, -0.026824,
		-0.824924, -0.531521, 0.192316,
		37.159618, 40.042747, 49.354404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135406, 40.834373, 49.584457>,  <37.737068, 40.414814, 49.219784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135406, 40.834373, 49.584457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118053, 40.444965, 49.674240>,  <37.107643, 40.211323, 49.728111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.118053, 40.444965, 49.674240>,  <37.135406, 40.834373, 49.584457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118053, 40.444965, 49.674240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282077, 0.203591, 0.937541,
		-0.958411, 0.103988, 0.265774,
		-0.043384, -0.973518, 0.224456,
		37.105038, 40.152908, 49.741577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644115, 40.735432, 50.090340>,  <37.135406, 40.834373, 49.584457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644115, 40.735432, 50.090340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867352, 40.408398, 50.147041>,  <37.001293, 40.212177, 50.181065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.867352, 40.408398, 50.147041>,  <36.644115, 40.735432, 50.090340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867352, 40.408398, 50.147041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041101, 0.143388, 0.988813,
		-0.828763, -0.557671, 0.046420,
		0.558088, -0.817583, 0.141756,
		37.034779, 40.163124, 50.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266857, 40.253990, 50.438580>,  <36.644115, 40.735432, 50.090340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266857, 40.253990, 50.438580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644192, 40.161793, 50.534069>,  <36.870594, 40.106476, 50.591362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644192, 40.161793, 50.534069>,  <36.266857, 40.253990, 50.438580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644192, 40.161793, 50.534069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180931, 0.245784, 0.952289,
		-0.278170, -0.941522, 0.190154,
		0.943338, -0.230493, 0.238720,
		36.927193, 40.092644, 50.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223347, 40.207951, 51.168224>,  <36.266857, 40.253990, 50.438580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223347, 40.207951, 51.168224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617714, 40.162148, 51.119461>,  <36.854332, 40.134666, 51.090202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617714, 40.162148, 51.119461>,  <36.223347, 40.207951, 51.168224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617714, 40.162148, 51.119461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149547, 0.277095, 0.949133,
		-0.074901, -0.953995, 0.290316,
		0.985914, -0.114507, -0.121913,
		36.913486, 40.127796, 51.082886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481030, 39.749214, 51.657642>,  <36.223347, 40.207951, 51.168224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481030, 39.749214, 51.657642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800266, 39.973530, 51.569500>,  <36.991810, 40.108120, 51.516613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800266, 39.973530, 51.569500>,  <36.481030, 39.749214, 51.657642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800266, 39.973530, 51.569500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170222, 0.140973, 0.975270,
		0.577990, -0.815865, 0.017050,
		0.798092, 0.560794, -0.220359,
		37.039696, 40.141769, 51.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076302, 39.523663, 52.057255>,  <36.481030, 39.749214, 51.657642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076302, 39.523663, 52.057255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174950, 39.894058, 51.942902>,  <37.234138, 40.116295, 51.874290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174950, 39.894058, 51.942902>,  <37.076302, 39.523663, 52.057255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174950, 39.894058, 51.942902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280268, 0.214242, 0.935709,
		0.927701, -0.310889, -0.206688,
		0.246620, 0.925985, -0.285885,
		37.248936, 40.171852, 51.857136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795746, 39.692142, 52.315716>,  <37.076302, 39.523663, 52.057255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795746, 39.692142, 52.315716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608616, 40.040016, 52.252743>,  <37.496338, 40.248741, 52.214958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608616, 40.040016, 52.252743>,  <37.795746, 39.692142, 52.315716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608616, 40.040016, 52.252743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338484, 0.340844, 0.877071,
		0.816438, 0.357025, -0.453830,
		-0.467821, 0.869689, -0.157431,
		37.468269, 40.300922, 52.205513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172798, 40.189835, 52.698410>,  <37.795746, 39.692142, 52.315716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172798, 40.189835, 52.698410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.848122, 40.411053, 52.623253>,  <37.653316, 40.543785, 52.578159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.848122, 40.411053, 52.623253>,  <38.172798, 40.189835, 52.698410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848122, 40.411053, 52.623253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098347, 0.446495, 0.889365,
		0.575753, 0.703407, -0.416804,
		-0.811687, 0.553046, -0.187893,
		37.604614, 40.576965, 52.566883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356377, 40.879055, 52.835381>,  <38.172798, 40.189835, 52.698410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356377, 40.879055, 52.835381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957348, 40.903301, 52.821659>,  <37.717930, 40.917850, 52.813427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957348, 40.903301, 52.821659>,  <38.356377, 40.879055, 52.835381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957348, 40.903301, 52.821659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016082, 0.679653, 0.733357,
		0.067770, 0.731024, -0.678978,
		-0.997571, 0.060619, -0.034304,
		37.658077, 40.921486, 52.811367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194347, 41.590851, 52.751694>,  <38.356377, 40.879055, 52.835381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194347, 41.590851, 52.751694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886925, 41.410446, 52.933205>,  <37.702473, 41.302204, 53.042110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886925, 41.410446, 52.933205>,  <38.194347, 41.590851, 52.751694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886925, 41.410446, 52.933205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039582, 0.741423, 0.669869,
		-0.638559, 0.496869, -0.587675,
		-0.768554, -0.451013, 0.453775,
		37.656357, 41.275143, 53.069336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645660, 42.119141, 52.894485>,  <38.194347, 41.590851, 52.751694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645660, 42.119141, 52.894485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553699, 41.815277, 53.137817>,  <37.498524, 41.632957, 53.283817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553699, 41.815277, 53.137817>,  <37.645660, 42.119141, 52.894485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553699, 41.815277, 53.137817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098575, 0.640036, 0.761995,
		-0.968210, 0.115215, -0.222026,
		-0.229898, -0.759657, 0.608332,
		37.484730, 41.587379, 53.320316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005604, 42.312534, 53.215225>,  <37.645660, 42.119141, 52.894485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005604, 42.312534, 53.215225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186474, 42.050377, 53.457218>,  <37.294994, 41.893082, 53.602413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.186474, 42.050377, 53.457218>,  <37.005604, 42.312534, 53.215225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186474, 42.050377, 53.457218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280844, 0.539165, 0.793995,
		-0.846561, -0.528929, 0.059734,
		0.452173, -0.655389, 0.604983,
		37.322124, 41.853760, 53.638714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545090, 42.095989, 53.830406>,  <37.005604, 42.312534, 53.215225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545090, 42.095989, 53.830406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933044, 42.071079, 53.924587>,  <37.165817, 42.056133, 53.981094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.933044, 42.071079, 53.924587>,  <36.545090, 42.095989, 53.830406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933044, 42.071079, 53.924587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150420, 0.607165, 0.780208,
		-0.191543, -0.792132, 0.579516,
		0.969889, -0.062273, 0.235451,
		37.224010, 42.052399, 53.995224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101784, 42.558521, 53.406719>,  <36.545090, 42.095989, 53.830406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101784, 42.558521, 53.406719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099747, 42.904198, 53.205463>,  <36.098522, 43.111603, 53.084709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099747, 42.904198, 53.205463>,  <36.101784, 42.558521, 53.406719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099747, 42.904198, 53.205463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379801, -0.467115, -0.798470,
		-0.925054, 0.187025, 0.330600,
		-0.005094, 0.864190, -0.503139,
		36.098217, 43.163456, 53.054520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666473, 42.434341, 52.882961>,  <36.101784, 42.558521, 53.406719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666473, 42.434341, 52.882961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855373, 42.763294, 52.756046>,  <35.968716, 42.960667, 52.679897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855373, 42.763294, 52.756046>,  <35.666473, 42.434341, 52.882961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855373, 42.763294, 52.756046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226995, -0.234349, -0.945280,
		-0.851734, 0.518434, 0.076004,
		0.472253, 0.822379, -0.317285,
		35.997051, 43.010010, 52.660862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356018, 42.530376, 52.292446>,  <35.666473, 42.434341, 52.882961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356018, 42.530376, 52.292446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650673, 42.797913, 52.252399>,  <35.827465, 42.958435, 52.228371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650673, 42.797913, 52.252399>,  <35.356018, 42.530376, 52.292446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650673, 42.797913, 52.252399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173758, 0.044107, -0.983800,
		-0.653591, 0.742095, 0.148707,
		0.736633, 0.668842, -0.100117,
		35.871662, 42.998566, 52.222363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088634, 43.091671, 51.950871>,  <35.356018, 42.530376, 52.292446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088634, 43.091671, 51.950871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484615, 43.106548, 51.896297>,  <35.722202, 43.115475, 51.863556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.484615, 43.106548, 51.896297>,  <35.088634, 43.091671, 51.950871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484615, 43.106548, 51.896297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139221, 0.087334, -0.986403,
		-0.024768, 0.995485, 0.091633,
		0.989952, 0.037189, -0.136429,
		35.781601, 43.117706, 51.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219349, 43.474010, 51.354752>,  <35.088634, 43.091671, 51.950871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219349, 43.474010, 51.354752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559807, 43.265774, 51.381699>,  <35.764080, 43.140831, 51.397869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559807, 43.265774, 51.381699>,  <35.219349, 43.474010, 51.354752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559807, 43.265774, 51.381699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085297, 0.010523, -0.996300,
		0.517955, 0.853742, 0.053361,
		0.851145, -0.520590, 0.067371,
		35.815151, 43.109596, 51.401909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592148, 43.781128, 50.878643>,  <35.219349, 43.474010, 51.354752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592148, 43.781128, 50.878643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800591, 43.443375, 50.928379>,  <35.925655, 43.240723, 50.958221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800591, 43.443375, 50.928379>,  <35.592148, 43.781128, 50.878643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800591, 43.443375, 50.928379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003786, -0.143393, -0.989659,
		0.853481, 0.516191, -0.071527,
		0.521110, -0.844384, 0.124337,
		35.956924, 43.190060, 50.965679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269150, 43.804985, 50.395458>,  <35.592148, 43.781128, 50.878643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269150, 43.804985, 50.395458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.150002, 43.437588, 50.499500>,  <36.078514, 43.217152, 50.561924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.150002, 43.437588, 50.499500>,  <36.269150, 43.804985, 50.395458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150002, 43.437588, 50.499500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049093, -0.257371, -0.965065,
		0.953344, -0.300230, 0.031571,
		-0.297866, -0.918489, 0.260102,
		36.060642, 43.162041, 50.577530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873608, 43.926178, 50.058834>,  <36.269150, 43.804985, 50.395458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873608, 43.926178, 50.058834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833862, 44.307331, 49.944187>,  <36.810017, 44.536022, 49.875401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.833862, 44.307331, 49.944187>,  <36.873608, 43.926178, 50.058834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833862, 44.307331, 49.944187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277858, 0.303155, 0.911533,
		0.955470, 0.010933, -0.294887,
		-0.099362, 0.952879, -0.286617,
		36.804054, 44.593193, 49.858200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531933, 44.316803, 50.314445>,  <36.873608, 43.926178, 50.058834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531933, 44.316803, 50.314445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.313160, 44.636822, 50.215824>,  <37.181896, 44.828831, 50.156651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.313160, 44.636822, 50.215824>,  <37.531933, 44.316803, 50.314445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313160, 44.636822, 50.215824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099339, 0.354449, 0.929784,
		0.831260, 0.484039, -0.273336,
		-0.546935, 0.800045, -0.246555,
		37.149078, 44.876835, 50.141857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957275, 44.895668, 50.363655>,  <37.531933, 44.316803, 50.314445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957275, 44.895668, 50.363655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586208, 45.041409, 50.396343>,  <37.363567, 45.128853, 50.415955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.586208, 45.041409, 50.396343>,  <37.957275, 44.895668, 50.363655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586208, 45.041409, 50.396343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288675, 0.560969, 0.775874,
		0.236849, 0.743344, -0.625573,
		-0.927668, 0.364353, 0.081720,
		37.307907, 45.150715, 50.420860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028976, 45.625885, 50.496014>,  <37.957275, 44.895668, 50.363655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028976, 45.625885, 50.496014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.661488, 45.523029, 50.615906>,  <37.440994, 45.461315, 50.687840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.661488, 45.523029, 50.615906>,  <38.028976, 45.625885, 50.496014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661488, 45.523029, 50.615906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131414, 0.516650, 0.846052,
		-0.372407, 0.816671, -0.440864,
		-0.918718, -0.257140, 0.299726,
		37.385872, 45.445889, 50.705822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778706, 46.271908, 50.813202>,  <38.028976, 45.625885, 50.496014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778706, 46.271908, 50.813202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568134, 45.958355, 50.944904>,  <37.441792, 45.770226, 51.023926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568134, 45.958355, 50.944904>,  <37.778706, 46.271908, 50.813202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568134, 45.958355, 50.944904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323749, 0.173270, 0.930142,
		-0.786169, 0.596247, 0.162566,
		-0.526427, -0.783879, 0.329254,
		37.410206, 45.723190, 51.043682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467651, 46.545124, 51.382401>,  <37.778706, 46.271908, 50.813202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467651, 46.545124, 51.382401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.458382, 46.149250, 51.438938>,  <37.452820, 45.911724, 51.472862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.458382, 46.149250, 51.438938>,  <37.467651, 46.545124, 51.382401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458382, 46.149250, 51.438938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277403, 0.129464, 0.951991,
		-0.960474, 0.061269, 0.271543,
		-0.023172, -0.989689, 0.141343,
		37.451431, 45.852345, 51.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218899, 46.391617, 52.013126>,  <37.467651, 46.545124, 51.382401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218899, 46.391617, 52.013126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.400066, 46.042484, 51.940434>,  <37.508766, 45.833004, 51.896816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.400066, 46.042484, 51.940434>,  <37.218899, 46.391617, 52.013126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400066, 46.042484, 51.940434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385338, 0.007826, 0.922742,
		-0.803978, -0.487955, 0.339881,
		0.452916, -0.872834, -0.181736,
		37.535942, 45.780636, 51.885914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125454, 45.957848, 52.614502>,  <37.218899, 46.391617, 52.013126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125454, 45.957848, 52.614502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456017, 45.832027, 52.427689>,  <37.654354, 45.756535, 52.315601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456017, 45.832027, 52.427689>,  <37.125454, 45.957848, 52.614502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456017, 45.832027, 52.427689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497329, 0.018794, 0.867359,
		-0.264051, -0.949054, 0.171967,
		0.826402, -0.314551, -0.467029,
		37.703938, 45.737663, 52.287579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413952, 45.583794, 53.176105>,  <37.125454, 45.957848, 52.614502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413952, 45.583794, 53.176105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.696243, 45.663239, 52.904076>,  <37.865620, 45.710903, 52.740860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.696243, 45.663239, 52.904076>,  <37.413952, 45.583794, 53.176105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696243, 45.663239, 52.904076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677261, 0.092678, 0.729882,
		0.207987, -0.975687, -0.069103,
		0.705732, 0.198607, -0.680071,
		37.907963, 45.722820, 52.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.583210, 39.736629, 37.766121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939911, 39.822765, 37.925323>,  <37.153931, 39.874447, 38.020844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939911, 39.822765, 37.925323>,  <36.583210, 39.736629, 37.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939911, 39.822765, 37.925323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451670, 0.369503, 0.812073,
		0.027804, -0.903934, 0.426766,
		0.891752, 0.215337, 0.398006,
		37.207436, 39.887367, 38.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426697, 39.558743, 38.411892>,  <36.583210, 39.736629, 37.766121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426697, 39.558743, 38.411892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749199, 39.794067, 38.436684>,  <36.942699, 39.935265, 38.451557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749199, 39.794067, 38.436684>,  <36.426697, 39.558743, 38.411892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749199, 39.794067, 38.436684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411689, 0.482766, 0.772948,
		0.424814, -0.648709, 0.631434,
		0.806254, 0.588314, 0.061981,
		36.991074, 39.970562, 38.455276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746609, 39.527851, 39.066849>,  <36.426697, 39.558743, 38.411892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746609, 39.527851, 39.066849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840694, 39.897297, 38.945774>,  <36.897144, 40.118965, 38.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840694, 39.897297, 38.945774>,  <36.746609, 39.527851, 39.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840694, 39.897297, 38.945774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475996, 0.380986, 0.792640,
		0.847409, -0.042363, 0.529248,
		0.235215, 0.923610, -0.302686,
		36.911259, 40.174381, 38.854969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850170, 39.828026, 39.644726>,  <36.746609, 39.527851, 39.066849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850170, 39.828026, 39.644726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827183, 40.162113, 39.425961>,  <36.813393, 40.362564, 39.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827183, 40.162113, 39.425961>,  <36.850170, 39.828026, 39.644726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827183, 40.162113, 39.425961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354321, 0.495089, 0.793312,
		0.933356, 0.239370, 0.267485,
		-0.057466, 0.835218, -0.546909,
		36.809944, 40.412678, 39.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061687, 40.408482, 40.039536>,  <36.850170, 39.828026, 39.644726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061687, 40.408482, 40.039536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808434, 40.565609, 39.772751>,  <36.656483, 40.659885, 39.612679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808434, 40.565609, 39.772751>,  <37.061687, 40.408482, 40.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808434, 40.565609, 39.772751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347724, 0.625481, 0.698471,
		0.691544, 0.674143, -0.259420,
		-0.633131, 0.392817, -0.666963,
		36.618496, 40.683453, 39.572662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957451, 41.116096, 40.318134>,  <37.061687, 40.408482, 40.039536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957451, 41.116096, 40.318134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677708, 41.084785, 40.033943>,  <36.509861, 41.065998, 39.863430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677708, 41.084785, 40.033943>,  <36.957451, 41.116096, 40.318134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677708, 41.084785, 40.033943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576251, 0.649830, 0.495637,
		0.422893, 0.756038, -0.499568,
		-0.699354, -0.078275, -0.710476,
		36.467903, 41.061302, 39.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695080, 41.763737, 40.140728>,  <36.957451, 41.116096, 40.318134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695080, 41.763737, 40.140728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402214, 41.511257, 40.038345>,  <36.226494, 41.359768, 39.976913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402214, 41.511257, 40.038345>,  <36.695080, 41.763737, 40.140728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402214, 41.511257, 40.038345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580034, 0.380803, 0.720104,
		-0.357061, 0.675702, -0.644930,
		-0.732167, -0.631202, -0.255960,
		36.182564, 41.321896, 39.961555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156296, 42.165741, 40.274426>,  <36.695080, 41.763737, 40.140728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156296, 42.165741, 40.274426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998650, 41.802052, 40.220791>,  <35.904064, 41.583836, 40.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998650, 41.802052, 40.220791>,  <36.156296, 42.165741, 40.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998650, 41.802052, 40.220791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439860, 0.058498, 0.896159,
		-0.806969, 0.412167, -0.422988,
		-0.394111, -0.909228, -0.134090,
		35.880417, 41.529282, 40.180565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422272, 42.284157, 40.167561>,  <36.156296, 42.165741, 40.274426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422272, 42.284157, 40.167561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510777, 41.926678, 40.323692>,  <35.563881, 41.712193, 40.417370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510777, 41.926678, 40.323692>,  <35.422272, 42.284157, 40.167561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510777, 41.926678, 40.323692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511065, 0.234624, 0.826900,
		-0.830576, -0.382443, -0.404822,
		0.221261, -0.893694, 0.390326,
		35.577156, 41.658569, 40.440792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930607, 42.217178, 40.578571>,  <35.422272, 42.284157, 40.167561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930607, 42.217178, 40.578571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176529, 41.935421, 40.720470>,  <35.324081, 41.766365, 40.805611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176529, 41.935421, 40.720470>,  <34.930607, 42.217178, 40.578571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176529, 41.935421, 40.720470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188454, 0.305557, 0.933338,
		-0.765834, -0.640672, 0.055112,
		0.614804, -0.704396, 0.354743,
		35.360970, 41.724102, 40.826893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535469, 42.015400, 41.144562>,  <34.930607, 42.217178, 40.578571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535469, 42.015400, 41.144562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907864, 41.882328, 41.204666>,  <35.131302, 41.802483, 41.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907864, 41.882328, 41.204666>,  <34.535469, 42.015400, 41.144562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907864, 41.882328, 41.204666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103491, 0.154194, 0.982606,
		-0.350067, -0.930347, 0.109123,
		0.930990, -0.332684, 0.150260,
		35.187160, 41.782524, 41.249744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453793, 41.513821, 41.723930>,  <34.535469, 42.015400, 41.144562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453793, 41.513821, 41.723930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824329, 41.664230, 41.715050>,  <35.046650, 41.754478, 41.709721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824329, 41.664230, 41.715050>,  <34.453793, 41.513821, 41.723930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824329, 41.664230, 41.715050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027016, 0.125109, 0.991775,
		0.375712, -0.918124, 0.126053,
		0.926343, 0.376027, -0.022201,
		35.102234, 41.777039, 41.708389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204964, 40.822689, 41.949898>,  <34.453793, 41.513821, 41.723930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204964, 40.822689, 41.949898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944645, 40.754597, 42.245869>,  <33.788456, 40.713741, 42.423450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944645, 40.754597, 42.245869>,  <34.204964, 40.822689, 41.949898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944645, 40.754597, 42.245869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623700, -0.435882, -0.648849,
		0.432976, -0.883758, 0.177494,
		-0.650792, -0.170233, 0.739926,
		33.749409, 40.703526, 42.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082478, 40.114952, 41.916603>,  <34.204964, 40.822689, 41.949898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082478, 40.114952, 41.916603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758408, 40.282825, 42.080299>,  <33.563965, 40.383549, 42.178516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758408, 40.282825, 42.080299>,  <34.082478, 40.114952, 41.916603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758408, 40.282825, 42.080299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582448, -0.497655, -0.642724,
		-0.066084, -0.759080, 0.647635,
		-0.810178, 0.419687, 0.409237,
		33.515354, 40.408733, 42.203072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559586, 39.559525, 42.207207>,  <34.082478, 40.114952, 41.916603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559586, 39.559525, 42.207207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320091, 39.878017, 42.172485>,  <33.176395, 40.069115, 42.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320091, 39.878017, 42.172485>,  <33.559586, 39.559525, 42.207207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320091, 39.878017, 42.172485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561587, -0.494604, -0.663315,
		-0.571085, -0.348401, 0.743289,
		-0.598733, 0.796231, -0.086803,
		33.140472, 40.116886, 42.146446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974205, 39.334503, 42.329086>,  <33.559586, 39.559525, 42.207207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974205, 39.334503, 42.329086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892838, 39.676659, 42.138535>,  <32.844017, 39.881950, 42.024204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892838, 39.676659, 42.138535>,  <32.974205, 39.334503, 42.329086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892838, 39.676659, 42.138535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620268, -0.489047, -0.613270,
		-0.757555, 0.170735, 0.630048,
		-0.203416, 0.855384, -0.476381,
		32.831814, 39.933273, 41.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226311, 39.338093, 42.355438>,  <32.974205, 39.334503, 42.329086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226311, 39.338093, 42.355438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330166, 39.608406, 42.079494>,  <32.392479, 39.770596, 41.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330166, 39.608406, 42.079494>,  <32.226311, 39.338093, 42.355438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330166, 39.608406, 42.079494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827600, -0.212421, -0.519571,
		-0.497659, 0.705826, 0.504128,
		0.259640, 0.675786, -0.689856,
		32.408058, 39.811142, 41.872540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569124, 39.671555, 42.146191>,  <32.226311, 39.338093, 42.355438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569124, 39.671555, 42.146191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820580, 39.756130, 41.846828>,  <31.971453, 39.806877, 41.667213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820580, 39.756130, 41.846828>,  <31.569124, 39.671555, 42.146191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820580, 39.756130, 41.846828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725871, -0.185900, -0.662234,
		-0.279151, 0.959549, 0.036615,
		0.628639, 0.211441, -0.748402,
		32.009171, 39.819561, 41.622307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124418, 40.042686, 41.771130>,  <31.569124, 39.671555, 42.146191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124418, 40.042686, 41.771130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421362, 39.920361, 41.532673>,  <31.599527, 39.846966, 41.389599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421362, 39.920361, 41.532673>,  <31.124418, 40.042686, 41.771130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421362, 39.920361, 41.532673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667439, -0.415335, -0.618079,
		-0.058580, 0.856722, -0.512440,
		0.742357, -0.305815, -0.596140,
		31.644070, 39.828617, 41.353832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981504, 40.310459, 41.038273>,  <31.124418, 40.042686, 41.771130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981504, 40.310459, 41.038273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215189, 39.987450, 41.005775>,  <31.355400, 39.793644, 40.986279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215189, 39.987450, 41.005775>,  <30.981504, 40.310459, 41.038273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215189, 39.987450, 41.005775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640398, -0.397165, -0.657382,
		0.498585, 0.436079, -0.749165,
		0.584212, -0.807524, -0.081244,
		31.390453, 39.745193, 40.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256063, 40.219330, 40.296677>,  <30.981504, 40.310459, 41.038273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256063, 40.219330, 40.296677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254663, 39.871723, 40.494587>,  <31.253824, 39.663158, 40.613335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254663, 39.871723, 40.494587>,  <31.256063, 40.219330, 40.296677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254663, 39.871723, 40.494587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397217, -0.452863, -0.798207,
		0.917718, -0.199326, -0.343603,
		-0.003498, -0.869013, 0.494776,
		31.253614, 39.611019, 40.643021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385370, 39.703327, 39.715309>,  <31.256063, 40.219330, 40.296677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385370, 39.703327, 39.715309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318079, 39.474911, 40.036709>,  <31.277704, 39.337860, 40.229549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318079, 39.474911, 40.036709>,  <31.385370, 39.703327, 39.715309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318079, 39.474911, 40.036709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362808, -0.722031, -0.589102,
		0.916553, -0.390620, -0.085711,
		-0.168229, -0.571040, 0.803500,
		31.267611, 39.303600, 40.277760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775352, 39.129089, 39.697247>,  <31.385370, 39.703327, 39.715309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775352, 39.129089, 39.697247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446455, 39.035397, 39.904724>,  <31.249115, 38.979183, 40.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446455, 39.035397, 39.904724>,  <31.775352, 39.129089, 39.697247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446455, 39.035397, 39.904724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278128, -0.629772, -0.725281,
		0.496544, -0.740624, 0.452682,
		-0.822246, -0.234230, 0.518698,
		31.199781, 38.965126, 40.060333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791716, 38.416656, 39.759659>,  <31.775352, 39.129089, 39.697247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791716, 38.416656, 39.759659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408337, 38.520119, 39.807781>,  <31.178308, 38.582195, 39.836655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408337, 38.520119, 39.807781>,  <31.791716, 38.416656, 39.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408337, 38.520119, 39.807781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274940, -0.725145, -0.631326,
		-0.076061, -0.638170, 0.766129,
		-0.958448, 0.258659, 0.120303,
		31.120802, 38.597717, 39.843872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440973, 37.858971, 39.865013>,  <31.791716, 38.416656, 39.759659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440973, 37.858971, 39.865013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148745, 38.105927, 39.748333>,  <30.973408, 38.254101, 39.678326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148745, 38.105927, 39.748333>,  <31.440973, 37.858971, 39.865013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148745, 38.105927, 39.748333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529647, -0.781990, -0.328580,
		-0.430972, -0.085551, 0.898300,
		-0.730573, 0.617391, -0.291704,
		30.929573, 38.291145, 39.660820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032578, 37.490932, 39.710117>,  <31.440973, 37.858971, 39.865013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032578, 37.490932, 39.710117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206097, 37.769627, 39.938637>,  <32.310207, 37.936844, 40.075748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206097, 37.769627, 39.938637>,  <32.032578, 37.490932, 39.710117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206097, 37.769627, 39.938637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621350, -0.690506, 0.370305,
		0.652488, 0.194337, -0.732456,
		0.433801, 0.696732, 0.571298,
		32.336239, 37.978645, 40.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862106, 37.452969, 39.734730>,  <32.032578, 37.490932, 39.710117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862106, 37.452969, 39.734730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743660, 37.655758, 40.058529>,  <32.672592, 37.777431, 40.252808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743660, 37.655758, 40.058529>,  <32.862106, 37.452969, 39.734730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743660, 37.655758, 40.058529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526401, -0.620566, 0.581205,
		0.797004, 0.598229, -0.083107,
		-0.296120, 0.506971, 0.809502,
		32.654823, 37.807850, 40.301380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720974, 37.014584, 40.299919>,  <32.862106, 37.452969, 39.734730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720974, 37.014584, 40.299919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074810, 36.992531, 40.114681>,  <33.287113, 36.979298, 40.003540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074810, 36.992531, 40.114681>,  <32.720974, 37.014584, 40.299919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074810, 36.992531, 40.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420646, -0.334436, 0.843333,
		-0.201370, -0.940804, -0.272649,
		0.884594, -0.055133, -0.463091,
		33.340187, 36.975990, 39.975754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982861, 36.293758, 40.452236>,  <32.720974, 37.014584, 40.299919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982861, 36.293758, 40.452236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262997, 36.575123, 40.403690>,  <33.431080, 36.743942, 40.374565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262997, 36.575123, 40.403690>,  <32.982861, 36.293758, 40.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262997, 36.575123, 40.403690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354070, -0.194703, 0.914727,
		0.619802, -0.683593, -0.385417,
		0.700343, 0.703414, -0.121363,
		33.473099, 36.786148, 40.367283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562599, 36.011700, 40.775623>,  <32.982861, 36.293758, 40.452236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562599, 36.011700, 40.775623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625237, 36.406525, 40.761864>,  <33.662819, 36.643421, 40.753609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625237, 36.406525, 40.761864>,  <33.562599, 36.011700, 40.775623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625237, 36.406525, 40.761864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377620, -0.027654, 0.925547,
		0.912623, -0.157926, -0.377065,
		0.156596, 0.987064, -0.034399,
		33.672215, 36.702644, 40.751545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239613, 36.156353, 41.077530>,  <33.562599, 36.011700, 40.775623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239613, 36.156353, 41.077530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053864, 36.510296, 41.092426>,  <33.942413, 36.722660, 41.101364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053864, 36.510296, 41.092426>,  <34.239613, 36.156353, 41.077530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053864, 36.510296, 41.092426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430087, 0.188554, 0.882877,
		0.774200, 0.425997, -0.468125,
		-0.464370, 0.884858, 0.037237,
		33.914551, 36.775753, 41.103596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697315, 36.542980, 41.456692>,  <34.239613, 36.156353, 41.077530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697315, 36.542980, 41.456692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374596, 36.779205, 41.463814>,  <34.180965, 36.920940, 41.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374596, 36.779205, 41.463814>,  <34.697315, 36.542980, 41.456692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374596, 36.779205, 41.463814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145442, 0.169315, 0.974771,
		0.572645, 0.789033, -0.222495,
		-0.806799, 0.590558, 0.017801,
		34.132557, 36.956371, 41.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892197, 37.200272, 41.634312>,  <34.697315, 36.542980, 41.456692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892197, 37.200272, 41.634312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511288, 37.138176, 41.739433>,  <34.282742, 37.100918, 41.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511288, 37.138176, 41.739433>,  <34.892197, 37.200272, 41.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511288, 37.138176, 41.739433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189311, 0.375009, 0.907485,
		-0.239436, 0.913930, -0.327723,
		-0.952277, -0.155243, 0.262808,
		34.225605, 37.091602, 41.818275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707520, 37.822704, 41.818432>,  <34.892197, 37.200272, 41.634312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707520, 37.822704, 41.818432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431759, 37.592121, 41.993896>,  <34.266304, 37.453770, 42.099174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431759, 37.592121, 41.993896>,  <34.707520, 37.822704, 41.818432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431759, 37.592121, 41.993896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199742, 0.430811, 0.880060,
		-0.696299, 0.694331, -0.181858,
		-0.689399, -0.576460, 0.438660,
		34.224937, 37.419182, 42.125496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227058, 38.325470, 42.283833>,  <34.707520, 37.822704, 41.818432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227058, 38.325470, 42.283833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184429, 37.946796, 42.405449>,  <34.158852, 37.719593, 42.478416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184429, 37.946796, 42.405449>,  <34.227058, 38.325470, 42.283833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184429, 37.946796, 42.405449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029041, 0.302686, 0.952648,
		-0.993881, 0.110355, -0.004765,
		-0.106572, -0.946680, 0.304039,
		34.152458, 37.662792, 42.496662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668842, 38.337006, 42.878288>,  <34.227058, 38.325470, 42.283833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668842, 38.337006, 42.878288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847546, 37.982620, 42.928043>,  <33.954769, 37.769989, 42.957897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847546, 37.982620, 42.928043>,  <33.668842, 38.337006, 42.878288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847546, 37.982620, 42.928043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343640, 0.298305, 0.890464,
		-0.826025, -0.355080, 0.437723,
		0.446761, -0.885964, 0.124388,
		33.981575, 37.716831, 42.965359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387280, 38.106934, 43.437672>,  <33.668842, 38.337006, 42.878288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387280, 38.106934, 43.437672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 37.924595, 43.397278>,  <33.953239, 37.815189, 43.373043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741005, 37.924595, 43.397278>,  <33.387280, 38.106934, 43.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741005, 37.924595, 43.397278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241139, 0.260698, 0.934820,
		-0.399810, -0.851022, 0.340461,
		0.884310, -0.455849, -0.100985,
		34.006298, 37.787842, 43.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363644, 37.718834, 44.040115>,  <33.387280, 38.106934, 43.437672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363644, 37.718834, 44.040115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747009, 37.696754, 43.928116>,  <33.977028, 37.683506, 43.860916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747009, 37.696754, 43.928116>,  <33.363644, 37.718834, 44.040115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747009, 37.696754, 43.928116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282199, 0.037038, 0.958641,
		-0.042554, -0.997788, 0.051077,
		0.958411, -0.055208, -0.279999,
		34.034534, 37.680195, 43.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623562, 37.085453, 44.326653>,  <33.363644, 37.718834, 44.040115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623562, 37.085453, 44.326653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925423, 37.342003, 44.271328>,  <34.106541, 37.495934, 44.238132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925423, 37.342003, 44.271328>,  <33.623562, 37.085453, 44.326653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925423, 37.342003, 44.271328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205719, -0.031130, 0.978116,
		0.623036, -0.766594, -0.155436,
		0.754656, 0.641377, -0.138308,
		34.151821, 37.534416, 44.229836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287865, 36.792980, 44.668167>,  <33.623562, 37.085453, 44.326653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287865, 36.792980, 44.668167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373466, 37.180264, 44.616360>,  <34.424828, 37.412632, 44.585278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373466, 37.180264, 44.616360>,  <34.287865, 36.792980, 44.668167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373466, 37.180264, 44.616360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521544, -0.001141, 0.853224,
		0.825952, -0.250138, -0.505208,
		0.214000, 0.968210, -0.129515,
		34.437668, 37.470726, 44.577507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974216, 36.864513, 44.877846>,  <34.287865, 36.792980, 44.668167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974216, 36.864513, 44.877846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853176, 37.245731, 44.882618>,  <34.780552, 37.474461, 44.885479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853176, 37.245731, 44.882618>,  <34.974216, 36.864513, 44.877846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853176, 37.245731, 44.882618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430811, 0.125601, 0.893659,
		0.850198, 0.275556, -0.448589,
		-0.302597, 0.953044, 0.011927,
		34.762398, 37.531643, 44.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558495, 37.194691, 45.016541>,  <34.974216, 36.864513, 44.877846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558495, 37.194691, 45.016541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270874, 37.455902, 45.111626>,  <35.098301, 37.612629, 45.168678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270874, 37.455902, 45.111626>,  <35.558495, 37.194691, 45.016541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270874, 37.455902, 45.111626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547830, 0.322173, 0.772067,
		0.427600, 0.685386, -0.589411,
		-0.719056, 0.653033, 0.237713,
		35.055157, 37.651814, 45.182941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890274, 37.771641, 45.142620>,  <35.558495, 37.194691, 45.016541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890274, 37.771641, 45.142620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535656, 37.799961, 45.325497>,  <35.322884, 37.816956, 45.435223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535656, 37.799961, 45.325497>,  <35.890274, 37.771641, 45.142620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535656, 37.799961, 45.325497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450465, 0.357366, 0.818151,
		-0.105456, 0.931277, -0.348716,
		-0.886544, 0.070805, 0.457194,
		35.269691, 37.821201, 45.462654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914623, 38.435410, 45.323845>,  <35.890274, 37.771641, 45.142620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914623, 38.435410, 45.323845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639896, 38.254616, 45.551525>,  <35.475060, 38.146141, 45.688133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639896, 38.254616, 45.551525>,  <35.914623, 38.435410, 45.323845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639896, 38.254616, 45.551525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446454, 0.355632, 0.821100,
		-0.573550, 0.818069, -0.042465,
		-0.686818, -0.451983, 0.569203,
		35.433849, 38.119022, 45.722286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898083, 38.912876, 45.744137>,  <35.914623, 38.435410, 45.323845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898083, 38.912876, 45.744137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746052, 38.593056, 45.930157>,  <35.654835, 38.401165, 46.041767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746052, 38.593056, 45.930157>,  <35.898083, 38.912876, 45.744137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746052, 38.593056, 45.930157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389809, 0.317487, 0.864437,
		-0.838803, 0.509831, 0.191001,
		-0.380076, -0.799546, 0.465046,
		35.632030, 38.353191, 46.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551567, 39.154968, 46.370346>,  <35.898083, 38.912876, 45.744137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551567, 39.154968, 46.370346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604317, 38.766415, 46.449360>,  <35.635967, 38.533283, 46.496769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604317, 38.766415, 46.449360>,  <35.551567, 39.154968, 46.370346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604317, 38.766415, 46.449360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233614, 0.224117, 0.946148,
		-0.963345, -0.078622, 0.256484,
		0.131871, -0.971385, 0.197535,
		35.643879, 38.474998, 46.508621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265404, 39.059334, 47.128155>,  <35.551567, 39.154968, 46.370346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265404, 39.059334, 47.128155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527008, 38.764397, 47.060509>,  <35.683971, 38.587437, 47.019920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527008, 38.764397, 47.060509>,  <35.265404, 39.059334, 47.128155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527008, 38.764397, 47.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391606, 0.138718, 0.909616,
		-0.647237, -0.661126, 0.379469,
		0.654011, -0.737339, -0.169118,
		35.723209, 38.543194, 47.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110073, 38.541965, 47.596825>,  <35.265404, 39.059334, 47.128155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110073, 38.541965, 47.596825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488415, 38.513218, 47.470215>,  <35.715420, 38.495968, 47.394249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488415, 38.513218, 47.470215>,  <35.110073, 38.541965, 47.596825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488415, 38.513218, 47.470215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316615, 0.419032, 0.850980,
		0.071473, -0.905123, 0.419100,
		0.945858, -0.071871, -0.316525,
		35.772171, 38.491657, 47.375256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434109, 38.465389, 48.180767>,  <35.110073, 38.541965, 47.596825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434109, 38.465389, 48.180767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742142, 38.535069, 47.935287>,  <35.926960, 38.576878, 47.787998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742142, 38.535069, 47.935287>,  <35.434109, 38.465389, 48.180767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742142, 38.535069, 47.935287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444396, 0.543709, 0.711964,
		0.457696, -0.820997, 0.341288,
		0.770082, 0.174197, -0.613701,
		35.973167, 38.587330, 47.751179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148140, 38.257359, 48.562706>,  <35.434109, 38.465389, 48.180767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148140, 38.257359, 48.562706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229408, 38.526020, 48.277721>,  <36.278168, 38.687218, 48.106731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229408, 38.526020, 48.277721>,  <36.148140, 38.257359, 48.562706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229408, 38.526020, 48.277721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380401, 0.616333, 0.689513,
		0.902229, -0.411109, -0.130279,
		0.203170, 0.671657, -0.712460,
		36.290359, 38.727516, 48.063984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840919, 38.398609, 48.639236>,  <36.148140, 38.257359, 48.562706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840919, 38.398609, 48.639236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716988, 38.707794, 48.417778>,  <36.642628, 38.893307, 48.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716988, 38.707794, 48.417778>,  <36.840919, 38.398609, 48.639236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716988, 38.707794, 48.417778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550454, 0.620617, 0.558421,
		0.775245, -0.131743, -0.617769,
		-0.309831, 0.772967, -0.553649,
		36.624039, 38.939686, 48.251682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374908, 38.774651, 48.489285>,  <36.840919, 38.398609, 48.639236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374908, 38.774651, 48.489285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072590, 39.032684, 48.444328>,  <36.891197, 39.187504, 48.417355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072590, 39.032684, 48.444328>,  <37.374908, 38.774651, 48.489285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072590, 39.032684, 48.444328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465415, 0.649966, 0.600778,
		0.460605, 0.401758, -0.791476,
		-0.755799, 0.645086, -0.112393,
		36.845852, 39.226212, 48.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692799, 39.364410, 48.351597>,  <37.374908, 38.774651, 48.489285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692799, 39.364410, 48.351597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338577, 39.494991, 48.483795>,  <37.126045, 39.573341, 48.563114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338577, 39.494991, 48.483795>,  <37.692799, 39.364410, 48.351597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338577, 39.494991, 48.483795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464364, 0.602224, 0.649378,
		0.012958, 0.728529, -0.684893,
		-0.885549, 0.326454, 0.330499,
		37.072914, 39.592926, 48.582943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742970, 40.045090, 48.569229>,  <37.692799, 39.364410, 48.351597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742970, 40.045090, 48.569229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415386, 39.911060, 48.755573>,  <37.218834, 39.830643, 48.867378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415386, 39.911060, 48.755573>,  <37.742970, 40.045090, 48.569229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415386, 39.911060, 48.755573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289537, 0.459634, 0.839586,
		-0.495448, 0.822474, -0.279407,
		-0.818963, -0.335072, 0.465861,
		37.169697, 39.810539, 48.895332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214474, 40.512535, 48.199463>,  <37.742970, 40.045090, 48.569229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214474, 40.512535, 48.199463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600574, 40.408810, 48.212418>,  <38.832233, 40.346577, 48.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600574, 40.408810, 48.212418>,  <38.214474, 40.512535, 48.199463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600574, 40.408810, 48.212418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084287, -0.426238, -0.900676,
		0.247359, 0.866648, -0.433283,
		0.965251, -0.259311, 0.032387,
		38.890148, 40.331017, 48.222134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553242, 40.831127, 47.606998>,  <38.214474, 40.512535, 48.199463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553242, 40.831127, 47.606998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800377, 40.538094, 47.721260>,  <38.948658, 40.362274, 47.789818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800377, 40.538094, 47.721260>,  <38.553242, 40.831127, 47.606998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800377, 40.538094, 47.721260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092170, -0.428255, -0.898945,
		0.780883, 0.529076, -0.332115,
		0.617841, -0.732582, 0.285652,
		38.985729, 40.318317, 47.806957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027401, 40.732811, 47.024483>,  <38.553242, 40.831127, 47.606998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027401, 40.732811, 47.024483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059837, 40.409367, 47.257572>,  <39.079300, 40.215298, 47.397427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059837, 40.409367, 47.257572>,  <39.027401, 40.732811, 47.024483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059837, 40.409367, 47.257572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118456, -0.572686, -0.811171,
		0.989643, 0.134805, 0.049346,
		0.081090, -0.808615, 0.582723,
		39.084164, 40.166782, 47.432388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680607, 40.440987, 46.825520>,  <39.027401, 40.732811, 47.024483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680607, 40.440987, 46.825520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435089, 40.167187, 46.982853>,  <39.287777, 40.002907, 47.077251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435089, 40.167187, 46.982853>,  <39.680607, 40.440987, 46.825520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435089, 40.167187, 46.982853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135753, -0.582320, -0.801545,
		0.777704, -0.438590, 0.450350,
		-0.613798, -0.684501, 0.393333,
		39.250950, 39.961838, 47.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006195, 39.805061, 46.604607>,  <39.680607, 40.440987, 46.825520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006195, 39.805061, 46.604607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637508, 39.696373, 46.715313>,  <39.416294, 39.631161, 46.781738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637508, 39.696373, 46.715313>,  <40.006195, 39.805061, 46.604607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637508, 39.696373, 46.715313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014806, -0.688418, -0.725163,
		0.387572, -0.672495, 0.630506,
		-0.921721, -0.271717, 0.276769,
		39.360992, 39.614857, 46.798344>
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
