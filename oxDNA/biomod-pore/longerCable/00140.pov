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
	<23.906353, 35.530937, 35.005085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200422, 35.276123, 35.097786>,  <24.376863, 35.123234, 35.153408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200422, 35.276123, 35.097786>,  <23.906353, 35.530937, 35.005085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200422, 35.276123, 35.097786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485014, 0.733157, 0.476699,
		-0.473587, -0.238051, 0.847966,
		0.735171, -0.637034, 0.231756,
		24.420973, 35.085014, 35.167313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077625, 35.389610, 35.788006>,  <23.906353, 35.530937, 35.005085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077625, 35.389610, 35.788006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367409, 35.379574, 35.512463>,  <24.541279, 35.373550, 35.347137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367409, 35.379574, 35.512463>,  <24.077625, 35.389610, 35.788006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367409, 35.379574, 35.512463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377018, 0.851039, 0.365500,
		0.577074, -0.524503, 0.626005,
		0.724460, -0.025095, -0.688860,
		24.584747, 35.372044, 35.305805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799541, 35.242336, 36.071663>,  <24.077625, 35.389610, 35.788006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799541, 35.242336, 36.071663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785789, 35.484062, 35.753262>,  <24.777538, 35.629097, 35.562222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785789, 35.484062, 35.753262>,  <24.799541, 35.242336, 36.071663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785789, 35.484062, 35.753262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501065, 0.699562, 0.509456,
		0.864726, -0.381336, -0.326850,
		-0.034378, 0.604314, -0.796004,
		24.775476, 35.665356, 35.514462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385418, 35.550751, 35.886246>,  <24.799541, 35.242336, 36.071663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385418, 35.550751, 35.886246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107176, 35.816063, 35.775837>,  <24.940231, 35.975250, 35.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107176, 35.816063, 35.775837>,  <25.385418, 35.550751, 35.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107176, 35.816063, 35.775837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493835, 0.720495, 0.486841,
		0.521789, 0.202338, -0.828732,
		-0.695603, 0.663284, -0.276025,
		24.898495, 36.015049, 35.693031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693914, 36.123459, 35.589970>,  <25.385418, 35.550751, 35.886246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693914, 36.123459, 35.589970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339470, 36.250336, 35.725143>,  <25.126804, 36.326462, 35.806248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339470, 36.250336, 35.725143>,  <25.693914, 36.123459, 35.589970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339470, 36.250336, 35.725143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460892, 0.679910, 0.570351,
		-0.048858, 0.661146, -0.748665,
		-0.886110, 0.317187, 0.337937,
		25.073637, 36.345493, 35.826523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069263, 35.725098, 36.023663>,  <25.693914, 36.123459, 35.589970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069263, 35.725098, 36.023663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435919, 35.810143, 35.888271>,  <26.655912, 35.861168, 35.807037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435919, 35.810143, 35.888271>,  <26.069263, 35.725098, 36.023663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435919, 35.810143, 35.888271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155660, -0.969827, -0.187630,
		-0.368159, 0.119302, -0.922077,
		0.916640, 0.212608, -0.338481,
		26.710911, 35.873924, 35.786728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233871, 35.551983, 35.227329>,  <26.069263, 35.725098, 36.023663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233871, 35.551983, 35.227329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570721, 35.524628, 35.441303>,  <26.772829, 35.508213, 35.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570721, 35.524628, 35.441303>,  <26.233871, 35.551983, 35.227329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570721, 35.524628, 35.441303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056471, -0.975291, -0.213585,
		0.536322, 0.210072, -0.817452,
		0.842122, -0.068388, 0.534933,
		26.823357, 35.504112, 35.601784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733503, 35.136894, 34.879879>,  <26.233871, 35.551983, 35.227329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733503, 35.136894, 34.879879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831945, 35.119019, 35.267162>,  <26.891010, 35.108295, 35.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831945, 35.119019, 35.267162>,  <26.733503, 35.136894, 34.879879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831945, 35.119019, 35.267162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040479, -0.997591, -0.056330,
		0.968398, 0.053055, -0.243703,
		0.246104, -0.044685, 0.968213,
		26.905777, 35.105614, 35.557625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330738, 34.680824, 34.876892>,  <26.733503, 35.136894, 34.879879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330738, 34.680824, 34.876892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242367, 34.691105, 35.266872>,  <27.189344, 34.697273, 35.500862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242367, 34.691105, 35.266872>,  <27.330738, 34.680824, 34.876892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242367, 34.691105, 35.266872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309843, -0.946015, 0.095151,
		0.924764, 0.323103, 0.201037,
		-0.220928, 0.025702, 0.974951,
		27.176088, 34.698814, 35.559357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869745, 34.456131, 35.246559>,  <27.330738, 34.680824, 34.876892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869745, 34.456131, 35.246559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570429, 34.420425, 35.509495>,  <27.390839, 34.399002, 35.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570429, 34.420425, 35.509495>,  <27.869745, 34.456131, 35.246559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570429, 34.420425, 35.509495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257903, -0.952099, 0.164299,
		0.611182, 0.292473, 0.735470,
		-0.748293, -0.089264, 0.657336,
		27.345942, 34.393646, 35.706696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096430, 34.273220, 35.927338>,  <27.869745, 34.456131, 35.246559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096430, 34.273220, 35.927338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714888, 34.156734, 35.956612>,  <27.485962, 34.086842, 35.974174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714888, 34.156734, 35.956612>,  <28.096430, 34.273220, 35.927338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714888, 34.156734, 35.956612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295537, -0.867376, 0.400396,
		-0.053123, 0.403548, 0.913415,
		-0.953853, -0.291218, 0.073185,
		27.428732, 34.069370, 35.978569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034712, 34.007732, 36.548256>,  <28.096430, 34.273220, 35.927338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034712, 34.007732, 36.548256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755026, 33.827045, 36.326607>,  <27.587215, 33.718632, 36.193619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755026, 33.827045, 36.326607>,  <28.034712, 34.007732, 36.548256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755026, 33.827045, 36.326607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411392, -0.888131, 0.204890,
		-0.584685, -0.084699, 0.806827,
		-0.699214, -0.451718, -0.554121,
		27.545261, 33.691528, 36.160370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187004, 33.364666, 36.013905>,  <28.034712, 34.007732, 36.548256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187004, 33.364666, 36.013905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988449, 33.058941, 36.178551>,  <27.869316, 32.875507, 36.277336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988449, 33.058941, 36.178551>,  <28.187004, 33.364666, 36.013905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988449, 33.058941, 36.178551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865370, 0.473244, -0.164845,
		-0.068799, -0.438023, -0.896327,
		-0.496388, -0.764314, 0.411611,
		27.839533, 32.829647, 36.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831841, 33.040028, 35.505230>,  <28.187004, 33.364666, 36.013905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831841, 33.040028, 35.505230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666569, 32.983429, 35.865067>,  <27.567406, 32.949471, 36.080967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666569, 32.983429, 35.865067>,  <27.831841, 33.040028, 35.505230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666569, 32.983429, 35.865067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725956, 0.647583, -0.231568,
		-0.549792, -0.748742, -0.370289,
		-0.413178, -0.141499, 0.899590,
		27.542616, 32.940979, 36.134945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043873, 32.835876, 35.421566>,  <27.831841, 33.040028, 35.505230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043873, 32.835876, 35.421566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139921, 33.019234, 35.763844>,  <27.197550, 33.129246, 35.969212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139921, 33.019234, 35.763844>,  <27.043873, 32.835876, 35.421566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139921, 33.019234, 35.763844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690378, 0.700330, -0.181430,
		-0.682437, -0.547189, 0.484629,
		0.240123, 0.458391, 0.855698,
		27.211958, 33.156750, 36.020554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555983, 33.307156, 35.536709>,  <27.043873, 32.835876, 35.421566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555983, 33.307156, 35.536709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827435, 33.434666, 35.801388>,  <26.990305, 33.511173, 35.960197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827435, 33.434666, 35.801388>,  <26.555983, 33.307156, 35.536709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827435, 33.434666, 35.801388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365011, 0.928153, -0.072792,
		-0.637363, -0.192129, 0.746227,
		0.678628, 0.318777, 0.661699,
		27.031023, 33.530300, 35.999897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201061, 33.700508, 36.072018>,  <26.555983, 33.307156, 35.536709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201061, 33.700508, 36.072018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584343, 33.801952, 36.019066>,  <26.814312, 33.862820, 35.987293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584343, 33.801952, 36.019066>,  <26.201061, 33.700508, 36.072018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584343, 33.801952, 36.019066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263206, 0.962833, -0.060627,
		0.112084, 0.092936, 0.989343,
		0.958206, 0.253606, -0.132380,
		26.871805, 33.878033, 35.979351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258188, 34.351078, 36.464512>,  <26.201061, 33.700508, 36.072018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258188, 34.351078, 36.464512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603586, 34.354927, 36.262806>,  <26.810825, 34.357239, 36.141781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603586, 34.354927, 36.262806>,  <26.258188, 34.351078, 36.464512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603586, 34.354927, 36.262806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014937, 0.998891, 0.044647,
		0.504136, -0.046085, 0.862394,
		0.863495, 0.009627, -0.504265,
		26.862635, 34.357815, 36.111526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827518, 34.760124, 36.822102>,  <26.258188, 34.351078, 36.464512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827518, 34.760124, 36.822102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921247, 34.740715, 36.433723>,  <26.977486, 34.729069, 36.200695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921247, 34.740715, 36.433723>,  <26.827518, 34.760124, 36.822102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921247, 34.740715, 36.433723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008510, 0.998818, -0.047863,
		0.972122, 0.002952, 0.234458,
		0.234322, -0.048524, -0.970947,
		26.991545, 34.726158, 36.142441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457775, 35.084366, 36.710976>,  <26.827518, 34.760124, 36.822102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457775, 35.084366, 36.710976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260880, 35.096619, 36.363007>,  <27.142742, 35.103970, 36.154224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260880, 35.096619, 36.363007>,  <27.457775, 35.084366, 36.710976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260880, 35.096619, 36.363007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019982, 0.999515, 0.023894,
		0.870229, -0.005621, -0.492614,
		-0.492241, 0.030637, -0.869920,
		27.113207, 35.105808, 36.102032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932781, 35.426468, 36.202557>,  <27.457775, 35.084366, 36.710976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932781, 35.426468, 36.202557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538265, 35.443821, 36.138866>,  <27.301556, 35.454231, 36.100655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538265, 35.443821, 36.138866>,  <27.932781, 35.426468, 36.202557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538265, 35.443821, 36.138866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027064, 0.994286, 0.103264,
		0.162792, 0.097539, -0.981827,
		-0.986289, 0.043383, -0.159222,
		27.242378, 35.456837, 36.091099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390759, 35.077209, 36.629601>,  <27.932781, 35.426468, 36.202557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390759, 35.077209, 36.629601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483898, 35.466213, 36.629959>,  <28.539782, 35.699615, 36.630177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483898, 35.466213, 36.629959>,  <28.390759, 35.077209, 36.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483898, 35.466213, 36.629959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622975, -0.149871, 0.767750,
		0.746782, -0.178210, -0.640749,
		0.232851, 0.972512, 0.000900,
		28.553753, 35.757965, 36.630230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076284, 35.117702, 36.547104>,  <28.390759, 35.077209, 36.629601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076284, 35.117702, 36.547104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958567, 35.451485, 36.733471>,  <28.887936, 35.651752, 36.845291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958567, 35.451485, 36.733471>,  <29.076284, 35.117702, 36.547104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958567, 35.451485, 36.733471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653687, -0.179888, 0.735074,
		0.697198, 0.520892, -0.492531,
		-0.294294, 0.834453, 0.465918,
		28.870279, 35.701820, 36.873245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000278, 34.721241, 37.129787>,  <29.076284, 35.117702, 36.547104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000278, 34.721241, 37.129787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837143, 34.472618, 37.397320>,  <28.739262, 34.323444, 37.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837143, 34.472618, 37.397320>,  <29.000278, 34.721241, 37.129787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837143, 34.472618, 37.397320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757805, -0.639036, -0.131776,
		0.509312, 0.453098, 0.731644,
		-0.407839, -0.621558, 0.668829,
		28.714790, 34.286152, 37.597969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517010, 34.621387, 37.649357>,  <29.000278, 34.721241, 37.129787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517010, 34.621387, 37.649357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263056, 34.313629, 37.621223>,  <29.110683, 34.128975, 37.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263056, 34.313629, 37.621223>,  <29.517010, 34.621387, 37.649357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263056, 34.313629, 37.621223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772419, -0.630082, -0.079784,
		0.017070, -0.104980, 0.994328,
		-0.634884, -0.769400, -0.070333,
		29.072590, 34.082809, 37.600124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863274, 34.243538, 38.108433>,  <29.517010, 34.621387, 37.649357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863274, 34.243538, 38.108433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665667, 33.994175, 37.866009>,  <29.547102, 33.844559, 37.720554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665667, 33.994175, 37.866009>,  <29.863274, 34.243538, 38.108433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665667, 33.994175, 37.866009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692476, -0.703632, 0.159308,
		-0.525758, -0.340983, 0.779300,
		-0.494019, -0.623404, -0.606063,
		29.517462, 33.807152, 37.684189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571573, 33.696278, 38.513496>,  <29.863274, 34.243538, 38.108433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571573, 33.696278, 38.513496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701004, 33.630039, 38.140858>,  <29.778664, 33.590298, 37.917274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701004, 33.630039, 38.140858>,  <29.571573, 33.696278, 38.513496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701004, 33.630039, 38.140858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777777, -0.514149, 0.361543,
		-0.538850, -0.841563, -0.037572,
		0.323579, -0.165595, -0.931598,
		29.798079, 33.580360, 37.861378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786034, 33.002346, 38.401390>,  <29.571573, 33.696278, 38.513496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786034, 33.002346, 38.401390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018572, 33.237930, 38.176834>,  <30.158094, 33.379280, 38.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018572, 33.237930, 38.176834>,  <29.786034, 33.002346, 38.401390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018572, 33.237930, 38.176834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785320, -0.586651, 0.197769,
		-0.212862, -0.555845, -0.803571,
		0.581344, 0.588963, -0.561392,
		30.192976, 33.414619, 38.008415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075354, 32.628395, 37.754501>,  <29.786034, 33.002346, 38.401390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075354, 32.628395, 37.754501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283760, 32.891674, 37.971870>,  <30.408804, 33.049641, 38.102291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283760, 32.891674, 37.971870>,  <30.075354, 32.628395, 37.754501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283760, 32.891674, 37.971870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622567, -0.728595, 0.285584,
		0.583910, 0.189525, -0.789385,
		0.521017, 0.658201, 0.543426,
		30.440065, 33.089134, 38.134899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467384, 32.243809, 38.100605>,  <30.075354, 32.628395, 37.754501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467384, 32.243809, 38.100605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187181, 31.993198, 38.237286>,  <30.019060, 31.842833, 38.319294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187181, 31.993198, 38.237286>,  <30.467384, 32.243809, 38.100605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187181, 31.993198, 38.237286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534610, -0.143525, 0.832822,
		-0.472741, 0.766073, 0.435486,
		-0.700506, -0.626525, 0.341700,
		29.977030, 31.805241, 38.339794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219616, 32.109955, 37.998993>,  <30.467384, 32.243809, 38.100605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219616, 32.109955, 37.998993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426727, 31.821499, 37.814877>,  <31.550995, 31.648426, 37.704407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426727, 31.821499, 37.814877>,  <31.219616, 32.109955, 37.998993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426727, 31.821499, 37.814877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855350, -0.425805, -0.295071,
		0.016792, 0.546491, -0.837297,
		0.517779, -0.721136, -0.460291,
		31.582062, 31.605158, 37.676788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035192, 31.993816, 37.236664>,  <31.219616, 32.109955, 37.998993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035192, 31.993816, 37.236664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210663, 31.660437, 37.371078>,  <31.315945, 31.460409, 37.451729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210663, 31.660437, 37.371078>,  <31.035192, 31.993816, 37.236664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210663, 31.660437, 37.371078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772125, -0.540887, -0.333562,
		0.459768, -0.113140, -0.880802,
		0.438676, -0.833451, 0.336041,
		31.342266, 31.410402, 37.471889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152283, 31.564987, 36.698704>,  <31.035192, 31.993816, 37.236664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152283, 31.564987, 36.698704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093716, 31.342932, 37.026211>,  <31.058577, 31.209700, 37.222717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093716, 31.342932, 37.026211>,  <31.152283, 31.564987, 36.698704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093716, 31.342932, 37.026211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799437, -0.421091, -0.428464,
		0.582634, -0.717290, -0.382142,
		-0.146416, -0.555137, 0.818771,
		31.049791, 31.176392, 37.271843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083759, 30.855663, 36.519249>,  <31.152283, 31.564987, 36.698704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083759, 30.855663, 36.519249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895264, 30.915094, 36.867008>,  <30.782167, 30.950752, 37.075665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895264, 30.915094, 36.867008>,  <31.083759, 30.855663, 36.519249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895264, 30.915094, 36.867008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762354, -0.564332, -0.316774,
		0.443567, -0.812068, 0.379202,
		-0.471238, 0.148575, 0.869402,
		30.753893, 30.959667, 37.127831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979351, 30.204025, 36.632160>,  <31.083759, 30.855663, 36.519249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979351, 30.204025, 36.632160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755844, 30.426600, 36.878139>,  <30.621740, 30.560144, 37.025726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755844, 30.426600, 36.878139>,  <30.979351, 30.204025, 36.632160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755844, 30.426600, 36.878139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818285, -0.490500, -0.299699,
		0.134867, -0.670663, 0.729398,
		-0.558767, 0.556436, 0.614946,
		30.588215, 30.593531, 37.062622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378428, 29.769159, 36.977039>,  <30.979351, 30.204025, 36.632160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378428, 29.769159, 36.977039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306446, 30.154316, 36.896584>,  <30.263258, 30.385410, 36.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306446, 30.154316, 36.896584>,  <30.378428, 29.769159, 36.977039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306446, 30.154316, 36.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824245, -0.259201, -0.503424,
		-0.536877, 0.075193, 0.840303,
		-0.179953, 0.962892, -0.201136,
		30.252460, 30.443184, 36.836243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868608, 29.539677, 36.362198>,  <30.378428, 29.769159, 36.977039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868608, 29.539677, 36.362198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924763, 29.398354, 35.992233>,  <30.958456, 29.313560, 35.770252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924763, 29.398354, 35.992233>,  <30.868608, 29.539677, 36.362198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924763, 29.398354, 35.992233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978181, 0.094999, -0.184759,
		0.153143, 0.930671, -0.332263,
		0.140385, -0.353308, -0.924913,
		30.966879, 29.292360, 35.714760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337599, 29.968071, 36.032326>,  <30.868608, 29.539677, 36.362198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337599, 29.968071, 36.032326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440453, 29.697649, 35.756115>,  <30.502165, 29.535397, 35.590389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440453, 29.697649, 35.756115>,  <30.337599, 29.968071, 36.032326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440453, 29.697649, 35.756115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950107, -0.046295, -0.308470,
		0.176574, 0.735395, -0.654229,
		0.257135, -0.676055, -0.690529,
		30.517593, 29.494833, 35.548958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031765, 30.166470, 35.406590>,  <30.337599, 29.968071, 36.032326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031765, 30.166470, 35.406590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117191, 29.777431, 35.369820>,  <30.168447, 29.544008, 35.347755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117191, 29.777431, 35.369820>,  <30.031765, 30.166470, 35.406590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117191, 29.777431, 35.369820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909032, -0.163375, -0.383367,
		0.357841, 0.165440, -0.919010,
		0.213567, -0.972594, -0.091928,
		30.181261, 29.485653, 35.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484486, 30.091053, 34.935772>,  <30.031765, 30.166470, 35.406590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484486, 30.091053, 34.935772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483206, 29.802214, 35.212486>,  <29.482439, 29.628910, 35.378513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483206, 29.802214, 35.212486>,  <29.484486, 30.091053, 34.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483206, 29.802214, 35.212486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956782, -0.203374, -0.207863,
		0.290788, 0.661219, 0.691543,
		-0.003198, -0.722100, 0.691781,
		29.482246, 29.585583, 35.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316711, 29.408733, 34.699474>,  <29.484486, 30.091053, 34.935772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316711, 29.408733, 34.699474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355101, 29.041250, 34.546234>,  <29.378134, 28.820761, 34.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355101, 29.041250, 34.546234>,  <29.316711, 29.408733, 34.699474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355101, 29.041250, 34.546234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933343, -0.050694, 0.355390,
		-0.345921, -0.391667, 0.852605,
		0.095972, -0.918709, -0.383096,
		29.383892, 28.765638, 34.431305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344191, 28.905909, 35.181267>,  <29.316711, 29.408733, 34.699474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344191, 28.905909, 35.181267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585333, 28.792091, 34.883114>,  <29.730019, 28.723801, 34.704220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585333, 28.792091, 34.883114>,  <29.344191, 28.905909, 35.181267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585333, 28.792091, 34.883114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779494, 0.010809, 0.626316,
		-0.170158, -0.958602, 0.228317,
		0.602856, -0.284545, -0.745385,
		29.766190, 28.706728, 34.659500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729380, 28.242245, 35.395226>,  <29.344191, 28.905909, 35.181267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729380, 28.242245, 35.395226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885853, 28.526485, 35.161297>,  <29.979736, 28.697031, 35.020939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885853, 28.526485, 35.161297>,  <29.729380, 28.242245, 35.395226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885853, 28.526485, 35.161297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808668, 0.037962, 0.587039,
		0.439352, -0.702569, -0.559792,
		0.391185, 0.710603, -0.584823,
		30.003208, 28.739666, 34.985851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414757, 28.158220, 35.291084>,  <29.729380, 28.242245, 35.395226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414757, 28.158220, 35.291084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360161, 28.553938, 35.270432>,  <30.327404, 28.791368, 35.258041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360161, 28.553938, 35.270432>,  <30.414757, 28.158220, 35.291084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360161, 28.553938, 35.270432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918194, 0.145901, 0.368284,
		0.371875, 0.002858, -0.928278,
		-0.136489, 0.989295, -0.051632,
		30.319214, 28.850727, 35.254940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886953, 28.510138, 34.826885>,  <30.414757, 28.158220, 35.291084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886953, 28.510138, 34.826885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779594, 28.822283, 35.052803>,  <30.715179, 29.009571, 35.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779594, 28.822283, 35.052803>,  <30.886953, 28.510138, 34.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779594, 28.822283, 35.052803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963301, 0.215151, 0.160502,
		0.003734, 0.587148, -0.809471,
		-0.268396, 0.780364, 0.564797,
		30.699076, 29.056393, 35.222240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074911, 29.108971, 34.444775>,  <30.886953, 28.510138, 34.826885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074911, 29.108971, 34.444775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058159, 29.148148, 34.842499>,  <31.048107, 29.171654, 35.081135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058159, 29.148148, 34.842499>,  <31.074911, 29.108971, 34.444775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058159, 29.148148, 34.842499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989054, 0.144990, 0.027378,
		-0.141484, 0.984574, -0.102941,
		-0.041882, 0.097940, 0.994311,
		31.045595, 29.177530, 35.140793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408314, 29.683035, 34.707245>,  <31.074911, 29.108971, 34.444775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408314, 29.683035, 34.707245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400635, 29.436878, 35.022442>,  <31.396027, 29.289185, 35.211559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400635, 29.436878, 35.022442>,  <31.408314, 29.683035, 34.707245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400635, 29.436878, 35.022442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903163, 0.327394, 0.277687,
		-0.428869, 0.717013, 0.549512,
		-0.019198, -0.615390, 0.787989,
		31.394875, 29.252260, 35.258839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496906, 30.073406, 35.330219>,  <31.408314, 29.683035, 34.707245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496906, 30.073406, 35.330219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609283, 29.693398, 35.384670>,  <31.676710, 29.465393, 35.417343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609283, 29.693398, 35.384670>,  <31.496906, 30.073406, 35.330219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609283, 29.693398, 35.384670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931007, 0.304221, 0.201683,
		-0.233017, 0.070078, 0.969944,
		0.280944, -0.950020, 0.136132,
		31.693567, 29.408392, 35.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666395, 29.938734, 36.068275>,  <31.496906, 30.073406, 35.330219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666395, 29.938734, 36.068275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887447, 29.681885, 35.855759>,  <32.020081, 29.527775, 35.728249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887447, 29.681885, 35.855759>,  <31.666395, 29.938734, 36.068275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887447, 29.681885, 35.855759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832258, 0.458921, 0.311028,
		0.044104, -0.614058, 0.788027,
		0.552632, -0.642124, -0.531295,
		32.053238, 29.489248, 35.696369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173954, 29.637093, 36.472988>,  <31.666395, 29.938734, 36.068275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173954, 29.637093, 36.472988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268551, 29.694447, 36.088589>,  <32.325310, 29.728859, 35.857948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268551, 29.694447, 36.088589>,  <32.173954, 29.637093, 36.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268551, 29.694447, 36.088589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790295, 0.546994, 0.276101,
		0.565247, -0.824766, 0.016045,
		0.236495, 0.143385, -0.960995,
		32.339500, 29.737461, 35.800289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970715, 29.639046, 36.466450>,  <32.173954, 29.637093, 36.472988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970715, 29.639046, 36.466450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850193, 29.782541, 36.113060>,  <32.777878, 29.868639, 35.901028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850193, 29.782541, 36.113060>,  <32.970715, 29.639046, 36.466450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850193, 29.782541, 36.113060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721030, 0.692014, 0.035090,
		0.623962, -0.626437, -0.467170,
		-0.301306, 0.358738, -0.883471,
		32.759800, 29.890163, 35.848019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501106, 29.606699, 35.996773>,  <32.970715, 29.639046, 36.466450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501106, 29.606699, 35.996773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273800, 29.890450, 35.829987>,  <33.137417, 30.060699, 35.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273800, 29.890450, 35.829987>,  <33.501106, 29.606699, 35.996773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273800, 29.890450, 35.829987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797666, 0.599309, -0.067511,
		0.201999, -0.370962, -0.906413,
		-0.568265, 0.709377, -0.416963,
		33.103321, 30.103262, 35.704899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954449, 29.829496, 35.515579>,  <33.501106, 29.606699, 35.996773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954449, 29.829496, 35.515579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694359, 30.117636, 35.612167>,  <33.538303, 30.290520, 35.670120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694359, 30.117636, 35.612167>,  <33.954449, 29.829496, 35.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694359, 30.117636, 35.612167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756725, 0.642356, 0.121430,
		-0.067640, 0.261686, -0.962780,
		-0.650224, 0.720347, 0.241473,
		33.499290, 30.333740, 35.684608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934765, 30.478621, 35.060043>,  <33.954449, 29.829496, 35.515579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934765, 30.478621, 35.060043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825668, 30.574064, 35.432854>,  <33.760208, 30.631330, 35.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825668, 30.574064, 35.432854>,  <33.934765, 30.478621, 35.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825668, 30.574064, 35.432854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745054, 0.665296, 0.047704,
		-0.608691, 0.707422, -0.359233,
		-0.272743, 0.238611, 0.932028,
		33.743847, 30.645647, 35.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996956, 31.222101, 35.028313>,  <33.934765, 30.478621, 35.060043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996956, 31.222101, 35.028313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020756, 31.093172, 35.406216>,  <34.035034, 31.015816, 35.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020756, 31.093172, 35.406216>,  <33.996956, 31.222101, 35.028313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020756, 31.093172, 35.406216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750991, 0.637959, 0.170357,
		-0.657627, 0.699369, 0.280017,
		0.059497, -0.322321, 0.944759,
		34.038605, 30.996475, 35.689644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000645, 31.812731, 35.566017>,  <33.996956, 31.222101, 35.028313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000645, 31.812731, 35.566017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145657, 31.502834, 35.773224>,  <34.232666, 31.316896, 35.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145657, 31.502834, 35.773224>,  <34.000645, 31.812731, 35.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145657, 31.502834, 35.773224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729174, 0.581952, 0.360051,
		-0.580409, 0.247195, 0.775900,
		0.362534, -0.774743, 0.518019,
		34.254417, 31.270412, 35.928631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204407, 31.960503, 36.251038>,  <34.000645, 31.812731, 35.566017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204407, 31.960503, 36.251038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425907, 31.636879, 36.172264>,  <34.558807, 31.442705, 36.125000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425907, 31.636879, 36.172264>,  <34.204407, 31.960503, 36.251038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425907, 31.636879, 36.172264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815047, 0.478238, 0.327090,
		-0.170455, -0.341635, 0.924246,
		0.553754, -0.809058, -0.196930,
		34.592033, 31.394161, 36.113186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484028, 31.481180, 36.714993>,  <34.204407, 31.960503, 36.251038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484028, 31.481180, 36.714993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118099, 31.551550, 36.860405>,  <33.898544, 31.593773, 36.947651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118099, 31.551550, 36.860405>,  <34.484028, 31.481180, 36.714993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118099, 31.551550, 36.860405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403733, -0.375600, -0.834221,
		-0.010218, -0.909931, 0.414634,
		-0.914820, 0.175926, 0.363532,
		33.843655, 31.604328, 36.969463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032879, 30.836500, 36.678825>,  <34.484028, 31.481180, 36.714993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032879, 30.836500, 36.678825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817219, 31.171862, 36.646847>,  <33.687820, 31.373079, 36.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817219, 31.171862, 36.646847>,  <34.032879, 30.836500, 36.678825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817219, 31.171862, 36.646847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539635, -0.416778, -0.731498,
		-0.646612, -0.351247, 0.677140,
		-0.539154, 0.838404, -0.079949,
		33.655472, 31.423384, 36.622864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288990, 30.737280, 36.899048>,  <34.032879, 30.836500, 36.678825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288990, 30.737280, 36.899048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361904, 30.998064, 36.604641>,  <33.405651, 31.154535, 36.427998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361904, 30.998064, 36.604641>,  <33.288990, 30.737280, 36.899048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361904, 30.998064, 36.604641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632143, -0.495640, -0.595597,
		-0.753105, 0.573835, 0.321785,
		0.182285, 0.651962, -0.736015,
		33.416588, 31.193653, 36.383835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676907, 31.015238, 36.486126>,  <33.288990, 30.737280, 36.899048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676907, 31.015238, 36.486126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008762, 30.953135, 36.271614>,  <33.207874, 30.915873, 36.142906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008762, 30.953135, 36.271614>,  <32.676907, 31.015238, 36.486126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008762, 30.953135, 36.271614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511308, -0.597030, -0.618158,
		-0.224204, 0.787052, -0.574702,
		0.829637, -0.155256, -0.536282,
		33.257652, 30.906557, 36.110729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602764, 31.270197, 35.866337>,  <32.676907, 31.015238, 36.486126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602764, 31.270197, 35.866337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873661, 30.979979, 35.817459>,  <33.036198, 30.805847, 35.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873661, 30.979979, 35.817459>,  <32.602764, 31.270197, 35.866337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873661, 30.979979, 35.817459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700565, -0.585135, -0.408443,
		0.224847, 0.362216, -0.904568,
		0.677239, -0.725546, -0.122190,
		33.076832, 30.762316, 35.780804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421314, 31.034220, 35.265457>,  <32.602764, 31.270197, 35.866337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421314, 31.034220, 35.265457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641949, 30.742048, 35.426567>,  <32.774330, 30.566746, 35.523232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641949, 30.742048, 35.426567>,  <32.421314, 31.034220, 35.265457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641949, 30.742048, 35.426567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638566, -0.680445, -0.359484,
		0.536642, -0.058911, -0.841751,
		0.551588, -0.730428, 0.402774,
		32.807426, 30.522921, 35.547398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418056, 30.587843, 34.730705>,  <32.421314, 31.034220, 35.265457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418056, 30.587843, 34.730705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515617, 30.382168, 35.059612>,  <32.574154, 30.258762, 35.256958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515617, 30.382168, 35.059612>,  <32.418056, 30.587843, 34.730705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515617, 30.382168, 35.059612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592751, -0.750104, -0.293239,
		0.767567, -0.415880, -0.487734,
		0.243900, -0.514186, 0.822269,
		32.588787, 30.227913, 35.306293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576550, 29.910587, 34.528210>,  <32.418056, 30.587843, 34.730705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576550, 29.910587, 34.528210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479355, 29.868948, 34.913982>,  <32.421040, 29.843964, 35.145447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479355, 29.868948, 34.913982>,  <32.576550, 29.910587, 34.528210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479355, 29.868948, 34.913982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657755, -0.713064, -0.242689,
		0.712963, -0.693327, 0.104794,
		-0.242987, -0.104100, 0.964427,
		32.406460, 29.837719, 35.203312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705021, 29.222319, 34.701904>,  <32.576550, 29.910587, 34.528210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705021, 29.222319, 34.701904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431580, 29.378679, 34.948444>,  <32.267517, 29.472496, 35.096367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431580, 29.378679, 34.948444>,  <32.705021, 29.222319, 34.701904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431580, 29.378679, 34.948444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655387, -0.700395, -0.282692,
		0.321184, -0.597196, 0.734981,
		-0.683599, 0.390901, 0.616350,
		32.226501, 29.495949, 35.133350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570683, 28.661100, 34.200752>,  <32.705021, 29.222319, 34.701904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570683, 28.661100, 34.200752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511826, 28.980957, 33.967884>,  <32.476513, 29.172871, 33.828163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511826, 28.980957, 33.967884>,  <32.570683, 28.661100, 34.200752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511826, 28.980957, 33.967884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100934, -0.573368, -0.813057,
		-0.983952, -0.178395, 0.003655,
		-0.147141, 0.799640, -0.582173,
		32.467682, 29.220848, 33.793232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310703, 28.411705, 33.684681>,  <32.570683, 28.661100, 34.200752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310703, 28.411705, 33.684681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391438, 28.780313, 33.551979>,  <32.439877, 29.001478, 33.472359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391438, 28.780313, 33.551979>,  <32.310703, 28.411705, 33.684681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391438, 28.780313, 33.551979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191178, -0.369282, -0.909440,
		-0.960580, 0.120129, -0.250708,
		0.201832, 0.921520, -0.331759,
		32.451988, 29.056770, 33.452450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924545, 28.657269, 33.041134>,  <32.310703, 28.411705, 33.684681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924545, 28.657269, 33.041134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259815, 28.874359, 33.062721>,  <32.460976, 29.004614, 33.075672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259815, 28.874359, 33.062721>,  <31.924545, 28.657269, 33.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259815, 28.874359, 33.062721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094282, -0.046725, -0.994448,
		-0.537190, 0.838610, -0.090333,
		0.838176, 0.542724, 0.053966,
		32.511269, 29.037176, 33.078911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778351, 29.107189, 32.519707>,  <31.924545, 28.657269, 33.041134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778351, 29.107189, 32.519707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176598, 29.117090, 32.555790>,  <32.415546, 29.123032, 32.577442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176598, 29.117090, 32.555790>,  <31.778351, 29.107189, 32.519707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176598, 29.117090, 32.555790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085195, 0.158333, -0.983703,
		-0.038635, 0.987075, 0.155530,
		0.995615, 0.024755, 0.090211,
		32.475281, 29.124517, 32.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886122, 29.672039, 32.115776>,  <31.778351, 29.107189, 32.519707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886122, 29.672039, 32.115776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257565, 29.533077, 32.167927>,  <32.480431, 29.449701, 32.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257565, 29.533077, 32.167927>,  <31.886122, 29.672039, 32.115776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257565, 29.533077, 32.167927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154649, 0.042945, -0.987036,
		0.337300, 0.936732, 0.093605,
		0.928608, -0.347404, 0.130379,
		32.536148, 29.428856, 32.207039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419476, 30.185593, 31.858107>,  <31.886122, 29.672039, 32.115776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419476, 30.185593, 31.858107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574081, 29.816730, 31.851965>,  <32.666843, 29.595413, 31.848280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574081, 29.816730, 31.851965>,  <32.419476, 30.185593, 31.858107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574081, 29.816730, 31.851965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244527, 0.118513, -0.962373,
		0.889278, 0.368213, 0.271299,
		0.386511, -0.922157, -0.015353,
		32.690033, 29.540083, 31.847359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926571, 30.257082, 31.486012>,  <32.419476, 30.185593, 31.858107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926571, 30.257082, 31.486012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933285, 29.857218, 31.478020>,  <32.937313, 29.617300, 31.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933285, 29.857218, 31.478020>,  <32.926571, 30.257082, 31.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933285, 29.857218, 31.478020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395851, 0.024992, -0.917975,
		0.918161, 0.007500, 0.396136,
		0.016785, -0.999660, -0.019978,
		32.938320, 29.557320, 31.472027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584538, 29.966478, 31.201887>,  <32.926571, 30.257082, 31.486012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584538, 29.966478, 31.201887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358238, 29.642973, 31.137600>,  <33.222458, 29.448870, 31.099028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358238, 29.642973, 31.137600>,  <33.584538, 29.966478, 31.201887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358238, 29.642973, 31.137600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337947, -0.049630, -0.939856,
		0.752146, -0.586034, 0.301398,
		-0.565746, -0.808765, -0.160719,
		33.188515, 29.400343, 31.089384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976505, 29.504478, 30.782927>,  <33.584538, 29.966478, 31.201887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976505, 29.504478, 30.782927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592949, 29.407333, 30.724211>,  <33.362816, 29.349047, 30.688982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592949, 29.407333, 30.724211>,  <33.976505, 29.504478, 30.782927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592949, 29.407333, 30.724211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136345, 0.059369, -0.988881,
		0.248880, -0.968242, -0.023815,
		-0.958889, -0.242866, -0.146790,
		33.305283, 29.334475, 30.680174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991650, 29.109823, 30.142149>,  <33.976505, 29.504478, 30.782927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991650, 29.109823, 30.142149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606674, 29.204508, 30.195335>,  <33.375690, 29.261318, 30.227247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606674, 29.204508, 30.195335>,  <33.991650, 29.109823, 30.142149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606674, 29.204508, 30.195335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085858, 0.199263, -0.976178,
		-0.257566, -0.950927, -0.171455,
		-0.962439, 0.236710, 0.132968,
		33.317944, 29.275520, 30.235226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704674, 28.706711, 29.700371>,  <33.991650, 29.109823, 30.142149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704674, 28.706711, 29.700371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415699, 28.978327, 29.752512>,  <33.242313, 29.141296, 29.783796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415699, 28.978327, 29.752512>,  <33.704674, 28.706711, 29.700371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415699, 28.978327, 29.752512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051218, 0.240560, -0.969282,
		-0.689541, -0.693565, -0.208568,
		-0.722433, 0.679042, 0.130353,
		33.198971, 29.182039, 29.791618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059975, 28.550116, 29.228708>,  <33.704674, 28.706711, 29.700371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059975, 28.550116, 29.228708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087311, 28.941538, 29.306431>,  <33.103714, 29.176392, 29.353064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087311, 28.941538, 29.306431>,  <33.059975, 28.550116, 29.228708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087311, 28.941538, 29.306431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047959, 0.191314, -0.980356,
		-0.996509, 0.076316, -0.033856,
		0.068339, 0.978557, 0.194306,
		33.107811, 29.235106, 29.364723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508526, 28.767492, 28.909370>,  <33.059975, 28.550116, 29.228708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508526, 28.767492, 28.909370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749859, 29.085308, 28.936781>,  <32.894661, 29.275997, 28.953226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749859, 29.085308, 28.936781>,  <32.508526, 28.767492, 28.909370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749859, 29.085308, 28.936781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080391, 0.146082, -0.986001,
		-0.793424, 0.589382, 0.152011,
		0.603337, 0.794537, 0.068524,
		32.930859, 29.323669, 28.957338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211887, 29.232615, 28.523077>,  <32.508526, 28.767492, 28.909370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211887, 29.232615, 28.523077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574795, 29.398371, 28.551758>,  <32.792538, 29.497824, 28.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574795, 29.398371, 28.551758>,  <32.211887, 29.232615, 28.523077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574795, 29.398371, 28.551758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044751, 0.264658, -0.963304,
		-0.418161, 0.870768, 0.258660,
		0.907270, 0.414391, 0.071702,
		32.846977, 29.522688, 28.573269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159576, 29.921753, 28.293209>,  <32.211887, 29.232615, 28.523077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159576, 29.921753, 28.293209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547535, 29.839533, 28.240967>,  <32.780308, 29.790201, 28.209621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547535, 29.839533, 28.240967>,  <32.159576, 29.921753, 28.293209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547535, 29.839533, 28.240967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076597, 0.251592, -0.964798,
		0.231175, 0.945754, 0.228272,
		0.969892, -0.205552, -0.130604,
		32.838501, 29.777868, 28.201786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326927, 30.457411, 27.993362>,  <32.159576, 29.921753, 28.293209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326927, 30.457411, 27.993362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634315, 30.211716, 27.921621>,  <32.818748, 30.064299, 27.878576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634315, 30.211716, 27.921621>,  <32.326927, 30.457411, 27.993362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634315, 30.211716, 27.921621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106689, 0.153376, -0.982392,
		0.630932, 0.774071, 0.052331,
		0.768468, -0.614239, -0.179355,
		32.864857, 30.027445, 27.867815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865540, 30.898766, 27.691917>,  <32.326927, 30.457411, 27.993362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865540, 30.898766, 27.691917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897114, 30.516996, 27.576786>,  <32.916058, 30.287935, 27.507708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897114, 30.516996, 27.576786>,  <32.865540, 30.898766, 27.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897114, 30.516996, 27.576786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101951, 0.294944, -0.950060,
		0.991653, 0.045645, 0.120585,
		0.078931, -0.954424, -0.287829,
		32.920792, 30.230669, 27.490437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219498, 30.975746, 27.099810>,  <32.865540, 30.898766, 27.691917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219498, 30.975746, 27.099810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100132, 30.595329, 27.067635>,  <33.028511, 30.367079, 27.048330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100132, 30.595329, 27.067635>,  <33.219498, 30.975746, 27.099810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100132, 30.595329, 27.067635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083464, 0.057952, -0.994824,
		0.950780, -0.303584, 0.062084,
		-0.298415, -0.951041, -0.080438,
		33.010609, 30.310017, 27.043503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712582, 30.705439, 26.602558>,  <33.219498, 30.975746, 27.099810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712582, 30.705439, 26.602558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397671, 30.460825, 26.634102>,  <33.208725, 30.314056, 26.653028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397671, 30.460825, 26.634102>,  <33.712582, 30.705439, 26.602558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397671, 30.460825, 26.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034374, -0.084170, -0.995858,
		0.615639, -0.786728, 0.045244,
		-0.787278, -0.611534, 0.078862,
		33.161488, 30.277365, 26.657761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891628, 30.106054, 26.160030>,  <33.712582, 30.705439, 26.602558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891628, 30.106054, 26.160030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492210, 30.096821, 26.179562>,  <33.252560, 30.091280, 26.191280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492210, 30.096821, 26.179562>,  <33.891628, 30.106054, 26.160030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492210, 30.096821, 26.179562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046879, -0.078466, -0.995814,
		0.026820, -0.996649, 0.077269,
		-0.998540, -0.023085, 0.048827,
		33.192650, 30.089895, 26.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656654, 29.592096, 25.714603>,  <33.891628, 30.106054, 26.160030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656654, 29.592096, 25.714603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339424, 29.831865, 25.757915>,  <33.149086, 29.975727, 25.783903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339424, 29.831865, 25.757915>,  <33.656654, 29.592096, 25.714603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339424, 29.831865, 25.757915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211968, -0.104933, -0.971627,
		-0.571053, -0.793524, 0.210279,
		-0.793075, 0.599423, 0.108279,
		33.101501, 30.011692, 25.790400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078533, 29.343443, 25.327520>,  <33.656654, 29.592096, 25.714603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078533, 29.343443, 25.327520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991756, 29.732077, 25.365381>,  <32.939690, 29.965258, 25.388098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991756, 29.732077, 25.365381>,  <33.078533, 29.343443, 25.327520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991756, 29.732077, 25.365381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401066, -0.000310, -0.916049,
		-0.889990, -0.236691, 0.389737,
		-0.216941, 0.971585, 0.094653,
		32.926674, 30.023552, 25.393778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518478, 29.354923, 24.910406>,  <33.078533, 29.343443, 25.327520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518478, 29.354923, 24.910406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571873, 29.747808, 24.963223>,  <32.603909, 29.983540, 24.994913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571873, 29.747808, 24.963223>,  <32.518478, 29.354923, 24.910406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571873, 29.747808, 24.963223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242272, 0.161533, -0.956667,
		-0.960982, 0.095713, 0.259525,
		0.133488, 0.982215, 0.132042,
		32.611919, 30.042473, 25.002834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899597, 29.658930, 24.751776>,  <32.518478, 29.354923, 24.910406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899597, 29.658930, 24.751776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197796, 29.922096, 24.709103>,  <32.376713, 30.079996, 24.683498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197796, 29.922096, 24.709103>,  <31.899597, 29.658930, 24.751776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197796, 29.922096, 24.709103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336833, 0.233771, -0.912083,
		-0.575136, 0.715888, 0.395883,
		0.745495, 0.657918, -0.106684,
		32.421444, 30.119473, 24.677097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572441, 30.176350, 24.398109>,  <31.899597, 29.658930, 24.751776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572441, 30.176350, 24.398109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962452, 30.247141, 24.344442>,  <32.196457, 30.289616, 24.312243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962452, 30.247141, 24.344442>,  <31.572441, 30.176350, 24.398109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962452, 30.247141, 24.344442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195329, 0.395870, -0.897292,
		-0.105689, 0.901091, 0.420553,
		0.975026, 0.176980, -0.134170,
		32.254959, 30.300236, 24.304192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576736, 30.772552, 23.990965>,  <31.572441, 30.176350, 24.398109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576736, 30.772552, 23.990965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936127, 30.603674, 23.942814>,  <32.151760, 30.502346, 23.913923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936127, 30.603674, 23.942814>,  <31.576736, 30.772552, 23.990965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936127, 30.603674, 23.942814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008891, 0.291634, -0.956489,
		0.438932, 0.858312, 0.265780,
		0.898476, -0.422197, -0.120376,
		32.205669, 30.477015, 23.906700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084221, 31.228979, 23.645657>,  <31.576736, 30.772552, 23.990965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084221, 31.228979, 23.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212872, 30.856709, 23.575916>,  <32.290062, 30.633347, 23.534071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212872, 30.856709, 23.575916>,  <32.084221, 31.228979, 23.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212872, 30.856709, 23.575916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037683, 0.171409, -0.984479,
		0.946117, 0.323202, 0.020058,
		0.321624, -0.930677, -0.174353,
		32.309361, 30.577505, 23.523611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594490, 31.323320, 23.212715>,  <32.084221, 31.228979, 23.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594490, 31.323320, 23.212715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516701, 30.940228, 23.127934>,  <32.470028, 30.710371, 23.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516701, 30.940228, 23.127934>,  <32.594490, 31.323320, 23.212715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516701, 30.940228, 23.127934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039465, 0.208265, -0.977276,
		0.980113, -0.198422, -0.002706,
		-0.194476, -0.957734, -0.211954,
		32.458359, 30.652906, 23.064348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036011, 31.249544, 22.700199>,  <32.594490, 31.323320, 23.212715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036011, 31.249544, 22.700199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764004, 30.956778, 22.682886>,  <32.600800, 30.781118, 22.672499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764004, 30.956778, 22.682886>,  <33.036011, 31.249544, 22.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764004, 30.956778, 22.682886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065518, -0.001862, -0.997849,
		0.730260, -0.681394, 0.049220,
		-0.680020, -0.731915, -0.043284,
		32.559998, 30.737204, 22.669901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383739, 30.634626, 22.319868>,  <33.036011, 31.249544, 22.700199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383739, 30.634626, 22.319868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985229, 30.608797, 22.296974>,  <32.746124, 30.593300, 22.283237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985229, 30.608797, 22.296974>,  <33.383739, 30.634626, 22.319868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985229, 30.608797, 22.296974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055943, 0.021621, -0.998200,
		0.065702, -0.997678, -0.017928,
		-0.996270, -0.064581, -0.057234,
		32.686348, 30.589424, 22.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331867, 30.188919, 21.835543>,  <33.383739, 30.634626, 22.319868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331867, 30.188919, 21.835543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973190, 30.365158, 21.852577>,  <32.757984, 30.470901, 21.862799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973190, 30.365158, 21.852577>,  <33.331867, 30.188919, 21.835543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973190, 30.365158, 21.852577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062181, -0.030126, -0.997610,
		-0.438261, -0.897199, 0.054410,
		-0.896694, 0.440597, 0.042586,
		32.704182, 30.497337, 21.865353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026951, 29.922335, 21.239420>,  <33.331867, 30.188919, 21.835543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026951, 29.922335, 21.239420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825584, 30.246635, 21.358919>,  <32.704765, 30.441216, 21.430618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825584, 30.246635, 21.358919>,  <33.026951, 29.922335, 21.239420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825584, 30.246635, 21.358919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081799, 0.299484, -0.950588,
		-0.860161, -0.502982, -0.084448,
		-0.503419, 0.810752, 0.298748,
		32.674557, 30.489861, 21.448544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281860, 29.950621, 20.904198>,  <33.026951, 29.922335, 21.239420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281860, 29.950621, 20.904198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382858, 30.331276, 20.974211>,  <32.443455, 30.559669, 21.016218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382858, 30.331276, 20.974211>,  <32.281860, 29.950621, 20.904198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382858, 30.331276, 20.974211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164517, 0.220480, -0.961417,
		-0.953510, 0.213956, 0.212230,
		0.252493, 0.951636, 0.175030,
		32.458607, 30.616766, 21.026720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859388, 30.236511, 20.496338>,  <32.281860, 29.950621, 20.904198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859388, 30.236511, 20.496338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121868, 30.529902, 20.567236>,  <32.279358, 30.705936, 20.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121868, 30.529902, 20.567236>,  <31.859388, 30.236511, 20.496338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121868, 30.529902, 20.567236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098962, 0.316513, -0.943412,
		-0.748070, 0.601526, 0.280282,
		0.656199, 0.733475, 0.177246,
		32.318729, 30.749945, 20.620409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561203, 30.844076, 20.229078>,  <31.859388, 30.236511, 20.496338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561203, 30.844076, 20.229078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938602, 30.975908, 20.242882>,  <32.165043, 31.055008, 20.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938602, 30.975908, 20.242882>,  <31.561203, 30.844076, 20.229078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938602, 30.975908, 20.242882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102137, 0.388286, -0.915861,
		-0.315247, 0.860589, 0.400009,
		0.943497, 0.329578, 0.034508,
		32.221653, 31.074781, 20.253235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570311, 31.561817, 19.931719>,  <31.561203, 30.844076, 20.229078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570311, 31.561817, 19.931719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942732, 31.417290, 19.911360>,  <32.166183, 31.330572, 19.899143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942732, 31.417290, 19.911360>,  <31.570311, 31.561817, 19.931719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942732, 31.417290, 19.911360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151205, 0.508998, -0.847383,
		0.332084, 0.781261, 0.528537,
		0.931052, -0.361320, -0.050900,
		32.222046, 31.308893, 19.896090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008282, 32.095566, 19.815893>,  <31.570311, 31.561817, 19.931719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008282, 32.095566, 19.815893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204426, 31.765953, 19.702391>,  <32.322113, 31.568186, 19.634289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204426, 31.765953, 19.702391>,  <32.008282, 32.095566, 19.815893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204426, 31.765953, 19.702391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032835, 0.342826, -0.938825,
		0.870900, 0.451047, 0.195166,
		0.490363, -0.824031, -0.283757,
		32.351536, 31.518744, 19.617264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394520, 32.324627, 19.359127>,  <32.008282, 32.095566, 19.815893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394520, 32.324627, 19.359127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359657, 31.936852, 19.267391>,  <32.338741, 31.704187, 19.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359657, 31.936852, 19.267391>,  <32.394520, 32.324627, 19.359127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359657, 31.936852, 19.267391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081566, 0.236386, -0.968230,
		0.992850, -0.065680, -0.099676,
		-0.087155, -0.969437, -0.229339,
		32.333511, 31.646021, 19.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726231, 32.297462, 18.744015>,  <32.394520, 32.324627, 19.359127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726231, 32.297462, 18.744015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506626, 31.963173, 18.749119>,  <32.374863, 31.762600, 18.752180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506626, 31.963173, 18.749119>,  <32.726231, 32.297462, 18.744015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506626, 31.963173, 18.749119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226290, 0.133927, -0.964809,
		0.804602, -0.532574, -0.262642,
		-0.549007, -0.835721, 0.012758,
		32.341923, 31.712458, 18.752947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955582, 31.895752, 18.136337>,  <32.726231, 32.297462, 18.744015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955582, 31.895752, 18.136337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607178, 31.727703, 18.238194>,  <32.398136, 31.626875, 18.299307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607178, 31.727703, 18.238194>,  <32.955582, 31.895752, 18.136337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607178, 31.727703, 18.238194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271880, -0.019486, -0.962134,
		0.409175, -0.907259, -0.097250,
		-0.871009, -0.420121, 0.254639,
		32.345875, 31.601667, 18.314585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885746, 31.493549, 17.583395>,  <32.955582, 31.895752, 18.136337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885746, 31.493549, 17.583395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519505, 31.512922, 17.743055>,  <32.299759, 31.524546, 17.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519505, 31.512922, 17.743055>,  <32.885746, 31.493549, 17.583395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519505, 31.512922, 17.743055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385570, 0.175773, -0.905781,
		-0.114027, -0.983239, -0.142265,
		-0.915606, 0.048431, 0.399150,
		32.244823, 31.527451, 17.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557621, 31.094679, 17.126778>,  <32.885746, 31.493549, 17.583395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557621, 31.094679, 17.126778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284359, 31.312126, 17.321831>,  <32.120403, 31.442595, 17.438862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284359, 31.312126, 17.321831>,  <32.557621, 31.094679, 17.126778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284359, 31.312126, 17.321831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483645, 0.163514, -0.859855,
		-0.547167, -0.823251, 0.151213,
		-0.683151, 0.543618, 0.487631,
		32.079414, 31.475212, 17.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940487, 30.735189, 17.060709>,  <32.557621, 31.094679, 17.126778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940487, 30.735189, 17.060709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886326, 31.129522, 17.100311>,  <31.853830, 31.366121, 17.124073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886326, 31.129522, 17.100311>,  <31.940487, 30.735189, 17.060709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886326, 31.129522, 17.100311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468395, 0.024365, -0.883183,
		-0.873082, -0.165958, 0.458460,
		-0.135401, 0.985832, 0.099006,
		31.845705, 31.425272, 17.130013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481825, 30.849806, 16.625685>,  <31.940487, 30.735189, 17.060709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481825, 30.849806, 16.625685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541889, 31.237288, 16.704742>,  <31.577929, 31.469776, 16.752176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541889, 31.237288, 16.704742>,  <31.481825, 30.849806, 16.625685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541889, 31.237288, 16.704742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636478, 0.247694, -0.730441,
		-0.756536, -0.016112, 0.653753,
		0.150162, 0.968704, 0.197644,
		31.586937, 31.527899, 16.764036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785648, 31.127644, 16.819138>,  <31.481825, 30.849806, 16.625685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785648, 31.127644, 16.819138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048628, 31.382660, 16.658487>,  <31.206415, 31.535669, 16.562098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048628, 31.382660, 16.658487>,  <30.785648, 31.127644, 16.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048628, 31.382660, 16.658487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662802, 0.235782, -0.710704,
		-0.358406, 0.733451, 0.577577,
		0.657449, 0.637539, -0.401627,
		31.245863, 31.573921, 16.538000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526491, 31.926559, 16.741488>,  <30.785648, 31.127644, 16.819138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526491, 31.926559, 16.741488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791452, 31.812241, 16.464491>,  <30.950428, 31.743650, 16.298292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791452, 31.812241, 16.464491>,  <30.526491, 31.926559, 16.741488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791452, 31.812241, 16.464491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648695, 0.243557, -0.721024,
		0.374726, 0.926823, -0.024062,
		0.662401, -0.285795, -0.692493,
		30.990173, 31.726501, 16.256742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767052, 32.518120, 16.507429>,  <30.526491, 31.926559, 16.741488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767052, 32.518120, 16.507429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779768, 32.196503, 16.269943>,  <30.787397, 32.003532, 16.127451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779768, 32.196503, 16.269943>,  <30.767052, 32.518120, 16.507429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779768, 32.196503, 16.269943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718660, 0.394444, -0.572662,
		0.694635, 0.444885, -0.565296,
		0.031791, -0.804047, -0.593716,
		30.789305, 31.955288, 16.091829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598717, 32.770630, 15.823208>,  <30.767052, 32.518120, 16.507429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598717, 32.770630, 15.823208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524952, 32.377502, 15.826498>,  <30.480694, 32.141628, 15.828472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524952, 32.377502, 15.826498>,  <30.598717, 32.770630, 15.823208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524952, 32.377502, 15.826498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679805, 0.121503, -0.723258,
		0.709829, -0.138969, -0.690529,
		-0.184412, -0.982814, 0.008225,
		30.469629, 32.082657, 15.828965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996666, 33.228310, 15.315060>,  <30.598717, 32.770630, 15.823208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996666, 33.228310, 15.315060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392746, 33.173798, 15.327298>,  <31.630394, 33.141090, 15.334641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392746, 33.173798, 15.327298>,  <30.996666, 33.228310, 15.315060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392746, 33.173798, 15.327298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045209, 0.519995, 0.852972,
		-0.132153, -0.843228, 0.521058,
		0.990197, -0.136279, 0.030598,
		31.689806, 33.132915, 15.336477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443760, 32.955990, 15.933222>,  <30.996666, 33.228310, 15.315060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443760, 32.955990, 15.933222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684000, 33.217350, 15.748896>,  <31.828144, 33.374165, 15.638300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684000, 33.217350, 15.748896>,  <31.443760, 32.955990, 15.933222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684000, 33.217350, 15.748896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240853, 0.401721, 0.883522,
		0.762411, -0.641631, 0.083900,
		0.600599, 0.653399, -0.460815,
		31.864180, 33.413368, 15.610651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044170, 32.938511, 16.360449>,  <31.443760, 32.955990, 15.933222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044170, 32.938511, 16.360449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955284, 33.273685, 16.161057>,  <31.901951, 33.474789, 16.041422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955284, 33.273685, 16.161057>,  <32.044170, 32.938511, 16.360449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955284, 33.273685, 16.161057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253834, 0.543353, 0.800210,
		0.941375, 0.051291, -0.333440,
		-0.222219, 0.837936, -0.498480,
		31.888618, 33.525066, 16.011513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542057, 33.441181, 16.535463>,  <32.044170, 32.938511, 16.360449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542057, 33.441181, 16.535463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198360, 33.614262, 16.426310>,  <31.992142, 33.718109, 16.360817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198360, 33.614262, 16.426310>,  <32.542057, 33.441181, 16.535463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198360, 33.614262, 16.426310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000421, 0.532837, 0.846217,
		0.511564, 0.727223, -0.457656,
		-0.859245, 0.432702, -0.272886,
		31.940586, 33.744072, 16.344444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581760, 34.145306, 16.264166>,  <32.542057, 33.441181, 16.535463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581760, 34.145306, 16.264166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240124, 34.093956, 16.465776>,  <32.035141, 34.063145, 16.586742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240124, 34.093956, 16.465776>,  <32.581760, 34.145306, 16.264166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240124, 34.093956, 16.465776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348329, 0.578468, 0.737592,
		-0.386254, 0.805540, -0.449348,
		-0.854093, -0.128377, 0.504028,
		31.983896, 34.055443, 16.616985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450371, 34.810886, 16.540371>,  <32.581760, 34.145306, 16.264166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450371, 34.810886, 16.540371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257587, 34.543556, 16.767017>,  <32.141918, 34.383156, 16.903006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257587, 34.543556, 16.767017>,  <32.450371, 34.810886, 16.540371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257587, 34.543556, 16.767017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348990, 0.446743, 0.823788,
		-0.803691, 0.594777, 0.017926,
		-0.481962, -0.668327, 0.566614,
		32.112999, 34.343060, 16.937002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326511, 35.110466, 17.192039>,  <32.450371, 34.810886, 16.540371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326511, 35.110466, 17.192039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288403, 34.717216, 17.254515>,  <32.265537, 34.481266, 17.292000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288403, 34.717216, 17.254515>,  <32.326511, 35.110466, 17.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288403, 34.717216, 17.254515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422644, 0.102107, 0.900526,
		-0.901274, 0.151811, 0.405782,
		-0.095277, -0.983121, 0.156189,
		32.259819, 34.422279, 17.301371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029278, 35.029594, 17.862925>,  <32.326511, 35.110466, 17.192039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029278, 35.029594, 17.862925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239902, 34.694023, 17.807896>,  <32.366280, 34.492680, 17.774878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239902, 34.694023, 17.807896>,  <32.029278, 35.029594, 17.862925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239902, 34.694023, 17.807896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028724, -0.144175, 0.989135,
		-0.849649, -0.524796, -0.051820,
		0.526566, -0.838930, -0.137572,
		32.397873, 34.442345, 17.766624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799021, 34.645931, 18.387228>,  <32.029278, 35.029594, 17.862925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799021, 34.645931, 18.387228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134968, 34.461803, 18.272175>,  <32.336536, 34.351326, 18.203142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134968, 34.461803, 18.272175>,  <31.799021, 34.645931, 18.387228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134968, 34.461803, 18.272175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131506, -0.341568, 0.930611,
		-0.526622, -0.819415, -0.226338,
		0.839866, -0.460315, -0.287635,
		32.386929, 34.323708, 18.185884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791647, 33.995644, 18.645096>,  <31.799021, 34.645931, 18.387228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791647, 33.995644, 18.645096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182667, 34.042904, 18.575310>,  <32.417278, 34.071262, 18.533438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182667, 34.042904, 18.575310>,  <31.791647, 33.995644, 18.645096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182667, 34.042904, 18.575310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208151, -0.412861, 0.886690,
		0.032736, -0.903097, -0.428186,
		0.977549, 0.118154, -0.174465,
		32.475933, 34.078350, 18.522970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171829, 33.334579, 18.777994>,  <31.791647, 33.995644, 18.645096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171829, 33.334579, 18.777994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439194, 33.628735, 18.822590>,  <32.599613, 33.805229, 18.849348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439194, 33.628735, 18.822590>,  <32.171829, 33.334579, 18.777994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439194, 33.628735, 18.822590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322649, -0.421732, 0.847372,
		0.670165, -0.530422, -0.519164,
		0.668413, 0.735387, 0.111490,
		32.639717, 33.849350, 18.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838364, 32.950886, 19.096348>,  <32.171829, 33.334579, 18.777994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838364, 32.950886, 19.096348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879421, 33.341717, 19.170946>,  <32.904057, 33.576218, 19.215704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879421, 33.341717, 19.170946>,  <32.838364, 32.950886, 19.096348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879421, 33.341717, 19.170946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387281, -0.211945, 0.897270,
		0.916230, -0.019874, -0.400159,
		0.102645, 0.977079, 0.186494,
		32.910213, 33.634842, 19.226894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422813, 33.057907, 19.476377>,  <32.838364, 32.950886, 19.096348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422813, 33.057907, 19.476377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208069, 33.389191, 19.540691>,  <33.079224, 33.587959, 19.579281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208069, 33.389191, 19.540691>,  <33.422813, 33.057907, 19.476377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208069, 33.389191, 19.540691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264364, -0.015840, 0.964293,
		0.801183, 0.560196, -0.210445,
		-0.536859, 0.828209, 0.160786,
		33.047012, 33.637653, 19.588926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797142, 33.360409, 19.935360>,  <33.422813, 33.057907, 19.476377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797142, 33.360409, 19.935360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446373, 33.550968, 19.960821>,  <33.235912, 33.665306, 19.976097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446373, 33.550968, 19.960821>,  <33.797142, 33.360409, 19.935360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446373, 33.550968, 19.960821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125938, 0.099944, 0.986991,
		0.463844, 0.873528, -0.147640,
		-0.876920, 0.476403, 0.063652,
		33.183296, 33.693890, 19.979918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889309, 34.020172, 20.273369>,  <33.797142, 33.360409, 19.935360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889309, 34.020172, 20.273369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509743, 33.916359, 20.345158>,  <33.282005, 33.854073, 20.388231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509743, 33.916359, 20.345158>,  <33.889309, 34.020172, 20.273369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509743, 33.916359, 20.345158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096710, 0.302200, 0.948326,
		-0.300355, 0.917235, -0.261663,
		-0.948912, -0.259529, 0.179473,
		33.225071, 33.838501, 20.399000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713684, 34.474968, 20.803280>,  <33.889309, 34.020172, 20.273369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713684, 34.474968, 20.803280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401840, 34.225861, 20.829710>,  <33.214733, 34.076397, 20.845568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401840, 34.225861, 20.829710>,  <33.713684, 34.474968, 20.803280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401840, 34.225861, 20.829710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191139, -0.136135, 0.972077,
		-0.596388, 0.770468, 0.225168,
		-0.779607, -0.622773, 0.066077,
		33.167957, 34.039028, 20.849533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325924, 34.653648, 21.399040>,  <33.713684, 34.474968, 20.803280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325924, 34.653648, 21.399040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227436, 34.272709, 21.327028>,  <33.168343, 34.044147, 21.283821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227436, 34.272709, 21.327028>,  <33.325924, 34.653648, 21.399040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227436, 34.272709, 21.327028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146613, -0.220208, 0.964372,
		-0.958061, 0.211053, 0.193846,
		-0.246220, -0.952347, -0.180030,
		33.153568, 33.987003, 21.273020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683811, 34.449493, 21.829424>,  <33.325924, 34.653648, 21.399040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683811, 34.449493, 21.829424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878330, 34.113380, 21.733553>,  <32.995041, 33.911713, 21.676031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878330, 34.113380, 21.733553>,  <32.683811, 34.449493, 21.829424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878330, 34.113380, 21.733553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008719, -0.269616, 0.962929,
		-0.873750, -0.470359, -0.123787,
		0.486297, -0.840280, -0.239678,
		33.024220, 33.861298, 21.661650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299633, 33.976261, 22.180933>,  <32.683811, 34.449493, 21.829424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299633, 33.976261, 22.180933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651600, 33.795452, 22.122391>,  <32.862782, 33.686966, 22.087265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651600, 33.795452, 22.122391>,  <32.299633, 33.976261, 22.180933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651600, 33.795452, 22.122391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001198, -0.310144, 0.950689,
		-0.475128, -0.836351, -0.273442,
		0.879916, -0.452026, -0.146356,
		32.915573, 33.659843, 22.078484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294037, 33.360233, 22.600922>,  <32.299633, 33.976261, 22.180933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294037, 33.360233, 22.600922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681015, 33.418480, 22.518127>,  <32.913204, 33.453426, 22.468451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681015, 33.418480, 22.518127>,  <32.294037, 33.360233, 22.600922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681015, 33.418480, 22.518127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232807, -0.191372, 0.953508,
		0.099233, -0.970656, -0.219042,
		0.967447, 0.145614, -0.206986,
		32.971249, 33.462162, 22.456032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611786, 32.795197, 22.709227>,  <32.294037, 33.360233, 22.600922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611786, 32.795197, 22.709227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885880, 33.083832, 22.748745>,  <33.050335, 33.257015, 22.772455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885880, 33.083832, 22.748745>,  <32.611786, 32.795197, 22.709227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885880, 33.083832, 22.748745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173570, -0.293532, 0.940060,
		0.707338, -0.627013, -0.326385,
		0.685234, 0.721591, 0.098796,
		33.091450, 33.300308, 22.778383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030258, 32.606995, 23.216658>,  <32.611786, 32.795197, 22.709227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030258, 32.606995, 23.216658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168854, 32.981850, 23.200087>,  <33.252010, 33.206764, 23.190144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168854, 32.981850, 23.200087>,  <33.030258, 32.606995, 23.216658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168854, 32.981850, 23.200087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253005, -0.050834, 0.966129,
		0.903292, -0.345232, -0.254714,
		0.346486, 0.937140, -0.041428,
		33.272800, 33.262993, 23.187658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704674, 32.617207, 23.471590>,  <33.030258, 32.606995, 23.216658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704674, 32.617207, 23.471590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567169, 32.989677, 23.520149>,  <33.484665, 33.213161, 23.549284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567169, 32.989677, 23.520149>,  <33.704674, 32.617207, 23.471590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567169, 32.989677, 23.520149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259711, -0.029958, 0.965222,
		0.902429, 0.363334, -0.231538,
		-0.343762, 0.931177, 0.121397,
		33.464039, 33.269032, 23.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180862, 32.944027, 23.824261>,  <33.704674, 32.617207, 23.471590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180862, 32.944027, 23.824261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868786, 33.188900, 23.875681>,  <33.681538, 33.335823, 23.906532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868786, 33.188900, 23.875681>,  <34.180862, 32.944027, 23.824261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868786, 33.188900, 23.875681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333379, 0.233042, 0.913537,
		0.529298, 0.755592, -0.385908,
		-0.780194, 0.612187, 0.128550,
		33.634727, 33.372555, 23.914246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428452, 33.576496, 24.037762>,  <34.180862, 32.944027, 23.824261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428452, 33.576496, 24.037762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056286, 33.545853, 24.181129>,  <33.832985, 33.527466, 24.267149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056286, 33.545853, 24.181129>,  <34.428452, 33.576496, 24.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056286, 33.545853, 24.181129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342358, 0.167479, 0.924522,
		-0.130855, 0.982894, -0.129597,
		-0.930413, -0.076609, 0.358417,
		33.777161, 33.522869, 24.288654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441010, 33.959942, 24.639215>,  <34.428452, 33.576496, 24.037762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441010, 33.959942, 24.639215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092197, 33.776066, 24.706453>,  <33.882912, 33.665741, 24.746796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092197, 33.776066, 24.706453>,  <34.441010, 33.959942, 24.639215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092197, 33.776066, 24.706453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141485, 0.092027, 0.985654,
		-0.468560, 0.883300, -0.015212,
		-0.872028, -0.459686, 0.168094,
		33.830589, 33.638161, 24.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236618, 34.238308, 25.293749>,  <34.441010, 33.959942, 24.639215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236618, 34.238308, 25.293749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975250, 33.935680, 25.283596>,  <33.818432, 33.754105, 25.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975250, 33.935680, 25.283596>,  <34.236618, 34.238308, 25.293749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975250, 33.935680, 25.283596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059993, 0.018331, 0.998030,
		-0.754616, 0.653653, -0.057367,
		-0.653418, -0.756572, -0.025382,
		33.779224, 33.708710, 25.275982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695614, 34.456032, 25.700722>,  <34.236618, 34.238308, 25.293749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695614, 34.456032, 25.700722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678486, 34.056408, 25.697762>,  <33.668209, 33.816635, 25.695986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678486, 34.056408, 25.697762>,  <33.695614, 34.456032, 25.700722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678486, 34.056408, 25.697762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035731, -0.008935, 0.999322,
		-0.998443, 0.042531, 0.036080,
		-0.042825, -0.999055, -0.007401,
		33.665638, 33.756691, 25.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203312, 34.213142, 26.221527>,  <33.695614, 34.456032, 25.700722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203312, 34.213142, 26.221527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450703, 33.901100, 26.183769>,  <33.599136, 33.713875, 26.161114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450703, 33.901100, 26.183769>,  <33.203312, 34.213142, 26.221527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450703, 33.901100, 26.183769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096235, -0.044027, 0.994385,
		-0.779885, -0.624092, 0.047844,
		0.618482, -0.780109, -0.094395,
		33.636246, 33.667068, 26.155451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990582, 33.781116, 26.744452>,  <33.203312, 34.213142, 26.221527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990582, 33.781116, 26.744452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332603, 33.603931, 26.636623>,  <33.537815, 33.497620, 26.571926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332603, 33.603931, 26.636623>,  <32.990582, 33.781116, 26.744452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332603, 33.603931, 26.636623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207552, -0.184042, 0.960755,
		-0.475196, -0.877444, -0.065427,
		0.855051, -0.442967, -0.269571,
		33.589119, 33.471043, 26.555752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075356, 33.065853, 26.888632>,  <32.990582, 33.781116, 26.744452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075356, 33.065853, 26.888632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466190, 33.150681, 26.881462>,  <33.700691, 33.201576, 26.877161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466190, 33.150681, 26.881462>,  <33.075356, 33.065853, 26.888632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466190, 33.150681, 26.881462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106672, -0.415122, 0.903490,
		0.184163, -0.884703, -0.428233,
		0.977090, 0.212070, -0.017923,
		33.759315, 33.214302, 26.876085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369476, 32.495487, 27.188322>,  <33.075356, 33.065853, 26.888632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369476, 32.495487, 27.188322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627544, 32.797085, 27.237726>,  <33.782383, 32.978043, 27.267368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627544, 32.797085, 27.237726>,  <33.369476, 32.495487, 27.188322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627544, 32.797085, 27.237726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142830, -0.277825, 0.949954,
		0.750572, -0.595239, -0.286936,
		0.645168, 0.753992, 0.123510,
		33.821095, 33.023281, 27.274778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910881, 32.228024, 27.562654>,  <33.369476, 32.495487, 27.188322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910881, 32.228024, 27.562654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986580, 32.618507, 27.604994>,  <34.031998, 32.852798, 27.630398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986580, 32.618507, 27.604994>,  <33.910881, 32.228024, 27.562654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986580, 32.618507, 27.604994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266915, -0.154878, 0.951194,
		0.944957, -0.151754, -0.289874,
		0.189243, 0.976209, 0.105847,
		34.043354, 32.911369, 27.636747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643764, 32.415211, 27.799059>,  <33.910881, 32.228024, 27.562654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643764, 32.415211, 27.799059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370281, 32.683384, 27.914345>,  <34.206192, 32.844288, 27.983517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370281, 32.683384, 27.914345>,  <34.643764, 32.415211, 27.799059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370281, 32.683384, 27.914345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202996, -0.204632, 0.957559,
		0.700957, 0.713193, 0.003813,
		-0.683705, 0.670433, 0.288213,
		34.165169, 32.884514, 28.000809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925465, 32.813759, 28.332104>,  <34.643764, 32.415211, 27.799059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925465, 32.813759, 28.332104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538898, 32.899494, 28.388809>,  <34.306957, 32.950935, 28.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538898, 32.899494, 28.388809>,  <34.925465, 32.813759, 28.332104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538898, 32.899494, 28.388809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140684, -0.020368, 0.989845,
		0.215050, 0.976547, -0.010470,
		-0.966417, 0.214340, 0.141764,
		34.248974, 32.963795, 28.431339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030880, 33.117886, 28.941666>,  <34.925465, 32.813759, 28.332104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030880, 33.117886, 28.941666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636948, 33.050957, 28.923275>,  <34.400589, 33.010799, 28.912241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636948, 33.050957, 28.923275>,  <35.030880, 33.117886, 28.941666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636948, 33.050957, 28.923275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029045, -0.102263, 0.994333,
		-0.171075, 0.980584, 0.095852,
		-0.984830, -0.167321, -0.045975,
		34.341499, 33.000759, 28.909483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702343, 33.601730, 29.446096>,  <35.030880, 33.117886, 28.941666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702343, 33.601730, 29.446096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484058, 33.278500, 29.357370>,  <34.353088, 33.084560, 29.304134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484058, 33.278500, 29.357370>,  <34.702343, 33.601730, 29.446096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484058, 33.278500, 29.357370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035922, -0.241905, 0.969635,
		-0.837200, 0.537113, 0.102984,
		-0.545716, -0.808079, -0.221817,
		34.320343, 33.036076, 29.290825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232220, 33.690434, 29.969166>,  <34.702343, 33.601730, 29.446096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232220, 33.690434, 29.969166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200169, 33.323956, 29.812107>,  <34.180939, 33.104069, 29.717873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200169, 33.323956, 29.812107>,  <34.232220, 33.690434, 29.969166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200169, 33.323956, 29.812107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198357, -0.371379, 0.907046,
		-0.976849, 0.150565, -0.151975,
		-0.080129, -0.916192, -0.392646,
		34.176128, 33.049099, 29.694313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595661, 33.356342, 30.191084>,  <34.232220, 33.690434, 29.969166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595661, 33.356342, 30.191084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 33.046227, 30.080677>,  <33.959248, 32.860157, 30.014433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 33.046227, 30.080677>,  <33.595661, 33.356342, 30.191084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822903, 33.046227, 30.080677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218390, -0.465402, 0.857734,
		-0.793448, -0.427005, -0.433712,
		0.568107, -0.775286, -0.276018,
		33.993336, 32.813641, 29.997871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245209, 32.717239, 30.368864>,  <33.595661, 33.356342, 30.191084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245209, 32.717239, 30.368864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611271, 32.568024, 30.307768>,  <33.830910, 32.478497, 30.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611271, 32.568024, 30.307768>,  <33.245209, 32.717239, 30.368864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611271, 32.568024, 30.307768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029768, -0.440426, 0.897295,
		-0.401989, -0.816622, -0.414165,
		0.915160, -0.373032, -0.152737,
		33.885818, 32.456112, 30.261946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284309, 31.906778, 30.543392>,  <33.245209, 32.717239, 30.368864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284309, 31.906778, 30.543392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650116, 32.065289, 30.575966>,  <33.869598, 32.160393, 30.595510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650116, 32.065289, 30.575966>,  <33.284309, 31.906778, 30.543392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650116, 32.065289, 30.575966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109294, -0.435817, 0.893375,
		0.389513, -0.808102, -0.441871,
		0.914513, 0.396275, 0.081436,
		33.924469, 32.184170, 30.600397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778721, 31.379692, 30.636179>,  <33.284309, 31.906778, 30.543392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778721, 31.379692, 30.636179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961445, 31.705946, 30.778202>,  <34.071079, 31.901699, 30.863417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961445, 31.705946, 30.778202>,  <33.778721, 31.379692, 30.636179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961445, 31.705946, 30.778202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075663, -0.433315, 0.898061,
		0.886342, -0.383377, -0.259656,
		0.456808, 0.815635, 0.355058,
		34.098488, 31.950636, 30.884720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152508, 31.072769, 31.202993>,  <33.778721, 31.379692, 30.636179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152508, 31.072769, 31.202993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203373, 31.459988, 31.289450>,  <34.233894, 31.692318, 31.341324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203373, 31.459988, 31.289450>,  <34.152508, 31.072769, 31.202993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203373, 31.459988, 31.289450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181767, -0.236965, 0.954363,
		0.975084, -0.082075, -0.206092,
		0.127165, 0.968045, 0.216142,
		34.241524, 31.750401, 31.354292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759262, 31.181232, 31.650972>,  <34.152508, 31.072769, 31.202993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759262, 31.181232, 31.650972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576031, 31.535032, 31.686352>,  <34.466091, 31.747313, 31.707579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576031, 31.535032, 31.686352>,  <34.759262, 31.181232, 31.650972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576031, 31.535032, 31.686352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261990, 0.039258, 0.964272,
		0.849426, 0.464885, -0.249714,
		-0.458079, 0.884500, 0.088448,
		34.438606, 31.800383, 31.712887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230927, 31.644108, 32.022087>,  <34.759262, 31.181232, 31.650972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230927, 31.644108, 32.022087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845989, 31.732029, 32.086063>,  <34.615028, 31.784782, 32.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845989, 31.732029, 32.086063>,  <35.230927, 31.644108, 32.022087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845989, 31.732029, 32.086063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155041, -0.039501, 0.987118,
		0.223290, 0.974744, 0.003935,
		-0.962343, 0.219803, 0.159945,
		34.557285, 31.797970, 32.134048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631924, 31.223583, 31.494858>,  <35.230927, 31.644108, 32.022087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631924, 31.223583, 31.494858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004932, 31.360060, 31.542164>,  <36.228737, 31.441946, 31.570547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004932, 31.360060, 31.542164>,  <35.631924, 31.223583, 31.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004932, 31.360060, 31.542164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019522, 0.279397, -0.959977,
		-0.360577, 0.897512, 0.253884,
		0.932525, 0.341189, 0.118265,
		36.284691, 31.462416, 31.577644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657272, 31.943823, 31.084059>,  <35.631924, 31.223583, 31.494858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657272, 31.943823, 31.084059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035030, 31.840263, 31.165138>,  <36.261684, 31.778128, 31.213785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035030, 31.840263, 31.165138>,  <35.657272, 31.943823, 31.084059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035030, 31.840263, 31.165138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282439, 0.323094, -0.903238,
		0.168358, 0.910264, 0.378252,
		0.944396, -0.258901, 0.202699,
		36.318348, 31.762592, 31.225948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000244, 32.525970, 31.026386>,  <35.657272, 31.943823, 31.084059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000244, 32.525970, 31.026386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269299, 32.236446, 30.964865>,  <36.430733, 32.062733, 30.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269299, 32.236446, 30.964865>,  <36.000244, 32.525970, 31.026386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269299, 32.236446, 30.964865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134919, 0.324328, -0.936273,
		0.727567, 0.609023, 0.315812,
		0.672638, -0.723811, -0.153802,
		36.471088, 32.019302, 30.918724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530224, 32.935482, 30.817604>,  <36.000244, 32.525970, 31.026386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530224, 32.935482, 30.817604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607380, 32.558876, 30.707085>,  <36.653675, 32.332912, 30.640774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607380, 32.558876, 30.707085>,  <36.530224, 32.935482, 30.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607380, 32.558876, 30.707085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222662, 0.316239, -0.922179,
		0.955623, 0.116357, 0.270639,
		0.192889, -0.941517, -0.276297,
		36.665245, 32.276421, 30.624195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276215, 32.884354, 30.557648>,  <36.530224, 32.935482, 30.817604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276215, 32.884354, 30.557648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060940, 32.588696, 30.395649>,  <36.931774, 32.411301, 30.298450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060940, 32.588696, 30.395649>,  <37.276215, 32.884354, 30.557648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060940, 32.588696, 30.395649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236350, 0.328885, -0.914316,
		0.809006, -0.587796, -0.002306,
		-0.538190, -0.739142, -0.404995,
		36.899483, 32.366955, 30.274151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761471, 32.588284, 30.002905>,  <37.276215, 32.884354, 30.557648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761471, 32.588284, 30.002905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386135, 32.474743, 29.923964>,  <37.160934, 32.406620, 29.876598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386135, 32.474743, 29.923964>,  <37.761471, 32.588284, 30.002905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386135, 32.474743, 29.923964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145988, 0.192125, -0.970451,
		0.313377, -0.939424, -0.138840,
		-0.938340, -0.283849, -0.197352,
		37.104633, 32.389587, 29.864758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799816, 32.287449, 29.390495>,  <37.761471, 32.588284, 30.002905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799816, 32.287449, 29.390495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403942, 32.343861, 29.400541>,  <37.166416, 32.377708, 29.406569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403942, 32.343861, 29.400541>,  <37.799816, 32.287449, 29.390495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403942, 32.343861, 29.400541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007061, 0.223153, -0.974758,
		-0.143071, -0.964528, -0.221847,
		-0.989688, 0.141026, 0.025116,
		37.107037, 32.386169, 29.408075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497257, 31.828379, 28.800989>,  <37.799816, 32.287449, 29.390495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497257, 31.828379, 28.800989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231071, 32.110176, 28.899656>,  <37.071362, 32.279255, 28.958857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231071, 32.110176, 28.899656>,  <37.497257, 31.828379, 28.800989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231071, 32.110176, 28.899656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244530, 0.106469, -0.963779,
		-0.705239, -0.701678, 0.101419,
		-0.665464, 0.704494, 0.246668,
		37.031433, 32.321526, 28.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779922, 31.622498, 28.541544>,  <37.497257, 31.828379, 28.800989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779922, 31.622498, 28.541544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822647, 32.018570, 28.577621>,  <36.848282, 32.256214, 28.599268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822647, 32.018570, 28.577621>,  <36.779922, 31.622498, 28.541544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822647, 32.018570, 28.577621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285638, 0.117447, -0.951114,
		-0.952367, 0.075823, 0.295377,
		0.106808, 0.990180, 0.090194,
		36.854691, 32.315624, 28.604679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243130, 31.879885, 28.145025>,  <36.779922, 31.622498, 28.541544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243130, 31.879885, 28.145025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461952, 32.213558, 28.172935>,  <36.593246, 32.413761, 28.189682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461952, 32.213558, 28.172935>,  <36.243130, 31.879885, 28.145025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461952, 32.213558, 28.172935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247321, 0.240700, -0.938560,
		-0.799725, 0.496189, 0.337988,
		0.547057, 0.834182, 0.069776,
		36.626068, 32.463814, 28.193869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868874, 32.339691, 27.741840>,  <36.243130, 31.879885, 28.145025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868874, 32.339691, 27.741840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220230, 32.525822, 27.785492>,  <36.431042, 32.637501, 27.811682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220230, 32.525822, 27.785492>,  <35.868874, 32.339691, 27.741840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220230, 32.525822, 27.785492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074517, 0.358863, -0.930411,
		-0.472105, 0.809129, 0.349895,
		0.878387, 0.465325, 0.109127,
		36.483746, 32.665421, 27.818230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794830, 33.144180, 27.496008>,  <35.868874, 32.339691, 27.741840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794830, 33.144180, 27.496008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169533, 33.006107, 27.472923>,  <36.394356, 32.923264, 27.459072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169533, 33.006107, 27.472923>,  <35.794830, 33.144180, 27.496008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169533, 33.006107, 27.472923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074871, 0.358738, -0.930431,
		0.341874, 0.867268, 0.361895,
		0.936758, -0.345186, -0.057710,
		36.450562, 32.902550, 27.455610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264240, 33.735909, 27.366051>,  <35.794830, 33.144180, 27.496008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264240, 33.735909, 27.366051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412453, 33.400337, 27.206596>,  <36.501381, 33.198994, 27.110924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412453, 33.400337, 27.206596>,  <36.264240, 33.735909, 27.366051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412453, 33.400337, 27.206596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103532, 0.463815, -0.879862,
		0.923034, 0.284740, 0.258711,
		0.370526, -0.838927, -0.398638,
		36.523609, 33.148659, 27.087006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557621, 34.000507, 26.783289>,  <36.264240, 33.735909, 27.366051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557621, 34.000507, 26.783289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567467, 33.603706, 26.733778>,  <36.573372, 33.365623, 26.704071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567467, 33.603706, 26.733778>,  <36.557621, 34.000507, 26.783289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567467, 33.603706, 26.733778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177366, 0.126184, -0.976022,
		0.983837, 0.002066, 0.179054,
		0.024610, -0.992005, -0.123778,
		36.574848, 33.306107, 26.696644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083569, 33.839306, 26.223181>,  <36.557621, 34.000507, 26.783289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083569, 33.839306, 26.223181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907455, 33.480221, 26.216667>,  <36.801788, 33.264771, 26.212759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907455, 33.480221, 26.216667>,  <37.083569, 33.839306, 26.223181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907455, 33.480221, 26.216667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009490, 0.013485, -0.999864,
		0.897809, -0.440377, 0.002582,
		-0.440282, -0.897712, -0.016286,
		36.775372, 33.210907, 26.211781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460690, 33.457294, 25.810442>,  <37.083569, 33.839306, 26.223181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460690, 33.457294, 25.810442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098461, 33.287872, 25.801167>,  <36.881123, 33.186218, 25.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098461, 33.287872, 25.801167>,  <37.460690, 33.457294, 25.810442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098461, 33.287872, 25.801167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065107, -0.084769, -0.994271,
		0.419161, -0.901896, 0.104341,
		-0.905575, -0.423553, -0.023187,
		36.826790, 33.160805, 25.794210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487438, 32.868061, 25.352043>,  <37.460690, 33.457294, 25.810442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487438, 32.868061, 25.352043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104122, 32.980419, 25.373100>,  <36.874130, 33.047832, 25.385735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104122, 32.980419, 25.373100>,  <37.487438, 32.868061, 25.352043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104122, 32.980419, 25.373100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043916, 0.037270, -0.998340,
		-0.282389, -0.959015, -0.023380,
		-0.958294, 0.280894, 0.052641,
		36.816635, 33.064686, 25.388893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184975, 32.388783, 24.920933>,  <37.487438, 32.868061, 25.352043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184975, 32.388783, 24.920933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926243, 32.690678, 24.964695>,  <36.771004, 32.871815, 24.990953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926243, 32.690678, 24.964695>,  <37.184975, 32.388783, 24.920933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926243, 32.690678, 24.964695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134072, 0.028689, -0.990556,
		-0.750754, -0.655394, 0.082633,
		-0.646834, 0.754743, 0.109408,
		36.732193, 32.917099, 24.997517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567009, 32.088501, 24.538700>,  <37.184975, 32.388783, 24.920933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567009, 32.088501, 24.538700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566879, 32.485619, 24.586643>,  <36.566799, 32.723888, 24.615410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566879, 32.485619, 24.586643>,  <36.567009, 32.088501, 24.538700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566879, 32.485619, 24.586643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228943, 0.116601, -0.966431,
		-0.973440, -0.027756, 0.227254,
		-0.000326, 0.992791, 0.119858,
		36.566780, 32.783455, 24.622601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892418, 32.346069, 24.421854>,  <36.567009, 32.088501, 24.538700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892418, 32.346069, 24.421854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140743, 32.649044, 24.340971>,  <36.289738, 32.830830, 24.292442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140743, 32.649044, 24.340971>,  <35.892418, 32.346069, 24.421854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140743, 32.649044, 24.340971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338042, 0.025917, -0.940774,
		-0.707333, 0.652398, 0.272134,
		0.620812, 0.757433, -0.202205,
		36.326988, 32.876274, 24.280310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506653, 32.824490, 24.058519>,  <35.892418, 32.346069, 24.421854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506653, 32.824490, 24.058519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880466, 32.928905, 23.961773>,  <36.104755, 32.991554, 23.903725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880466, 32.928905, 23.961773>,  <35.506653, 32.824490, 24.058519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880466, 32.928905, 23.961773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299989, 0.212269, -0.930026,
		-0.191431, 0.941701, 0.276682,
		0.934538, 0.261037, -0.241865,
		36.160828, 33.007217, 23.889214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488712, 33.490238, 23.736097>,  <35.506653, 32.824490, 24.058519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488712, 33.490238, 23.736097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800201, 33.274021, 23.608721>,  <35.987095, 33.144291, 23.532295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800201, 33.274021, 23.608721>,  <35.488712, 33.490238, 23.736097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800201, 33.274021, 23.608721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202280, 0.264140, -0.943034,
		0.593862, 0.798777, 0.096351,
		0.778724, -0.540542, -0.318439,
		36.033817, 33.111858, 23.513189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749100, 33.820942, 23.193516>,  <35.488712, 33.490238, 23.736097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749100, 33.820942, 23.193516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860226, 33.437481, 23.168852>,  <35.926903, 33.207405, 23.154053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860226, 33.437481, 23.168852>,  <35.749100, 33.820942, 23.193516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860226, 33.437481, 23.168852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253878, -0.011364, -0.967169,
		0.926479, 0.284351, -0.246538,
		0.277818, -0.958653, -0.061662,
		35.943569, 33.149883, 23.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184528, 33.805767, 22.657711>,  <35.749100, 33.820942, 23.193516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184528, 33.805767, 22.657711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993385, 33.457851, 22.706903>,  <35.878700, 33.249104, 22.736420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993385, 33.457851, 22.706903>,  <36.184528, 33.805767, 22.657711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993385, 33.457851, 22.706903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173857, -0.043588, -0.983806,
		0.861061, -0.491500, -0.130390,
		-0.477857, -0.869786, 0.122983,
		35.850029, 33.196915, 22.743799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322010, 33.435635, 22.109873>,  <36.184528, 33.805767, 22.657711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322010, 33.435635, 22.109873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034210, 33.185486, 22.230692>,  <35.861530, 33.035397, 22.303185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034210, 33.185486, 22.230692>,  <36.322010, 33.435635, 22.109873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034210, 33.185486, 22.230692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290115, -0.124511, -0.948857,
		0.630997, -0.770329, -0.091844,
		-0.719497, -0.625372, 0.302050,
		35.818359, 32.997875, 22.321306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457951, 32.842712, 21.832222>,  <36.322010, 33.435635, 22.109873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457951, 32.842712, 21.832222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064529, 32.842888, 21.904472>,  <35.828476, 32.842995, 21.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064529, 32.842888, 21.904472>,  <36.457951, 32.842712, 21.832222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064529, 32.842888, 21.904472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178065, -0.170179, -0.969191,
		0.030316, -0.985413, 0.167457,
		-0.983551, 0.000436, 0.180626,
		35.769463, 32.843018, 21.958660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218288, 32.098495, 21.617241>,  <36.457951, 32.842712, 21.832222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218288, 32.098495, 21.617241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899242, 32.338623, 21.593817>,  <35.707813, 32.482700, 21.579763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899242, 32.338623, 21.593817>,  <36.218288, 32.098495, 21.617241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899242, 32.338623, 21.593817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216072, -0.375019, -0.901484,
		-0.563139, -0.706383, 0.428832,
		-0.797613, 0.600320, -0.058559,
		35.659958, 32.518719, 21.576250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701965, 31.711899, 21.353497>,  <36.218288, 32.098495, 21.617241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701965, 31.711899, 21.353497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563675, 32.077206, 21.267313>,  <35.480701, 32.296391, 21.215603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563675, 32.077206, 21.267313>,  <35.701965, 31.711899, 21.353497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563675, 32.077206, 21.267313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251615, -0.311437, -0.916350,
		-0.903973, -0.262589, 0.337462,
		-0.345721, 0.913266, -0.215459,
		35.459957, 32.351185, 21.202675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071270, 31.699497, 21.027607>,  <35.701965, 31.711899, 21.353497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071270, 31.699497, 21.027607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185974, 32.067356, 20.920259>,  <35.254795, 32.288071, 20.855852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185974, 32.067356, 20.920259>,  <35.071270, 31.699497, 21.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185974, 32.067356, 20.920259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317171, -0.173197, -0.932419,
		-0.903976, 0.352496, 0.242020,
		0.286757, 0.919646, -0.268367,
		35.271999, 32.343250, 20.839748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535717, 31.869318, 20.599964>,  <35.071270, 31.699497, 21.027607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535717, 31.869318, 20.599964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845779, 32.110344, 20.524019>,  <35.031818, 32.254959, 20.478453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845779, 32.110344, 20.524019>,  <34.535717, 31.869318, 20.599964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845779, 32.110344, 20.524019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208772, -0.039324, -0.977174,
		-0.596278, 0.797099, 0.095317,
		0.775156, 0.602566, -0.189860,
		35.078327, 32.291115, 20.467062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255619, 32.450298, 20.135033>,  <34.535717, 31.869318, 20.599964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255619, 32.450298, 20.135033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651615, 32.430023, 20.082340>,  <34.889214, 32.417858, 20.050724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651615, 32.430023, 20.082340>,  <34.255619, 32.450298, 20.135033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651615, 32.430023, 20.082340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122150, 0.159957, -0.979537,
		0.070726, 0.985822, 0.152163,
		0.989988, -0.050692, -0.131732,
		34.948612, 32.414814, 20.042820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469521, 32.906883, 19.585348>,  <34.255619, 32.450298, 20.135033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469521, 32.906883, 19.585348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787083, 32.663815, 19.576853>,  <34.977619, 32.517975, 19.571756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787083, 32.663815, 19.576853>,  <34.469521, 32.906883, 19.585348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787083, 32.663815, 19.576853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042291, 0.090028, -0.995041,
		0.606569, 0.789070, 0.097173,
		0.793905, -0.607671, -0.021237,
		35.025253, 32.481514, 19.570482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812782, 33.103031, 18.915894>,  <34.469521, 32.906883, 19.585348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812782, 33.103031, 18.915894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966064, 32.746517, 19.012854>,  <35.058033, 32.532608, 19.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966064, 32.746517, 19.012854>,  <34.812782, 33.103031, 18.915894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966064, 32.746517, 19.012854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234405, -0.160001, -0.958881,
		0.893423, 0.424272, 0.147609,
		0.383209, -0.891287, 0.242401,
		35.081028, 32.479130, 19.085573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552223, 33.297523, 18.894669>,  <34.812782, 33.103031, 18.915894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552223, 33.297523, 18.894669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466141, 32.907768, 18.868570>,  <35.414490, 32.673916, 18.852911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466141, 32.907768, 18.868570>,  <35.552223, 33.297523, 18.894669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466141, 32.907768, 18.868570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463870, -0.043202, -0.884849,
		0.859366, -0.220693, 0.461286,
		-0.215208, -0.974386, -0.065247,
		35.401577, 32.615452, 18.848997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063236, 33.007843, 18.490137>,  <35.552223, 33.297523, 18.894669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063236, 33.007843, 18.490137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789791, 32.716164, 18.477873>,  <35.625725, 32.541157, 18.470514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789791, 32.716164, 18.477873>,  <36.063236, 33.007843, 18.490137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789791, 32.716164, 18.477873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249847, -0.194344, -0.948582,
		0.685744, -0.656126, 0.315044,
		-0.683616, -0.729197, -0.030661,
		35.584705, 32.497406, 18.468674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351490, 32.374729, 18.204987>,  <36.063236, 33.007843, 18.490137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351490, 32.374729, 18.204987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959332, 32.395161, 18.128857>,  <35.724037, 32.407417, 18.083179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959332, 32.395161, 18.128857>,  <36.351490, 32.374729, 18.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959332, 32.395161, 18.128857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185203, -0.091112, -0.978467,
		-0.067308, -0.994530, 0.079868,
		-0.980393, 0.051067, -0.190323,
		35.665215, 32.410484, 18.071760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985172, 32.001598, 17.626581>,  <36.351490, 32.374729, 18.204987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985172, 32.001598, 17.626581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021626, 32.384293, 17.737104>,  <36.043495, 32.613911, 17.803419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021626, 32.384293, 17.737104>,  <35.985172, 32.001598, 17.626581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021626, 32.384293, 17.737104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755160, 0.114484, -0.645467,
		-0.649176, 0.267479, -0.712058,
		0.091129, 0.956739, 0.276309,
		36.048965, 32.671314, 17.819998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043930, 31.611769, 17.017324>,  <35.985172, 32.001598, 17.626581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043930, 31.611769, 17.017324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300835, 31.319220, 16.925587>,  <36.454975, 31.143690, 16.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300835, 31.319220, 16.925587>,  <36.043930, 31.611769, 17.017324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300835, 31.319220, 16.925587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153825, -0.170137, 0.973340,
		-0.750894, -0.660415, 0.003231,
		0.642259, -0.731372, -0.229343,
		36.493511, 31.099808, 16.856783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793598, 31.009974, 17.396763>,  <36.043930, 31.611769, 17.017324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793598, 31.009974, 17.396763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174919, 30.920572, 17.315517>,  <36.403713, 30.866932, 17.266771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174919, 30.920572, 17.315517>,  <35.793598, 31.009974, 17.396763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174919, 30.920572, 17.315517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140426, -0.267374, 0.953306,
		-0.267374, -0.937314, -0.223504,
		-0.953306, 0.223504, 0.203112,
		36.460911, 30.853521, 17.254583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894997, 30.481300, 17.838253>,  <35.793598, 31.009974, 17.396763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894997, 30.481300, 17.838253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263550, 30.587456, 17.724680>,  <36.484684, 30.651150, 17.656536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263550, 30.587456, 17.724680>,  <35.894997, 30.481300, 17.838253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263550, 30.587456, 17.724680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344785, -0.220982, 0.912300,
		0.179370, -0.938475, -0.295112,
		0.921385, 0.265389, -0.283934,
		36.539967, 30.667072, 17.639500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322227, 29.958939, 18.047705>,  <35.894997, 30.481300, 17.838253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322227, 29.958939, 18.047705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582596, 30.260210, 18.009720>,  <36.738819, 30.440973, 17.986929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582596, 30.260210, 18.009720>,  <36.322227, 29.958939, 18.047705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582596, 30.260210, 18.009720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298217, -0.138660, 0.944373,
		0.698114, -0.643036, -0.314868,
		0.650925, 0.753178, -0.094964,
		36.777874, 30.486164, 17.981232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004528, 29.737131, 18.506300>,  <36.322227, 29.958939, 18.047705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004528, 29.737131, 18.506300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018646, 30.132914, 18.450119>,  <37.027119, 30.370384, 18.416410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018646, 30.132914, 18.450119>,  <37.004528, 29.737131, 18.506300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018646, 30.132914, 18.450119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267387, 0.126067, 0.955307,
		0.962942, -0.071275, -0.260119,
		0.035297, 0.989458, -0.140454,
		37.029236, 30.429750, 18.407984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728264, 30.099455, 18.713768>,  <37.004528, 29.737131, 18.506300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728264, 30.099455, 18.713768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429829, 30.363817, 18.746164>,  <37.250767, 30.522434, 18.765602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429829, 30.363817, 18.746164>,  <37.728264, 30.099455, 18.713768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429829, 30.363817, 18.746164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371399, 0.312106, 0.874444,
		0.552645, 0.682492, -0.478317,
		-0.746087, 0.660904, 0.080993,
		37.206001, 30.562088, 18.770462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021908, 30.689949, 18.750298>,  <37.728264, 30.099455, 18.713768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021908, 30.689949, 18.750298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670692, 30.761518, 18.927853>,  <37.459965, 30.804461, 19.034386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670692, 30.761518, 18.927853>,  <38.021908, 30.689949, 18.750298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670692, 30.761518, 18.927853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478397, 0.301625, 0.824718,
		0.013674, 0.936487, -0.350434,
		-0.878038, 0.178924, 0.443888,
		37.407280, 30.815195, 19.061020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080105, 31.431635, 19.021873>,  <38.021908, 30.689949, 18.750298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080105, 31.431635, 19.021873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772236, 31.258404, 19.209511>,  <37.587513, 31.154465, 19.322092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772236, 31.258404, 19.209511>,  <38.080105, 31.431635, 19.021873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772236, 31.258404, 19.209511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365761, 0.303109, 0.879968,
		-0.523282, 0.848863, -0.074892,
		-0.769672, -0.433078, 0.469092,
		37.541336, 31.128481, 19.350239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082108, 31.819809, 19.563520>,  <38.080105, 31.431635, 19.021873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082108, 31.819809, 19.563520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854107, 31.508263, 19.668184>,  <37.717308, 31.321335, 19.730982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854107, 31.508263, 19.668184>,  <38.082108, 31.819809, 19.563520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854107, 31.508263, 19.668184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270217, 0.123044, 0.954905,
		-0.775938, 0.615003, 0.140327,
		-0.570003, -0.778866, 0.261659,
		37.683105, 31.274603, 19.746681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737473, 32.086075, 20.107964>,  <38.082108, 31.819809, 19.563520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737473, 32.086075, 20.107964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722969, 31.687963, 20.143993>,  <37.714268, 31.449097, 20.165611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722969, 31.687963, 20.143993>,  <37.737473, 32.086075, 20.107964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722969, 31.687963, 20.143993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367802, 0.070518, 0.927227,
		-0.929197, 0.066751, 0.363507,
		-0.036259, -0.995275, 0.090076,
		37.712090, 31.389381, 20.171017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430367, 31.931376, 20.770691>,  <37.737473, 32.086075, 20.107964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430367, 31.931376, 20.770691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616978, 31.589911, 20.678072>,  <37.728943, 31.385033, 20.622499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616978, 31.589911, 20.678072>,  <37.430367, 31.931376, 20.770691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616978, 31.589911, 20.678072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290926, -0.099122, 0.951597,
		-0.835293, -0.511309, 0.202109,
		0.466527, -0.853661, -0.231550,
		37.756935, 31.333813, 20.608606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271832, 31.524246, 21.318619>,  <37.430367, 31.931376, 20.770691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271832, 31.524246, 21.318619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593102, 31.344162, 21.162556>,  <37.785862, 31.236111, 21.068918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593102, 31.344162, 21.162556>,  <37.271832, 31.524246, 21.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593102, 31.344162, 21.162556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369575, -0.137124, 0.919027,
		-0.467259, -0.882329, 0.056253,
		0.803171, -0.450213, -0.390159,
		37.834053, 31.209099, 21.045507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346481, 30.837179, 21.598804>,  <37.271832, 31.524246, 21.318619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346481, 30.837179, 21.598804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704216, 30.977169, 21.487316>,  <37.918858, 31.061163, 21.420424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704216, 30.977169, 21.487316>,  <37.346481, 30.837179, 21.598804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704216, 30.977169, 21.487316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392539, -0.314891, 0.864151,
		0.214665, -0.882247, -0.418996,
		0.894333, 0.349976, -0.278720,
		37.972515, 31.082161, 21.403700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759754, 30.416048, 21.978058>,  <37.346481, 30.837179, 21.598804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759754, 30.416048, 21.978058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033745, 30.667933, 21.831484>,  <38.198139, 30.819063, 21.743540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033745, 30.667933, 21.831484>,  <37.759754, 30.416048, 21.978058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033745, 30.667933, 21.831484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376973, 0.124069, 0.917877,
		0.623461, -0.766857, -0.152400,
		0.684973, 0.629712, -0.366437,
		38.239235, 30.856846, 21.721554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392273, 30.197205, 22.151436>,  <37.759754, 30.416048, 21.978058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392273, 30.197205, 22.151436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438522, 30.587795, 22.078634>,  <38.466270, 30.822149, 22.034954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438522, 30.587795, 22.078634>,  <38.392273, 30.197205, 22.151436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438522, 30.587795, 22.078634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436119, 0.114719, 0.892546,
		0.892430, -0.182572, -0.412596,
		0.115622, 0.976477, -0.182002,
		38.473209, 30.880739, 22.024035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026657, 30.265627, 22.476463>,  <38.392273, 30.197205, 22.151436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026657, 30.265627, 22.476463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863811, 30.626474, 22.419279>,  <38.766106, 30.842983, 22.384968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863811, 30.626474, 22.419279>,  <39.026657, 30.265627, 22.476463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863811, 30.626474, 22.419279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272657, 0.269415, 0.923620,
		0.871732, 0.337039, -0.355652,
		-0.407114, 0.902120, -0.142962,
		38.741676, 30.897110, 22.376390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474728, 30.690939, 22.850945>,  <39.026657, 30.265627, 22.476463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474728, 30.690939, 22.850945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152851, 30.925943, 22.816755>,  <38.959724, 31.066946, 22.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152851, 30.925943, 22.816755>,  <39.474728, 30.690939, 22.850945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152851, 30.925943, 22.816755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075255, 0.243743, 0.966916,
		0.588907, 0.771635, -0.240350,
		-0.804689, 0.587511, -0.085472,
		38.911446, 31.102196, 22.791113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715538, 31.378254, 23.119312>,  <39.474728, 30.690939, 22.850945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715538, 31.378254, 23.119312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317818, 31.336058, 23.113071>,  <39.079185, 31.310740, 23.109327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317818, 31.336058, 23.113071>,  <39.715538, 31.378254, 23.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317818, 31.336058, 23.113071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043717, 0.269786, 0.961927,
		-0.097267, 0.957124, -0.272860,
		-0.994298, -0.105492, -0.015601,
		39.019527, 31.304409, 23.108391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432846, 32.067909, 23.325380>,  <39.715538, 31.378254, 23.119312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432846, 32.067909, 23.325380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160240, 31.787256, 23.408560>,  <38.996677, 31.618864, 23.458467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160240, 31.787256, 23.408560>,  <39.432846, 32.067909, 23.325380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160240, 31.787256, 23.408560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170249, 0.428379, 0.887416,
		-0.711722, 0.569386, -0.411401,
		-0.681517, -0.701634, 0.207949,
		38.955784, 31.576765, 23.470945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848114, 32.481998, 23.621754>,  <39.432846, 32.067909, 23.325380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848114, 32.481998, 23.621754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775333, 32.094006, 23.686275>,  <38.731663, 31.861208, 23.724989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775333, 32.094006, 23.686275>,  <38.848114, 32.481998, 23.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775333, 32.094006, 23.686275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216126, 0.199481, 0.955770,
		-0.959261, 0.139047, -0.245936,
		-0.181956, -0.969986, 0.161303,
		38.720745, 31.803009, 23.734667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152149, 32.419941, 23.926256>,  <38.848114, 32.481998, 23.621754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152149, 32.419941, 23.926256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354168, 32.092648, 24.036104>,  <38.475380, 31.896271, 24.102013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354168, 32.092648, 24.036104>,  <38.152149, 32.419941, 23.926256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354168, 32.092648, 24.036104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191046, 0.204307, 0.960083,
		-0.841681, -0.537355, -0.053135,
		0.505049, -0.818235, 0.274620,
		38.505684, 31.847178, 24.118490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769997, 32.201092, 24.466135>,  <38.152149, 32.419941, 23.926256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769997, 32.201092, 24.466135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115601, 32.003128, 24.503132>,  <38.322964, 31.884350, 24.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115601, 32.003128, 24.503132>,  <37.769997, 32.201092, 24.466135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115601, 32.003128, 24.503132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058031, 0.084589, 0.994725,
		-0.500125, -0.864816, 0.044366,
		0.864007, -0.494912, 0.092491,
		38.374802, 31.854654, 24.530880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645275, 31.541370, 24.900505>,  <37.769997, 32.201092, 24.466135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645275, 31.541370, 24.900505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024834, 31.665047, 24.925804>,  <38.252567, 31.739252, 24.940983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024834, 31.665047, 24.925804>,  <37.645275, 31.541370, 24.900505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024834, 31.665047, 24.925804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038592, -0.085225, 0.995614,
		0.313226, -0.947173, -0.068937,
		0.948894, 0.309192, 0.063248,
		38.309502, 31.757805, 24.944778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912220, 31.140636, 25.374691>,  <37.645275, 31.541370, 24.900505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912220, 31.140636, 25.374691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160748, 31.454062, 25.374435>,  <38.309864, 31.642117, 25.374281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160748, 31.454062, 25.374435>,  <37.912220, 31.140636, 25.374691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160748, 31.454062, 25.374435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021758, 0.018071, 0.999600,
		0.783259, -0.621052, 0.028277,
		0.621315, 0.783561, -0.000641,
		38.347141, 31.689129, 25.374243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259113, 31.074097, 25.947090>,  <37.912220, 31.140636, 25.374691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259113, 31.074097, 25.947090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364651, 31.451630, 25.867527>,  <38.427975, 31.678150, 25.819790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364651, 31.451630, 25.867527>,  <38.259113, 31.074097, 25.947090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364651, 31.451630, 25.867527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317683, 0.109677, 0.941832,
		0.910749, -0.311685, -0.270903,
		0.263843, 0.943834, -0.198906,
		38.443802, 31.734779, 25.807856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990406, 31.137133, 26.248123>,  <38.259113, 31.074097, 25.947090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990406, 31.137133, 26.248123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823826, 31.495426, 26.185856>,  <38.723877, 31.710403, 26.148497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823826, 31.495426, 26.185856>,  <38.990406, 31.137133, 26.248123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823826, 31.495426, 26.185856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538066, 0.380839, 0.751962,
		0.732842, 0.229393, -0.640563,
		-0.416446, 0.895735, -0.155666,
		38.698891, 31.764147, 26.139156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577965, 31.577787, 26.250118>,  <38.990406, 31.137133, 26.248123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577965, 31.577787, 26.250118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247917, 31.793476, 26.317539>,  <39.049889, 31.922890, 26.357992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247917, 31.793476, 26.317539>,  <39.577965, 31.577787, 26.250118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247917, 31.793476, 26.317539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413340, 0.372810, 0.830761,
		0.385127, 0.755150, -0.530496,
		-0.825123, 0.539223, 0.168555,
		39.000381, 31.955242, 26.368105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829063, 32.081669, 26.593187>,  <39.577965, 31.577787, 26.250118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829063, 32.081669, 26.593187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437096, 32.076614, 26.672781>,  <39.201916, 32.073582, 26.720537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437096, 32.076614, 26.672781>,  <39.829063, 32.081669, 26.593187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437096, 32.076614, 26.672781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187299, 0.283845, 0.940399,
		-0.068368, 0.958787, -0.275778,
		-0.979921, -0.012640, 0.198986,
		39.143120, 32.072823, 26.732477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707733, 32.744381, 26.773607>,  <39.829063, 32.081669, 26.593187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707733, 32.744381, 26.773607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436527, 32.522663, 26.966709>,  <39.273804, 32.389633, 27.082571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436527, 32.522663, 26.966709>,  <39.707733, 32.744381, 26.773607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436527, 32.522663, 26.966709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389326, 0.286267, 0.875487,
		-0.623476, 0.781541, 0.021709,
		-0.678014, -0.554297, 0.482754,
		39.233124, 32.356373, 27.111536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519226, 33.131535, 27.388920>,  <39.707733, 32.744381, 26.773607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519226, 33.131535, 27.388920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418728, 32.749569, 27.452173>,  <39.358429, 32.520390, 27.490126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418728, 32.749569, 27.452173>,  <39.519226, 33.131535, 27.388920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418728, 32.749569, 27.452173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518463, 0.005186, 0.855084,
		-0.817355, 0.296825, 0.493787,
		-0.251249, -0.954918, 0.158132,
		39.343353, 32.463093, 27.499613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203369, 33.056774, 28.061607>,  <39.519226, 33.131535, 27.388920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203369, 33.056774, 28.061607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321808, 32.683846, 27.978558>,  <39.392872, 32.460091, 27.928728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321808, 32.683846, 27.978558>,  <39.203369, 33.056774, 28.061607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321808, 32.683846, 27.978558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483043, -0.041365, 0.874619,
		-0.824013, -0.359261, 0.438103,
		0.296094, -0.932320, -0.207624,
		39.410637, 32.404148, 27.916271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990215, 32.680347, 28.734364>,  <39.203369, 33.056774, 28.061607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990215, 32.680347, 28.734364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216793, 32.393879, 28.571274>,  <39.352741, 32.222000, 28.473421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216793, 32.393879, 28.571274>,  <38.990215, 32.680347, 28.734364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216793, 32.393879, 28.571274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393641, -0.199524, 0.897350,
		-0.724005, -0.668799, 0.168894,
		0.566448, -0.716170, -0.407723,
		39.386726, 32.179028, 28.448957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874378, 32.046757, 29.159266>,  <38.990215, 32.680347, 28.734364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874378, 32.046757, 29.159266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225132, 32.033756, 28.967424>,  <39.435585, 32.025955, 28.852320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225132, 32.033756, 28.967424>,  <38.874378, 32.046757, 29.159266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225132, 32.033756, 28.967424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472952, -0.120116, 0.872862,
		-0.085967, -0.992228, -0.089962,
		0.876884, -0.032490, -0.479602,
		39.488197, 32.024006, 28.823544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202713, 31.361830, 29.463057>,  <38.874378, 32.046757, 29.159266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202713, 31.361830, 29.463057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476662, 31.592842, 29.285334>,  <39.641029, 31.731449, 29.178699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476662, 31.592842, 29.285334>,  <39.202713, 31.361830, 29.463057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476662, 31.592842, 29.285334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656498, -0.224496, 0.720147,
		0.316163, -0.784894, -0.532899,
		0.684873, 0.577531, -0.444305,
		39.682125, 31.766102, 29.152042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745472, 30.977953, 29.417446>,  <39.202713, 31.361830, 29.463057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745472, 30.977953, 29.417446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875488, 31.354235, 29.378620>,  <39.953499, 31.580004, 29.355324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875488, 31.354235, 29.378620>,  <39.745472, 30.977953, 29.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875488, 31.354235, 29.378620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690183, -0.165798, 0.704385,
		0.646524, -0.295949, -0.703150,
		0.325043, 0.940705, -0.097067,
		39.973000, 31.636446, 29.349501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491413, 30.886080, 29.387764>,  <39.745472, 30.977953, 29.417446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491413, 30.886080, 29.387764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387318, 31.253138, 29.507898>,  <40.324860, 31.473373, 29.579979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387318, 31.253138, 29.507898>,  <40.491413, 30.886080, 29.387764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387318, 31.253138, 29.507898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565319, -0.107354, 0.817857,
		0.782745, 0.382624, -0.490824,
		-0.260240, 0.917646, 0.300335,
		40.309246, 31.528431, 29.598000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076557, 31.136896, 29.525126>,  <40.491413, 30.886080, 29.387764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076557, 31.136896, 29.525126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822926, 31.376440, 29.720802>,  <40.670746, 31.520166, 29.838209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822926, 31.376440, 29.720802>,  <41.076557, 31.136896, 29.525126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822926, 31.376440, 29.720802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549581, -0.096024, 0.829904,
		0.543969, 0.795077, -0.268234,
		-0.634081, 0.598859, 0.489193,
		40.632702, 31.556097, 29.867559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492622, 31.518850, 29.953083>,  <41.076557, 31.136896, 29.525126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492622, 31.518850, 29.953083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136673, 31.590097, 30.121082>,  <40.923103, 31.632847, 30.221882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136673, 31.590097, 30.121082>,  <41.492622, 31.518850, 29.953083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136673, 31.590097, 30.121082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418157, -0.049617, 0.907019,
		0.182397, 0.982757, -0.030330,
		-0.889874, 0.178120, 0.419996,
		40.869709, 31.643534, 30.247082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704716, 32.047596, 30.471972>,  <41.492622, 31.518850, 29.953083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704716, 32.047596, 30.471972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355793, 31.871822, 30.557745>,  <41.146439, 31.766357, 30.609209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355793, 31.871822, 30.557745>,  <41.704716, 32.047596, 30.471972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355793, 31.871822, 30.557745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319134, -0.179402, 0.930574,
		-0.370460, 0.880176, 0.296732,
		-0.872303, -0.439438, 0.214433,
		41.094101, 31.739990, 30.622074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555687, 32.092506, 31.177702>,  <41.704716, 32.047596, 30.471972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555687, 32.092506, 31.177702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303238, 31.793781, 31.093838>,  <41.151768, 31.614546, 31.043520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303238, 31.793781, 31.093838>,  <41.555687, 32.092506, 31.177702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303238, 31.793781, 31.093838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328298, -0.502059, 0.800099,
		-0.702786, 0.436127, 0.562037,
		-0.631120, -0.746813, -0.209660,
		41.113903, 31.569736, 31.030939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234043, 31.971697, 31.745798>,  <41.555687, 32.092506, 31.177702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234043, 31.971697, 31.745798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202435, 31.632710, 31.535826>,  <41.183468, 31.429317, 31.409842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202435, 31.632710, 31.535826>,  <41.234043, 31.971697, 31.745798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202435, 31.632710, 31.535826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150839, -0.530681, 0.834042,
		-0.985395, -0.013273, 0.169766,
		-0.079021, -0.847468, -0.524932,
		41.178730, 31.378469, 31.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736435, 31.450863, 32.156441>,  <41.234043, 31.971697, 31.745798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736435, 31.450863, 32.156441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964546, 31.227633, 31.915333>,  <41.101414, 31.093695, 31.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964546, 31.227633, 31.915333>,  <40.736435, 31.450863, 32.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964546, 31.227633, 31.915333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291073, -0.548890, 0.783579,
		-0.768149, -0.622311, -0.150582,
		0.570283, -0.558075, -0.602768,
		41.135632, 31.060209, 31.734503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632587, 30.819252, 32.327057>,  <40.736435, 31.450863, 32.156441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632587, 30.819252, 32.327057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996555, 30.833889, 32.161789>,  <41.214935, 30.842672, 32.062630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996555, 30.833889, 32.161789>,  <40.632587, 30.819252, 32.327057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996555, 30.833889, 32.161789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363852, -0.548662, 0.752716,
		-0.199144, -0.835243, -0.512553,
		0.909920, 0.036595, -0.413168,
		41.269531, 30.844868, 32.037838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884624, 30.241886, 32.660278>,  <40.632587, 30.819252, 32.327057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884624, 30.241886, 32.660278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189686, 30.451880, 32.509151>,  <41.372723, 30.577875, 32.418476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189686, 30.451880, 32.509151>,  <40.884624, 30.241886, 32.660278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189686, 30.451880, 32.509151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563988, -0.253787, 0.785818,
		0.316657, -0.812394, -0.489638,
		0.762657, 0.524984, -0.377817,
		41.418484, 30.609375, 32.395805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341080, 29.732990, 32.647141>,  <40.884624, 30.241886, 32.660278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341080, 29.732990, 32.647141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545750, 30.075441, 32.618210>,  <41.668552, 30.280912, 32.600853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545750, 30.075441, 32.618210>,  <41.341080, 29.732990, 32.647141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545750, 30.075441, 32.618210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588502, -0.287903, 0.755498,
		0.625981, -0.429135, -0.651147,
		0.511678, 0.856128, -0.072325,
		41.699253, 30.332279, 32.596512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036533, 29.472872, 32.736366>,  <41.341080, 29.732990, 32.647141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036533, 29.472872, 32.736366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009697, 29.861195, 32.828484>,  <41.993595, 30.094189, 32.883755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009697, 29.861195, 32.828484>,  <42.036533, 29.472872, 32.736366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009697, 29.861195, 32.828484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365117, -0.190913, 0.911176,
		0.928541, 0.145213, -0.341650,
		-0.067089, 0.970807, 0.230291,
		41.989571, 30.152437, 32.897572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684990, 29.712830, 32.941227>,  <42.036533, 29.472872, 32.736366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684990, 29.712830, 32.941227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408005, 29.949966, 33.105682>,  <42.241814, 30.092249, 33.204353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408005, 29.949966, 33.105682>,  <42.684990, 29.712830, 32.941227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408005, 29.949966, 33.105682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338608, -0.236138, 0.910815,
		0.637054, 0.769920, -0.037224,
		-0.692464, 0.592843, 0.411134,
		42.200264, 30.127819, 33.229023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035194, 29.962244, 33.627476>,  <42.684990, 29.712830, 32.941227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035194, 29.962244, 33.627476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665909, 30.099878, 33.695919>,  <42.444336, 30.182459, 33.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665909, 30.099878, 33.695919>,  <43.035194, 29.962244, 33.627476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665909, 30.099878, 33.695919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131699, -0.134992, 0.982055,
		0.361011, 0.929183, 0.079311,
		-0.923215, 0.344087, 0.171106,
		42.388943, 30.203104, 33.747250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083065, 30.562958, 34.113327>,  <43.035194, 29.962244, 33.627476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083065, 30.562958, 34.113327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736637, 30.365637, 34.145775>,  <42.528782, 30.247244, 34.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736637, 30.365637, 34.145775>,  <43.083065, 30.562958, 34.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736637, 30.365637, 34.145775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114406, -0.037608, 0.992722,
		-0.486663, 0.869044, 0.089008,
		-0.866066, -0.493304, 0.081122,
		42.476818, 30.217646, 34.170113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693626, 30.897409, 34.590008>,  <43.083065, 30.562958, 34.113327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693626, 30.897409, 34.590008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545692, 30.526211, 34.571926>,  <42.456932, 30.303492, 34.561077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545692, 30.526211, 34.571926>,  <42.693626, 30.897409, 34.590008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545692, 30.526211, 34.571926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225664, 0.042525, 0.973276,
		-0.901276, 0.370150, -0.225143,
		-0.369833, -0.927998, -0.045203,
		42.434742, 30.247812, 34.558365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137562, 30.839361, 35.022316>,  <42.693626, 30.897409, 34.590008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137562, 30.839361, 35.022316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222446, 30.449469, 34.994427>,  <42.273376, 30.215532, 34.977692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222446, 30.449469, 34.994427>,  <42.137562, 30.839361, 35.022316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222446, 30.449469, 34.994427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167771, -0.106632, 0.980042,
		-0.962715, -0.196275, -0.186161,
		0.212209, -0.974733, -0.069727,
		42.286110, 30.157049, 34.973507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580177, 30.489399, 35.290970>,  <42.137562, 30.839361, 35.022316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580177, 30.489399, 35.290970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885887, 30.235449, 35.336246>,  <42.069313, 30.083078, 35.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885887, 30.235449, 35.336246>,  <41.580177, 30.489399, 35.290970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885887, 30.235449, 35.336246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278385, -0.166475, 0.945932,
		-0.581706, -0.754466, -0.303973,
		0.764277, -0.634876, 0.113193,
		42.115170, 30.044987, 35.370205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507877, 30.188337, 35.920094>,  <41.580177, 30.489399, 35.290970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507877, 30.188337, 35.920094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842693, 29.988375, 35.831131>,  <42.043583, 29.868397, 35.777752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842693, 29.988375, 35.831131>,  <41.507877, 30.188337, 35.920094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842693, 29.988375, 35.831131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002066, -0.409368, 0.912367,
		-0.547144, -0.763224, -0.343688,
		0.837036, -0.499907, -0.222406,
		42.093803, 29.838402, 35.764408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465210, 29.478994, 36.202000>,  <41.507877, 30.188337, 35.920094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465210, 29.478994, 36.202000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863758, 29.508751, 36.218563>,  <42.102886, 29.526606, 36.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863758, 29.508751, 36.218563>,  <41.465210, 29.478994, 36.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863758, 29.508751, 36.218563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028809, -0.163128, 0.986184,
		0.080121, -0.983796, -0.160393,
		0.996369, 0.074393, 0.041412,
		42.162670, 29.531069, 36.230988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714413, 28.903551, 36.589645>,  <41.465210, 29.478994, 36.202000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714413, 28.903551, 36.589645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997654, 29.185453, 36.607117>,  <42.167599, 29.354595, 36.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997654, 29.185453, 36.607117>,  <41.714413, 28.903551, 36.589645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997654, 29.185453, 36.607117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085355, -0.146834, 0.985472,
		0.700929, -0.694090, -0.164128,
		0.708105, 0.704755, 0.043676,
		42.210087, 29.396879, 36.620220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259232, 28.640482, 37.052364>,  <41.714413, 28.903551, 36.589645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259232, 28.640482, 37.052364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304947, 29.037746, 37.061897>,  <42.332375, 29.276106, 37.067616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304947, 29.037746, 37.061897>,  <42.259232, 28.640482, 37.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304947, 29.037746, 37.061897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046530, -0.029311, 0.998487,
		0.992358, -0.113002, -0.049561,
		0.114284, 0.993162, 0.023829,
		42.339233, 29.335695, 37.069046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791874, 28.770176, 37.662323>,  <42.259232, 28.640482, 37.052364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791874, 28.770176, 37.662323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600773, 29.111151, 37.577370>,  <42.486115, 29.315735, 37.526398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600773, 29.111151, 37.577370>,  <42.791874, 28.770176, 37.662323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600773, 29.111151, 37.577370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014646, 0.249452, 0.968276,
		0.878374, 0.459482, -0.131660,
		-0.477749, 0.852437, -0.212383,
		42.457447, 29.366882, 37.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232716, 29.286730, 37.917480>,  <42.791874, 28.770176, 37.662323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232716, 29.286730, 37.917480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875591, 29.466799, 37.911362>,  <42.661316, 29.574841, 37.907692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875591, 29.466799, 37.911362>,  <43.232716, 29.286730, 37.917480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875591, 29.466799, 37.911362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055410, 0.143458, 0.988104,
		0.447013, 0.881342, -0.153025,
		-0.892810, 0.450174, -0.015293,
		42.607750, 29.601851, 37.906773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317776, 29.909784, 38.354359>,  <43.232716, 29.286730, 37.917480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317776, 29.909784, 38.354359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925930, 29.832687, 38.331730>,  <42.690823, 29.786428, 38.318153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925930, 29.832687, 38.331730>,  <43.317776, 29.909784, 38.354359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925930, 29.832687, 38.331730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123509, 0.355827, 0.926354,
		-0.158419, 0.914460, -0.372380,
		-0.979617, -0.192744, -0.056574,
		42.632046, 29.774864, 38.314758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991360, 30.521986, 38.663704>,  <43.317776, 29.909784, 38.354359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991360, 30.521986, 38.663704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732533, 30.217056, 38.668823>,  <42.577236, 30.034098, 38.671894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732533, 30.217056, 38.668823>,  <42.991360, 30.521986, 38.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732533, 30.217056, 38.668823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232450, 0.213232, 0.948946,
		-0.726133, 0.611060, -0.315178,
		-0.647069, -0.762324, 0.012793,
		42.538410, 29.988359, 38.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191357, 30.690639, 38.823650>,  <42.991360, 30.521986, 38.663704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191357, 30.690639, 38.823650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269299, 30.317173, 38.943851>,  <42.316063, 30.093094, 39.015972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269299, 30.317173, 38.943851>,  <42.191357, 30.690639, 38.823650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269299, 30.317173, 38.943851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043396, 0.297865, 0.953621,
		-0.979872, -0.198855, 0.017522,
		0.194852, -0.933667, 0.300499,
		42.327755, 30.037073, 39.034000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012043, 30.642590, 39.559155>,  <42.191357, 30.690639, 38.823650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012043, 30.642590, 39.559155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846493, 31.003277, 39.509178>,  <41.747162, 31.219688, 39.479191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846493, 31.003277, 39.509178>,  <42.012043, 30.642590, 39.559155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846493, 31.003277, 39.509178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804505, -0.298076, 0.513734,
		0.426001, 0.313139, 0.848803,
		-0.413879, 0.901717, -0.124941,
		41.722328, 31.273792, 39.471695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624287, 30.455256, 40.029324>,  <42.012043, 30.642590, 39.559155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624287, 30.455256, 40.029324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552635, 30.102962, 40.204697>,  <42.509644, 29.891586, 40.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552635, 30.102962, 40.204697>,  <42.624287, 30.455256, 40.029324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552635, 30.102962, 40.204697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170036, -0.466646, -0.867945,
		0.969021, -0.080923, 0.233345,
		-0.179126, -0.880735, 0.438430,
		42.498898, 29.838741, 40.336224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192879, 30.044310, 39.902794>,  <42.624287, 30.455256, 40.029324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192879, 30.044310, 39.902794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838577, 29.863535, 39.945126>,  <42.625996, 29.755070, 39.970524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838577, 29.863535, 39.945126>,  <43.192879, 30.044310, 39.902794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838577, 29.863535, 39.945126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059471, -0.336618, -0.939761,
		0.460338, -0.826099, 0.325037,
		-0.885749, -0.451938, 0.105829,
		42.572853, 29.727953, 39.976875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217674, 29.295347, 39.731686>,  <43.192879, 30.044310, 39.902794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217674, 29.295347, 39.731686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873600, 29.463169, 39.615715>,  <42.667156, 29.563862, 39.546131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873600, 29.463169, 39.615715>,  <43.217674, 29.295347, 39.731686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873600, 29.463169, 39.615715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293094, -0.058546, -0.954289,
		-0.417350, -0.905841, -0.072608,
		-0.860183, 0.419553, -0.289931,
		42.615543, 29.589035, 39.528736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833538, 28.850115, 39.242680>,  <43.217674, 29.295347, 39.731686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833538, 28.850115, 39.242680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754757, 29.237444, 39.181286>,  <42.707489, 29.469841, 39.144451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754757, 29.237444, 39.181286>,  <42.833538, 28.850115, 39.242680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754757, 29.237444, 39.181286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225234, -0.107675, -0.968337,
		-0.954191, -0.225286, -0.196893,
		-0.196952, 0.968324, -0.153485,
		42.695671, 29.527941, 39.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265965, 28.920736, 38.759624>,  <42.833538, 28.850115, 39.242680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265965, 28.920736, 38.759624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499977, 29.244780, 38.744316>,  <42.640385, 29.439205, 38.735130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499977, 29.244780, 38.744316>,  <42.265965, 28.920736, 38.759624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499977, 29.244780, 38.744316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154162, -0.157414, -0.975425,
		-0.796226, 0.564751, -0.216980,
		0.585029, 0.810109, -0.038274,
		42.675488, 29.487812, 38.732834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466560, 29.153427, 38.655975>,  <42.265965, 28.920736, 38.759624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466560, 29.153427, 38.655975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796444, 29.378782, 38.675781>,  <41.994373, 29.513994, 38.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796444, 29.378782, 38.675781>,  <41.466560, 29.153427, 38.655975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796444, 29.378782, 38.675781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006323, 0.096733, -0.995290,
		-0.565523, 0.820511, 0.083338,
		0.824708, 0.563387, 0.049517,
		42.043858, 29.547798, 38.690636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309315, 29.722651, 38.266861>,  <41.466560, 29.153427, 38.655975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309315, 29.722651, 38.266861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708935, 29.739014, 38.272793>,  <41.948708, 29.748831, 38.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708935, 29.739014, 38.272793>,  <41.309315, 29.722651, 38.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708935, 29.739014, 38.272793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005828, 0.211871, -0.977280,
		-0.043119, 0.976441, 0.211432,
		0.999053, 0.040907, 0.014826,
		42.008652, 29.751286, 38.277241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498478, 30.245064, 37.840199>,  <41.309315, 29.722651, 38.266861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498478, 30.245064, 37.840199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834129, 30.028175, 37.857437>,  <42.035522, 29.898043, 37.867779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834129, 30.028175, 37.857437>,  <41.498478, 30.245064, 37.840199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834129, 30.028175, 37.857437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155627, 0.163416, -0.974205,
		0.521190, 0.824192, 0.221511,
		0.839131, -0.542220, 0.043096,
		42.085869, 29.865509, 37.870365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936310, 30.566299, 37.417126>,  <41.498478, 30.245064, 37.840199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936310, 30.566299, 37.417126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091724, 30.200563, 37.462769>,  <42.184975, 29.981121, 37.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091724, 30.200563, 37.462769>,  <41.936310, 30.566299, 37.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091724, 30.200563, 37.462769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215068, -0.030430, -0.976125,
		0.895982, 0.403803, 0.184822,
		0.388538, -0.914340, 0.114110,
		42.208286, 29.926262, 37.497002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544384, 30.610882, 36.941723>,  <41.936310, 30.566299, 37.417126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544384, 30.610882, 36.941723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497623, 30.216293, 36.987690>,  <42.469566, 29.979540, 37.015270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497623, 30.216293, 36.987690>,  <42.544384, 30.610882, 36.941723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497623, 30.216293, 36.987690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242864, -0.140596, -0.959818,
		0.962991, -0.084294, 0.256015,
		-0.116902, -0.986472, 0.114921,
		42.462551, 29.920351, 37.022167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124771, 30.298182, 36.697308>,  <42.544384, 30.610882, 36.941723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124771, 30.298182, 36.697308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839108, 30.019264, 36.672771>,  <42.667709, 29.851913, 36.658051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839108, 30.019264, 36.672771>,  <43.124771, 30.298182, 36.697308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839108, 30.019264, 36.672771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183779, -0.102217, -0.977639,
		0.675431, -0.709460, 0.201147,
		-0.714156, -0.697294, -0.061344,
		42.624859, 29.810076, 36.654369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343967, 29.655521, 36.372215>,  <43.124771, 30.298182, 36.697308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343967, 29.655521, 36.372215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954933, 29.722635, 36.307804>,  <42.721512, 29.762903, 36.269157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954933, 29.722635, 36.307804>,  <43.343967, 29.655521, 36.372215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954933, 29.722635, 36.307804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154480, -0.051485, -0.986653,
		-0.173839, -0.984478, 0.024154,
		-0.972582, 0.167788, -0.161033,
		42.663158, 29.772970, 36.259495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337349, 29.821756, 35.756397>,  <43.343967, 29.655521, 36.372215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337349, 29.821756, 35.756397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937714, 29.824814, 35.773155>,  <42.697933, 29.826649, 35.783211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937714, 29.824814, 35.773155>,  <43.337349, 29.821756, 35.756397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937714, 29.824814, 35.773155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042406, -0.088348, -0.995186,
		-0.003902, -0.996060, 0.088592,
		-0.999093, 0.007640, 0.041894,
		42.637985, 29.827106, 35.785725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084965, 29.275808, 35.299286>,  <43.337349, 29.821756, 35.756397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084965, 29.275808, 35.299286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776432, 29.529139, 35.324421>,  <42.591312, 29.681137, 35.339500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776432, 29.529139, 35.324421>,  <43.084965, 29.275808, 35.299286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776432, 29.529139, 35.324421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185355, -0.129090, -0.974156,
		-0.608846, -0.763042, 0.216961,
		-0.771330, 0.633326, 0.062838,
		42.545033, 29.719137, 35.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571384, 28.895245, 34.907887>,  <43.084965, 29.275808, 35.299286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571384, 28.895245, 34.907887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462982, 29.279692, 34.929073>,  <42.397942, 29.510361, 34.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462982, 29.279692, 34.929073>,  <42.571384, 28.895245, 34.907887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462982, 29.279692, 34.929073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189754, 0.000603, -0.981832,
		-0.943690, -0.276132, 0.182213,
		-0.271005, 0.961120, 0.052966,
		42.381680, 29.568027, 34.944962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993637, 29.038803, 34.485096>,  <42.571384, 28.895245, 34.907887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993637, 29.038803, 34.485096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169098, 29.397055, 34.514565>,  <42.274376, 29.612007, 34.532246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169098, 29.397055, 34.514565>,  <41.993637, 29.038803, 34.485096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169098, 29.397055, 34.514565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238346, 0.194995, -0.951403,
		-0.866472, 0.399777, 0.299006,
		0.438653, 0.895631, 0.073673,
		42.300694, 29.665745, 34.536667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509178, 29.385153, 34.141426>,  <41.993637, 29.038803, 34.485096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509178, 29.385153, 34.141426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856201, 29.580891, 34.105915>,  <42.064415, 29.698334, 34.084610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856201, 29.580891, 34.105915>,  <41.509178, 29.385153, 34.141426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856201, 29.580891, 34.105915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213237, 0.204736, -0.955308,
		-0.449298, 0.847718, 0.281967,
		0.867560, 0.489344, -0.088778,
		42.116470, 29.727694, 34.079281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150391, 30.025827, 34.125992>,  <41.509178, 29.385153, 34.141426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150391, 30.025827, 34.125992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542191, 30.097506, 34.162788>,  <41.777271, 30.140512, 34.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542191, 30.097506, 34.162788>,  <41.150391, 30.025827, 34.125992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542191, 30.097506, 34.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039523, 0.276854, -0.960099,
		-0.197513, 0.944056, 0.264097,
		0.979503, 0.179194, 0.091994,
		41.836040, 30.151264, 34.190388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227104, 30.707649, 33.962193>,  <41.150391, 30.025827, 34.125992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227104, 30.707649, 33.962193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595333, 30.565960, 33.896385>,  <41.816273, 30.480946, 33.856903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595333, 30.565960, 33.896385>,  <41.227104, 30.707649, 33.962193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595333, 30.565960, 33.896385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047020, 0.317645, -0.947043,
		0.387724, 0.879560, 0.275761,
		0.920575, -0.354225, -0.164515,
		41.871506, 30.459692, 33.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779266, 31.245880, 33.749664>,  <41.227104, 30.707649, 33.962193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779266, 31.245880, 33.749664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866810, 30.891506, 33.586094>,  <41.919334, 30.678881, 33.487953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866810, 30.891506, 33.586094>,  <41.779266, 31.245880, 33.749664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866810, 30.891506, 33.586094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149718, 0.383631, -0.911269,
		0.964202, 0.260662, -0.048680,
		0.218858, -0.885936, -0.408924,
		41.932468, 30.625725, 33.463417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826527, 31.404850, 33.071869>,  <41.779266, 31.245880, 33.749664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826527, 31.404850, 33.071869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903313, 31.015669, 33.020466>,  <41.949387, 30.782160, 32.989624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903313, 31.015669, 33.020466>,  <41.826527, 31.404850, 33.071869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903313, 31.015669, 33.020466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253144, 0.077419, -0.964326,
		0.948191, 0.217651, -0.231434,
		0.191969, -0.972951, -0.128505,
		41.960903, 30.723783, 32.981915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364727, 31.426901, 32.663097>,  <41.826527, 31.404850, 33.071869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364727, 31.426901, 32.663097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155602, 31.088629, 32.620216>,  <42.030128, 30.885666, 32.594490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155602, 31.088629, 32.620216>,  <42.364727, 31.426901, 32.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155602, 31.088629, 32.620216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060321, 0.088738, -0.994227,
		0.850312, -0.526258, 0.004619,
		-0.522810, -0.845682, -0.107199,
		41.998760, 30.834925, 32.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498589, 31.228598, 31.937557>,  <42.364727, 31.426901, 32.663097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498589, 31.228598, 31.937557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172371, 31.023449, 32.044773>,  <41.976639, 30.900360, 32.109104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172371, 31.023449, 32.044773>,  <42.498589, 31.228598, 31.937557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172371, 31.023449, 32.044773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317066, 0.008543, -0.948365,
		0.484098, -0.858424, -0.169582,
		-0.815548, -0.512870, 0.268042,
		41.927708, 30.869589, 32.125187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396698, 30.767729, 31.390709>,  <42.498589, 31.228598, 31.937557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396698, 30.767729, 31.390709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054840, 30.807163, 31.594618>,  <41.849728, 30.830824, 31.716963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054840, 30.807163, 31.594618>,  <42.396698, 30.767729, 31.390709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054840, 30.807163, 31.594618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503807, 0.079988, -0.860105,
		-0.125572, -0.991908, -0.018692,
		-0.854641, 0.098588, 0.509775,
		41.798447, 30.836739, 31.747551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863770, 30.400047, 30.870693>,  <42.396698, 30.767729, 31.390709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863770, 30.400047, 30.870693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671589, 30.632330, 31.133583>,  <41.556282, 30.771700, 31.291317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671589, 30.632330, 31.133583>,  <41.863770, 30.400047, 30.870693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671589, 30.632330, 31.133583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371781, 0.543864, -0.752324,
		-0.794322, -0.605798, -0.045402,
		-0.480449, 0.580708, 0.657227,
		41.527454, 30.806541, 31.330751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128315, 30.551521, 30.139368>,  <41.863770, 30.400047, 30.870693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128315, 30.551521, 30.139368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412674, 30.314209, 29.988295>,  <42.583290, 30.171822, 29.897650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412674, 30.314209, 29.988295>,  <42.128315, 30.551521, 30.139368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412674, 30.314209, 29.988295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173753, 0.372218, -0.911737,
		0.681499, 0.713771, 0.161522,
		0.710893, -0.593283, -0.377686,
		42.625942, 30.136225, 29.874989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888660, 30.571287, 30.277594>,  <42.128315, 30.551521, 30.139368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888660, 30.571287, 30.277594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271862, 30.528101, 30.383860>,  <43.501781, 30.502190, 30.447618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271862, 30.528101, 30.383860>,  <42.888660, 30.571287, 30.277594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271862, 30.528101, 30.383860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077380, 0.794724, 0.602019,
		-0.276127, -0.597291, 0.752992,
		0.958001, -0.107968, 0.265663,
		43.559261, 30.495710, 30.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067722, 30.854412, 30.998323>,  <42.888660, 30.571287, 30.277594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067722, 30.854412, 30.998323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451870, 30.840588, 30.887688>,  <43.682358, 30.832293, 30.821306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451870, 30.840588, 30.887688>,  <43.067722, 30.854412, 30.998323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451870, 30.840588, 30.887688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153737, 0.893383, 0.422175,
		0.232510, -0.447964, 0.863289,
		0.960367, -0.034560, -0.276589,
		43.739979, 30.830219, 30.804710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598892, 30.999628, 31.516088>,  <43.067722, 30.854412, 30.998323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598892, 30.999628, 31.516088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815693, 31.126543, 31.204817>,  <43.945774, 31.202692, 31.018053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815693, 31.126543, 31.204817>,  <43.598892, 30.999628, 31.516088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815693, 31.126543, 31.204817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349699, 0.756856, 0.552159,
		0.764169, -0.571396, 0.299254,
		0.541994, 0.317294, -0.778182,
		43.978294, 31.221729, 30.971363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046455, 31.384029, 31.903765>,  <43.598892, 30.999628, 31.516088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046455, 31.384029, 31.903765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123272, 31.504814, 31.530254>,  <44.169361, 31.577286, 31.306149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123272, 31.504814, 31.530254>,  <44.046455, 31.384029, 31.903765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123272, 31.504814, 31.530254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324426, 0.878458, 0.350797,
		0.926211, -0.370310, 0.070739,
		0.192045, 0.301963, -0.933776,
		44.180885, 31.595404, 31.250122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820450, 31.373022, 31.762514>,  <44.046455, 31.384029, 31.903765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820450, 31.373022, 31.762514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585899, 31.639406, 31.578054>,  <44.445168, 31.799236, 31.467379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585899, 31.639406, 31.578054>,  <44.820450, 31.373022, 31.762514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585899, 31.639406, 31.578054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389147, 0.730893, 0.560678,
		0.710440, 0.149314, -0.687736,
		-0.586379, 0.665958, -0.461150,
		44.409985, 31.839193, 31.439709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152378, 31.956116, 31.559141>,  <44.820450, 31.373022, 31.762514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152378, 31.956116, 31.559141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774174, 32.083496, 31.586246>,  <44.547249, 32.159924, 31.602510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774174, 32.083496, 31.586246>,  <45.152378, 31.956116, 31.559141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774174, 32.083496, 31.586246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285916, 0.712585, 0.640683,
		0.155737, 0.625150, -0.764809,
		-0.945515, 0.318449, 0.067764,
		44.490520, 32.179031, 31.606575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082680, 32.609131, 31.330158>,  <45.152378, 31.956116, 31.559141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082680, 32.609131, 31.330158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783176, 32.563728, 31.591379>,  <44.603474, 32.536488, 31.748112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783176, 32.563728, 31.591379>,  <45.082680, 32.609131, 31.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783176, 32.563728, 31.591379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370116, 0.745738, 0.553975,
		-0.549886, 0.656499, -0.516367,
		-0.748759, -0.113507, 0.653051,
		44.558548, 32.529675, 31.787294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615307, 33.213467, 31.289709>,  <45.082680, 32.609131, 31.330158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615307, 33.213467, 31.289709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685242, 33.017441, 31.631298>,  <44.727203, 32.899826, 31.836250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685242, 33.017441, 31.631298>,  <44.615307, 33.213467, 31.289709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685242, 33.017441, 31.631298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412985, 0.823847, 0.388227,
		-0.893798, 0.284800, 0.346431,
		0.174839, -0.490067, 0.853971,
		44.737694, 32.870422, 31.887489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336018, 33.506344, 31.914539>,  <44.615307, 33.213467, 31.289709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336018, 33.506344, 31.914539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664772, 33.313042, 32.035183>,  <44.862026, 33.197060, 32.107567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664772, 33.313042, 32.035183>,  <44.336018, 33.506344, 31.914539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664772, 33.313042, 32.035183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285355, 0.807504, 0.516246,
		-0.493029, -0.338230, 0.801575,
		0.821885, -0.483258, 0.301607,
		44.911339, 33.168064, 32.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344769, 33.487167, 32.628605>,  <44.336018, 33.506344, 31.914539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344769, 33.487167, 32.628605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701920, 33.490818, 32.448524>,  <44.916210, 33.493008, 32.340477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701920, 33.490818, 32.448524>,  <44.344769, 33.487167, 32.628605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701920, 33.490818, 32.448524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221851, 0.861115, 0.457452,
		0.391847, -0.508328, 0.766850,
		0.892882, 0.009125, -0.450198,
		44.969784, 33.493557, 32.313465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976830, 33.480854, 33.054817>,  <44.344769, 33.487167, 32.628605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976830, 33.480854, 33.054817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071991, 33.659748, 32.709938>,  <45.129086, 33.767086, 32.503010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071991, 33.659748, 32.709938>,  <44.976830, 33.480854, 33.054817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071991, 33.659748, 32.709938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650008, 0.586294, 0.483477,
		0.721729, -0.675452, -0.151230,
		0.237900, 0.447240, -0.862195,
		45.143360, 33.793919, 32.451279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640015, 33.305119, 32.942963>,  <44.976830, 33.480854, 33.054817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640015, 33.305119, 32.942963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539921, 33.654408, 32.775692>,  <45.479866, 33.863979, 32.675331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539921, 33.654408, 32.775692>,  <45.640015, 33.305119, 32.942963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539921, 33.654408, 32.775692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639280, 0.473395, 0.605985,
		0.727120, -0.115691, -0.676693,
		-0.250236, 0.873220, -0.418173,
		45.464851, 33.916374, 32.650238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.217461, 33.715111, 32.663166>,  <45.640015, 33.305119, 32.942963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.217461, 33.715111, 32.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936516, 33.978024, 32.772469>,  <45.767948, 34.135769, 32.838051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936516, 33.978024, 32.772469>,  <46.217461, 33.715111, 32.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936516, 33.978024, 32.772469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650246, 0.436277, 0.621967,
		0.289590, 0.614531, -0.733819,
		-0.702366, 0.657278, 0.273254,
		45.725807, 34.175205, 32.854446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582703, 34.219589, 32.779388>,  <46.217461, 33.715111, 32.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582703, 34.219589, 32.779388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296719, 34.307251, 33.044960>,  <46.125130, 34.359848, 33.204304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296719, 34.307251, 33.044960>,  <46.582703, 34.219589, 32.779388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296719, 34.307251, 33.044960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685891, 0.404024, 0.605242,
		-0.135600, 0.888107, -0.439178,
		-0.714959, 0.219157, 0.663931,
		46.082230, 34.372997, 33.244141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615940, 34.929420, 33.067642>,  <46.582703, 34.219589, 32.779388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615940, 34.929420, 33.067642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482380, 34.661854, 33.333290>,  <46.402245, 34.501316, 33.492680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482380, 34.661854, 33.333290>,  <46.615940, 34.929420, 33.067642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482380, 34.661854, 33.333290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610285, 0.383541, 0.693144,
		-0.718373, 0.636749, 0.280162,
		-0.333905, -0.668915, 0.664124,
		46.382210, 34.461178, 33.532528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069286, 35.246269, 33.473705>,  <46.615940, 34.929420, 33.067642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069286, 35.246269, 33.473705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311558, 34.967995, 33.628201>,  <46.456921, 34.801029, 33.720898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.311558, 34.967995, 33.628201>,  <46.069286, 35.246269, 33.473705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.311558, 34.967995, 33.628201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204134, 0.605000, 0.769613,
		-0.769082, -0.387292, 0.508447,
		0.605675, -0.695687, 0.386235,
		46.493259, 34.759289, 33.744072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939953, 34.925186, 34.301792>,  <46.069286, 35.246269, 33.473705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939953, 34.925186, 34.301792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294926, 35.017063, 34.141933>,  <46.507908, 35.072189, 34.046021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294926, 35.017063, 34.141933>,  <45.939953, 34.925186, 34.301792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294926, 35.017063, 34.141933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147293, 0.680246, 0.718032,
		0.436778, -0.696067, 0.569839,
		0.887429, 0.229688, -0.399642,
		46.561153, 35.085968, 34.022041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404835, 34.572983, 34.654881>,  <45.939953, 34.925186, 34.301792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404835, 34.572983, 34.654881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619720, 34.682598, 34.973953>,  <46.748653, 34.748367, 35.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.619720, 34.682598, 34.973953>,  <46.404835, 34.572983, 34.654881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.619720, 34.682598, 34.973953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820965, -0.386777, -0.420024,
		0.193422, 0.880514, -0.432761,
		0.537219, 0.274040, 0.797683,
		46.780888, 34.764809, 35.213257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.071121, 34.812187, 34.454628>,  <46.404835, 34.572983, 34.654881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.071121, 34.812187, 34.454628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171570, 34.781258, 34.840572>,  <47.231838, 34.762699, 35.072140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171570, 34.781258, 34.840572>,  <47.071121, 34.812187, 34.454628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171570, 34.781258, 34.840572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942711, -0.206632, -0.261916,
		0.219623, 0.975359, 0.021005,
		0.251121, -0.077324, 0.964862,
		47.246906, 34.758060, 35.130032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563519, 35.276402, 34.756260>,  <47.071121, 34.812187, 34.454628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563519, 35.276402, 34.756260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577679, 34.913036, 34.922890>,  <47.586174, 34.695019, 35.022865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577679, 34.913036, 34.922890>,  <47.563519, 35.276402, 34.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577679, 34.913036, 34.922890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868507, -0.178250, -0.462518,
		0.494411, 0.378171, 0.782652,
		0.035403, -0.908413, 0.416572,
		47.588299, 34.640511, 35.047863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.743443, 27.536150, 23.648920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406143, 27.748125, 23.684904>,  <34.203762, 27.875309, 23.706493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406143, 27.748125, 23.684904>,  <34.743443, 27.536150, 23.648920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406143, 27.748125, 23.684904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095113, -0.017611, 0.995311,
		0.529035, 0.847855, -0.035553,
		-0.843253, 0.529936, 0.089959,
		34.153168, 27.907106, 23.711891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906956, 28.158201, 23.979261>,  <34.743443, 27.536150, 23.648920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906956, 28.158201, 23.979261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.516731, 28.103794, 24.048292>,  <34.282597, 28.071150, 24.089710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.516731, 28.103794, 24.048292>,  <34.906956, 28.158201, 23.979261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516731, 28.103794, 24.048292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159157, 0.104095, 0.981750,
		-0.151501, 0.985222, -0.079902,
		-0.975560, -0.136019, 0.172575,
		34.224064, 28.062988, 24.100065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731712, 28.703518, 24.395893>,  <34.906956, 28.158201, 23.979261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731712, 28.703518, 24.395893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.433338, 28.442722, 24.450293>,  <34.254314, 28.286245, 24.482933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.433338, 28.442722, 24.450293>,  <34.731712, 28.703518, 24.395893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433338, 28.442722, 24.450293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010318, 0.192857, 0.981173,
		-0.665942, 0.733291, -0.137131,
		-0.745932, -0.651989, 0.135998,
		34.209560, 28.247126, 24.491093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205284, 29.008320, 24.795259>,  <34.731712, 28.703518, 24.395893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205284, 29.008320, 24.795259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153862, 28.616369, 24.856335>,  <34.123009, 28.381199, 24.892981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153862, 28.616369, 24.856335>,  <34.205284, 29.008320, 24.795259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153862, 28.616369, 24.856335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150485, 0.132908, 0.979638,
		-0.980218, 0.148916, 0.130371,
		-0.128556, -0.979877, 0.152689,
		34.115295, 28.322407, 24.902142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703064, 28.976759, 25.368620>,  <34.205284, 29.008320, 24.795259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703064, 28.976759, 25.368620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878090, 28.617271, 25.357010>,  <33.983105, 28.401579, 25.350044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878090, 28.617271, 25.357010>,  <33.703064, 28.976759, 25.368620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878090, 28.617271, 25.357010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043571, -0.011050, 0.998989,
		-0.898132, -0.438385, 0.034323,
		0.437563, -0.898719, -0.029025,
		34.009357, 28.347656, 25.348303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289982, 28.710711, 25.866358>,  <33.703064, 28.976759, 25.368620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289982, 28.710711, 25.866358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615818, 28.484583, 25.814417>,  <33.811317, 28.348906, 25.783253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615818, 28.484583, 25.814417>,  <33.289982, 28.710711, 25.866358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615818, 28.484583, 25.814417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186018, 0.042563, 0.981624,
		-0.549405, -0.823772, 0.139831,
		0.814586, -0.565321, -0.129853,
		33.860195, 28.314987, 25.775461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325119, 28.133093, 26.455469>,  <33.289982, 28.710711, 25.866358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325119, 28.133093, 26.455469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695473, 28.168732, 26.308613>,  <33.917686, 28.190115, 26.220499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695473, 28.168732, 26.308613>,  <33.325119, 28.133093, 26.455469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695473, 28.168732, 26.308613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355436, 0.123917, 0.926450,
		0.128069, -0.988281, 0.083053,
		0.925885, 0.089129, -0.367141,
		33.973240, 28.195461, 26.198471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758640, 27.711658, 26.840191>,  <33.325119, 28.133093, 26.455469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758640, 27.711658, 26.840191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007668, 27.989742, 26.696470>,  <34.157082, 28.156591, 26.610239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007668, 27.989742, 26.696470>,  <33.758640, 27.711658, 26.840191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007668, 27.989742, 26.696470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493200, 0.007908, 0.869880,
		0.607590, -0.718764, -0.337954,
		0.622566, 0.695209, -0.359299,
		34.194439, 28.198305, 26.588680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291279, 27.493956, 27.069197>,  <33.758640, 27.711658, 26.840191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291279, 27.493956, 27.069197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419907, 27.858873, 26.967758>,  <34.497086, 28.077824, 26.906895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419907, 27.858873, 26.967758>,  <34.291279, 27.493956, 27.069197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419907, 27.858873, 26.967758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671875, -0.031120, 0.740010,
		0.667215, -0.408352, -0.622955,
		0.321571, 0.912294, -0.253598,
		34.516376, 28.132561, 26.891680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021957, 27.377348, 26.990051>,  <34.291279, 27.493956, 27.069197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021957, 27.377348, 26.990051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920181, 27.757526, 27.061508>,  <34.859116, 27.985634, 27.104383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920181, 27.757526, 27.061508>,  <35.021957, 27.377348, 26.990051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920181, 27.757526, 27.061508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691380, 0.049610, 0.720786,
		0.676206, 0.306908, -0.669741,
		-0.254441, 0.950445, 0.178643,
		34.843849, 28.042660, 27.115101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593040, 27.729717, 27.143225>,  <35.021957, 27.377348, 26.990051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593040, 27.729717, 27.143225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345100, 28.002211, 27.299021>,  <35.196335, 28.165707, 27.392498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345100, 28.002211, 27.299021>,  <35.593040, 27.729717, 27.143225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345100, 28.002211, 27.299021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621945, 0.123829, 0.773208,
		0.478506, 0.721516, -0.500446,
		-0.619852, 0.681235, 0.389490,
		35.159145, 28.206581, 27.415867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910339, 28.362238, 27.067480>,  <35.593040, 27.729717, 27.143225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910339, 28.362238, 27.067480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650356, 28.318579, 27.368317>,  <35.494366, 28.292383, 27.548819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.650356, 28.318579, 27.368317>,  <35.910339, 28.362238, 27.067480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650356, 28.318579, 27.368317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670047, 0.384661, 0.634880,
		-0.358595, 0.916582, -0.176881,
		-0.649959, -0.109146, 0.752090,
		35.455368, 28.285835, 27.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955338, 29.008924, 27.399420>,  <35.910339, 28.362238, 27.067480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955338, 29.008924, 27.399420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802547, 28.750895, 27.664139>,  <35.710873, 28.596077, 27.822969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802547, 28.750895, 27.664139>,  <35.955338, 29.008924, 27.399420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802547, 28.750895, 27.664139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581994, 0.388360, 0.714464,
		-0.717897, 0.658071, 0.227084,
		-0.381978, -0.645073, 0.661796,
		35.687954, 28.557373, 27.862679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854027, 29.343056, 28.018255>,  <35.955338, 29.008924, 27.399420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854027, 29.343056, 28.018255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810814, 28.975664, 28.170424>,  <35.784885, 28.755228, 28.261724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810814, 28.975664, 28.170424>,  <35.854027, 29.343056, 28.018255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810814, 28.975664, 28.170424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575940, 0.254083, 0.777004,
		-0.810322, 0.303042, 0.501541,
		-0.108032, -0.918481, 0.380423,
		35.778404, 28.700119, 28.284550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791389, 29.488953, 28.688908>,  <35.854027, 29.343056, 28.018255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791389, 29.488953, 28.688908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872772, 29.097322, 28.687595>,  <35.921604, 28.862345, 28.686808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872772, 29.097322, 28.687595>,  <35.791389, 29.488953, 28.688908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872772, 29.097322, 28.687595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540338, 0.109490, 0.834294,
		-0.816480, -0.171519, 0.551310,
		0.203460, -0.979078, -0.003282,
		35.933811, 28.803598, 28.686611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564644, 29.260418, 29.336708>,  <35.791389, 29.488953, 28.688908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564644, 29.260418, 29.336708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840824, 29.004770, 29.201176>,  <36.006531, 28.851381, 29.119856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840824, 29.004770, 29.201176>,  <35.564644, 29.260418, 29.336708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840824, 29.004770, 29.201176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471180, 0.041936, 0.881040,
		-0.548881, -0.767963, 0.330095,
		0.690449, -0.639120, -0.338831,
		36.047958, 28.813034, 29.099527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679268, 28.849041, 29.857952>,  <35.564644, 29.260418, 29.336708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679268, 28.849041, 29.857952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005333, 28.823963, 29.627621>,  <36.200974, 28.808916, 29.489422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005333, 28.823963, 29.627621>,  <35.679268, 28.849041, 29.857952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005333, 28.823963, 29.627621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578390, 0.034473, 0.815032,
		-0.031247, -0.997437, 0.064363,
		0.815162, -0.062695, -0.575830,
		36.249882, 28.805155, 29.454872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109013, 28.243246, 30.139629>,  <35.679268, 28.849041, 29.857952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109013, 28.243246, 30.139629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355652, 28.483727, 29.936312>,  <36.503635, 28.628016, 29.814322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355652, 28.483727, 29.936312>,  <36.109013, 28.243246, 30.139629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355652, 28.483727, 29.936312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694692, -0.111710, 0.710580,
		0.370420, -0.791251, -0.486529,
		0.616597, 0.601201, -0.508296,
		36.540630, 28.664087, 29.783823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750778, 27.961477, 30.223877>,  <36.109013, 28.243246, 30.139629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750778, 27.961477, 30.223877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834999, 28.341576, 30.132046>,  <36.885532, 28.569633, 30.076948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834999, 28.341576, 30.132046>,  <36.750778, 27.961477, 30.223877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834999, 28.341576, 30.132046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708861, 0.013315, 0.705223,
		0.673191, -0.311222, -0.670787,
		0.210549, 0.950244, -0.229577,
		36.898163, 28.626648, 30.063173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466084, 28.152225, 30.468330>,  <36.750778, 27.961477, 30.223877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466084, 28.152225, 30.468330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322720, 28.517885, 30.392570>,  <37.236702, 28.737282, 30.347115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322720, 28.517885, 30.392570>,  <37.466084, 28.152225, 30.468330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322720, 28.517885, 30.392570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489677, 0.356816, 0.795549,
		0.794832, 0.192388, -0.575525,
		-0.358410, 0.914149, -0.189401,
		37.215195, 28.792130, 30.335751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046604, 28.655428, 30.571016>,  <37.466084, 28.152225, 30.468330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046604, 28.655428, 30.571016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729855, 28.897345, 30.604860>,  <37.539803, 29.042494, 30.625166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729855, 28.897345, 30.604860>,  <38.046604, 28.655428, 30.571016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729855, 28.897345, 30.604860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396349, 0.403590, 0.824635,
		0.464584, 0.686544, -0.559302,
		-0.791877, 0.604791, 0.084610,
		37.492290, 29.078781, 30.630243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346352, 29.428570, 30.762817>,  <38.046604, 28.655428, 30.571016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346352, 29.428570, 30.762817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958267, 29.380112, 30.846741>,  <37.725418, 29.351036, 30.897095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958267, 29.380112, 30.846741>,  <38.346352, 29.428570, 30.762817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958267, 29.380112, 30.846741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151036, 0.374668, 0.914774,
		-0.189430, 0.919210, -0.345208,
		-0.970208, -0.121147, 0.209807,
		37.667206, 29.343767, 30.909683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006348, 29.298960, 30.495493>,  <38.346352, 29.428570, 30.762817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006348, 29.298960, 30.495493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387115, 29.188662, 30.442102>,  <39.615578, 29.122482, 30.410069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387115, 29.188662, 30.442102>,  <39.006348, 29.298960, 30.495493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387115, 29.188662, 30.442102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271614, -0.558154, -0.784022,
		0.141689, 0.782579, -0.606213,
		0.951919, -0.275743, -0.133475,
		39.672691, 29.105938, 30.402060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214787, 29.524145, 29.830746>,  <39.006348, 29.298960, 30.495493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214787, 29.524145, 29.830746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448433, 29.218952, 29.941500>,  <39.588623, 29.035837, 30.007952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448433, 29.218952, 29.941500>,  <39.214787, 29.524145, 29.830746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448433, 29.218952, 29.941500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279420, -0.509303, -0.813962,
		0.762056, 0.398084, -0.510686,
		0.584119, -0.762981, 0.276884,
		39.623669, 28.990057, 30.024565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532955, 29.249166, 29.195629>,  <39.214787, 29.524145, 29.830746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532955, 29.249166, 29.195629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597347, 28.955990, 29.460018>,  <39.635983, 28.780085, 29.618652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597347, 28.955990, 29.460018>,  <39.532955, 29.249166, 29.195629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597347, 28.955990, 29.460018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093169, -0.678002, -0.729131,
		0.982551, 0.055790, -0.177430,
		0.160976, -0.732940, 0.660974,
		39.645641, 28.736109, 29.658310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014580, 28.888878, 28.905029>,  <39.532955, 29.249166, 29.195629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014580, 28.888878, 28.905029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824261, 28.656389, 29.169088>,  <39.710068, 28.516895, 29.327524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824261, 28.656389, 29.169088>,  <40.014580, 28.888878, 28.905029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824261, 28.656389, 29.169088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085635, -0.716371, -0.692445,
		0.875374, -0.385998, 0.291078,
		-0.475802, -0.581222, 0.660147,
		39.681519, 28.482023, 29.367132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336349, 28.302141, 28.858475>,  <40.014580, 28.888878, 28.905029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336349, 28.302141, 28.858475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974285, 28.222549, 29.008726>,  <39.757046, 28.174793, 29.098877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.974285, 28.222549, 29.008726>,  <40.336349, 28.302141, 28.858475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974285, 28.222549, 29.008726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126659, -0.717281, -0.685175,
		0.405769, -0.667768, 0.624049,
		-0.905157, -0.198982, 0.375630,
		39.702740, 28.162855, 29.121414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276043, 27.644220, 28.708765>,  <40.336349, 28.302141, 28.858475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276043, 27.644220, 28.708765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895802, 27.738075, 28.790054>,  <39.667656, 27.794388, 28.838829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895802, 27.738075, 28.790054>,  <40.276043, 27.644220, 28.708765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895802, 27.738075, 28.790054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307507, -0.622478, -0.719694,
		-0.042365, -0.746636, 0.663882,
		-0.950602, 0.234638, 0.203225,
		39.610622, 27.808468, 28.851021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891331, 27.026808, 28.538574>,  <40.276043, 27.644220, 28.708765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891331, 27.026808, 28.538574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640213, 27.337912, 28.550999>,  <39.489544, 27.524574, 28.558455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640213, 27.337912, 28.550999>,  <39.891331, 27.026808, 28.538574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640213, 27.337912, 28.550999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596359, -0.454956, -0.661340,
		-0.500232, -0.433709, 0.749443,
		-0.627792, 0.777760, 0.031063,
		39.451874, 27.571239, 28.560318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275455, 26.739716, 28.535898>,  <39.891331, 27.026808, 28.538574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275455, 26.739716, 28.535898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214149, 27.117680, 28.420206>,  <39.177364, 27.344458, 28.350792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214149, 27.117680, 28.420206>,  <39.275455, 26.739716, 28.535898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214149, 27.117680, 28.420206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345928, -0.325471, -0.880002,
		-0.925659, -0.034821, 0.376754,
		-0.153265, 0.944911, -0.289229,
		39.168171, 27.401154, 28.333437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686413, 26.756481, 28.165361>,  <39.275455, 26.739716, 28.535898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686413, 26.756481, 28.165361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821411, 27.110922, 28.038288>,  <38.902412, 27.323586, 27.962044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821411, 27.110922, 28.038288>,  <38.686413, 26.756481, 28.165361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821411, 27.110922, 28.038288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512471, -0.110130, -0.851613,
		-0.789600, 0.450221, 0.416932,
		0.337498, 0.886099, -0.317684,
		38.922661, 27.376751, 27.942984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066921, 27.055267, 27.812948>,  <38.686413, 26.756481, 28.165361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066921, 27.055267, 27.812948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388691, 27.235195, 27.657740>,  <38.581753, 27.343153, 27.564615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388691, 27.235195, 27.657740>,  <38.066921, 27.055267, 27.812948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388691, 27.235195, 27.657740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448657, 0.031914, -0.893134,
		-0.389367, 0.892549, 0.227488,
		0.804426, 0.449821, -0.388022,
		38.630020, 27.370142, 27.541332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829945, 27.600285, 27.550974>,  <38.066921, 27.055267, 27.812948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829945, 27.600285, 27.550974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161617, 27.524982, 27.340445>,  <38.360622, 27.479801, 27.214127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161617, 27.524982, 27.340445>,  <37.829945, 27.600285, 27.550974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161617, 27.524982, 27.340445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518480, 0.092842, -0.850035,
		0.208888, 0.977722, -0.020623,
		0.829183, -0.188255, -0.526323,
		38.410374, 27.468506, 27.182549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775864, 28.124359, 27.047113>,  <37.829945, 27.600285, 27.550974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775864, 28.124359, 27.047113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045288, 27.857347, 26.920170>,  <38.206944, 27.697142, 26.844004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045288, 27.857347, 26.920170>,  <37.775864, 28.124359, 27.047113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045288, 27.857347, 26.920170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327967, 0.114862, -0.937680,
		0.662380, 0.735672, -0.141560,
		0.673565, -0.667528, -0.317359,
		38.247356, 27.657089, 26.824963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033024, 28.430717, 26.439854>,  <37.775864, 28.124359, 27.047113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033024, 28.430717, 26.439854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088787, 28.034651, 26.435163>,  <38.122246, 27.797010, 26.432348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088787, 28.034651, 26.435163>,  <38.033024, 28.430717, 26.439854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088787, 28.034651, 26.435163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315273, -0.033156, -0.948422,
		0.938706, 0.135913, -0.316795,
		0.139406, -0.990166, -0.011726,
		38.130608, 27.737600, 26.431646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265358, 28.286896, 25.729322>,  <38.033024, 28.430717, 26.439854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265358, 28.286896, 25.729322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145447, 27.930052, 25.864538>,  <38.073498, 27.715944, 25.945667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145447, 27.930052, 25.864538>,  <38.265358, 28.286896, 25.729322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145447, 27.930052, 25.864538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380232, -0.213245, -0.899972,
		0.874960, -0.398327, -0.275282,
		-0.299781, -0.892111, 0.338037,
		38.055511, 27.662418, 25.965950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329700, 27.901508, 25.222706>,  <38.265358, 28.286896, 25.729322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329700, 27.901508, 25.222706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073868, 27.705658, 25.459753>,  <37.920368, 27.588148, 25.601982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073868, 27.705658, 25.459753>,  <38.329700, 27.901508, 25.222706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073868, 27.705658, 25.459753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599472, -0.164900, -0.783225,
		0.481212, -0.856196, -0.188050,
		-0.639585, -0.489628, 0.592617,
		37.881992, 27.558769, 25.637539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207432, 27.326447, 24.894440>,  <38.329700, 27.901508, 25.222706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207432, 27.326447, 24.894440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915878, 27.345858, 25.167604>,  <37.740944, 27.357504, 25.331503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915878, 27.345858, 25.167604>,  <38.207432, 27.326447, 24.894440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915878, 27.345858, 25.167604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676712, -0.202374, -0.707888,
		0.103852, -0.978105, 0.180347,
		-0.728887, 0.048527, 0.682912,
		37.697212, 27.360416, 25.372478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794361, 26.686750, 24.806398>,  <38.207432, 27.326447, 24.894440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794361, 26.686750, 24.806398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575039, 26.978363, 24.970287>,  <37.443447, 27.153332, 25.068621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575039, 26.978363, 24.970287>,  <37.794361, 26.686750, 24.806398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575039, 26.978363, 24.970287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697424, -0.128265, -0.705087,
		-0.461480, -0.672352, 0.578774,
		-0.548303, 0.729034, 0.409723,
		37.410549, 27.197073, 25.093204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069496, 26.356764, 24.832315>,  <37.794361, 26.686750, 24.806398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069496, 26.356764, 24.832315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029140, 26.754574, 24.821424>,  <37.004929, 26.993259, 24.814890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.029140, 26.754574, 24.821424>,  <37.069496, 26.356764, 24.832315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029140, 26.754574, 24.821424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733058, -0.092812, -0.673804,
		-0.672642, -0.048020, 0.738408,
		-0.100889, 0.994525, -0.027228,
		36.998875, 27.052931, 24.813255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.182880, 26.628891, 24.870138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378231, 26.956385, 24.749365>,  <36.495441, 27.152882, 24.676901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378231, 26.956385, 24.749365>,  <36.182880, 26.628891, 24.870138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378231, 26.956385, 24.749365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436832, -0.070156, -0.896803,
		-0.755427, 0.569869, 0.323388,
		0.488373, 0.818735, -0.301935,
		36.524742, 27.202005, 24.658785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747433, 27.065447, 24.507236>,  <36.182880, 26.628891, 24.870138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747433, 27.065447, 24.507236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090118, 27.220573, 24.371210>,  <36.295731, 27.313650, 24.289595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090118, 27.220573, 24.371210>,  <35.747433, 27.065447, 24.507236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090118, 27.220573, 24.371210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466676, 0.301992, -0.831273,
		-0.219685, 0.870860, 0.439705,
		0.856710, 0.387818, -0.340066,
		36.347130, 27.336920, 24.269190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606426, 27.741453, 24.276539>,  <35.747433, 27.065447, 24.507236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606426, 27.741453, 24.276539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938396, 27.629307, 24.083614>,  <36.137577, 27.562019, 23.967859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938396, 27.629307, 24.083614>,  <35.606426, 27.741453, 24.276539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938396, 27.629307, 24.083614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422342, 0.249101, -0.871536,
		0.364494, 0.927008, 0.088324,
		0.829923, -0.280367, -0.482310,
		36.187374, 27.545197, 23.938921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604321, 28.216715, 23.675323>,  <35.606426, 27.741453, 24.276539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604321, 28.216715, 23.675323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881302, 27.940228, 23.592640>,  <36.047489, 27.774336, 23.543030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881302, 27.940228, 23.592640>,  <35.604321, 28.216715, 23.675323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881302, 27.940228, 23.592640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188819, 0.102902, -0.976606,
		0.696317, 0.715284, -0.059260,
		0.692452, -0.691217, -0.206711,
		36.089039, 27.732862, 23.530626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993629, 28.555586, 23.191761>,  <35.604321, 28.216715, 23.675323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993629, 28.555586, 23.191761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047771, 28.159891, 23.169540>,  <36.080257, 27.922474, 23.156208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047771, 28.159891, 23.169540>,  <35.993629, 28.555586, 23.191761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047771, 28.159891, 23.169540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100450, 0.042078, -0.994052,
		0.985692, 0.140128, -0.093674,
		0.135353, -0.989239, -0.055552,
		36.088379, 27.863119, 23.152874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528702, 28.510132, 22.705511>,  <35.993629, 28.555586, 23.191761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528702, 28.510132, 22.705511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336159, 28.159937, 22.688456>,  <36.220634, 27.949820, 22.678223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336159, 28.159937, 22.688456>,  <36.528702, 28.510132, 22.705511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336159, 28.159937, 22.688456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020975, 0.037124, -0.999090,
		0.876273, -0.481814, 0.000494,
		-0.481358, -0.875487, -0.042637,
		36.191750, 27.897291, 22.675665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670803, 28.399761, 22.129435>,  <36.528702, 28.510132, 22.705511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670803, 28.399761, 22.129435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426750, 28.090788, 22.199961>,  <36.280319, 27.905403, 22.242275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426750, 28.090788, 22.199961>,  <36.670803, 28.399761, 22.129435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426750, 28.090788, 22.199961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082382, -0.159479, -0.983758,
		0.788006, -0.614746, 0.033669,
		-0.610131, -0.772434, 0.176314,
		36.243710, 27.859058, 22.252855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054382, 27.797916, 21.884501>,  <36.670803, 28.399761, 22.129435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054382, 27.797916, 21.884501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660812, 27.728407, 21.868052>,  <36.424671, 27.686701, 21.858181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.660812, 27.728407, 21.868052>,  <37.054382, 27.797916, 21.884501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660812, 27.728407, 21.868052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042243, -0.002745, -0.999104,
		0.173506, -0.984782, 0.010042,
		-0.983926, -0.173775, -0.041124,
		36.365635, 27.676275, 21.855715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001965, 27.305233, 21.440140>,  <37.054382, 27.797916, 21.884501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001965, 27.305233, 21.440140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631207, 27.454134, 21.420973>,  <36.408752, 27.543474, 21.409473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631207, 27.454134, 21.420973>,  <37.001965, 27.305233, 21.440140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631207, 27.454134, 21.420973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004788, -0.115934, -0.993245,
		-0.375296, -0.920861, 0.105676,
		-0.926893, 0.372255, -0.047918,
		36.353138, 27.565811, 21.406597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633602, 26.889170, 20.884132>,  <37.001965, 27.305233, 21.440140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633602, 26.889170, 20.884132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395283, 27.205378, 20.940847>,  <36.252293, 27.395103, 20.974876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395283, 27.205378, 20.940847>,  <36.633602, 26.889170, 20.884132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395283, 27.205378, 20.940847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141237, 0.070663, -0.987451,
		-0.790620, -0.608344, 0.069551,
		-0.595795, 0.790522, 0.141788,
		36.216545, 27.442533, 20.983383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872112, 26.757092, 20.686890>,  <36.633602, 26.889170, 20.884132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872112, 26.757092, 20.686890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949108, 27.149256, 20.670191>,  <35.995308, 27.384554, 20.660172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949108, 27.149256, 20.670191>,  <35.872112, 26.757092, 20.686890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949108, 27.149256, 20.670191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061893, -0.030329, -0.997622,
		-0.979345, 0.194619, 0.054842,
		0.192493, 0.980410, -0.041749,
		36.006855, 27.443378, 20.657667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323830, 26.995012, 20.206841>,  <35.872112, 26.757092, 20.686890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323830, 26.995012, 20.206841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612408, 27.271933, 20.200596>,  <35.785553, 27.438086, 20.196850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612408, 27.271933, 20.200596>,  <35.323830, 26.995012, 20.206841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612408, 27.271933, 20.200596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240398, 0.229246, -0.943215,
		-0.649409, 0.684227, 0.331815,
		0.721440, 0.692301, -0.015612,
		35.828838, 27.479622, 20.195911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968140, 27.568142, 19.892565>,  <35.323830, 26.995012, 20.206841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968140, 27.568142, 19.892565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361328, 27.627970, 19.849869>,  <35.597240, 27.663866, 19.824251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361328, 27.627970, 19.849869>,  <34.968140, 27.568142, 19.892565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361328, 27.627970, 19.849869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151696, 0.332729, -0.930742,
		-0.103697, 0.931086, 0.349752,
		0.982973, 0.149571, -0.106739,
		35.656219, 27.672840, 19.817846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012936, 28.262140, 19.599016>,  <34.968140, 27.568142, 19.892565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012936, 28.262140, 19.599016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352417, 28.062389, 19.529362>,  <35.556107, 27.942539, 19.487570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352417, 28.062389, 19.529362>,  <35.012936, 28.262140, 19.599016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352417, 28.062389, 19.529362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020386, 0.359907, -0.932766,
		0.528476, 0.788092, 0.315635,
		0.848704, -0.499379, -0.174136,
		35.607029, 27.912577, 19.477121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343849, 28.720924, 19.172712>,  <35.012936, 28.262140, 19.599016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343849, 28.720924, 19.172712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548016, 28.378967, 19.135536>,  <35.670517, 28.173794, 19.113230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548016, 28.378967, 19.135536>,  <35.343849, 28.720924, 19.172712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548016, 28.378967, 19.135536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246170, 0.248816, -0.936745,
		0.823940, 0.455249, 0.337448,
		0.510415, -0.854891, -0.092941,
		35.701141, 28.122499, 19.107655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907700, 28.899035, 18.864447>,  <35.343849, 28.720924, 19.172712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907700, 28.899035, 18.864447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909897, 28.505978, 18.790274>,  <35.911217, 28.270144, 18.745770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909897, 28.505978, 18.790274>,  <35.907700, 28.899035, 18.864447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909897, 28.505978, 18.790274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304879, 0.178251, -0.935561,
		0.952375, -0.051395, 0.300566,
		0.005493, -0.982642, -0.185431,
		35.911545, 28.211185, 18.734644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540009, 28.819342, 18.513105>,  <35.907700, 28.899035, 18.864447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540009, 28.819342, 18.513105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319626, 28.499647, 18.417051>,  <36.187397, 28.307831, 18.359419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319626, 28.499647, 18.417051>,  <36.540009, 28.819342, 18.513105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319626, 28.499647, 18.417051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293576, 0.083731, -0.952262,
		0.781188, -0.595157, 0.188504,
		-0.550961, -0.799236, -0.240133,
		36.154339, 28.259876, 18.345011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958218, 28.450232, 18.116543>,  <36.540009, 28.819342, 18.513105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958218, 28.450232, 18.116543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593716, 28.308809, 18.032051>,  <36.375015, 28.223955, 17.981356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593716, 28.308809, 18.032051>,  <36.958218, 28.450232, 18.116543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593716, 28.308809, 18.032051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114643, 0.274856, -0.954626,
		0.395573, -0.894120, -0.209930,
		-0.911251, -0.353557, -0.211231,
		36.320339, 28.202742, 17.968681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019588, 27.973631, 17.511448>,  <36.958218, 28.450232, 18.116543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019588, 27.973631, 17.511448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643059, 28.108637, 17.511572>,  <36.417141, 28.189640, 17.511646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643059, 28.108637, 17.511572>,  <37.019588, 27.973631, 17.511448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643059, 28.108637, 17.511572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073245, 0.205175, -0.975981,
		-0.329471, -0.918688, -0.217857,
		-0.941320, 0.337514, 0.000310,
		36.360664, 28.209890, 17.511665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724052, 27.765129, 16.883549>,  <37.019588, 27.973631, 17.511448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724052, 27.765129, 16.883549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521317, 28.086538, 17.008427>,  <36.399673, 28.279385, 17.083353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521317, 28.086538, 17.008427>,  <36.724052, 27.765129, 16.883549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521317, 28.086538, 17.008427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012958, 0.355014, -0.934771,
		-0.861943, -0.477824, -0.169523,
		-0.506839, 0.803523, 0.312194,
		36.369267, 28.327595, 17.102085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488155, 27.992226, 16.261921>,  <36.724052, 27.765129, 16.883549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488155, 27.992226, 16.261921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402027, 28.287043, 16.518173>,  <36.350349, 28.463932, 16.671925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402027, 28.287043, 16.518173>,  <36.488155, 27.992226, 16.261921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402027, 28.287043, 16.518173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285628, 0.579797, -0.763054,
		-0.933838, -0.347285, 0.085676,
		-0.215323, 0.737040, 0.640631,
		36.337429, 28.508154, 16.710363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853443, 28.145422, 16.024521>,  <36.488155, 27.992226, 16.261921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853443, 28.145422, 16.024521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052437, 28.442986, 16.203007>,  <36.171833, 28.621523, 16.310099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052437, 28.442986, 16.203007>,  <35.853443, 28.145422, 16.024521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052437, 28.442986, 16.203007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223655, 0.606987, -0.762591,
		-0.838144, 0.279581, 0.468347,
		0.497486, 0.743909, 0.446213,
		36.201683, 28.666159, 16.336870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509941, 28.794352, 16.086380>,  <35.853443, 28.145422, 16.024521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509941, 28.794352, 16.086380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899498, 28.884865, 16.079065>,  <36.133232, 28.939173, 16.074677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899498, 28.884865, 16.079065>,  <35.509941, 28.794352, 16.086380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899498, 28.884865, 16.079065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175457, 0.699123, -0.693139,
		-0.144060, 0.678250, 0.720572,
		0.973890, 0.226283, -0.018288,
		36.191666, 28.952749, 16.073578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811108, 28.972925, 15.773979>,  <35.509941, 28.794352, 16.086380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811108, 28.972925, 15.773979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591419, 28.638689, 15.769123>,  <34.459606, 28.438148, 15.766210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591419, 28.638689, 15.769123>,  <34.811108, 28.972925, 15.773979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591419, 28.638689, 15.769123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314403, -0.220069, 0.923429,
		-0.774278, 0.503351, 0.383578,
		-0.549222, -0.835588, -0.012140,
		34.426651, 28.388012, 15.765481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395744, 28.952909, 16.420673>,  <34.811108, 28.972925, 15.773979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395744, 28.952909, 16.420673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427284, 28.586359, 16.263683>,  <34.446209, 28.366428, 16.169489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427284, 28.586359, 16.263683>,  <34.395744, 28.952909, 16.420673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427284, 28.586359, 16.263683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456153, -0.316902, 0.831563,
		-0.886401, -0.244596, 0.393021,
		0.078848, -0.916376, -0.392476,
		34.450939, 28.311445, 16.145941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683033, 29.458113, 16.500149>,  <34.395744, 28.952909, 16.420673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683033, 29.458113, 16.500149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285397, 29.420891, 16.522512>,  <33.046814, 29.398558, 16.535931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285397, 29.420891, 16.522512>,  <33.683033, 29.458113, 16.500149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285397, 29.420891, 16.522512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028951, 0.269101, 0.962677,
		-0.104625, 0.958606, -0.264817,
		-0.994090, -0.093053, 0.055907,
		32.987171, 29.392975, 16.539284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402225, 30.075012, 16.858252>,  <33.683033, 29.458113, 16.500149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402225, 30.075012, 16.858252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123055, 29.791683, 16.900549>,  <32.955551, 29.621685, 16.925928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.123055, 29.791683, 16.900549>,  <33.402225, 30.075012, 16.858252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123055, 29.791683, 16.900549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030306, 0.176728, 0.983793,
		-0.715531, 0.683408, -0.144809,
		-0.697924, -0.708322, 0.105743,
		32.913677, 29.579187, 16.932272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098164, 30.337818, 17.376780>,  <33.402225, 30.075012, 16.858252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098164, 30.337818, 17.376780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957298, 29.964191, 17.353136>,  <32.872780, 29.740015, 17.338949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957298, 29.964191, 17.353136>,  <33.098164, 30.337818, 17.376780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957298, 29.964191, 17.353136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007904, -0.060186, 0.998156,
		-0.935904, 0.351985, 0.013813,
		-0.352167, -0.934069, -0.059110,
		32.851646, 29.683971, 17.335403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622536, 30.309086, 17.914316>,  <33.098164, 30.337818, 17.376780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622536, 30.309086, 17.914316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735195, 29.934536, 17.830528>,  <32.802792, 29.709806, 17.780256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735195, 29.934536, 17.830528>,  <32.622536, 30.309086, 17.914316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735195, 29.934536, 17.830528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155150, -0.170991, 0.972980,
		-0.946891, -0.306538, 0.097120,
		0.281649, -0.936374, -0.209469,
		32.819691, 29.653624, 17.767687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161770, 29.819681, 18.310579>,  <32.622536, 30.309086, 17.914316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161770, 29.819681, 18.310579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520912, 29.666998, 18.222803>,  <32.736397, 29.575388, 18.170137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520912, 29.666998, 18.222803>,  <32.161770, 29.819681, 18.310579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520912, 29.666998, 18.222803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112355, -0.283268, 0.952437,
		-0.425715, -0.879805, -0.211447,
		0.897855, -0.381709, -0.219442,
		32.790268, 29.552486, 18.156971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168812, 29.417610, 18.779533>,  <32.161770, 29.819681, 18.310579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168812, 29.417610, 18.779533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547890, 29.380838, 18.657270>,  <32.775337, 29.358776, 18.583914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547890, 29.380838, 18.657270>,  <32.168812, 29.417610, 18.779533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547890, 29.380838, 18.657270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265869, -0.302504, 0.915317,
		-0.176604, -0.948705, -0.262240,
		0.947694, -0.091927, -0.305655,
		32.832199, 29.353260, 18.565575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437485, 28.813799, 19.014908>,  <32.168812, 29.417610, 18.779533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437485, 28.813799, 19.014908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765919, 29.033451, 18.952585>,  <32.962978, 29.165243, 18.915192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765919, 29.033451, 18.952585>,  <32.437485, 28.813799, 19.014908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765919, 29.033451, 18.952585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367741, -0.300130, 0.880164,
		0.436565, -0.779984, -0.448371,
		0.821083, 0.549133, -0.155806,
		33.012245, 29.198191, 18.905844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068665, 28.388605, 19.040884>,  <32.437485, 28.813799, 19.014908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068665, 28.388605, 19.040884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172157, 28.764975, 19.128262>,  <33.234253, 28.990797, 19.180689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172157, 28.764975, 19.128262>,  <33.068665, 28.388605, 19.040884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172157, 28.764975, 19.128262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224962, -0.278624, 0.933681,
		0.939388, -0.192433, -0.283761,
		0.258734, 0.940924, 0.218446,
		33.249779, 29.047253, 19.193796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792267, 28.287516, 19.109066>,  <33.068665, 28.388605, 19.040884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792267, 28.287516, 19.109066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644833, 28.612534, 19.289692>,  <33.556370, 28.807545, 19.398067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644833, 28.612534, 19.289692>,  <33.792267, 28.287516, 19.109066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644833, 28.612534, 19.289692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456744, -0.264786, 0.849278,
		0.809646, 0.519284, -0.273528,
		-0.368590, 0.812547, 0.451563,
		33.534256, 28.856298, 19.425161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380718, 28.571808, 19.645882>,  <33.792267, 28.287516, 19.109066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380718, 28.571808, 19.645882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032558, 28.745300, 19.739079>,  <33.823662, 28.849396, 19.794996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032558, 28.745300, 19.739079>,  <34.380718, 28.571808, 19.645882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032558, 28.745300, 19.739079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239398, -0.040683, 0.970069,
		0.430228, 0.900123, -0.068424,
		-0.870398, 0.433731, 0.232991,
		33.771439, 28.875420, 19.808975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538425, 28.939056, 20.290571>,  <34.380718, 28.571808, 19.645882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538425, 28.939056, 20.290571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139305, 28.937111, 20.264153>,  <33.899834, 28.935944, 20.248301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139305, 28.937111, 20.264153>,  <34.538425, 28.939056, 20.290571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139305, 28.937111, 20.264153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066112, 0.131713, 0.989081,
		0.003889, 0.991276, -0.131745,
		-0.997805, -0.004863, -0.066048,
		33.839962, 28.935652, 20.244339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339096, 29.418278, 20.827286>,  <34.538425, 28.939056, 20.290571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339096, 29.418278, 20.827286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021679, 29.186083, 20.754265>,  <33.831230, 29.046766, 20.710451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021679, 29.186083, 20.754265>,  <34.339096, 29.418278, 20.827286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021679, 29.186083, 20.754265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027000, -0.266116, 0.963563,
		-0.607915, 0.769557, 0.195502,
		-0.793543, -0.580486, -0.182554,
		33.783615, 29.011936, 20.699499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981300, 29.515350, 21.444368>,  <34.339096, 29.418278, 20.827286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981300, 29.515350, 21.444368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830254, 29.175741, 21.296547>,  <33.739624, 28.971975, 21.207855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830254, 29.175741, 21.296547>,  <33.981300, 29.515350, 21.444368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830254, 29.175741, 21.296547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088461, -0.364197, 0.927111,
		-0.921727, 0.382784, 0.062422,
		-0.377617, -0.849021, -0.369552,
		33.716969, 28.921036, 21.185682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362194, 29.483093, 21.792192>,  <33.981300, 29.515350, 21.444368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362194, 29.483093, 21.792192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473228, 29.125559, 21.651335>,  <33.539848, 28.911037, 21.566820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473228, 29.125559, 21.651335>,  <33.362194, 29.483093, 21.792192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473228, 29.125559, 21.651335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086946, -0.341670, 0.935789,
		-0.956759, -0.290378, -0.017127,
		0.277584, -0.893835, -0.352144,
		33.556503, 28.857409, 21.545692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002781, 28.976454, 22.191267>,  <33.362194, 29.483093, 21.792192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002781, 28.976454, 22.191267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.299267, 28.754700, 22.039867>,  <33.477158, 28.621647, 21.949028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.299267, 28.754700, 22.039867>,  <33.002781, 28.976454, 22.191267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299267, 28.754700, 22.039867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175100, -0.384655, 0.906300,
		-0.648033, -0.738035, -0.188038,
		0.741211, -0.554387, -0.378499,
		33.521629, 28.588383, 21.926317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904480, 28.328194, 22.401505>,  <33.002781, 28.976454, 22.191267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904480, 28.328194, 22.401505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295986, 28.337671, 22.320053>,  <33.530888, 28.343357, 22.271181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295986, 28.337671, 22.320053>,  <32.904480, 28.328194, 22.401505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295986, 28.337671, 22.320053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197868, -0.368974, 0.908133,
		-0.053618, -0.929138, -0.365826,
		0.978761, 0.023693, -0.203630,
		33.589615, 28.344778, 22.258965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169903, 27.557320, 22.520712>,  <32.904480, 28.328194, 22.401505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169903, 27.557320, 22.520712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482216, 27.807241, 22.520594>,  <33.669605, 27.957193, 22.520523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482216, 27.807241, 22.520594>,  <33.169903, 27.557320, 22.520712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482216, 27.807241, 22.520594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255407, -0.318737, 0.912784,
		0.570216, -0.712761, -0.408443,
		0.780782, 0.624803, -0.000295,
		33.716450, 27.994682, 22.520506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626965, 27.210625, 22.905233>,  <33.169903, 27.557320, 22.520712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626965, 27.210625, 22.905233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772526, 27.582855, 22.921247>,  <33.859863, 27.806192, 22.930857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.772526, 27.582855, 22.921247>,  <33.626965, 27.210625, 22.905233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772526, 27.582855, 22.921247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215836, -0.126062, 0.968258,
		0.906083, -0.343715, -0.246726,
		0.363907, 0.930574, 0.040037,
		33.881699, 27.862028, 22.933258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345222, 27.234877, 23.088087>,  <33.626965, 27.210625, 22.905233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345222, 27.234877, 23.088087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183098, 27.584240, 23.196068>,  <34.085823, 27.793858, 23.260857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.183098, 27.584240, 23.196068>,  <34.345222, 27.234877, 23.088087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183098, 27.584240, 23.196068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030398, -0.282257, 0.958857,
		0.913671, 0.396846, 0.087853,
		-0.405316, 0.873409, 0.269954,
		34.061504, 27.846262, 23.277054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.999893, 26.810068, 26.231493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784405, 27.079456, 26.433964>,  <38.655109, 27.241089, 26.555447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784405, 27.079456, 26.433964>,  <38.999893, 26.810068, 26.231493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784405, 27.079456, 26.433964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686464, 0.002591, 0.727160,
		0.488409, 0.739210, -0.463708,
		-0.538725, 0.673470, 0.506175,
		38.622787, 27.281498, 26.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495094, 27.238638, 26.539352>,  <38.999893, 26.810068, 26.231493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495094, 27.238638, 26.539352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160259, 27.326075, 26.739954>,  <38.959358, 27.378536, 26.860315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160259, 27.326075, 26.739954>,  <39.495094, 27.238638, 26.539352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160259, 27.326075, 26.739954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546231, 0.283114, 0.788339,
		0.030343, 0.933843, -0.356393,
		-0.837085, 0.218594, 0.501504,
		38.909134, 27.391653, 26.890406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757252, 27.762049, 27.017427>,  <39.495094, 27.238638, 26.539352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757252, 27.762049, 27.017427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402824, 27.653772, 27.167948>,  <39.190166, 27.588806, 27.258261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402824, 27.653772, 27.167948>,  <39.757252, 27.762049, 27.017427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402824, 27.653772, 27.167948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246930, 0.411392, 0.877373,
		-0.392306, 0.870335, -0.297680,
		-0.886071, -0.270693, 0.376303,
		39.137005, 27.572565, 27.280838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495911, 28.361612, 27.397337>,  <39.757252, 27.762049, 27.017427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495911, 28.361612, 27.397337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284172, 28.073393, 27.576490>,  <39.157131, 27.900461, 27.683983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284172, 28.073393, 27.576490>,  <39.495911, 28.361612, 27.397337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284172, 28.073393, 27.576490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241749, 0.377925, 0.893717,
		-0.813235, 0.581360, -0.025860,
		-0.529345, -0.720551, 0.447885,
		39.125370, 27.857227, 27.710855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139858, 28.628519, 27.920540>,  <39.495911, 28.361612, 27.397337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139858, 28.628519, 27.920540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136795, 28.245289, 28.035107>,  <39.134956, 28.015350, 28.103846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136795, 28.245289, 28.035107>,  <39.139858, 28.628519, 27.920540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136795, 28.245289, 28.035107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324844, 0.268506, 0.906852,
		-0.945736, 0.099985, 0.309169,
		-0.007658, -0.958075, 0.286415,
		39.134499, 27.957867, 28.121031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651020, 28.601126, 28.560091>,  <39.139858, 28.628519, 27.920540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651020, 28.601126, 28.560091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892437, 28.282194, 28.560478>,  <39.037289, 28.090836, 28.560711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.892437, 28.282194, 28.560478>,  <38.651020, 28.601126, 28.560091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892437, 28.282194, 28.560478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282188, 0.214739, 0.935017,
		-0.745723, -0.564052, 0.354601,
		0.603545, -0.797329, 0.000967,
		39.073502, 28.042995, 28.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451176, 28.226988, 29.128736>,  <38.651020, 28.601126, 28.560091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451176, 28.226988, 29.128736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831242, 28.122561, 29.060595>,  <39.059280, 28.059904, 29.019711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831242, 28.122561, 29.060595>,  <38.451176, 28.226988, 29.128736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831242, 28.122561, 29.060595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229960, 0.218053, 0.948457,
		-0.210468, -0.940370, 0.267223,
		0.950169, -0.261070, -0.170354,
		39.116291, 28.044239, 29.009489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577324, 27.894266, 29.759321>,  <38.451176, 28.226988, 29.128736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577324, 27.894266, 29.759321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.924793, 27.948158, 29.568634>,  <39.133274, 27.980494, 29.454222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.924793, 27.948158, 29.568634>,  <38.577324, 27.894266, 29.759321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924793, 27.948158, 29.568634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376675, 0.445382, 0.812250,
		0.321757, -0.885145, 0.336141,
		0.868671, 0.134731, -0.476717,
		39.185394, 27.988577, 29.425619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072147, 27.799797, 30.323460>,  <38.577324, 27.894266, 29.759321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072147, 27.799797, 30.323460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297665, 27.971317, 30.041107>,  <39.432976, 28.074230, 29.871696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297665, 27.971317, 30.041107>,  <39.072147, 27.799797, 30.323460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297665, 27.971317, 30.041107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416599, 0.590325, 0.691348,
		0.713150, -0.683845, 0.154181,
		0.563792, 0.428803, -0.705880,
		39.466801, 28.099958, 29.829344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855354, 27.777746, 30.506222>,  <39.072147, 27.799797, 30.323460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855354, 27.777746, 30.506222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784782, 28.073860, 30.246729>,  <39.742439, 28.251528, 30.091034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784782, 28.073860, 30.246729>,  <39.855354, 27.777746, 30.506222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784782, 28.073860, 30.246729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491853, 0.637194, 0.593351,
		0.852615, -0.214394, -0.476532,
		-0.176433, 0.740283, -0.648731,
		39.731853, 28.295946, 30.052109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513081, 28.042358, 30.325665>,  <39.855354, 27.777746, 30.506222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513081, 28.042358, 30.325665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241261, 28.320791, 30.232985>,  <40.078167, 28.487850, 30.177376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241261, 28.320791, 30.232985>,  <40.513081, 28.042358, 30.325665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241261, 28.320791, 30.232985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470372, 0.655765, 0.590527,
		0.562995, 0.292308, -0.773041,
		-0.679549, 0.696081, -0.231699,
		40.037395, 28.529615, 30.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893772, 28.557970, 30.255840>,  <40.513081, 28.042358, 30.325665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893772, 28.557970, 30.255840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534096, 28.729176, 30.292183>,  <40.318291, 28.831900, 30.313988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534096, 28.729176, 30.292183>,  <40.893772, 28.557970, 30.255840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534096, 28.729176, 30.292183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407856, 0.744709, 0.528263,
		0.158442, 0.512067, -0.844206,
		-0.899194, 0.428013, 0.090857,
		40.264339, 28.857580, 30.319441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971725, 29.252844, 30.192307>,  <40.893772, 28.557970, 30.255840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971725, 29.252844, 30.192307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638588, 29.178116, 30.400719>,  <40.438705, 29.133280, 30.525766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638588, 29.178116, 30.400719>,  <40.971725, 29.252844, 30.192307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638588, 29.178116, 30.400719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223001, 0.748292, 0.624764,
		-0.506600, 0.636520, -0.581549,
		-0.832843, -0.186819, 0.521029,
		40.388737, 29.122070, 30.557028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599934, 29.889229, 30.231115>,  <40.971725, 29.252844, 30.192307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599934, 29.889229, 30.231115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507874, 29.645977, 30.535013>,  <40.452637, 29.500027, 30.717352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.507874, 29.645977, 30.535013>,  <40.599934, 29.889229, 30.231115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507874, 29.645977, 30.535013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214693, 0.729737, 0.649146,
		-0.949178, 0.312512, -0.037387,
		-0.230148, -0.608128, 0.759744,
		40.438828, 29.463539, 30.762936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952709, 30.288465, 30.668209>,  <40.599934, 29.889229, 30.231115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952709, 30.288465, 30.668209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007221, 30.609768, 30.900145>,  <41.039928, 30.802549, 31.039305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007221, 30.609768, 30.900145>,  <40.952709, 30.288465, 30.668209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007221, 30.609768, 30.900145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426566, 0.575840, -0.697460,
		-0.894131, -0.152289, 0.421116,
		0.136279, 0.803254, 0.579837,
		41.048103, 30.850744, 31.074097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341618, 30.636818, 30.611624>,  <40.952709, 30.288465, 30.668209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341618, 30.636818, 30.611624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604111, 30.911293, 30.737164>,  <40.761608, 31.075977, 30.812489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.604111, 30.911293, 30.737164>,  <40.341618, 30.636818, 30.611624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604111, 30.911293, 30.737164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360219, 0.650381, -0.668765,
		-0.663020, 0.325814, 0.673981,
		0.656237, 0.686185, 0.313851,
		40.800983, 31.117149, 30.831318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945503, 31.134304, 30.798790>,  <40.341618, 30.636818, 30.611624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945503, 31.134304, 30.798790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299549, 31.313246, 30.747496>,  <40.511978, 31.420610, 30.716719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299549, 31.313246, 30.747496>,  <39.945503, 31.134304, 30.798790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299549, 31.313246, 30.747496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427720, 0.673433, -0.602946,
		-0.183375, 0.588525, 0.787409,
		0.885116, 0.447356, -0.128233,
		40.565083, 31.447453, 30.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704174, 31.780111, 30.785706>,  <39.945503, 31.134304, 30.798790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704174, 31.780111, 30.785706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064991, 31.744669, 30.616726>,  <40.281483, 31.723404, 30.515339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.064991, 31.744669, 30.616726>,  <39.704174, 31.780111, 30.785706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064991, 31.744669, 30.616726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301584, 0.570812, -0.763689,
		0.308804, 0.816287, 0.488177,
		0.902046, -0.088604, -0.422448,
		40.335606, 31.718088, 30.489992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944939, 32.418304, 30.571381>,  <39.704174, 31.780111, 30.785706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944939, 32.418304, 30.571381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130737, 32.150791, 30.339184>,  <40.242218, 31.990284, 30.199865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130737, 32.150791, 30.339184>,  <39.944939, 32.418304, 30.571381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130737, 32.150791, 30.339184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207337, 0.555151, -0.805493,
		0.860961, 0.494506, 0.119202,
		0.464497, -0.668783, -0.580493,
		40.270084, 31.950155, 30.165035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003510, 32.729546, 29.975298>,  <39.944939, 32.418304, 30.571381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003510, 32.729546, 29.975298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101845, 32.361523, 29.853275>,  <40.160847, 32.140709, 29.780062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.101845, 32.361523, 29.853275>,  <40.003510, 32.729546, 29.975298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101845, 32.361523, 29.853275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234805, 0.248814, -0.939659,
		0.940440, 0.302636, -0.154865,
		0.245842, -0.920056, -0.305055,
		40.175598, 32.085506, 29.761759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399616, 32.867619, 29.306501>,  <40.003510, 32.729546, 29.975298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399616, 32.867619, 29.306501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272629, 32.488674, 29.323132>,  <40.196438, 32.261307, 29.333109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272629, 32.488674, 29.323132>,  <40.399616, 32.867619, 29.306501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272629, 32.488674, 29.323132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246860, 0.040235, -0.968215,
		0.915574, -0.317639, -0.246638,
		-0.317467, -0.947358, 0.041574,
		40.177387, 32.204468, 29.335604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588379, 32.559895, 28.741770>,  <40.399616, 32.867619, 29.306501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588379, 32.559895, 28.741770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333969, 32.268723, 28.844210>,  <40.181324, 32.094017, 28.905674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333969, 32.268723, 28.844210>,  <40.588379, 32.559895, 28.741770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333969, 32.268723, 28.844210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454333, 0.084986, -0.886769,
		0.623742, -0.680362, -0.384777,
		-0.636024, -0.727932, 0.256102,
		40.143162, 32.050343, 28.921040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666344, 32.003010, 28.209923>,  <40.588379, 32.559895, 28.741770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666344, 32.003010, 28.209923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308002, 31.997131, 28.387568>,  <40.092999, 31.993605, 28.494154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.308002, 31.997131, 28.387568>,  <40.666344, 32.003010, 28.209923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308002, 31.997131, 28.387568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444107, 0.063005, -0.893756,
		-0.014852, -0.997905, -0.062967,
		-0.895851, -0.014690, 0.444112,
		40.039246, 31.992722, 28.520802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314495, 31.531219, 27.837505>,  <40.666344, 32.003010, 28.209923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314495, 31.531219, 27.837505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010109, 31.709713, 28.025892>,  <39.827477, 31.816809, 28.138924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010109, 31.709713, 28.025892>,  <40.314495, 31.531219, 27.837505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010109, 31.709713, 28.025892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554802, -0.071238, -0.828927,
		-0.336346, -0.892076, 0.301782,
		-0.760964, 0.446235, 0.470965,
		39.781818, 31.843584, 28.167181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663303, 31.166704, 27.797504>,  <40.314495, 31.531219, 27.837505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663303, 31.166704, 27.797504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577663, 31.555269, 27.838524>,  <39.526279, 31.788408, 27.863136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577663, 31.555269, 27.838524>,  <39.663303, 31.166704, 27.797504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577663, 31.555269, 27.838524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534150, -0.028531, -0.844908,
		-0.817829, -0.235672, 0.524989,
		-0.214100, 0.971414, 0.102551,
		39.513432, 31.846693, 27.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906948, 31.179899, 27.730347>,  <39.663303, 31.166704, 27.797504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906948, 31.179899, 27.730347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041023, 31.548176, 27.650373>,  <39.121468, 31.769142, 27.602390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041023, 31.548176, 27.650373>,  <38.906948, 31.179899, 27.730347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041023, 31.548176, 27.650373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615306, 0.053219, -0.786490,
		-0.713475, 0.386643, 0.584346,
		0.335189, 0.920693, -0.199933,
		39.141579, 31.824383, 27.590393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294651, 31.671370, 27.717056>,  <38.906948, 31.179899, 27.730347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294651, 31.671370, 27.717056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573147, 31.880346, 27.520157>,  <38.740242, 32.005733, 27.402018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573147, 31.880346, 27.520157>,  <38.294651, 31.671370, 27.717056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573147, 31.880346, 27.520157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594406, 0.035177, -0.803395,
		-0.402411, 0.851949, 0.335034,
		0.696238, 0.522441, -0.492248,
		38.782017, 32.037079, 27.372482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943653, 32.052387, 27.250679>,  <38.294651, 31.671370, 27.717056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943653, 32.052387, 27.250679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302113, 32.098366, 27.079237>,  <38.517189, 32.125954, 26.976372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.302113, 32.098366, 27.079237>,  <37.943653, 32.052387, 27.250679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302113, 32.098366, 27.079237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422581, -0.073723, -0.903322,
		-0.135429, 0.990633, -0.017495,
		0.896150, 0.114943, -0.428607,
		38.570957, 32.132847, 26.950655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733932, 32.640884, 27.393448>,  <37.943653, 32.052387, 27.250679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733932, 32.640884, 27.393448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347733, 32.741127, 27.421768>,  <37.116013, 32.801273, 27.438761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347733, 32.741127, 27.421768>,  <37.733932, 32.640884, 27.393448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347733, 32.741127, 27.421768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059624, -0.051920, 0.996870,
		0.253503, 0.966695, 0.035186,
		-0.965495, 0.250611, 0.070800,
		37.058083, 32.816311, 27.443008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671158, 33.223305, 27.821230>,  <37.733932, 32.640884, 27.393448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671158, 33.223305, 27.821230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.313126, 33.045422, 27.834253>,  <37.098305, 32.938690, 27.842068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.313126, 33.045422, 27.834253>,  <37.671158, 33.223305, 27.821230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313126, 33.045422, 27.834253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006353, 0.085728, 0.996298,
		-0.445855, 0.891562, -0.079559,
		-0.895083, -0.444710, 0.032558,
		37.044601, 32.912010, 27.844021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258526, 33.565750, 28.361506>,  <37.671158, 33.223305, 27.821230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258526, 33.565750, 28.361506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068974, 33.219902, 28.294737>,  <36.955242, 33.012394, 28.254675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068974, 33.219902, 28.294737>,  <37.258526, 33.565750, 28.361506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068974, 33.219902, 28.294737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135301, -0.115817, 0.984012,
		-0.870131, 0.488893, -0.062100,
		-0.473884, -0.864622, -0.166923,
		36.926807, 32.960514, 28.244659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766945, 33.582600, 28.868774>,  <37.258526, 33.565750, 28.361506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766945, 33.582600, 28.868774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775288, 33.192696, 28.779865>,  <36.780293, 32.958752, 28.726521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.775288, 33.192696, 28.779865>,  <36.766945, 33.582600, 28.868774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775288, 33.192696, 28.779865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014959, -0.222598, 0.974796,
		-0.999671, -0.017009, -0.019225,
		0.020860, -0.974762, -0.222271,
		36.781544, 32.900269, 28.713184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136513, 33.214294, 29.170921>,  <36.766945, 33.582600, 28.868774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136513, 33.214294, 29.170921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424099, 32.939140, 29.131107>,  <36.596649, 32.774048, 29.107218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.424099, 32.939140, 29.131107>,  <36.136513, 33.214294, 29.170921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424099, 32.939140, 29.131107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215812, -0.357066, 0.908806,
		-0.660697, -0.631915, -0.405171,
		0.718961, -0.687886, -0.099537,
		36.639786, 32.732773, 29.101246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794273, 32.634106, 29.389261>,  <36.136513, 33.214294, 29.170921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794273, 32.634106, 29.389261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186962, 32.558990, 29.401646>,  <36.422577, 32.513920, 29.409077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186962, 32.558990, 29.401646>,  <35.794273, 32.634106, 29.389261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186962, 32.558990, 29.401646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115540, -0.458745, 0.881024,
		-0.151245, -0.868497, -0.472057,
		0.981721, -0.187792, 0.030963,
		36.481480, 32.502651, 29.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850113, 31.966991, 29.687052>,  <35.794273, 32.634106, 29.389261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850113, 31.966991, 29.687052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236275, 32.067551, 29.714725>,  <36.467972, 32.127888, 29.731331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.236275, 32.067551, 29.714725>,  <35.850113, 31.966991, 29.687052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236275, 32.067551, 29.714725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057452, -0.463903, 0.884021,
		0.254339, -0.849466, -0.462299,
		0.965407, 0.251401, 0.069185,
		36.525898, 32.142971, 29.735481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305923, 31.353590, 29.714592>,  <35.850113, 31.966991, 29.687052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305923, 31.353590, 29.714592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.476074, 31.671013, 29.888638>,  <36.578163, 31.861465, 29.993065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.476074, 31.671013, 29.888638>,  <36.305923, 31.353590, 29.714592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476074, 31.671013, 29.888638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017596, -0.487940, 0.872700,
		0.904845, -0.363570, -0.221522,
		0.425377, 0.793556, 0.435112,
		36.603687, 31.909081, 30.019171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913254, 31.083036, 30.095926>,  <36.305923, 31.353590, 29.714592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913254, 31.083036, 30.095926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823994, 31.434116, 30.265560>,  <36.770439, 31.644764, 30.367340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.823994, 31.434116, 30.265560>,  <36.913254, 31.083036, 30.095926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823994, 31.434116, 30.265560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154082, -0.397824, 0.904431,
		0.962530, 0.267165, -0.046464,
		-0.223148, 0.877701, 0.424083,
		36.757050, 31.697426, 30.392784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280205, 31.068018, 30.674665>,  <36.913254, 31.083036, 30.095926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280205, 31.068018, 30.674665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040932, 31.381159, 30.743156>,  <36.897369, 31.569044, 30.784250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040932, 31.381159, 30.743156>,  <37.280205, 31.068018, 30.674665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040932, 31.381159, 30.743156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027878, -0.193210, 0.980761,
		0.800874, 0.591449, 0.093751,
		-0.598183, 0.782853, 0.171226,
		36.861477, 31.616014, 30.794523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586166, 31.304659, 31.294731>,  <37.280205, 31.068018, 30.674665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586166, 31.304659, 31.294731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 31.435108, 31.287874>,  <36.981258, 31.513378, 31.283760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.208099, 31.435108, 31.287874>,  <37.586166, 31.304659, 31.294731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208099, 31.435108, 31.287874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085777, -0.197271, 0.976589,
		0.315107, 0.924515, 0.214429,
		-0.945172, 0.326124, -0.017141,
		36.924549, 31.532946, 31.282732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469925, 31.815910, 31.843472>,  <37.586166, 31.304659, 31.294731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469925, 31.815910, 31.843472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.097710, 31.701155, 31.752438>,  <36.874382, 31.632301, 31.697817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.097710, 31.701155, 31.752438>,  <37.469925, 31.815910, 31.843472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097710, 31.701155, 31.752438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240525, 0.010198, 0.970590,
		-0.276130, 0.957910, -0.078494,
		-0.930537, -0.286889, -0.227585,
		36.818550, 31.615088, 31.684162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.350368, 33.538177, 23.624117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979954, 33.408394, 23.701244>,  <36.757706, 33.330524, 23.747520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979954, 33.408394, 23.701244>,  <37.350368, 33.538177, 23.624117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979954, 33.408394, 23.701244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187267, 0.048568, 0.981108,
		-0.327692, 0.944653, 0.015784,
		-0.926040, -0.324457, 0.192817,
		36.702141, 33.311058, 23.759090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986462, 33.926907, 24.268019>,  <37.350368, 33.538177, 23.624117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986462, 33.926907, 24.268019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761009, 33.597694, 24.239899>,  <36.625736, 33.400169, 24.223026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761009, 33.597694, 24.239899>,  <36.986462, 33.926907, 24.268019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761009, 33.597694, 24.239899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064841, -0.040758, 0.997063,
		-0.823475, 0.566538, -0.030393,
		-0.563635, -0.823027, -0.070298,
		36.591919, 33.350788, 24.218809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485580, 34.081181, 24.703444>,  <36.986462, 33.926907, 24.268019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485580, 34.081181, 24.703444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521618, 33.682903, 24.694725>,  <36.543240, 33.443935, 24.689493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521618, 33.682903, 24.694725>,  <36.485580, 34.081181, 24.703444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521618, 33.682903, 24.694725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308550, -0.048717, 0.949960,
		-0.946931, -0.078864, -0.311611,
		0.090098, -0.995694, -0.021798,
		36.548649, 33.384193, 24.688185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865448, 33.878895, 25.065050>,  <36.485580, 34.081181, 24.703444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865448, 33.878895, 25.065050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123711, 33.573601, 25.055298>,  <36.278667, 33.390423, 25.049446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123711, 33.573601, 25.055298>,  <35.865448, 33.878895, 25.065050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123711, 33.573601, 25.055298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102723, -0.118444, 0.987633,
		-0.756688, -0.635167, -0.154876,
		0.645656, -0.763239, -0.024379,
		36.317406, 33.344627, 25.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556469, 33.227642, 25.532152>,  <35.865448, 33.878895, 25.065050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556469, 33.227642, 25.532152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952541, 33.196644, 25.485622>,  <36.190186, 33.178047, 25.457705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952541, 33.196644, 25.485622>,  <35.556469, 33.227642, 25.532152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952541, 33.196644, 25.485622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103758, -0.150117, 0.983209,
		-0.093650, -0.985627, -0.140603,
		0.990183, -0.077489, -0.116325,
		36.249596, 33.173397, 25.450726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703510, 32.565842, 25.779354>,  <35.556469, 33.227642, 25.532152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703510, 32.565842, 25.779354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037487, 32.784740, 25.802668>,  <36.237873, 32.916080, 25.816656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037487, 32.784740, 25.802668>,  <35.703510, 32.565842, 25.779354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037487, 32.784740, 25.802668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205812, -0.408714, 0.889153,
		0.510405, -0.730396, -0.453882,
		0.834942, 0.547243, 0.058286,
		36.287971, 32.948914, 25.820154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975288, 32.223583, 26.238691>,  <35.703510, 32.565842, 25.779354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975288, 32.223583, 26.238691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241302, 32.522305, 26.237783>,  <36.400913, 32.701538, 26.237238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241302, 32.522305, 26.237783>,  <35.975288, 32.223583, 26.238691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241302, 32.522305, 26.237783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321724, -0.283753, 0.903315,
		0.673958, -0.601469, -0.428972,
		0.665038, 0.746807, -0.002269,
		36.440815, 32.746346, 26.237103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504986, 32.013481, 26.597282>,  <35.975288, 32.223583, 26.238691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504986, 32.013481, 26.597282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580601, 32.406147, 26.607014>,  <36.625969, 32.641747, 26.612852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580601, 32.406147, 26.607014>,  <36.504986, 32.013481, 26.597282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580601, 32.406147, 26.607014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203036, -0.063313, 0.977122,
		0.960750, -0.179778, -0.211282,
		0.189042, 0.981668, 0.024326,
		36.637314, 32.700645, 26.614311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263885, 32.139305, 26.807745>,  <36.504986, 32.013481, 26.597282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263885, 32.139305, 26.807745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023941, 32.450138, 26.883957>,  <36.879974, 32.636639, 26.929684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023941, 32.450138, 26.883957>,  <37.263885, 32.139305, 26.807745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023941, 32.450138, 26.883957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100359, -0.163176, 0.981479,
		0.793782, 0.607877, 0.019896,
		-0.599865, 0.777084, 0.190531,
		36.843983, 32.683262, 26.941116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880367, 32.562866, 26.673119>,  <37.263885, 32.139305, 26.807745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880367, 32.562866, 26.673119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231773, 32.392334, 26.586903>,  <38.442616, 32.290012, 26.535173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231773, 32.392334, 26.586903>,  <37.880367, 32.562866, 26.673119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231773, 32.392334, 26.586903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241774, -0.007656, -0.970302,
		0.412021, 0.904534, -0.109802,
		0.878512, -0.426333, -0.215538,
		38.495327, 32.264435, 26.522242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095676, 32.963737, 26.091621>,  <37.880367, 32.562866, 26.673119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095676, 32.963737, 26.091621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290726, 32.614517, 26.091612>,  <38.407757, 32.404984, 26.091606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290726, 32.614517, 26.091612>,  <38.095676, 32.963737, 26.091621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290726, 32.614517, 26.091612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130866, -0.073063, -0.988704,
		0.863191, 0.482118, -0.149881,
		0.487622, -0.873055, -0.000026,
		38.437012, 32.352600, 26.091604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581779, 32.967728, 25.541107>,  <38.095676, 32.963737, 26.091621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581779, 32.967728, 25.541107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574608, 32.577564, 25.628975>,  <38.570305, 32.343468, 25.681696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574608, 32.577564, 25.628975>,  <38.581779, 32.967728, 25.541107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574608, 32.577564, 25.628975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159759, -0.219677, -0.962403,
		0.986993, 0.017844, 0.159769,
		-0.017925, -0.975409, 0.219671,
		38.569229, 32.284943, 25.694876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258461, 32.677330, 25.292303>,  <38.581779, 32.967728, 25.541107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258461, 32.677330, 25.292303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988468, 32.383343, 25.318298>,  <38.826473, 32.206951, 25.333895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988468, 32.383343, 25.318298>,  <39.258461, 32.677330, 25.292303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988468, 32.383343, 25.318298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212834, -0.278282, -0.936622,
		0.706473, -0.618369, 0.344261,
		-0.674980, -0.734968, 0.064989,
		38.785973, 32.162853, 25.337795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591000, 31.997793, 25.169359>,  <39.258461, 32.677330, 25.292303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591000, 31.997793, 25.169359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203552, 31.929972, 25.096663>,  <38.971085, 31.889278, 25.053045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203552, 31.929972, 25.096663>,  <39.591000, 31.997793, 25.169359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203552, 31.929972, 25.096663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228428, -0.319034, -0.919803,
		0.097977, -0.932453, 0.347753,
		-0.968618, -0.169556, -0.181740,
		38.912968, 31.879105, 25.042141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588863, 31.317081, 24.667521>,  <39.591000, 31.997793, 25.169359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588863, 31.317081, 24.667521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215527, 31.458174, 24.640814>,  <38.991524, 31.542830, 24.624790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215527, 31.458174, 24.640814>,  <39.588863, 31.317081, 24.667521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215527, 31.458174, 24.640814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056078, -0.326949, -0.943377,
		-0.354595, -0.876744, 0.324935,
		-0.933337, 0.352738, -0.066768,
		38.935524, 31.563993, 24.620785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147743, 30.735491, 24.482288>,  <39.588863, 31.317081, 24.667521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147743, 30.735491, 24.482288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969799, 31.073833, 24.364557>,  <38.863033, 31.276838, 24.293919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969799, 31.073833, 24.364557>,  <39.147743, 30.735491, 24.482288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969799, 31.073833, 24.364557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077148, -0.363608, -0.928352,
		-0.892272, -0.390278, 0.227010,
		-0.444857, 0.845856, -0.294328,
		38.836342, 31.327591, 24.276258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603451, 30.541706, 24.114918>,  <39.147743, 30.735491, 24.482288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603451, 30.541706, 24.114918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621929, 30.921907, 23.992012>,  <38.633018, 31.150028, 23.918268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621929, 30.921907, 23.992012>,  <38.603451, 30.541706, 24.114918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621929, 30.921907, 23.992012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005858, -0.307847, -0.951418,
		-0.998915, 0.042155, -0.019791,
		0.046200, 0.950502, -0.307266,
		38.635788, 31.207058, 23.899832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075420, 30.638060, 23.536766>,  <38.603451, 30.541706, 24.114918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075420, 30.638060, 23.536766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329109, 30.947245, 23.529913>,  <38.481323, 31.132755, 23.525801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329109, 30.947245, 23.529913>,  <38.075420, 30.638060, 23.536766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329109, 30.947245, 23.529913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035079, 0.006629, -0.999363,
		-0.772356, 0.634418, 0.031318,
		0.634221, 0.772962, -0.017135,
		38.519375, 31.179132, 23.524773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742367, 31.199135, 23.106340>,  <38.075420, 30.638060, 23.536766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742367, 31.199135, 23.106340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140526, 31.237413, 23.108395>,  <38.379421, 31.260380, 23.109627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140526, 31.237413, 23.108395>,  <37.742367, 31.199135, 23.106340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140526, 31.237413, 23.108395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003829, 0.093284, -0.995632,
		-0.095758, 0.991030, 0.093221,
		0.995397, 0.095697, 0.005138,
		38.439144, 31.266123, 23.109936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820145, 31.715416, 22.689259>,  <37.742367, 31.199135, 23.106340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820145, 31.715416, 22.689259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170151, 31.521776, 22.688799>,  <38.380154, 31.405592, 22.688522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170151, 31.521776, 22.688799>,  <37.820145, 31.715416, 22.689259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170151, 31.521776, 22.688799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006522, -0.009413, -0.999934,
		0.484057, 0.874963, -0.011394,
		0.875012, -0.484099, -0.001150,
		38.432655, 31.376547, 22.688454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195633, 32.079571, 22.236855>,  <37.820145, 31.715416, 22.689259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195633, 32.079571, 22.236855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369068, 31.722094, 22.283005>,  <38.473129, 31.507607, 22.310694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369068, 31.722094, 22.283005>,  <38.195633, 32.079571, 22.236855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369068, 31.722094, 22.283005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174613, -0.042280, -0.983729,
		0.884030, 0.446682, 0.137718,
		0.433592, -0.893693, 0.115373,
		38.499146, 31.453985, 22.317617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789394, 32.097412, 21.859604>,  <38.195633, 32.079571, 22.236855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789394, 32.097412, 21.859604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677559, 31.715691, 21.901804>,  <38.610458, 31.486658, 21.927124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677559, 31.715691, 21.901804>,  <38.789394, 32.097412, 21.859604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677559, 31.715691, 21.901804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033698, -0.100060, -0.994411,
		0.959528, -0.281581, -0.004182,
		-0.279589, -0.954306, 0.105499,
		38.593681, 31.429399, 21.933455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946266, 31.844374, 21.149240>,  <38.789394, 32.097412, 21.859604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946266, 31.844374, 21.149240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761425, 31.541010, 21.333097>,  <38.650520, 31.358992, 21.443411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761425, 31.541010, 21.333097>,  <38.946266, 31.844374, 21.149240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761425, 31.541010, 21.333097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203844, -0.413584, -0.887353,
		0.863079, -0.503747, 0.036523,
		-0.462107, -0.758411, 0.459642,
		38.622791, 31.313486, 21.470989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.585585, 29.831150, 22.637972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888042, 30.092848, 22.643814>,  <32.069515, 30.249866, 22.647320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888042, 30.092848, 22.643814>,  <31.585585, 29.831150, 22.637972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888042, 30.092848, 22.643814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208717, -0.262255, 0.942157,
		0.620230, -0.709357, -0.334854,
		0.756143, 0.654244, 0.014603,
		32.114883, 30.289122, 22.648195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200047, 29.422632, 22.960949>,  <31.585585, 29.831150, 22.637972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200047, 29.422632, 22.960949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296009, 29.809593, 22.993399>,  <32.353588, 30.041769, 23.012869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296009, 29.809593, 22.993399>,  <32.200047, 29.422632, 22.960949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296009, 29.809593, 22.993399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253607, -0.143116, 0.956661,
		0.937085, -0.208936, -0.279674,
		0.239907, 0.967400, 0.081124,
		32.367981, 30.099813, 23.017736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818897, 29.404564, 23.299040>,  <32.200047, 29.422632, 22.960949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818897, 29.404564, 23.299040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.676743, 29.774416, 23.353823>,  <32.591450, 29.996328, 23.386692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.676743, 29.774416, 23.353823>,  <32.818897, 29.404564, 23.299040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676743, 29.774416, 23.353823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314544, -0.019675, 0.949039,
		0.880206, 0.380353, -0.283845,
		-0.355385, 0.924632, 0.136956,
		32.570126, 30.051805, 23.394909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343197, 29.826450, 23.718647>,  <32.818897, 29.404564, 23.299040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343197, 29.826450, 23.718647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.001659, 30.026241, 23.777275>,  <32.796738, 30.146116, 23.812452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.001659, 30.026241, 23.777275>,  <33.343197, 29.826450, 23.718647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001659, 30.026241, 23.777275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221663, 0.094114, 0.970571,
		0.470982, 0.861201, -0.191073,
		-0.853839, 0.499475, 0.146570,
		32.745506, 30.176085, 23.821247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508411, 30.514391, 24.034933>,  <33.343197, 29.826450, 23.718647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508411, 30.514391, 24.034933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.126915, 30.449284, 24.136036>,  <32.898018, 30.410219, 24.196697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.126915, 30.449284, 24.136036>,  <33.508411, 30.514391, 24.034933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126915, 30.449284, 24.136036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248147, 0.048397, 0.967513,
		-0.169711, 0.985477, -0.005768,
		-0.953741, -0.162766, 0.252756,
		32.840794, 30.400454, 24.211863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137253, 31.134214, 24.437183>,  <33.508411, 30.514391, 24.034933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137253, 31.134214, 24.437183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.921314, 30.805710, 24.511044>,  <32.791752, 30.608608, 24.555361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.921314, 30.805710, 24.511044>,  <33.137253, 31.134214, 24.437183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921314, 30.805710, 24.511044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088803, 0.162574, 0.982692,
		-0.837066, 0.546901, -0.014835,
		-0.539847, -0.821260, 0.184652,
		32.759361, 30.559332, 24.566439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904022, 31.310617, 25.137451>,  <33.137253, 31.134214, 24.437183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904022, 31.310617, 25.137451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791214, 30.928841, 25.098444>,  <32.723530, 30.699776, 25.075041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.791214, 30.928841, 25.098444>,  <32.904022, 31.310617, 25.137451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791214, 30.928841, 25.098444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056381, -0.117954, 0.991417,
		-0.957751, 0.274099, 0.087077,
		-0.282017, -0.954441, -0.097516,
		32.706608, 30.642508, 25.069189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400070, 31.217394, 25.627779>,  <32.904022, 31.310617, 25.137451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400070, 31.217394, 25.627779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.541119, 30.854904, 25.534473>,  <32.625748, 30.637409, 25.478489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.541119, 30.854904, 25.534473>,  <32.400070, 31.217394, 25.627779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541119, 30.854904, 25.534473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182922, -0.177715, 0.966932,
		-0.917714, -0.383629, 0.103103,
		0.352620, -0.906227, -0.233265,
		32.646904, 30.583036, 25.464495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964249, 30.674543, 25.979670>,  <32.400070, 31.217394, 25.627779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964249, 30.674543, 25.979670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.308262, 30.487791, 25.897339>,  <32.514671, 30.375740, 25.847940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.308262, 30.487791, 25.897339>,  <31.964249, 30.674543, 25.979670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308262, 30.487791, 25.897339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130286, -0.189074, 0.973281,
		-0.493321, -0.863872, -0.101782,
		0.860035, -0.466880, -0.205824,
		32.566273, 30.347727, 25.835592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929470, 30.018381, 26.350536>,  <31.964249, 30.674543, 25.979670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929470, 30.018381, 26.350536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.320778, 30.078079, 26.292963>,  <32.555561, 30.113897, 26.258419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.320778, 30.078079, 26.292963>,  <31.929470, 30.018381, 26.350536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320778, 30.078079, 26.292963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155622, -0.069776, 0.985349,
		0.137015, -0.986335, -0.091486,
		0.978269, 0.149245, -0.143935,
		32.614258, 30.122852, 26.249783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178303, 29.460104, 26.602154>,  <31.929470, 30.018381, 26.350536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178303, 29.460104, 26.602154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.483212, 29.718493, 26.618494>,  <32.666157, 29.873526, 26.628298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.483212, 29.718493, 26.618494>,  <32.178303, 29.460104, 26.602154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483212, 29.718493, 26.618494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257405, -0.360445, 0.896561,
		0.593878, -0.672904, -0.441032,
		0.762267, 0.645972, 0.040851,
		32.711891, 29.912285, 26.630749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571342, 29.090704, 26.996649>,  <32.178303, 29.460104, 26.602154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571342, 29.090704, 26.996649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723289, 29.460518, 27.008869>,  <32.814457, 29.682407, 27.016201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.723289, 29.460518, 27.008869>,  <32.571342, 29.090704, 26.996649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723289, 29.460518, 27.008869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226390, -0.124936, 0.965991,
		0.896910, -0.360033, -0.256765,
		0.379868, 0.924536, 0.030549,
		32.837250, 29.737879, 27.018034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302967, 29.023724, 27.079603>,  <32.571342, 29.090704, 26.996649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302967, 29.023724, 27.079603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.154514, 29.374269, 27.202398>,  <33.065441, 29.584597, 27.276075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.154514, 29.374269, 27.202398>,  <33.302967, 29.023724, 27.079603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154514, 29.374269, 27.202398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263801, -0.217468, 0.939743,
		0.890319, 0.429754, -0.150476,
		-0.371135, 0.876367, 0.306985,
		33.043175, 29.637180, 27.294495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786419, 29.176083, 27.525528>,  <33.302967, 29.023724, 27.079603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786419, 29.176083, 27.525528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487110, 29.414900, 27.641201>,  <33.307526, 29.558189, 27.710606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.487110, 29.414900, 27.641201>,  <33.786419, 29.176083, 27.525528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487110, 29.414900, 27.641201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281352, -0.109160, 0.953376,
		0.600774, 0.794748, -0.086298,
		-0.748273, 0.597043, 0.289185,
		33.262627, 29.594013, 27.727957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568043, 29.302780, 27.372450>,  <33.786419, 29.176083, 27.525528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568043, 29.302780, 27.372450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647552, 28.917894, 27.298014>,  <34.695259, 28.686962, 27.253351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647552, 28.917894, 27.298014>,  <34.568043, 29.302780, 27.372450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647552, 28.917894, 27.298014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348190, 0.108158, -0.931163,
		0.916108, 0.249885, -0.313535,
		0.198772, -0.962216, -0.186092,
		34.707184, 28.629230, 27.242186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034443, 29.252874, 26.721138>,  <34.568043, 29.302780, 27.372450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034443, 29.252874, 26.721138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852795, 28.898293, 26.756865>,  <34.743805, 28.685543, 26.778299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852795, 28.898293, 26.756865>,  <35.034443, 29.252874, 26.721138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852795, 28.898293, 26.756865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308388, 0.062345, -0.949216,
		0.835867, -0.458599, -0.301683,
		-0.454118, -0.886454, 0.089315,
		34.716560, 28.632357, 26.783659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094734, 29.000893, 26.075840>,  <35.034443, 29.252874, 26.721138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094734, 29.000893, 26.075840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811367, 28.772287, 26.241495>,  <34.641346, 28.635124, 26.340889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811367, 28.772287, 26.241495>,  <35.094734, 29.000893, 26.075840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811367, 28.772287, 26.241495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332360, -0.247513, -0.910096,
		0.622638, -0.782374, -0.014606,
		-0.708420, -0.571515, 0.414140,
		34.598843, 28.600834, 26.365738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191910, 28.278284, 25.809950>,  <35.094734, 29.000893, 26.075840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191910, 28.278284, 25.809950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805534, 28.287107, 25.913088>,  <34.573711, 28.292402, 25.974972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.805534, 28.287107, 25.913088>,  <35.191910, 28.278284, 25.809950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805534, 28.287107, 25.913088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236018, -0.483764, -0.842774,
		0.106145, -0.874921, 0.472490,
		-0.965934, 0.022060, 0.257846,
		34.515755, 28.293726, 25.990442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935917, 27.712366, 25.530287>,  <35.191910, 28.278284, 25.809950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935917, 27.712366, 25.530287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596664, 27.896141, 25.635811>,  <34.393112, 28.006407, 25.699125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.596664, 27.896141, 25.635811>,  <34.935917, 27.712366, 25.530287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596664, 27.896141, 25.635811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436798, -0.324610, -0.838950,
		-0.299805, -0.826771, 0.475990,
		-0.848130, 0.459433, 0.263812,
		34.342224, 28.033974, 25.714952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451847, 27.177420, 25.449430>,  <34.935917, 27.712366, 25.530287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451847, 27.177420, 25.449430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.293716, 27.541912, 25.403181>,  <34.198837, 27.760609, 25.375431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.293716, 27.541912, 25.403181>,  <34.451847, 27.177420, 25.449430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293716, 27.541912, 25.403181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293053, -0.244422, -0.924326,
		-0.870537, -0.331530, 0.363667,
		-0.395330, 0.911233, -0.115623,
		34.175117, 27.815283, 25.368494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840103, 27.057463, 25.069843>,  <34.451847, 27.177420, 25.449430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840103, 27.057463, 25.069843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916763, 27.444780, 25.005751>,  <33.962761, 27.677172, 24.967295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916763, 27.444780, 25.005751>,  <33.840103, 27.057463, 25.069843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916763, 27.444780, 25.005751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311648, -0.094770, -0.945460,
		-0.930669, 0.231135, 0.283604,
		0.191652, 0.968295, -0.160232,
		33.974258, 27.735270, 24.957682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222080, 27.427269, 24.617933>,  <33.840103, 27.057463, 25.069843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222080, 27.427269, 24.617933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532204, 27.677729, 24.584888>,  <33.718277, 27.828005, 24.565062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532204, 27.677729, 24.584888>,  <33.222080, 27.427269, 24.617933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532204, 27.677729, 24.584888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267118, 0.206566, -0.941264,
		-0.572309, 0.751841, 0.327410,
		0.775313, 0.626151, -0.082610,
		33.764797, 27.865574, 24.560106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961090, 28.056511, 24.356289>,  <33.222080, 27.427269, 24.617933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961090, 28.056511, 24.356289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349277, 28.080893, 24.262930>,  <33.582191, 28.095522, 24.206915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349277, 28.080893, 24.262930>,  <32.961090, 28.056511, 24.356289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349277, 28.080893, 24.262930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241227, 0.242880, -0.939584,
		-0.000585, 0.968139, 0.250412,
		0.970468, 0.060956, -0.233400,
		33.640419, 28.099180, 24.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074627, 28.587376, 23.803101>,  <32.961090, 28.056511, 24.356289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074627, 28.587376, 23.803101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.430435, 28.404915, 23.792711>,  <33.643921, 28.295439, 23.786478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.430435, 28.404915, 23.792711>,  <33.074627, 28.587376, 23.803101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430435, 28.404915, 23.792711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022871, 0.101237, -0.994599,
		0.456316, 0.884126, 0.100485,
		0.889524, -0.456150, -0.025975,
		33.697292, 28.268070, 23.784918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625946, 29.019709, 23.509190>,  <33.074627, 28.587376, 23.803101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625946, 29.019709, 23.509190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763191, 28.649073, 23.447609>,  <33.845539, 28.426691, 23.410660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763191, 28.649073, 23.447609>,  <33.625946, 29.019709, 23.509190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763191, 28.649073, 23.447609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225026, 0.240216, -0.944277,
		0.911942, 0.289350, 0.290928,
		0.343112, -0.926592, -0.153952,
		33.866123, 28.371096, 23.401423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307274, 29.058355, 23.124969>,  <33.625946, 29.019709, 23.509190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307274, 29.058355, 23.124969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161392, 28.693413, 23.050564>,  <34.073864, 28.474447, 23.005920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161392, 28.693413, 23.050564>,  <34.307274, 29.058355, 23.124969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161392, 28.693413, 23.050564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085466, 0.166129, -0.982393,
		0.927193, -0.374180, 0.017387,
		-0.364703, -0.912354, -0.186013,
		34.051983, 28.419706, 22.994761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611389, 28.893042, 22.516388>,  <34.307274, 29.058355, 23.124969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611389, 28.893042, 22.516388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330116, 28.608662, 22.520124>,  <34.161354, 28.438034, 22.522366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.330116, 28.608662, 22.520124>,  <34.611389, 28.893042, 22.516388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330116, 28.608662, 22.520124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188451, 0.173694, -0.966601,
		0.685582, -0.681455, -0.256117,
		-0.703181, -0.710950, 0.009339,
		34.119164, 28.395376, 22.522926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831501, 28.359182, 21.972502>,  <34.611389, 28.893042, 22.516388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831501, 28.359182, 21.972502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442001, 28.345032, 22.062441>,  <34.208302, 28.336542, 22.116405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442001, 28.345032, 22.062441>,  <34.831501, 28.359182, 21.972502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442001, 28.345032, 22.062441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227146, 0.214454, -0.949955,
		-0.014617, -0.976093, -0.216860,
		-0.973751, -0.035373, 0.224850,
		34.149876, 28.334419, 22.129896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031364, 27.584272, 21.820841>,  <34.831501, 28.359182, 21.972502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031364, 27.584272, 21.820841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429420, 27.623451, 21.816681>,  <35.668255, 27.646959, 21.814186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429420, 27.623451, 21.816681>,  <35.031364, 27.584272, 21.820841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429420, 27.623451, 21.816681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018551, -0.082694, 0.996402,
		0.096736, -0.991750, -0.084109,
		0.995137, 0.097948, -0.010399,
		35.727962, 27.652836, 21.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313713, 27.076109, 22.255478>,  <35.031364, 27.584272, 21.820841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313713, 27.076109, 22.255478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659897, 27.276470, 22.251867>,  <35.867607, 27.396687, 22.249701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659897, 27.276470, 22.251867>,  <35.313713, 27.076109, 22.255478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659897, 27.276470, 22.251867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097220, -0.150247, 0.983857,
		0.491463, -0.852361, -0.178730,
		0.865455, 0.500906, -0.009026,
		35.919533, 27.426743, 22.249159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732445, 26.694069, 22.714224>,  <35.313713, 27.076109, 22.255478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732445, 26.694069, 22.714224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876846, 27.066479, 22.692785>,  <35.963486, 27.289925, 22.679922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876846, 27.066479, 22.692785>,  <35.732445, 26.694069, 22.714224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876846, 27.066479, 22.692785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312635, -0.066677, 0.947530,
		0.878599, -0.358817, -0.315142,
		0.361003, 0.931023, -0.053596,
		35.985146, 27.345785, 22.676706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373913, 26.648581, 22.918762>,  <35.732445, 26.694069, 22.714224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373913, 26.648581, 22.918762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323666, 27.036087, 23.004286>,  <36.293518, 27.268591, 23.055599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323666, 27.036087, 23.004286>,  <36.373913, 26.648581, 22.918762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323666, 27.036087, 23.004286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487332, -0.127463, 0.863863,
		0.864133, 0.212713, -0.456099,
		-0.125619, 0.968765, 0.213807,
		36.285980, 27.326717, 23.068428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959557, 26.803377, 23.237133>,  <36.373913, 26.648581, 22.918762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959557, 26.803377, 23.237133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696804, 27.089855, 23.331434>,  <36.539154, 27.261742, 23.388016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696804, 27.089855, 23.331434>,  <36.959557, 26.803377, 23.237133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696804, 27.089855, 23.331434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443154, 0.113749, 0.889199,
		0.610022, 0.688570, -0.392103,
		-0.656877, 0.716193, 0.235753,
		36.499741, 27.304714, 23.402161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290382, 27.405285, 23.298847>,  <36.959557, 26.803377, 23.237133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290382, 27.405285, 23.298847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955303, 27.437796, 23.514868>,  <36.754257, 27.457302, 23.644480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955303, 27.437796, 23.514868>,  <37.290382, 27.405285, 23.298847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955303, 27.437796, 23.514868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544358, 0.203910, 0.813692,
		-0.043988, 0.975610, -0.215059,
		-0.837699, 0.081276, 0.540051,
		36.703995, 27.462179, 23.676884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383472, 27.908381, 23.807932>,  <37.290382, 27.405285, 23.298847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383472, 27.908381, 23.807932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080669, 27.688469, 23.949175>,  <36.898987, 27.556522, 24.033920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080669, 27.688469, 23.949175>,  <37.383472, 27.908381, 23.807932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080669, 27.688469, 23.949175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387566, 0.057275, 0.920061,
		-0.526053, 0.833345, 0.169717,
		-0.757008, -0.549778, 0.353106,
		36.853565, 27.523535, 24.055107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215240, 28.275221, 24.396927>,  <37.383472, 27.908381, 23.807932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215240, 28.275221, 24.396927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021545, 27.932426, 24.467461>,  <36.905331, 27.726749, 24.509781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.021545, 27.932426, 24.467461>,  <37.215240, 28.275221, 24.396927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021545, 27.932426, 24.467461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289104, 0.033497, 0.956711,
		-0.825794, 0.514252, 0.231537,
		-0.484234, -0.856985, 0.176334,
		36.876274, 27.675331, 24.520361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887997, 28.342487, 25.073174>,  <37.215240, 28.275221, 24.396927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887997, 28.342487, 25.073174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.923004, 27.951754, 24.995058>,  <36.944008, 27.717314, 24.948189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.923004, 27.951754, 24.995058>,  <36.887997, 28.342487, 25.073174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923004, 27.951754, 24.995058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308092, -0.159888, 0.937825,
		-0.947322, -0.142246, 0.286961,
		0.087520, -0.976833, -0.195290,
		36.949261, 27.658703, 24.936470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647808, 28.124090, 25.623985>,  <36.887997, 28.342487, 25.073174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647808, 28.124090, 25.623985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849468, 27.818127, 25.463610>,  <36.970463, 27.634548, 25.367384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.849468, 27.818127, 25.463610>,  <36.647808, 28.124090, 25.623985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849468, 27.818127, 25.463610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503636, -0.116737, 0.855993,
		-0.701560, -0.633473, 0.326383,
		0.504147, -0.764908, -0.400937,
		37.000713, 27.588654, 25.343328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670944, 27.446678, 26.141981>,  <36.647808, 28.124090, 25.623985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670944, 27.446678, 26.141981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979977, 27.395441, 25.893236>,  <37.165398, 27.364698, 25.743990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979977, 27.395441, 25.893236>,  <36.670944, 27.446678, 26.141981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979977, 27.395441, 25.893236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587139, -0.228613, 0.776533,
		-0.241648, -0.965051, -0.101403,
		0.772576, -0.128110, -0.621863,
		37.211750, 27.357014, 25.706678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026829, 26.932217, 26.344114>,  <36.670944, 27.446678, 26.141981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026829, 26.932217, 26.344114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300297, 27.127451, 26.127090>,  <37.464378, 27.244591, 25.996876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300297, 27.127451, 26.127090>,  <37.026829, 26.932217, 26.344114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300297, 27.127451, 26.127090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676007, -0.143420, 0.722804,
		0.274975, -0.860932, -0.428000,
		0.683669, 0.488084, -0.542559,
		37.505398, 27.273876, 25.964323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630386, 26.480162, 26.371250>,  <37.026829, 26.932217, 26.344114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630386, 26.480162, 26.371250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753403, 26.848310, 26.274639>,  <37.827213, 27.069199, 26.216673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753403, 26.848310, 26.274639>,  <37.630386, 26.480162, 26.371250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753403, 26.848310, 26.274639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562669, 0.028793, 0.826181,
		0.767347, -0.389984, -0.509009,
		0.307541, 0.920371, -0.241527,
		37.845665, 27.124422, 26.202181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369816, 26.446312, 26.335676>,  <37.630386, 26.480162, 26.371250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369816, 26.446312, 26.335676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281746, 26.834824, 26.371756>,  <38.228905, 27.067930, 26.393404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.281746, 26.834824, 26.371756>,  <38.369816, 26.446312, 26.335676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281746, 26.834824, 26.371756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700499, 0.093086, 0.707556,
		0.678839, 0.218972, -0.700877,
		-0.220177, 0.971281, 0.090199,
		38.215694, 27.126207, 26.398815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.102097, 31.260101, 20.751467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765705, 31.179371, 20.952274>,  <38.563869, 31.130932, 21.072758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765705, 31.179371, 20.952274>,  <39.102097, 31.260101, 20.751467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765705, 31.179371, 20.952274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403035, -0.385366, -0.830094,
		0.360996, -0.900421, 0.242741,
		-0.840979, -0.201827, 0.502017,
		38.513412, 31.118822, 21.102879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886082, 30.665247, 20.586647>,  <39.102097, 31.260101, 20.751467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886082, 30.665247, 20.586647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543839, 30.827168, 20.715687>,  <38.338493, 30.924320, 20.793112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.543839, 30.827168, 20.715687>,  <38.886082, 30.665247, 20.586647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543839, 30.827168, 20.715687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437198, -0.231495, -0.869061,
		-0.277120, -0.884615, 0.375049,
		-0.855606, 0.404805, 0.322600,
		38.287155, 30.948608, 20.812468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355743, 30.301037, 20.204069>,  <38.886082, 30.665247, 20.586647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355743, 30.301037, 20.204069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152607, 30.609287, 20.358070>,  <38.030724, 30.794237, 20.450472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.152607, 30.609287, 20.358070>,  <38.355743, 30.301037, 20.204069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152607, 30.609287, 20.358070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695012, -0.102468, -0.711659,
		-0.508973, -0.628994, 0.587634,
		-0.507843, 0.770628, 0.385005,
		38.000256, 30.840475, 20.473572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783211, 30.073454, 20.260622>,  <38.355743, 30.301037, 20.204069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783211, 30.073454, 20.260622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769783, 30.469742, 20.207933>,  <37.761726, 30.707514, 20.176319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.769783, 30.469742, 20.207933>,  <37.783211, 30.073454, 20.260622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769783, 30.469742, 20.207933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593397, -0.125810, -0.795017,
		-0.804210, 0.051478, 0.592112,
		-0.033568, 0.990718, -0.131724,
		37.759712, 30.766956, 20.168417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088036, 30.228762, 20.240252>,  <37.783211, 30.073454, 20.260622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088036, 30.228762, 20.240252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.258072, 30.552984, 20.079109>,  <37.360092, 30.747519, 19.982424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.258072, 30.552984, 20.079109>,  <37.088036, 30.228762, 20.240252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258072, 30.552984, 20.079109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582520, -0.095672, -0.807166,
		-0.692797, 0.577792, 0.431496,
		0.425092, 0.810558, -0.402857,
		37.385601, 30.796152, 19.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554226, 30.640104, 20.040926>,  <37.088036, 30.228762, 20.240252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554226, 30.640104, 20.040926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.865589, 30.776428, 19.830048>,  <37.052406, 30.858223, 19.703520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.865589, 30.776428, 19.830048>,  <36.554226, 30.640104, 20.040926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865589, 30.776428, 19.830048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569388, 0.029648, -0.821534,
		-0.264357, 0.939664, 0.217132,
		0.778404, 0.340811, -0.527196,
		37.099110, 30.878672, 19.671888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231556, 31.067320, 19.587311>,  <36.554226, 30.640104, 20.040926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231556, 31.067320, 19.587311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591694, 30.987152, 19.432796>,  <36.807777, 30.939051, 19.340088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591694, 30.987152, 19.432796>,  <36.231556, 31.067320, 19.587311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591694, 30.987152, 19.432796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374906, 0.093516, -0.922334,
		0.220978, 0.975236, 0.009058,
		0.900341, -0.200420, -0.386287,
		36.861797, 30.927027, 19.316910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274113, 31.390215, 18.882475>,  <36.231556, 31.067320, 19.587311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274113, 31.390215, 18.882475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.566105, 31.118574, 18.851641>,  <36.741302, 30.955589, 18.833139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.566105, 31.118574, 18.851641>,  <36.274113, 31.390215, 18.882475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566105, 31.118574, 18.851641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209530, -0.115008, -0.971015,
		0.650554, 0.724977, -0.226246,
		0.729984, -0.679103, -0.077085,
		36.785099, 30.914843, 18.828516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873859, 31.694609, 18.483145>,  <36.274113, 31.390215, 18.882475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873859, 31.694609, 18.483145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952923, 31.305124, 18.437860>,  <37.000359, 31.071434, 18.410690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952923, 31.305124, 18.437860>,  <36.873859, 31.694609, 18.483145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952923, 31.305124, 18.437860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011696, 0.113141, -0.993510,
		0.980202, 0.197697, 0.010975,
		0.197655, -0.973712, -0.113213,
		37.012218, 31.013010, 18.403896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538460, 31.545187, 17.962305>,  <36.873859, 31.694609, 18.483145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538460, 31.545187, 17.962305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312473, 31.215164, 17.966206>,  <37.176884, 31.017151, 17.968546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312473, 31.215164, 17.966206>,  <37.538460, 31.545187, 17.962305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312473, 31.215164, 17.966206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146021, 0.088342, -0.985329,
		0.812093, -0.558098, -0.170386,
		-0.564962, -0.825059, 0.009752,
		37.142986, 30.967646, 17.969131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744530, 31.124229, 17.390081>,  <37.538460, 31.545187, 17.962305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744530, 31.124229, 17.390081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376122, 30.984884, 17.459785>,  <37.155075, 30.901278, 17.501608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376122, 30.984884, 17.459785>,  <37.744530, 31.124229, 17.390081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376122, 30.984884, 17.459785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126693, -0.155129, -0.979737,
		0.368336, -0.924434, 0.098741,
		-0.921019, -0.348363, 0.174259,
		37.099815, 30.880375, 17.512064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681332, 30.513039, 17.077507>,  <37.744530, 31.124229, 17.390081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681332, 30.513039, 17.077507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302654, 30.634121, 17.121588>,  <37.075447, 30.706770, 17.148037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302654, 30.634121, 17.121588>,  <37.681332, 30.513039, 17.077507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302654, 30.634121, 17.121588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112628, 0.009491, -0.993592,
		-0.301813, -0.953036, 0.025108,
		-0.946691, 0.302707, 0.110203,
		37.018646, 30.724934, 17.154648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278770, 30.084373, 16.661530>,  <37.681332, 30.513039, 17.077507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278770, 30.084373, 16.661530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052059, 30.409737, 16.713877>,  <36.916031, 30.604956, 16.745285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052059, 30.409737, 16.713877>,  <37.278770, 30.084373, 16.661530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052059, 30.409737, 16.713877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226510, -0.001124, -0.974008,
		-0.792120, -0.581691, 0.184882,
		-0.566779, 0.813409, 0.130869,
		36.882027, 30.653759, 16.753138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551418, 29.940020, 16.323751>,  <37.278770, 30.084373, 16.661530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551418, 29.940020, 16.323751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 30.330692, 16.354160>,  <36.679916, 30.565096, 16.372406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 30.330692, 16.354160>,  <36.551418, 29.940020, 16.323751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631729, 30.330692, 16.354160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358631, 0.145499, -0.922070,
		-0.911631, 0.157870, 0.379482,
		0.200781, 0.976682, 0.076024,
		36.691963, 30.623697, 16.376968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681252, 29.686811, 17.067410>,  <36.551418, 29.940020, 16.323751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681252, 29.686811, 17.067410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499783, 29.400682, 16.854807>,  <36.390903, 29.229006, 16.727245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499783, 29.400682, 16.854807>,  <36.681252, 29.686811, 17.067410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499783, 29.400682, 16.854807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097376, -0.553051, 0.827437,
		-0.885834, 0.427139, 0.181248,
		-0.453670, -0.715322, -0.531505,
		36.363682, 29.186085, 16.695356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104439, 29.608713, 17.375330>,  <36.681252, 29.686811, 17.067410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104439, 29.608713, 17.375330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184326, 29.271612, 17.175379>,  <36.232258, 29.069351, 17.055408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184326, 29.271612, 17.175379>,  <36.104439, 29.608713, 17.375330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184326, 29.271612, 17.175379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308349, -0.538292, 0.784323,
		-0.930072, -0.002505, -0.367368,
		0.199716, -0.842754, -0.499878,
		36.244240, 29.018785, 17.025415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493492, 29.162582, 17.522966>,  <36.104439, 29.608713, 17.375330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493492, 29.162582, 17.522966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766567, 28.901594, 17.391378>,  <35.930412, 28.745001, 17.312426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766567, 28.901594, 17.391378>,  <35.493492, 29.162582, 17.522966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766567, 28.901594, 17.391378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335714, -0.679942, 0.651901,
		-0.649023, -0.334607, -0.683233,
		0.682690, -0.652470, -0.328966,
		35.971375, 28.705853, 17.292688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104179, 28.556005, 17.530010>,  <35.493492, 29.162582, 17.522966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104179, 28.556005, 17.530010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491425, 28.456553, 17.517761>,  <35.723770, 28.396881, 17.510412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491425, 28.456553, 17.517761>,  <35.104179, 28.556005, 17.530010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491425, 28.456553, 17.517761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156710, -0.696442, 0.700294,
		-0.195442, -0.673165, -0.713198,
		0.968114, -0.248632, -0.030622,
		35.781860, 28.381964, 17.508574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147800, 27.809254, 17.564360>,  <35.104179, 28.556005, 17.530010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147800, 27.809254, 17.564360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509239, 27.915068, 17.699142>,  <35.726101, 27.978556, 17.780012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509239, 27.915068, 17.699142>,  <35.147800, 27.809254, 17.564360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509239, 27.915068, 17.699142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175777, -0.488356, 0.854758,
		0.390667, -0.831583, -0.394777,
		0.903593, 0.264533, 0.336958,
		35.780319, 27.994427, 17.800230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461281, 27.221750, 17.978056>,  <35.147800, 27.809254, 17.564360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461281, 27.221750, 17.978056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678719, 27.537888, 18.091095>,  <35.809181, 27.727570, 18.158918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678719, 27.537888, 18.091095>,  <35.461281, 27.221750, 17.978056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678719, 27.537888, 18.091095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157138, -0.234910, 0.959232,
		0.824508, -0.565840, -0.003503,
		0.543594, 0.790343, 0.282600,
		35.841797, 27.774990, 18.175875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910400, 26.897259, 18.523514>,  <35.461281, 27.221750, 17.978056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910400, 26.897259, 18.523514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.903324, 27.292868, 18.582199>,  <35.899078, 27.530233, 18.617411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.903324, 27.292868, 18.582199>,  <35.910400, 26.897259, 18.523514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903324, 27.292868, 18.582199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066421, -0.145248, 0.987163,
		0.997635, 0.027204, -0.063123,
		-0.017686, 0.989021, 0.146711,
		35.898018, 27.589575, 18.626213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486912, 27.012251, 18.932804>,  <35.910400, 26.897259, 18.523514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486912, 27.012251, 18.932804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264309, 27.340151, 18.986931>,  <36.130749, 27.536890, 19.019407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264309, 27.340151, 18.986931>,  <36.486912, 27.012251, 18.932804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264309, 27.340151, 18.986931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151600, -0.059948, 0.986622,
		0.816895, 0.569576, -0.090913,
		-0.556507, 0.819750, 0.135319,
		36.097359, 27.586075, 19.027527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826134, 27.448942, 19.331367>,  <36.486912, 27.012251, 18.932804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826134, 27.448942, 19.331367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454945, 27.592535, 19.371363>,  <36.232231, 27.678690, 19.395359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454945, 27.592535, 19.371363>,  <36.826134, 27.448942, 19.331367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454945, 27.592535, 19.371363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164957, 0.155120, 0.974026,
		0.334147, 0.920364, -0.203164,
		-0.927974, 0.358981, 0.099988,
		36.176552, 27.700230, 19.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965729, 27.936897, 19.733446>,  <36.826134, 27.448942, 19.331367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965729, 27.936897, 19.733446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569485, 27.892193, 19.764963>,  <36.331738, 27.865370, 19.783873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569485, 27.892193, 19.764963>,  <36.965729, 27.936897, 19.733446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569485, 27.892193, 19.764963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069349, 0.086011, 0.993878,
		-0.117852, 0.990006, -0.077453,
		-0.990607, -0.111760, 0.078793,
		36.272305, 27.858665, 19.788601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712292, 28.439913, 20.210121>,  <36.965729, 27.936897, 19.733446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712292, 28.439913, 20.210121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415459, 28.171791, 20.209181>,  <36.237358, 28.010918, 20.208616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415459, 28.171791, 20.209181>,  <36.712292, 28.439913, 20.210121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415459, 28.171791, 20.209181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110889, 0.119303, 0.986646,
		-0.661073, 0.732433, -0.162863,
		-0.742082, -0.670305, -0.002351,
		36.192833, 27.970699, 20.208475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169231, 28.682713, 20.507215>,  <36.712292, 28.439913, 20.210121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169231, 28.682713, 20.507215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102467, 28.291471, 20.556946>,  <36.062408, 28.056726, 20.586784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102467, 28.291471, 20.556946>,  <36.169231, 28.682713, 20.507215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102467, 28.291471, 20.556946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125496, 0.146146, 0.981271,
		-0.977953, 0.148181, -0.147141,
		-0.166909, -0.978102, 0.124327,
		36.052395, 27.998041, 20.594244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686417, 28.615314, 21.080944>,  <36.169231, 28.682713, 20.507215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686417, 28.615314, 21.080944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851665, 28.251194, 21.070515>,  <35.950813, 28.032721, 21.064257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851665, 28.251194, 21.070515>,  <35.686417, 28.615314, 21.080944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851665, 28.251194, 21.070515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234573, -0.134033, 0.962814,
		-0.879946, -0.391644, -0.268905,
		0.413122, -0.910302, -0.026072,
		35.975601, 27.978104, 21.062693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129578, 28.098303, 21.327089>,  <35.686417, 28.615314, 21.080944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129578, 28.098303, 21.327089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491158, 27.930510, 21.360346>,  <35.708103, 27.829834, 21.380301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491158, 27.930510, 21.360346>,  <35.129578, 28.098303, 21.327089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491158, 27.930510, 21.360346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287924, -0.453241, 0.843607,
		-0.316194, -0.786515, -0.530485,
		0.903948, -0.419483, 0.083144,
		35.762341, 27.804665, 21.385288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444126, 27.866316, 21.409163>,  <35.129578, 28.098303, 21.327089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444126, 27.866316, 21.409163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181274, 28.120003, 21.572113>,  <34.023563, 28.272215, 21.669884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181274, 28.120003, 21.572113>,  <34.444126, 27.866316, 21.409163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181274, 28.120003, 21.572113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443850, 0.111256, -0.889168,
		-0.609249, -0.765108, 0.208389,
		-0.657124, 0.634218, 0.407376,
		33.984138, 28.310268, 21.694326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812599, 27.619436, 21.153690>,  <34.444126, 27.866316, 21.409163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812599, 27.619436, 21.153690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777004, 28.004860, 21.254595>,  <33.755650, 28.236115, 21.315138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777004, 28.004860, 21.254595>,  <33.812599, 27.619436, 21.153690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777004, 28.004860, 21.254595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238675, 0.225260, -0.944612,
		-0.967014, -0.144264, 0.209933,
		-0.088983, 0.963559, 0.252262,
		33.750309, 28.293928, 21.330273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221325, 27.846828, 20.747536>,  <33.812599, 27.619436, 21.153690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221325, 27.846828, 20.747536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377563, 28.194235, 20.869595>,  <33.471306, 28.402679, 20.942829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377563, 28.194235, 20.869595>,  <33.221325, 27.846828, 20.747536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377563, 28.194235, 20.869595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318685, 0.438556, -0.840303,
		-0.863640, 0.230974, 0.448081,
		0.390596, 0.868516, 0.305147,
		33.494743, 28.454790, 20.961138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708347, 28.348005, 20.603428>,  <33.221325, 27.846828, 20.747536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708347, 28.348005, 20.603428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051971, 28.551336, 20.627459>,  <33.258148, 28.673336, 20.641876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051971, 28.551336, 20.627459>,  <32.708347, 28.348005, 20.603428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051971, 28.551336, 20.627459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188538, 0.423350, -0.886131,
		-0.475879, 0.749918, 0.459524,
		0.859065, 0.508329, 0.060075,
		33.309692, 28.703835, 20.645481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536976, 28.873388, 20.296083>,  <32.708347, 28.348005, 20.603428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536976, 28.873388, 20.296083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935982, 28.899313, 20.284994>,  <33.175385, 28.914867, 20.278341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.935982, 28.899313, 20.284994>,  <32.536976, 28.873388, 20.296083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935982, 28.899313, 20.284994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044726, 0.277916, -0.959564,
		-0.054488, 0.958417, 0.280124,
		0.997512, 0.064813, -0.027723,
		33.235237, 28.918756, 20.276676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654884, 29.556524, 20.128914>,  <32.536976, 28.873388, 20.296083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654884, 29.556524, 20.128914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993069, 29.358311, 20.049276>,  <33.195980, 29.239384, 20.001493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993069, 29.358311, 20.049276>,  <32.654884, 29.556524, 20.128914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993069, 29.358311, 20.049276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055906, 0.452892, -0.889811,
		0.531099, 0.741172, 0.410607,
		0.845464, -0.495533, -0.199094,
		33.246708, 29.209650, 19.989548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236401, 30.011124, 19.905180>,  <32.654884, 29.556524, 20.128914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236401, 30.011124, 19.905180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333218, 29.656322, 19.747885>,  <33.391308, 29.443441, 19.653507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333218, 29.656322, 19.747885>,  <33.236401, 30.011124, 19.905180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333218, 29.656322, 19.747885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106050, 0.427048, -0.897989,
		0.964452, 0.175649, 0.197431,
		0.242043, -0.887005, -0.393240,
		33.405830, 29.390221, 19.629913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412975, 30.723921, 19.872023>,  <33.236401, 30.011124, 19.905180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412975, 30.723921, 19.872023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.068432, 30.927111, 19.869997>,  <32.861706, 31.049025, 19.868782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.068432, 30.927111, 19.869997>,  <33.412975, 30.723921, 19.872023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068432, 30.927111, 19.869997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027077, -0.035953, 0.998987,
		0.507279, 0.860621, 0.044723,
		-0.861356, 0.507976, -0.005065,
		32.810024, 31.079504, 19.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515858, 31.317757, 20.318329>,  <33.412975, 30.723921, 19.872023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515858, 31.317757, 20.318329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122303, 31.247467, 20.305088>,  <32.886169, 31.205294, 20.297144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122303, 31.247467, 20.305088>,  <33.515858, 31.317757, 20.318329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122303, 31.247467, 20.305088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019833, -0.076751, 0.996853,
		-0.177710, 0.981443, 0.072029,
		-0.983883, -0.175722, -0.033104,
		32.827137, 31.194750, 20.295156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143475, 31.747900, 20.747290>,  <33.515858, 31.317757, 20.318329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143475, 31.747900, 20.747290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889336, 31.441904, 20.705112>,  <32.736851, 31.258307, 20.679806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889336, 31.441904, 20.705112>,  <33.143475, 31.747900, 20.747290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889336, 31.441904, 20.705112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082517, -0.068507, 0.994232,
		-0.767803, 0.640386, -0.019599,
		-0.635350, -0.764992, -0.105442,
		32.698730, 31.212406, 20.673479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771515, 31.781601, 21.438206>,  <33.143475, 31.747900, 20.747290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771515, 31.781601, 21.438206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663586, 31.428873, 21.283497>,  <32.598827, 31.217237, 21.190672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663586, 31.428873, 21.283497>,  <32.771515, 31.781601, 21.438206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663586, 31.428873, 21.283497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218791, -0.335017, 0.916457,
		-0.937724, 0.331902, -0.102539,
		-0.269822, -0.881819, -0.386771,
		32.582638, 31.164328, 21.167465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039703, 31.582384, 21.632168>,  <32.771515, 31.781601, 21.438206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039703, 31.582384, 21.632168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219616, 31.228973, 21.579893>,  <32.327564, 31.016928, 21.548529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219616, 31.228973, 21.579893>,  <32.039703, 31.582384, 21.632168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219616, 31.228973, 21.579893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284941, -0.280627, 0.916546,
		-0.846467, -0.375006, -0.377974,
		0.449780, -0.883526, -0.130687,
		32.354549, 30.963915, 21.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568441, 31.094221, 21.926262>,  <32.039703, 31.582384, 21.632168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568441, 31.094221, 21.926262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915628, 30.896702, 21.905106>,  <32.123940, 30.778191, 21.892412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915628, 30.896702, 21.905106>,  <31.568441, 31.094221, 21.926262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915628, 30.896702, 21.905106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144040, -0.352234, 0.924761,
		-0.475275, -0.795043, -0.376854,
		0.867966, -0.493798, -0.052890,
		32.176018, 30.748562, 21.889238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401978, 30.485207, 22.217932>,  <31.568441, 31.094221, 21.926262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401978, 30.485207, 22.217932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797384, 30.541088, 22.240974>,  <32.034630, 30.574617, 22.254799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.797384, 30.541088, 22.240974>,  <31.401978, 30.485207, 22.217932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797384, 30.541088, 22.240974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033070, -0.171962, 0.984549,
		0.147454, -0.975147, -0.165367,
		0.988516, 0.139707, 0.057605,
		32.093941, 30.583000, 22.258255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.263309, 33.122616, 17.195507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190838, 32.730995, 17.232679>,  <35.147354, 32.496025, 17.254984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190838, 32.730995, 17.232679>,  <35.263309, 33.122616, 17.195507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190838, 32.730995, 17.232679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123503, 0.071097, 0.989794,
		-0.975665, 0.190805, 0.108034,
		-0.181177, -0.979050, 0.092932,
		35.136486, 32.437279, 17.260559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682049, 32.954391, 17.745426>,  <35.263309, 33.122616, 17.195507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682049, 32.954391, 17.745426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911392, 32.633427, 17.679216>,  <35.048996, 32.440849, 17.639490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911392, 32.633427, 17.679216>,  <34.682049, 32.954391, 17.745426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911392, 32.633427, 17.679216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202415, -0.057037, 0.977637,
		-0.793909, -0.594038, 0.129718,
		0.573355, -0.802412, -0.165524,
		35.083401, 32.392704, 17.629559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390095, 32.307339, 17.869463>,  <34.682049, 32.954391, 17.745426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390095, 32.307339, 17.869463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.783409, 32.281097, 17.937393>,  <35.019398, 32.265354, 17.978151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.783409, 32.281097, 17.937393>,  <34.390095, 32.307339, 17.869463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783409, 32.281097, 17.937393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180893, -0.246738, 0.952049,
		-0.020556, -0.966859, -0.254482,
		0.983288, -0.065605, 0.169826,
		35.078396, 32.261417, 17.988340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653404, 31.594398, 18.233143>,  <34.390095, 32.307339, 17.869463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653404, 31.594398, 18.233143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940536, 31.860310, 18.315882>,  <35.112816, 32.019855, 18.365526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940536, 31.860310, 18.315882>,  <34.653404, 31.594398, 18.233143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940536, 31.860310, 18.315882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122753, -0.171600, 0.977489,
		0.685310, -0.727064, -0.041576,
		0.717831, 0.664780, 0.206849,
		35.155888, 32.059742, 18.377935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125488, 31.326130, 18.762892>,  <34.653404, 31.594398, 18.233143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125488, 31.326130, 18.762892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183144, 31.721079, 18.789169>,  <35.217735, 31.958048, 18.804935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.183144, 31.721079, 18.789169>,  <35.125488, 31.326130, 18.762892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183144, 31.721079, 18.789169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047890, -0.073271, 0.996161,
		0.988398, -0.140438, -0.057847,
		0.144137, 0.987375, 0.065695,
		35.226383, 32.017292, 18.808878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523037, 31.292126, 19.373024>,  <35.125488, 31.326130, 18.762892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523037, 31.292126, 19.373024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.420956, 31.668543, 19.284201>,  <35.359707, 31.894392, 19.230906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.420956, 31.668543, 19.284201>,  <35.523037, 31.292126, 19.373024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420956, 31.668543, 19.284201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144518, 0.264210, 0.953576,
		0.956025, 0.211269, -0.203426,
		-0.255208, 0.941041, -0.222059,
		35.344395, 31.950855, 19.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093021, 31.777990, 19.514057>,  <35.523037, 31.292126, 19.373024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093021, 31.777990, 19.514057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.742165, 31.968628, 19.537659>,  <35.531651, 32.083012, 19.551819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.742165, 31.968628, 19.537659>,  <36.093021, 31.777990, 19.514057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742165, 31.968628, 19.537659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160772, 0.175651, 0.971236,
		0.452520, 0.861398, -0.230694,
		-0.877142, 0.476592, 0.059003,
		35.479023, 32.111607, 19.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171707, 32.464191, 19.678286>,  <36.093021, 31.777990, 19.514057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171707, 32.464191, 19.678286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.799675, 32.389366, 19.804754>,  <35.576458, 32.344471, 19.880636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.799675, 32.389366, 19.804754>,  <36.171707, 32.464191, 19.678286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799675, 32.389366, 19.804754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273685, 0.221284, 0.936018,
		-0.245062, 0.957099, -0.154614,
		-0.930076, -0.187067, 0.316173,
		35.520653, 32.333244, 19.899607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115475, 33.004162, 20.143036>,  <36.171707, 32.464191, 19.678286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115475, 33.004162, 20.143036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794563, 32.787666, 20.243761>,  <35.602016, 32.657768, 20.304195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794563, 32.787666, 20.243761>,  <36.115475, 33.004162, 20.143036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794563, 32.787666, 20.243761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108259, 0.282918, 0.953015,
		-0.587047, 0.791847, -0.168387,
		-0.802282, -0.541235, 0.251811,
		35.553879, 32.625298, 20.319304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735340, 33.509422, 20.670717>,  <36.115475, 33.004162, 20.143036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735340, 33.509422, 20.670717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555588, 33.153576, 20.703304>,  <35.447739, 32.940067, 20.722857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.555588, 33.153576, 20.703304>,  <35.735340, 33.509422, 20.670717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555588, 33.153576, 20.703304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269449, 0.221926, 0.937094,
		-0.851738, 0.399157, -0.339435,
		-0.449377, -0.889619, 0.081470,
		35.420776, 32.886688, 20.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121662, 33.584835, 21.058695>,  <35.735340, 33.509422, 20.670717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121662, 33.584835, 21.058695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207703, 33.196117, 21.097374>,  <35.259327, 32.962887, 21.120581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207703, 33.196117, 21.097374>,  <35.121662, 33.584835, 21.058695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207703, 33.196117, 21.097374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172183, 0.059726, 0.983253,
		-0.961293, -0.228148, -0.154479,
		0.215101, -0.971793, 0.096697,
		35.272232, 32.904579, 21.126383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674267, 33.353134, 21.646683>,  <35.121662, 33.584835, 21.058695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674267, 33.353134, 21.646683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.985104, 33.101959, 21.629585>,  <35.171604, 32.951256, 21.619328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.985104, 33.101959, 21.629585>,  <34.674267, 33.353134, 21.646683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985104, 33.101959, 21.629585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072728, 0.022130, 0.997106,
		-0.625170, -0.777952, 0.062866,
		0.777093, -0.627934, -0.042744,
		35.218231, 32.913578, 21.616762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006641, 32.987484, 21.768244>,  <34.674267, 33.353134, 21.646683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006641, 32.987484, 21.768244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695305, 33.216522, 21.871254>,  <33.508503, 33.353943, 21.933060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.695305, 33.216522, 21.871254>,  <34.006641, 32.987484, 21.768244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695305, 33.216522, 21.871254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203078, 0.158521, -0.966246,
		-0.594088, -0.804368, -0.007103,
		-0.778343, 0.572593, 0.257525,
		33.461803, 33.388298, 21.948511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429703, 32.716839, 21.317673>,  <34.006641, 32.987484, 21.768244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429703, 32.716839, 21.317673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.316830, 33.080200, 21.441080>,  <33.249107, 33.298218, 21.515125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.316830, 33.080200, 21.441080>,  <33.429703, 32.716839, 21.317673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316830, 33.080200, 21.441080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279119, 0.229940, -0.932320,
		-0.917861, -0.349194, 0.188667,
		-0.282178, 0.908400, 0.308520,
		33.232178, 33.352722, 21.533636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766651, 32.749878, 21.079681>,  <33.429703, 32.716839, 21.317673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766651, 32.749878, 21.079681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885754, 33.128059, 21.132526>,  <32.957214, 33.354969, 21.164234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885754, 33.128059, 21.132526>,  <32.766651, 32.749878, 21.079681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885754, 33.128059, 21.132526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310004, 0.226649, -0.923324,
		-0.902907, 0.233966, 0.360581,
		0.297752, 0.945458, 0.132113,
		32.975079, 33.411697, 21.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216576, 33.142132, 20.938520>,  <32.766651, 32.749878, 21.079681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216576, 33.142132, 20.938520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516151, 33.404053, 20.897882>,  <32.695896, 33.561207, 20.873501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516151, 33.404053, 20.897882>,  <32.216576, 33.142132, 20.938520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516151, 33.404053, 20.897882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284326, 0.179074, -0.941855,
		-0.598536, 0.734280, 0.320293,
		0.748942, 0.654801, -0.101593,
		32.740833, 33.600494, 20.867405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928246, 33.789509, 20.575865>,  <32.216576, 33.142132, 20.938520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928246, 33.789509, 20.575865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323051, 33.775173, 20.513237>,  <32.559937, 33.766571, 20.475660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.323051, 33.775173, 20.513237>,  <31.928246, 33.789509, 20.575865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323051, 33.775173, 20.513237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148343, 0.170341, -0.974155,
		0.061579, 0.984733, 0.162813,
		0.987017, -0.035835, -0.156568,
		32.619156, 33.764423, 20.466267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965481, 34.172901, 20.039501>,  <31.928246, 33.789509, 20.575865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965481, 34.172901, 20.039501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.341259, 34.035889, 20.035084>,  <32.566727, 33.953682, 20.032433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.341259, 34.035889, 20.035084>,  <31.965481, 34.172901, 20.039501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341259, 34.035889, 20.035084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107589, 0.325378, -0.939443,
		0.325378, 0.881365, 0.342526,
		0.939443, -0.342526, -0.011045,
		32.623093, 33.933132, 20.031771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381023, 34.767071, 19.783440>,  <31.965481, 34.172901, 20.039501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381023, 34.767071, 19.783440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.585537, 34.428486, 19.723993>,  <32.708244, 34.225334, 19.688326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.585537, 34.428486, 19.723993>,  <32.381023, 34.767071, 19.783440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585537, 34.428486, 19.723993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009293, 0.178365, -0.983921,
		0.859361, 0.501683, 0.099062,
		0.511285, -0.846463, -0.148617,
		32.738922, 34.174545, 19.679409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951035, 34.967369, 19.403500>,  <32.381023, 34.767071, 19.783440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951035, 34.967369, 19.403500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.929424, 34.571323, 19.351728>,  <32.916458, 34.333694, 19.320665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.929424, 34.571323, 19.351728>,  <32.951035, 34.967369, 19.403500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929424, 34.571323, 19.351728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079143, 0.124962, -0.989000,
		0.995398, -0.063672, 0.071610,
		-0.054023, -0.990116, -0.129426,
		32.913216, 34.274288, 19.312901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593475, 34.760368, 18.946217>,  <32.951035, 34.967369, 19.403500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593475, 34.760368, 18.946217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.291920, 34.498947, 18.919331>,  <33.110985, 34.342094, 18.903200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.291920, 34.498947, 18.919331>,  <33.593475, 34.760368, 18.946217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291920, 34.498947, 18.919331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054830, 0.164533, -0.984846,
		0.654710, -0.738779, -0.159874,
		-0.753888, -0.653555, -0.067214,
		33.065754, 34.302879, 18.899166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719296, 34.363937, 18.342945>,  <33.593475, 34.760368, 18.946217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719296, 34.363937, 18.342945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331440, 34.290600, 18.407675>,  <33.098728, 34.246597, 18.446512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331440, 34.290600, 18.407675>,  <33.719296, 34.363937, 18.342945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331440, 34.290600, 18.407675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181228, 0.094461, -0.978894,
		0.164193, -0.978499, -0.124821,
		-0.969638, -0.183349, 0.161821,
		33.040550, 34.235596, 18.456221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532402, 33.879555, 17.725565>,  <33.719296, 34.363937, 18.342945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532402, 33.879555, 17.725565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187084, 34.021584, 17.869038>,  <32.979893, 34.106800, 17.955122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187084, 34.021584, 17.869038>,  <33.532402, 33.879555, 17.725565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187084, 34.021584, 17.869038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393912, -0.029712, -0.918668,
		-0.315535, -0.934367, 0.165517,
		-0.863291, 0.355071, 0.358684,
		32.928097, 34.128105, 17.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063286, 33.376717, 17.543486>,  <33.532402, 33.879555, 17.725565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063286, 33.376717, 17.543486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859253, 33.716160, 17.599604>,  <32.736832, 33.919827, 17.633274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.859253, 33.716160, 17.599604>,  <33.063286, 33.376717, 17.543486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859253, 33.716160, 17.599604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296692, -0.020493, -0.954753,
		-0.807332, -0.528632, 0.262227,
		-0.510086, 0.848604, 0.140297,
		32.706226, 33.970741, 17.641693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320602, 33.252625, 17.327293>,  <33.063286, 33.376717, 17.543486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320602, 33.252625, 17.327293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418335, 33.638988, 17.293051>,  <32.476974, 33.870808, 17.272505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.418335, 33.638988, 17.293051>,  <32.320602, 33.252625, 17.327293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418335, 33.638988, 17.293051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333445, 0.000791, -0.942769,
		-0.910558, 0.258894, 0.322269,
		0.244333, 0.965905, -0.085606,
		32.491634, 33.928761, 17.267368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045860, 32.690075, 17.070398>,  <32.320602, 33.252625, 17.327293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045860, 32.690075, 17.070398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856260, 32.351524, 16.973269>,  <31.742500, 32.148392, 16.914991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.856260, 32.351524, 16.973269>,  <32.045860, 32.690075, 17.070398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856260, 32.351524, 16.973269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257389, -0.396912, 0.881029,
		-0.842066, 0.355107, 0.405985,
		-0.474000, -0.846381, -0.242825,
		31.714060, 32.097610, 16.900421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639830, 32.656094, 17.609028>,  <32.045860, 32.690075, 17.070398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639830, 32.656094, 17.609028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685907, 32.289135, 17.456657>,  <31.713554, 32.068958, 17.365234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685907, 32.289135, 17.456657>,  <31.639830, 32.656094, 17.609028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685907, 32.289135, 17.456657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205457, -0.353183, 0.912715,
		-0.971863, -0.183406, 0.147801,
		0.115196, -0.917401, -0.380927,
		31.720467, 32.013916, 17.342379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122179, 32.273582, 17.955681>,  <31.639830, 32.656094, 17.609028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122179, 32.273582, 17.955681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.408115, 32.024311, 17.828781>,  <31.579678, 31.874748, 17.752642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.408115, 32.024311, 17.828781>,  <31.122179, 32.273582, 17.955681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408115, 32.024311, 17.828781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099568, -0.358348, 0.928263,
		-0.692161, -0.695149, -0.194113,
		0.714842, -0.623181, -0.317249,
		31.622568, 31.837357, 17.733606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103886, 31.642954, 18.351988>,  <31.122179, 32.273582, 17.955681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103886, 31.642954, 18.351988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471090, 31.620573, 18.194956>,  <31.691414, 31.607145, 18.100737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471090, 31.620573, 18.194956>,  <31.103886, 31.642954, 18.351988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471090, 31.620573, 18.194956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336298, -0.414745, 0.845512,
		-0.210129, -0.908216, -0.361925,
		0.918014, -0.055952, -0.392581,
		31.746494, 31.603786, 18.077181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264046, 30.934795, 18.433197>,  <31.103886, 31.642954, 18.351988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264046, 30.934795, 18.433197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595127, 31.159260, 18.433506>,  <31.793776, 31.293940, 18.433691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595127, 31.159260, 18.433506>,  <31.264046, 30.934795, 18.433197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595127, 31.159260, 18.433506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301001, -0.445130, 0.843361,
		0.473606, -0.697822, -0.537348,
		0.827705, 0.561163, 0.000771,
		31.843439, 31.327608, 18.433737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675007, 30.604406, 18.799667>,  <31.264046, 30.934795, 18.433197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675007, 30.604406, 18.799667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907143, 30.928106, 18.763187>,  <32.046425, 31.122326, 18.741301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.907143, 30.928106, 18.763187>,  <31.675007, 30.604406, 18.799667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907143, 30.928106, 18.763187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463194, -0.235899, 0.854285,
		0.669817, -0.538019, -0.511742,
		0.580341, 0.809251, -0.091198,
		32.081245, 31.170881, 18.735828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374229, 30.373739, 18.916460>,  <31.675007, 30.604406, 18.799667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374229, 30.373739, 18.916460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331097, 30.759550, 19.012838>,  <32.305218, 30.991037, 19.070665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331097, 30.759550, 19.012838>,  <32.374229, 30.373739, 18.916460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331097, 30.759550, 19.012838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364225, -0.187183, 0.912306,
		0.925047, 0.186134, -0.331121,
		-0.107831, 0.964529, 0.240947,
		32.298748, 31.048908, 19.085123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012188, 30.496580, 19.284388>,  <32.374229, 30.373739, 18.916460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012188, 30.496580, 19.284388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757988, 30.791281, 19.376766>,  <32.605469, 30.968102, 19.432194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.757988, 30.791281, 19.376766>,  <33.012188, 30.496580, 19.284388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757988, 30.791281, 19.376766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253798, -0.083163, 0.963676,
		0.729195, 0.671030, -0.134136,
		-0.635500, 0.736751, 0.230948,
		32.567337, 31.012306, 19.446051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722954, 30.191643, 19.338675>,  <33.012188, 30.496580, 19.284388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722954, 30.191643, 19.338675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591213, 29.815655, 19.302942>,  <33.512169, 29.590061, 19.281502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.591213, 29.815655, 19.302942>,  <33.722954, 30.191643, 19.338675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591213, 29.815655, 19.302942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016296, 0.088939, -0.995904,
		0.944066, -0.329460, -0.013974,
		-0.329354, -0.939971, -0.089333,
		33.492409, 29.533663, 19.276142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097317, 29.894388, 18.720787>,  <33.722954, 30.191643, 19.338675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097317, 29.894388, 18.720787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786140, 29.644960, 18.751688>,  <33.599434, 29.495304, 18.770227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786140, 29.644960, 18.751688>,  <34.097317, 29.894388, 18.720787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786140, 29.644960, 18.751688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214530, 0.148036, -0.965434,
		0.590581, -0.767622, -0.248938,
		-0.777940, -0.623572, 0.077250,
		33.552757, 29.457890, 18.774862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046349, 29.390152, 18.047874>,  <34.097317, 29.894388, 18.720787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046349, 29.390152, 18.047874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.683529, 29.384525, 18.216188>,  <33.465836, 29.381149, 18.317177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.683529, 29.384525, 18.216188>,  <34.046349, 29.390152, 18.047874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683529, 29.384525, 18.216188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420246, -0.030379, -0.906902,
		0.025542, -0.999439, 0.021643,
		-0.907050, -0.014069, 0.420786,
		33.411415, 29.380306, 18.342424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816925, 28.785482, 17.897099>,  <34.046349, 29.390152, 18.047874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816925, 28.785482, 17.897099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499176, 29.019247, 17.963358>,  <33.308529, 29.159506, 18.003115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.499176, 29.019247, 17.963358>,  <33.816925, 28.785482, 17.897099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499176, 29.019247, 17.963358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302031, -0.143405, -0.942450,
		-0.527024, -0.798685, 0.290427,
		-0.794369, 0.584412, 0.165650,
		33.260864, 29.194571, 18.013054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203575, 28.431463, 17.611090>,  <33.816925, 28.785482, 17.897099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203575, 28.431463, 17.611090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091835, 28.812180, 17.661779>,  <33.024792, 29.040609, 17.692194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.091835, 28.812180, 17.661779>,  <33.203575, 28.431463, 17.611090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091835, 28.812180, 17.661779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467685, -0.019610, -0.883678,
		-0.838590, -0.306123, 0.450616,
		-0.279351, 0.951790, 0.126724,
		33.008030, 29.097717, 17.699797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490925, 28.490959, 17.512465>,  <33.203575, 28.431463, 17.611090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490925, 28.490959, 17.512465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.631470, 28.854197, 17.421333>,  <32.715797, 29.072140, 17.366655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.631470, 28.854197, 17.421333>,  <32.490925, 28.490959, 17.512465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631470, 28.854197, 17.421333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563215, 0.010632, -0.826242,
		-0.747885, 0.418628, 0.515189,
		0.351365, 0.908096, -0.227826,
		32.736877, 29.126625, 17.352985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009167, 28.738169, 17.115194>,  <32.490925, 28.490959, 17.512465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009167, 28.738169, 17.115194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278072, 29.025631, 17.044098>,  <32.439415, 29.198109, 17.001440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.278072, 29.025631, 17.044098>,  <32.009167, 28.738169, 17.115194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278072, 29.025631, 17.044098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243762, -0.011818, -0.969763,
		-0.699024, 0.695268, 0.167236,
		0.672269, 0.718654, -0.177741,
		32.479752, 29.241226, 16.990776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728659, 29.077747, 16.550360>,  <32.009167, 28.738169, 17.115194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728659, 29.077747, 16.550360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117043, 29.173159, 16.542942>,  <32.350071, 29.230406, 16.538492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.117043, 29.173159, 16.542942>,  <31.728659, 29.077747, 16.550360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117043, 29.173159, 16.542942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003745, -0.062349, -0.998047,
		-0.239218, 0.969132, -0.059645,
		0.970959, 0.238527, -0.018544,
		32.408329, 29.244717, 16.537378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852093, 29.598021, 16.021824>,  <31.728659, 29.077747, 16.550360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852093, 29.598021, 16.021824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.183475, 29.386766, 16.096371>,  <32.382305, 29.260014, 16.141100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.183475, 29.386766, 16.096371>,  <31.852093, 29.598021, 16.021824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183475, 29.386766, 16.096371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003717, -0.327577, -0.944817,
		0.560040, 0.783434, -0.269420,
		0.828457, -0.528134, 0.186368,
		32.432014, 29.228327, 16.152281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.343266, 29.319971, 31.251591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.717091, 29.341532, 31.110910>,  <36.941383, 29.354467, 31.026503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.717091, 29.341532, 31.110910>,  <36.343266, 29.319971, 31.251591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717091, 29.341532, 31.110910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332534, -0.219295, -0.917241,
		-0.126567, 0.974169, -0.187020,
		0.934560, 0.053902, -0.351700,
		36.997459, 29.357702, 31.005400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407742, 29.737778, 30.673223>,  <36.343266, 29.319971, 31.251591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407742, 29.737778, 30.673223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758072, 29.548573, 30.634882>,  <36.968269, 29.435049, 30.611877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758072, 29.548573, 30.634882>,  <36.407742, 29.737778, 30.673223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758072, 29.548573, 30.634882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312815, -0.405115, -0.859086,
		0.367528, 0.782394, -0.502776,
		0.875825, -0.473014, -0.095853,
		37.020821, 29.406668, 30.606127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797783, 29.977272, 30.051716>,  <36.407742, 29.737778, 30.673223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797783, 29.977272, 30.051716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916660, 29.607347, 30.146709>,  <36.987988, 29.385393, 30.203705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916660, 29.607347, 30.146709>,  <36.797783, 29.977272, 30.051716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916660, 29.607347, 30.146709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265458, -0.318943, -0.909839,
		0.917175, 0.207352, -0.340285,
		0.297189, -0.924814, 0.237484,
		37.005817, 29.329903, 30.217955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257545, 29.751408, 29.545359>,  <36.797783, 29.977272, 30.051716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257545, 29.751408, 29.545359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103565, 29.422394, 29.712809>,  <37.011177, 29.224985, 29.813278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103565, 29.422394, 29.712809>,  <37.257545, 29.751408, 29.545359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103565, 29.422394, 29.712809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336950, -0.297022, -0.893444,
		0.859231, -0.484987, -0.162816,
		-0.384950, -0.822536, 0.418627,
		36.988079, 29.175632, 29.838396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313393, 29.285885, 28.965435>,  <37.257545, 29.751408, 29.545359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313393, 29.285885, 28.965435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078300, 29.101265, 29.231230>,  <36.937244, 28.990494, 29.390707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078300, 29.101265, 29.231230>,  <37.313393, 29.285885, 28.965435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078300, 29.101265, 29.231230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507555, -0.429248, -0.747083,
		0.630046, -0.776349, 0.018021,
		-0.587732, -0.461550, 0.664486,
		36.901981, 28.962799, 29.430576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331390, 28.631569, 28.729309>,  <37.313393, 29.285885, 28.965435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331390, 28.631569, 28.729309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999962, 28.685198, 28.946747>,  <36.801105, 28.717375, 29.077209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.999962, 28.685198, 28.946747>,  <37.331390, 28.631569, 28.729309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999962, 28.685198, 28.946747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549185, -0.383528, -0.742497,
		0.108936, -0.913746, 0.391410,
		-0.828570, 0.134072, 0.543595,
		36.751392, 28.725420, 29.109825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970715, 27.997555, 28.624516>,  <37.331390, 28.631569, 28.729309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970715, 27.997555, 28.624516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.695553, 28.252327, 28.763716>,  <36.530457, 28.405190, 28.847237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.695553, 28.252327, 28.763716>,  <36.970715, 27.997555, 28.624516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695553, 28.252327, 28.763716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643280, -0.313000, -0.698729,
		-0.336124, -0.704516, 0.625043,
		-0.687904, 0.636937, 0.347994,
		36.489182, 28.443405, 28.868116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470676, 27.575956, 28.604321>,  <36.970715, 27.997555, 28.624516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470676, 27.575956, 28.604321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329681, 27.949247, 28.632151>,  <36.245087, 28.173222, 28.648849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329681, 27.949247, 28.632151>,  <36.470676, 27.575956, 28.604321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329681, 27.949247, 28.632151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751619, -0.238027, -0.615151,
		-0.557515, -0.269127, 0.785333,
		-0.352484, 0.933228, 0.069577,
		36.223934, 28.229216, 28.653025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674744, 27.551802, 28.840219>,  <36.470676, 27.575956, 28.604321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674744, 27.551802, 28.840219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716682, 27.905937, 28.659033>,  <35.741844, 28.118420, 28.550320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716682, 27.905937, 28.659033>,  <35.674744, 27.551802, 28.840219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716682, 27.905937, 28.659033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819108, -0.181424, -0.544195,
		-0.563977, 0.428086, 0.706167,
		0.104846, 0.885341, -0.452968,
		35.748135, 28.171539, 28.523142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968719, 27.890501, 28.715521>,  <35.674744, 27.551802, 28.840219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968719, 27.890501, 28.715521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168640, 28.117640, 28.453911>,  <35.288593, 28.253922, 28.296944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168640, 28.117640, 28.453911>,  <34.968719, 27.890501, 28.715521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168640, 28.117640, 28.453911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771922, -0.050465, -0.633711,
		-0.392856, 0.821587, 0.413110,
		0.499801, 0.567845, -0.654026,
		35.318581, 28.287992, 28.257704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442097, 28.322906, 28.476259>,  <34.968719, 27.890501, 28.715521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442097, 28.322906, 28.476259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753506, 28.319771, 28.225233>,  <34.940353, 28.317888, 28.074617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753506, 28.319771, 28.225233>,  <34.442097, 28.322906, 28.476259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753506, 28.319771, 28.225233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627552, 0.004281, -0.778563,
		0.008791, 0.999960, -0.001587,
		0.778525, -0.007840, -0.627565,
		34.987064, 28.317419, 28.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248318, 28.846424, 28.001635>,  <34.442097, 28.322906, 28.476259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248318, 28.846424, 28.001635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531643, 28.628857, 27.821659>,  <34.701637, 28.498316, 27.713675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531643, 28.628857, 27.821659>,  <34.248318, 28.846424, 28.001635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531643, 28.628857, 27.821659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462518, 0.123910, -0.877908,
		0.533264, 0.829938, -0.163806,
		0.708312, -0.543920, -0.449938,
		34.744137, 28.465681, 27.686678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096127, 29.491638, 28.278059>,  <34.248318, 28.846424, 28.001635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096127, 29.491638, 28.278059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706436, 29.574392, 28.242092>,  <33.472622, 29.624044, 28.220512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706436, 29.574392, 28.242092>,  <34.096127, 29.491638, 28.278059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706436, 29.574392, 28.242092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090617, 0.006115, 0.995867,
		0.206579, 0.978346, 0.012789,
		-0.974225, 0.206884, -0.089918,
		33.414169, 29.636457, 28.215117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975708, 30.141308, 28.646090>,  <34.096127, 29.491638, 28.278059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975708, 30.141308, 28.646090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647789, 29.912251, 28.644253>,  <33.451038, 29.774817, 28.643150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647789, 29.912251, 28.644253>,  <33.975708, 30.141308, 28.646090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647789, 29.912251, 28.644253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015482, -0.030181, 0.999425,
		-0.572451, 0.819250, 0.033608,
		-0.819793, -0.572642, -0.004593,
		33.401852, 29.740458, 28.642876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525745, 30.442692, 29.154823>,  <33.975708, 30.141308, 28.646090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525745, 30.442692, 29.154823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334068, 30.098536, 29.085424>,  <33.219063, 29.892042, 29.043785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334068, 30.098536, 29.085424>,  <33.525745, 30.442692, 29.154823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334068, 30.098536, 29.085424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134272, -0.123484, 0.983221,
		-0.867380, 0.494446, -0.056354,
		-0.479190, -0.860392, -0.173497,
		33.190311, 29.840418, 29.033375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862587, 30.504112, 29.456457>,  <33.525745, 30.442692, 29.154823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862587, 30.504112, 29.456457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965004, 30.117455, 29.453966>,  <33.026455, 29.885460, 29.452471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965004, 30.117455, 29.453966>,  <32.862587, 30.504112, 29.456457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965004, 30.117455, 29.453966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162767, -0.049461, 0.985424,
		-0.952864, -0.251297, -0.170003,
		0.256043, -0.966645, -0.006227,
		33.041817, 29.827461, 29.452099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417297, 30.291311, 29.950153>,  <32.862587, 30.504112, 29.456457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417297, 30.291311, 29.950153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649212, 29.966539, 29.922983>,  <32.788361, 29.771675, 29.906681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649212, 29.966539, 29.922983>,  <32.417297, 30.291311, 29.950153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649212, 29.966539, 29.922983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260320, -0.263599, 0.928843,
		-0.772063, -0.520848, -0.364193,
		0.579787, -0.811932, -0.067928,
		32.823147, 29.722960, 29.902605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089897, 29.742964, 30.313377>,  <32.417297, 30.291311, 29.950153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089897, 29.742964, 30.313377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469219, 29.616890, 30.298594>,  <32.696815, 29.541245, 30.289724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469219, 29.616890, 30.298594>,  <32.089897, 29.742964, 30.313377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469219, 29.616890, 30.298594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074901, -0.335470, 0.939069,
		-0.308374, -0.887762, -0.341737,
		0.948312, -0.315181, -0.036956,
		32.753712, 29.522333, 30.287506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089046, 28.948509, 30.510227>,  <32.089897, 29.742964, 30.313377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089046, 28.948509, 30.510227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468861, 29.067276, 30.550688>,  <32.696747, 29.138536, 30.574965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468861, 29.067276, 30.550688>,  <32.089046, 28.948509, 30.510227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468861, 29.067276, 30.550688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002174, -0.328699, 0.944432,
		0.313667, -0.896547, -0.312755,
		0.949531, 0.296917, 0.101153,
		32.753719, 29.156351, 30.581034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389736, 28.415850, 30.881308>,  <32.089046, 28.948509, 30.510227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389736, 28.415850, 30.881308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650154, 28.710627, 30.954031>,  <32.806404, 28.887493, 30.997665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650154, 28.710627, 30.954031>,  <32.389736, 28.415850, 30.881308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650154, 28.710627, 30.954031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067594, -0.182282, 0.980920,
		0.756020, -0.650916, -0.068861,
		0.651048, 0.736941, 0.181807,
		32.845470, 28.931709, 31.008574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898159, 28.251890, 31.427717>,  <32.389736, 28.415850, 30.881308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898159, 28.251890, 31.427717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909233, 28.651665, 31.435339>,  <32.915878, 28.891529, 31.439911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909233, 28.651665, 31.435339>,  <32.898159, 28.251890, 31.427717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909233, 28.651665, 31.435339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175493, -0.013904, 0.984383,
		0.984092, -0.030594, 0.175009,
		0.027683, 0.999435, 0.019052,
		32.917538, 28.951496, 31.441055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286495, 28.366079, 31.889984>,  <32.898159, 28.251890, 31.427717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286495, 28.366079, 31.889984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101868, 28.720440, 31.871504>,  <32.991089, 28.933056, 31.860416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101868, 28.720440, 31.871504>,  <33.286495, 28.366079, 31.889984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101868, 28.720440, 31.871504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098379, 0.102875, 0.989818,
		0.881631, 0.452326, -0.134638,
		-0.461571, 0.885900, -0.046199,
		32.963398, 28.986210, 31.857645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695557, 28.798136, 32.291763>,  <33.286495, 28.366079, 31.889984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695557, 28.798136, 32.291763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321533, 28.939257, 32.277946>,  <33.097118, 29.023930, 32.269657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321533, 28.939257, 32.277946>,  <33.695557, 28.798136, 32.291763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321533, 28.939257, 32.277946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027704, 0.024413, 0.999318,
		0.353403, 0.935380, -0.013054,
		-0.935061, 0.352800, -0.034541,
		33.041016, 29.045097, 32.267586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741024, 29.313314, 32.714027>,  <33.695557, 28.798136, 32.291763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741024, 29.313314, 32.714027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348934, 29.234951, 32.702869>,  <33.113682, 29.187933, 32.696175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.348934, 29.234951, 32.702869>,  <33.741024, 29.313314, 32.714027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348934, 29.234951, 32.702869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068441, 0.203398, 0.976701,
		-0.185669, 0.959296, -0.212784,
		-0.980226, -0.195906, -0.027891,
		33.054867, 29.176180, 32.694504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585587, 29.795044, 33.192101>,  <33.741024, 29.313314, 32.714027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585587, 29.795044, 33.192101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257038, 29.573359, 33.138138>,  <33.059910, 29.440348, 33.105759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257038, 29.573359, 33.138138>,  <33.585587, 29.795044, 33.192101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257038, 29.573359, 33.138138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393722, 0.379736, 0.837128,
		-0.412720, 0.740707, -0.530110,
		-0.821368, -0.554215, -0.134908,
		33.010628, 29.407093, 33.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044060, 30.268185, 33.081409>,  <33.585587, 29.795044, 33.192101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044060, 30.268185, 33.081409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911030, 29.925217, 33.238495>,  <32.831211, 29.719437, 33.332748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911030, 29.925217, 33.238495>,  <33.044060, 30.268185, 33.081409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911030, 29.925217, 33.238495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406656, 0.506101, 0.760587,
		-0.850896, 0.093254, -0.516992,
		-0.332578, -0.857418, 0.392717,
		32.811256, 29.667992, 33.356312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949371, 30.954384, 32.731304>,  <33.044060, 30.268185, 33.081409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949371, 30.954384, 32.731304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163204, 30.847565, 33.052029>,  <33.291504, 30.783474, 33.244465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163204, 30.847565, 33.052029>,  <32.949371, 30.954384, 32.731304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163204, 30.847565, 33.052029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267012, 0.846794, 0.460049,
		-0.801826, -0.460029, 0.381378,
		0.534584, -0.267047, 0.801814,
		33.323578, 30.767450, 33.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283787, 31.594923, 32.647755>,  <32.949371, 30.954384, 32.731304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283787, 31.594923, 32.647755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670834, 31.694185, 32.629284>,  <33.903061, 31.753742, 32.618202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670834, 31.694185, 32.629284>,  <33.283787, 31.594923, 32.647755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670834, 31.694185, 32.629284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167148, 0.492866, -0.853900,
		-0.189142, 0.833968, 0.518385,
		0.967619, 0.248155, -0.046174,
		33.961121, 31.768631, 32.615433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300571, 32.216793, 32.340832>,  <33.283787, 31.594923, 32.647755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300571, 32.216793, 32.340832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680042, 32.102417, 32.286785>,  <33.907722, 32.033791, 32.254356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680042, 32.102417, 32.286785>,  <33.300571, 32.216793, 32.340832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680042, 32.102417, 32.286785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004195, 0.415815, -0.909439,
		0.316226, 0.863329, 0.393274,
		0.948675, -0.285938, -0.135113,
		33.964645, 32.016636, 32.246250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616955, 32.815151, 32.021694>,  <33.300571, 32.216793, 32.340832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616955, 32.815151, 32.021694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836090, 32.493893, 31.928028>,  <33.967571, 32.301140, 31.871828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.836090, 32.493893, 31.928028>,  <33.616955, 32.815151, 32.021694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836090, 32.493893, 31.928028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168572, 0.380145, -0.909436,
		0.819424, 0.458750, 0.343646,
		0.547839, -0.803142, -0.234168,
		34.000443, 32.252949, 31.857779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293808, 33.017620, 31.743500>,  <33.616955, 32.815151, 32.021694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293808, 33.017620, 31.743500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276245, 32.640373, 31.611685>,  <34.265709, 32.414024, 31.532597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276245, 32.640373, 31.611685>,  <34.293808, 33.017620, 31.743500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276245, 32.640373, 31.611685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319260, 0.299312, -0.899158,
		0.946649, -0.144688, 0.287959,
		-0.043908, -0.943121, -0.329537,
		34.263073, 32.357437, 31.512823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809055, 32.976387, 31.275097>,  <34.293808, 33.017620, 31.743500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809055, 32.976387, 31.275097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600574, 32.654514, 31.161369>,  <34.475487, 32.461391, 31.093134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600574, 32.654514, 31.161369>,  <34.809055, 32.976387, 31.275097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600574, 32.654514, 31.161369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241206, 0.180670, -0.953508,
		0.818636, -0.565553, 0.099927,
		-0.521206, -0.804679, -0.284318,
		34.444214, 32.413109, 31.076075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251080, 32.553631, 30.783680>,  <34.809055, 32.976387, 31.275097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251080, 32.553631, 30.783680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863235, 32.483593, 30.715338>,  <34.630527, 32.441570, 30.674334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863235, 32.483593, 30.715338>,  <35.251080, 32.553631, 30.783680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863235, 32.483593, 30.715338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162833, 0.059302, -0.984870,
		0.182579, -0.982764, -0.028989,
		-0.969614, -0.175096, -0.170854,
		34.572350, 32.431065, 30.664082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178291, 32.221836, 30.179670>,  <35.251080, 32.553631, 30.783680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178291, 32.221836, 30.179670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784832, 32.292458, 30.193913>,  <34.548756, 32.334831, 30.202457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784832, 32.292458, 30.193913>,  <35.178291, 32.221836, 30.179670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784832, 32.292458, 30.193913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004096, 0.175714, -0.984433,
		-0.180062, -0.968480, -0.172117,
		-0.983646, 0.176554, 0.035606,
		34.489738, 32.345425, 30.204594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822010, 31.909771, 29.580524>,  <35.178291, 32.221836, 30.179670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822010, 31.909771, 29.580524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589783, 32.199104, 29.730043>,  <34.450447, 32.372704, 29.819756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589783, 32.199104, 29.730043>,  <34.822010, 31.909771, 29.580524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589783, 32.199104, 29.730043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229068, 0.295444, -0.927492,
		-0.781323, -0.624099, -0.005833,
		-0.580570, 0.723334, 0.373799,
		34.415611, 32.416103, 29.842182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071144, 31.815407, 29.295740>,  <34.822010, 31.909771, 29.580524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071144, 31.815407, 29.295740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131477, 32.193611, 29.411161>,  <34.167675, 32.420532, 29.480413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131477, 32.193611, 29.411161>,  <34.071144, 31.815407, 29.295740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131477, 32.193611, 29.411161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364967, 0.324530, -0.872628,
		-0.918721, 0.026307, 0.394029,
		0.150830, 0.945509, 0.288551,
		34.176727, 32.477264, 29.497726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418476, 32.154972, 29.187603>,  <34.071144, 31.815407, 29.295740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418476, 32.154972, 29.187603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699615, 32.437805, 29.218691>,  <33.868301, 32.607506, 29.237343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699615, 32.437805, 29.218691>,  <33.418476, 32.154972, 29.187603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699615, 32.437805, 29.218691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409091, 0.491174, -0.769020,
		-0.581931, 0.508713, 0.634482,
		0.702851, 0.707078, 0.077720,
		33.910469, 32.649929, 29.242006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076000, 32.796761, 29.084631>,  <33.418476, 32.154972, 29.187603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076000, 32.796761, 29.084631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466057, 32.838203, 29.006287>,  <33.700092, 32.863068, 28.959280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466057, 32.838203, 29.006287>,  <33.076000, 32.796761, 29.084631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466057, 32.838203, 29.006287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221498, 0.479060, -0.849376,
		0.005831, 0.871647, 0.490100,
		0.975143, 0.103603, -0.195861,
		33.758598, 32.869286, 28.947529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102188, 33.388622, 28.555996>,  <33.076000, 32.796761, 29.084631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102188, 33.388622, 28.555996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487801, 33.282955, 28.544245>,  <33.719170, 33.219555, 28.537193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487801, 33.282955, 28.544245>,  <33.102188, 33.388622, 28.555996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487801, 33.282955, 28.544245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007301, 0.136806, -0.990571,
		0.265692, 0.954726, 0.133814,
		0.964030, -0.264164, -0.029378,
		33.777008, 33.203705, 28.535431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505993, 33.926521, 28.358484>,  <33.102188, 33.388622, 28.555996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505993, 33.926521, 28.358484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722874, 33.606586, 28.255507>,  <33.853001, 33.414623, 28.193720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722874, 33.606586, 28.255507>,  <33.505993, 33.926521, 28.358484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722874, 33.606586, 28.255507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007815, 0.311177, -0.950320,
		0.840214, 0.513250, 0.174971,
		0.542199, -0.799839, -0.257444,
		33.885532, 33.366634, 28.178274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093719, 34.185432, 27.801262>,  <33.505993, 33.926521, 28.358484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093719, 34.185432, 27.801262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071529, 33.788692, 27.755381>,  <34.058216, 33.550648, 27.727852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071529, 33.788692, 27.755381>,  <34.093719, 34.185432, 27.801262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071529, 33.788692, 27.755381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077862, 0.118828, -0.989857,
		0.995419, -0.045985, -0.083819,
		-0.055479, -0.991849, -0.114703,
		34.054886, 33.491138, 27.720970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709789, 34.031651, 27.325193>,  <34.093719, 34.185432, 27.801262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709789, 34.031651, 27.325193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463409, 33.716560, 27.321386>,  <34.315582, 33.527508, 27.319103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463409, 33.716560, 27.321386>,  <34.709789, 34.031651, 27.325193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463409, 33.716560, 27.321386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013348, 0.022513, -0.999658,
		0.787670, -0.615614, -0.024381,
		-0.615952, -0.787726, -0.009515,
		34.278625, 33.480244, 27.318531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980869, 33.545635, 26.840685>,  <34.709789, 34.031651, 27.325193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980869, 33.545635, 26.840685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586121, 33.486244, 26.866106>,  <34.349270, 33.450611, 26.881359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586121, 33.486244, 26.866106>,  <34.980869, 33.545635, 26.840685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586121, 33.486244, 26.866106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061863, -0.015960, -0.997957,
		0.149190, -0.988787, 0.006565,
		-0.986872, -0.148479, 0.063551,
		34.290058, 33.441700, 26.885172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809437, 33.105053, 26.235579>,  <34.980869, 33.545635, 26.840685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809437, 33.105053, 26.235579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430267, 33.185017, 26.334764>,  <34.202766, 33.232994, 26.394276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430267, 33.185017, 26.334764>,  <34.809437, 33.105053, 26.235579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430267, 33.185017, 26.334764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241858, 0.054816, -0.968762,
		-0.207255, -0.978280, -0.003612,
		-0.947919, 0.199907, 0.247965,
		34.145893, 33.244987, 26.409155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279678, 32.593487, 25.840670>,  <34.809437, 33.105053, 26.235579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279678, 32.593487, 25.840670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076878, 32.924587, 25.936819>,  <33.955196, 33.123245, 25.994509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076878, 32.924587, 25.936819>,  <34.279678, 32.593487, 25.840670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076878, 32.924587, 25.936819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447836, -0.014693, -0.893995,
		-0.736472, -0.560906, 0.378145,
		-0.507003, 0.827749, 0.240373,
		33.924778, 33.172913, 26.008930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601143, 32.423744, 25.647081>,  <34.279678, 32.593487, 25.840670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601143, 32.423744, 25.647081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626469, 32.822544, 25.664877>,  <33.641663, 33.061825, 25.675554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626469, 32.822544, 25.664877>,  <33.601143, 32.423744, 25.647081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626469, 32.822544, 25.664877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534594, 0.071524, -0.842077,
		-0.842734, 0.029528, 0.537520,
		0.063311, 0.997002, 0.044491,
		33.645462, 33.121643, 25.678225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999622, 32.670719, 25.284142>,  <33.601143, 32.423744, 25.647081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999622, 32.670719, 25.284142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253773, 32.979481, 25.275486>,  <33.406261, 33.164738, 25.270292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253773, 32.979481, 25.275486>,  <32.999622, 32.670719, 25.284142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253773, 32.979481, 25.275486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217411, 0.151925, -0.964184,
		-0.740970, 0.617320, 0.264349,
		0.635371, 0.771903, -0.021640,
		33.444386, 33.211052, 25.268993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659668, 33.158951, 24.847080>,  <32.999622, 32.670719, 25.284142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659668, 33.158951, 24.847080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030933, 33.306812, 24.829828>,  <33.253693, 33.395531, 24.819477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030933, 33.306812, 24.829828>,  <32.659668, 33.158951, 24.847080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030933, 33.306812, 24.829828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151598, 0.269695, -0.950938,
		-0.339889, 0.889167, 0.306361,
		0.928167, 0.369657, -0.043130,
		33.309383, 33.417709, 24.816889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623066, 33.791878, 24.549261>,  <32.659668, 33.158951, 24.847080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623066, 33.791878, 24.549261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985897, 33.659225, 24.445543>,  <33.203594, 33.579636, 24.383312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985897, 33.659225, 24.445543>,  <32.623066, 33.791878, 24.549261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985897, 33.659225, 24.445543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200905, 0.200251, -0.958925,
		0.369932, 0.921912, 0.115017,
		0.907076, -0.331629, -0.259296,
		33.258018, 33.559738, 24.367754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642776, 34.199268, 24.115490>,  <32.623066, 33.791878, 24.549261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642776, 34.199268, 24.115490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934742, 33.932171, 24.057051>,  <33.109921, 33.771912, 24.021988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934742, 33.932171, 24.057051>,  <32.642776, 34.199268, 24.115490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934742, 33.932171, 24.057051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143140, 0.059680, -0.987901,
		0.668383, 0.741996, -0.052020,
		0.729914, -0.667742, -0.146098,
		33.153717, 33.731850, 24.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065613, 34.520103, 23.550957>,  <32.642776, 34.199268, 24.115490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065613, 34.520103, 23.550957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185932, 34.138721, 23.559425>,  <33.258125, 33.909893, 23.564507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185932, 34.138721, 23.559425>,  <33.065613, 34.520103, 23.550957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185932, 34.138721, 23.559425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147867, 0.024698, -0.988699,
		0.942154, 0.300531, 0.148414,
		0.300800, -0.953452, 0.021169,
		33.276173, 33.852684, 23.565777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659878, 34.443523, 23.132793>,  <33.065613, 34.520103, 23.550957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659878, 34.443523, 23.132793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529942, 34.066227, 23.160421>,  <33.451981, 33.839848, 23.176998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529942, 34.066227, 23.160421>,  <33.659878, 34.443523, 23.132793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529942, 34.066227, 23.160421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075773, -0.098753, -0.992223,
		0.942728, -0.317082, 0.103552,
		-0.324842, -0.943243, 0.069071,
		33.432487, 33.783253, 23.181143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097031, 34.108658, 22.687687>,  <33.659878, 34.443523, 23.132793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097031, 34.108658, 22.687687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791183, 33.852959, 22.720476>,  <33.607674, 33.699539, 22.740149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791183, 33.852959, 22.720476>,  <34.097031, 34.108658, 22.687687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791183, 33.852959, 22.720476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011613, -0.140835, -0.989965,
		0.644374, -0.755997, 0.115109,
		-0.764622, -0.639245, 0.081971,
		33.561798, 33.661186, 22.745068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254131, 33.542500, 22.244984>,  <34.097031, 34.108658, 22.687687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254131, 33.542500, 22.244984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858822, 33.522739, 22.302782>,  <33.621635, 33.510883, 22.337461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858822, 33.522739, 22.302782>,  <34.254131, 33.542500, 22.244984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858822, 33.522739, 22.302782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136447, -0.139211, -0.980817,
		0.068568, -0.989030, 0.130838,
		-0.988272, -0.049400, 0.144495,
		33.562340, 33.507919, 22.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534176, 32.802532, 22.214699>,  <34.254131, 33.542500, 22.244984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534176, 32.802532, 22.214699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923706, 32.812466, 22.124319>,  <35.157425, 32.818424, 22.070091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923706, 32.812466, 22.124319>,  <34.534176, 32.802532, 22.214699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923706, 32.812466, 22.124319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218224, -0.380406, 0.898705,
		-0.063634, -0.924486, -0.375867,
		0.973822, 0.024835, -0.225951,
		35.215851, 32.819916, 22.056534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826893, 32.346996, 22.770277>,  <34.534176, 32.802532, 22.214699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826893, 32.346996, 22.770277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145370, 32.538948, 22.622879>,  <35.336456, 32.654118, 22.534441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145370, 32.538948, 22.622879>,  <34.826893, 32.346996, 22.770277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145370, 32.538948, 22.622879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474472, -0.117303, 0.872420,
		0.375428, -0.869459, -0.321084,
		0.796197, 0.479876, -0.368495,
		35.384232, 32.682911, 22.512331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390312, 32.037125, 22.969551>,  <34.826893, 32.346996, 22.770277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390312, 32.037125, 22.969551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546391, 32.393139, 22.875246>,  <35.640038, 32.606747, 22.818663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546391, 32.393139, 22.875246>,  <35.390312, 32.037125, 22.969551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546391, 32.393139, 22.875246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629625, -0.071100, 0.773639,
		0.671804, -0.450311, -0.588132,
		0.390195, 0.890036, -0.235762,
		35.663448, 32.660149, 22.804518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144779, 31.988400, 22.778759>,  <35.390312, 32.037125, 22.969551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144779, 31.988400, 22.778759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093170, 32.360710, 22.915585>,  <36.062206, 32.584095, 22.997679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093170, 32.360710, 22.915585>,  <36.144779, 31.988400, 22.778759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093170, 32.360710, 22.915585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856490, -0.069251, 0.511497,
		0.499778, 0.358969, -0.788266,
		-0.129024, 0.930777, 0.342063,
		36.054462, 32.639942, 23.018204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704105, 32.123653, 22.942289>,  <36.144779, 31.988400, 22.778759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704105, 32.123653, 22.942289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532608, 32.433678, 23.127964>,  <36.429710, 32.619690, 23.239368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532608, 32.433678, 23.127964>,  <36.704105, 32.123653, 22.942289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532608, 32.433678, 23.127964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770806, 0.045834, 0.635419,
		0.471210, 0.630228, -0.617069,
		-0.428742, 0.775056, 0.464186,
		36.403984, 32.666195, 23.267220>
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
