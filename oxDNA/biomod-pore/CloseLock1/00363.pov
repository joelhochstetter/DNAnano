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
	<24.151541, 34.874645, 35.336918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318823, 35.081425, 35.038155>,  <24.419193, 35.205490, 34.858898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.318823, 35.081425, 35.038155>,  <24.151541, 34.874645, 35.336918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318823, 35.081425, 35.038155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529589, 0.529295, 0.662859,
		0.737996, -0.672766, -0.052413,
		0.418207, 0.516945, -0.746907,
		24.444284, 35.236507, 34.814083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944471, 34.847244, 35.408718>,  <24.151541, 34.874645, 35.336918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944471, 34.847244, 35.408718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808208, 35.180412, 35.234268>,  <24.726450, 35.380314, 35.129597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.808208, 35.180412, 35.234268>,  <24.944471, 34.847244, 35.408718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808208, 35.180412, 35.234268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342731, 0.541963, 0.767341,
		0.875493, 0.111928, -0.470090,
		-0.340658, 0.832916, -0.436123,
		24.706011, 35.430286, 35.103432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622719, 34.829617, 35.375355>,  <24.944471, 34.847244, 35.408718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622719, 34.829617, 35.375355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880163, 35.088573, 35.538643>,  <26.034630, 35.243950, 35.636616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880163, 35.088573, 35.538643>,  <25.622719, 34.829617, 35.375355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880163, 35.088573, 35.538643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729114, -0.680821, -0.069824,
		0.232721, 0.342579, -0.910209,
		0.643610, 0.647397, 0.408221,
		26.073246, 35.282791, 35.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119686, 35.069862, 34.888699>,  <25.622719, 34.829617, 35.375355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119686, 35.069862, 34.888699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247528, 35.030979, 35.265720>,  <26.324234, 35.007648, 35.491932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247528, 35.030979, 35.265720>,  <26.119686, 35.069862, 34.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247528, 35.030979, 35.265720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382908, -0.896637, -0.222313,
		0.866738, 0.431962, -0.249347,
		0.319605, -0.097210, 0.942551,
		26.343409, 35.001816, 35.548485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829885, 34.995445, 34.908634>,  <26.119686, 35.069862, 34.888699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829885, 34.995445, 34.908634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649401, 34.822533, 35.220924>,  <26.541109, 34.718784, 35.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649401, 34.822533, 35.220924>,  <26.829885, 34.995445, 34.908634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649401, 34.822533, 35.220924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316502, -0.895495, -0.312913,
		0.834406, 0.105911, 0.540879,
		-0.451214, -0.432286, 0.780727,
		26.514036, 34.692848, 35.455143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278299, 34.478088, 35.080589>,  <26.829885, 34.995445, 34.908634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278299, 34.478088, 35.080589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956505, 34.367119, 35.290668>,  <26.763428, 34.300537, 35.416718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956505, 34.367119, 35.290668>,  <27.278299, 34.478088, 35.080589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956505, 34.367119, 35.290668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157673, -0.952244, -0.261479,
		0.572660, -0.127546, 0.809810,
		-0.804487, -0.277424, 0.525201,
		26.715158, 34.283894, 35.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445705, 34.038292, 35.586571>,  <27.278299, 34.478088, 35.080589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445705, 34.038292, 35.586571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059278, 33.949871, 35.533134>,  <26.827421, 33.896816, 35.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059278, 33.949871, 35.533134>,  <27.445705, 34.038292, 35.586571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059278, 33.949871, 35.533134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236961, -0.964342, -0.117871,
		-0.102771, -0.145527, 0.984002,
		-0.966068, -0.221056, -0.133591,
		26.769459, 33.883553, 35.493057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397120, 33.400490, 36.015961>,  <27.445705, 34.038292, 35.586571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397120, 33.400490, 36.015961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086336, 33.421841, 35.765045>,  <26.899866, 33.434650, 35.614498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086336, 33.421841, 35.765045>,  <27.397120, 33.400490, 36.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086336, 33.421841, 35.765045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094838, -0.975104, -0.200444,
		-0.622369, -0.215227, 0.752551,
		-0.776957, 0.053380, -0.627286,
		26.853249, 33.437855, 35.576859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955996, 32.921505, 36.160797>,  <27.397120, 33.400490, 36.015961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955996, 32.921505, 36.160797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798847, 32.973351, 35.796631>,  <26.704557, 33.004456, 35.578133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798847, 32.973351, 35.796631>,  <26.955996, 32.921505, 36.160797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798847, 32.973351, 35.796631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096622, -0.990356, -0.099297,
		-0.914503, 0.048955, 0.401605,
		-0.392871, 0.129611, -0.910414,
		26.680986, 33.012234, 35.523506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469929, 32.450481, 36.106453>,  <26.955996, 32.921505, 36.160797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469929, 32.450481, 36.106453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556898, 32.537170, 35.725769>,  <26.609079, 32.589184, 35.497356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556898, 32.537170, 35.725769>,  <26.469929, 32.450481, 36.106453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556898, 32.537170, 35.725769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024090, -0.973550, -0.227202,
		-0.975780, 0.072326, -0.206452,
		0.217424, 0.216726, -0.951713,
		26.622126, 32.602188, 35.440254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089951, 31.998091, 35.771927>,  <26.469929, 32.450481, 36.106453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089951, 31.998091, 35.771927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373308, 32.122295, 35.518391>,  <26.543324, 32.196819, 35.366268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373308, 32.122295, 35.518391>,  <26.089951, 31.998091, 35.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373308, 32.122295, 35.518391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117446, -0.937369, -0.327943,
		-0.695976, 0.157871, -0.700496,
		0.708396, 0.310511, -0.633844,
		26.585827, 32.215450, 35.328236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921103, 31.750769, 35.152496>,  <26.089951, 31.998091, 35.771927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921103, 31.750769, 35.152496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311504, 31.802452, 35.082386>,  <26.545746, 31.833462, 35.040318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311504, 31.802452, 35.082386>,  <25.921103, 31.750769, 35.152496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311504, 31.802452, 35.082386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067286, -0.944490, -0.321577,
		-0.207102, 0.302066, -0.930519,
		0.976003, 0.129210, -0.175281,
		26.604305, 31.841215, 35.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007933, 31.441587, 34.627316>,  <25.921103, 31.750769, 35.152496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007933, 31.441587, 34.627316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385672, 31.460344, 34.757553>,  <26.612314, 31.471598, 34.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385672, 31.460344, 34.757553>,  <26.007933, 31.441587, 34.627316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385672, 31.460344, 34.757553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136871, -0.956052, -0.259289,
		0.299123, 0.289423, -0.909263,
		0.944347, 0.046892, 0.325591,
		26.668976, 31.474413, 34.855228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414543, 31.273560, 34.087776>,  <26.007933, 31.441587, 34.627316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414543, 31.273560, 34.087776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628736, 31.201578, 34.417835>,  <26.757252, 31.158388, 34.615871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628736, 31.201578, 34.417835>,  <26.414543, 31.273560, 34.087776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628736, 31.201578, 34.417835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105994, -0.954990, -0.277055,
		0.837869, 0.235819, -0.492306,
		0.535482, -0.179955, 0.825152,
		26.789381, 31.147593, 34.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830017, 30.743639, 33.886623>,  <26.414543, 31.273560, 34.087776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830017, 30.743639, 33.886623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889368, 30.724167, 34.281715>,  <26.924978, 30.712484, 34.518772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889368, 30.724167, 34.281715>,  <26.830017, 30.743639, 33.886623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889368, 30.724167, 34.281715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146882, -0.986625, -0.070690,
		0.977962, 0.155568, -0.139241,
		0.148375, -0.048680, 0.987732,
		26.933880, 30.709562, 34.578033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386887, 30.390430, 33.892193>,  <26.830017, 30.743639, 33.886623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386887, 30.390430, 33.892193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216280, 30.342251, 34.250763>,  <27.113916, 30.313343, 34.465904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216280, 30.342251, 34.250763>,  <27.386887, 30.390430, 33.892193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216280, 30.342251, 34.250763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274537, -0.961575, 0.001420,
		0.861807, 0.246707, 0.443198,
		-0.426518, -0.120451, 0.896423,
		27.088324, 30.306116, 34.519691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833216, 30.001345, 34.331013>,  <27.386887, 30.390430, 33.892193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833216, 30.001345, 34.331013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 29.962271, 34.518848>,  <27.271641, 29.938826, 34.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 29.962271, 34.518848>,  <27.833216, 30.001345, 34.331013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482231, 29.962271, 34.518848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159651, -0.982698, 0.093896,
		0.452295, 0.157361, 0.877876,
		-0.877463, -0.097685, 0.469592,
		27.218992, 29.932964, 34.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963512, 29.693729, 35.039696>,  <27.833216, 30.001345, 34.331013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963512, 29.693729, 35.039696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602283, 29.611557, 34.888828>,  <27.385546, 29.562254, 34.798306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602283, 29.611557, 34.888828>,  <27.963512, 29.693729, 35.039696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602283, 29.611557, 34.888828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207111, -0.977633, 0.036584,
		-0.376252, -0.045079, 0.925420,
		-0.903072, -0.205429, -0.377172,
		27.331362, 29.549929, 34.775677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746199, 29.078150, 35.336727>,  <27.963512, 29.693729, 35.039696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746199, 29.078150, 35.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477394, 29.097321, 35.041130>,  <27.316113, 29.108824, 34.863773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477394, 29.097321, 35.041130>,  <27.746199, 29.078150, 35.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477394, 29.097321, 35.041130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124597, -0.976360, -0.176627,
		-0.729985, -0.210771, 0.650152,
		-0.672010, 0.047928, -0.738989,
		27.275791, 29.111698, 34.819435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312460, 28.457760, 35.387772>,  <27.746199, 29.078150, 35.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312460, 28.457760, 35.387772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254982, 28.597294, 35.017330>,  <27.220495, 28.681015, 34.795067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254982, 28.597294, 35.017330>,  <27.312460, 28.457760, 35.387772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254982, 28.597294, 35.017330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122857, -0.922286, -0.366463,
		-0.981966, -0.166437, 0.089672,
		-0.143697, 0.348837, -0.926102,
		27.211872, 28.701944, 34.739498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761295, 28.170715, 35.153793>,  <27.312460, 28.457760, 35.387772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761295, 28.170715, 35.153793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960133, 28.274586, 34.822620>,  <27.079435, 28.336908, 34.623917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960133, 28.274586, 34.822620>,  <26.761295, 28.170715, 35.153793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960133, 28.274586, 34.822620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064892, -0.962622, -0.262960,
		-0.865267, 0.076990, -0.495365,
		0.497094, 0.259676, -0.827929,
		27.109261, 28.352489, 34.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477716, 27.708931, 34.551735>,  <26.761295, 28.170715, 35.153793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477716, 27.708931, 34.551735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818842, 27.855673, 34.403072>,  <27.023518, 27.943718, 34.313877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818842, 27.855673, 34.403072>,  <26.477716, 27.708931, 34.551735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818842, 27.855673, 34.403072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247258, -0.910518, -0.331392,
		-0.459971, 0.190721, -0.867210,
		0.852813, 0.366855, -0.371654,
		27.074686, 27.965729, 34.291576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548841, 27.469097, 33.941555>,  <26.477716, 27.708931, 34.551735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548841, 27.469097, 33.941555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921503, 27.551832, 34.061050>,  <27.145100, 27.601473, 34.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921503, 27.551832, 34.061050>,  <26.548841, 27.469097, 33.941555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921503, 27.551832, 34.061050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302576, -0.896841, -0.322682,
		0.201178, 0.391018, -0.898127,
		0.931652, 0.206835, 0.298737,
		27.200998, 27.613882, 34.150673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877357, 27.045174, 33.572990>,  <26.548841, 27.469097, 33.941555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877357, 27.045174, 33.572990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170832, 27.147966, 33.824596>,  <27.346916, 27.209642, 33.975559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170832, 27.147966, 33.824596>,  <26.877357, 27.045174, 33.572990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170832, 27.147966, 33.824596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386841, -0.919031, -0.075742,
		0.558624, 0.298901, -0.773691,
		0.733685, 0.256984, 0.629020,
		27.390938, 27.225061, 34.013302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463139, 26.807228, 33.331924>,  <26.877357, 27.045174, 33.572990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463139, 26.807228, 33.331924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598934, 26.848896, 33.705853>,  <27.680410, 26.873896, 33.930210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598934, 26.848896, 33.705853>,  <27.463139, 26.807228, 33.331924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598934, 26.848896, 33.705853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401619, -0.914753, -0.043918,
		0.850559, 0.390353, -0.352383,
		0.339487, 0.104169, 0.934825,
		27.700781, 26.880146, 33.986301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141844, 26.615557, 33.375587>,  <27.463139, 26.807228, 33.331924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141844, 26.615557, 33.375587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037500, 26.564983, 33.758411>,  <27.974894, 26.534639, 33.988106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037500, 26.564983, 33.758411>,  <28.141844, 26.615557, 33.375587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037500, 26.564983, 33.758411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417656, -0.908584, -0.006193,
		0.870354, 0.398107, 0.289820,
		-0.260860, -0.126436, 0.957061,
		27.959242, 26.527052, 34.045528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729383, 26.544600, 33.911251>,  <28.141844, 26.615557, 33.375587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729383, 26.544600, 33.911251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422440, 26.356932, 34.086082>,  <28.238274, 26.244331, 34.190983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422440, 26.356932, 34.086082>,  <28.729383, 26.544600, 33.911251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422440, 26.356932, 34.086082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610925, -0.741975, 0.276124,
		0.194752, 0.478908, 0.855990,
		-0.767361, -0.469170, 0.437077,
		28.192232, 26.216181, 34.217205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932520, 26.296276, 34.597359>,  <28.729383, 26.544600, 33.911251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932520, 26.296276, 34.597359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635201, 26.060623, 34.470596>,  <28.456808, 25.919231, 34.394539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635201, 26.060623, 34.470596>,  <28.932520, 26.296276, 34.597359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635201, 26.060623, 34.470596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548889, -0.807907, 0.214494,
		-0.382398, -0.014514, 0.923884,
		-0.743299, -0.589131, -0.316908,
		28.412210, 25.883884, 34.375523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633539, 25.868908, 35.105743>,  <28.932520, 26.296276, 34.597359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633539, 25.868908, 35.105743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531673, 25.647093, 34.788849>,  <28.470554, 25.514004, 34.598713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531673, 25.647093, 34.788849>,  <28.633539, 25.868908, 35.105743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531673, 25.647093, 34.788849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498785, -0.777183, 0.383666,
		-0.828468, -0.297449, 0.474514,
		-0.254663, -0.554536, -0.792235,
		28.455275, 25.480732, 34.551178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900677, 25.992363, 35.756035>,  <28.633539, 25.868908, 35.105743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900677, 25.992363, 35.756035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681572, 26.286463, 35.915718>,  <28.550110, 26.462923, 36.011528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681572, 26.286463, 35.915718>,  <28.900677, 25.992363, 35.756035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681572, 26.286463, 35.915718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150036, -0.555749, 0.817699,
		0.823072, 0.388008, 0.414732,
		-0.547760, 0.735250, 0.399207,
		28.517244, 26.507038, 36.035480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103693, 25.746546, 36.429020>,  <28.900677, 25.992363, 35.756035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103693, 25.746546, 36.429020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786116, 25.983315, 36.373474>,  <28.595570, 26.125376, 36.340149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786116, 25.983315, 36.373474>,  <29.103693, 25.746546, 36.429020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786116, 25.983315, 36.373474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526699, -0.555518, 0.643419,
		0.303714, 0.583976, 0.752815,
		-0.793943, 0.591922, -0.138861,
		28.547934, 26.160891, 36.331818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837315, 25.914080, 37.090473>,  <29.103693, 25.746546, 36.429020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837315, 25.914080, 37.090473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538815, 25.937204, 36.825211>,  <28.359715, 25.951080, 36.666054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538815, 25.937204, 36.825211>,  <28.837315, 25.914080, 37.090473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538815, 25.937204, 36.825211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566762, -0.577688, 0.587416,
		-0.349135, 0.814207, 0.463865,
		-0.746248, 0.057814, -0.663153,
		28.314939, 25.954548, 36.626266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950497, 26.636057, 37.368809>,  <28.837315, 25.914080, 37.090473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950497, 26.636057, 37.368809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283369, 26.823595, 37.250381>,  <29.483093, 26.936119, 37.179325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283369, 26.823595, 37.250381>,  <28.950497, 26.636057, 37.368809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283369, 26.823595, 37.250381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411508, 0.880058, 0.236980,
		0.371664, -0.075376, 0.925303,
		0.832182, 0.468846, -0.296068,
		29.533024, 26.964249, 37.161560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263554, 27.034540, 37.977909>,  <28.950497, 26.636057, 37.368809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263554, 27.034540, 37.977909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268932, 27.123798, 37.588032>,  <29.272160, 27.177353, 37.354107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268932, 27.123798, 37.588032>,  <29.263554, 27.034540, 37.977909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268932, 27.123798, 37.588032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226203, 0.950189, 0.214414,
		0.973987, 0.217596, 0.063251,
		0.013445, 0.223144, -0.974693,
		29.272966, 27.190741, 37.295624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667356, 27.553923, 38.015850>,  <29.263554, 27.034540, 37.977909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667356, 27.553923, 38.015850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482628, 27.570042, 37.661427>,  <29.371792, 27.579712, 37.448772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482628, 27.570042, 37.661427>,  <29.667356, 27.553923, 38.015850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482628, 27.570042, 37.661427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226265, 0.960565, 0.161616,
		0.857628, 0.275121, -0.434491,
		-0.461820, 0.040296, -0.886058,
		29.344082, 27.582130, 37.395611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966618, 28.037729, 37.493221>,  <29.667356, 27.553923, 38.015850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966618, 28.037729, 37.493221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571384, 27.990112, 37.454189>,  <29.334244, 27.961542, 37.430771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571384, 27.990112, 37.454189>,  <29.966618, 28.037729, 37.493221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571384, 27.990112, 37.454189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132888, 0.979635, 0.150521,
		0.077672, 0.161695, -0.983779,
		-0.988083, -0.119042, -0.097578,
		29.274960, 27.954399, 37.424915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535467, 28.372623, 36.850693>,  <29.966618, 28.037729, 37.493221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535467, 28.372623, 36.850693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357136, 28.368448, 37.208717>,  <29.250137, 28.365944, 37.423531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357136, 28.368448, 37.208717>,  <29.535467, 28.372623, 36.850693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357136, 28.368448, 37.208717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076571, 0.996711, -0.026519,
		-0.891838, -0.080358, -0.445161,
		-0.445828, -0.010436, 0.895058,
		29.223387, 28.365318, 37.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913334, 28.758846, 36.899059>,  <29.535467, 28.372623, 36.850693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913334, 28.758846, 36.899059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054186, 28.728622, 37.272217>,  <29.138697, 28.710487, 37.496113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054186, 28.728622, 37.272217>,  <28.913334, 28.758846, 36.899059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054186, 28.728622, 37.272217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110764, 0.986367, 0.121699,
		-0.929373, -0.146185, 0.338962,
		0.352131, -0.075559, 0.932896,
		29.159824, 28.705956, 37.552086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481100, 29.077944, 37.321404>,  <28.913334, 28.758846, 36.899059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481100, 29.077944, 37.321404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826172, 29.104975, 37.521893>,  <29.033215, 29.121193, 37.642185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826172, 29.104975, 37.521893>,  <28.481100, 29.077944, 37.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826172, 29.104975, 37.521893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186707, 0.963583, 0.191436,
		-0.470030, -0.258729, 0.843878,
		0.862677, 0.067577, 0.501220,
		29.084974, 29.125248, 37.672260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307814, 29.555309, 37.830208>,  <28.481100, 29.077944, 37.321404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307814, 29.555309, 37.830208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707556, 29.559080, 37.844044>,  <28.947401, 29.561342, 37.852345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707556, 29.559080, 37.844044>,  <28.307814, 29.555309, 37.830208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707556, 29.559080, 37.844044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018481, 0.962215, 0.271664,
		-0.030725, -0.272129, 0.961770,
		0.999357, 0.009428, 0.034593,
		29.007362, 29.561909, 37.854424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465895, 29.840691, 38.423710>,  <28.307814, 29.555309, 37.830208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465895, 29.840691, 38.423710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794630, 29.901535, 38.204094>,  <28.991871, 29.938042, 38.072323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794630, 29.901535, 38.204094>,  <28.465895, 29.840691, 38.423710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794630, 29.901535, 38.204094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006652, 0.966195, 0.257728,
		0.569683, -0.208158, 0.795067,
		0.821837, 0.152112, -0.549041,
		29.041182, 29.947168, 38.039383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901012, 30.319008, 38.787735>,  <28.465895, 29.840691, 38.423710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901012, 30.319008, 38.787735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036678, 30.324902, 38.411491>,  <29.118078, 30.328438, 38.185745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036678, 30.324902, 38.411491>,  <28.901012, 30.319008, 38.787735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036678, 30.324902, 38.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108851, 0.992547, 0.054796,
		0.934407, -0.120971, 0.335035,
		0.339167, 0.014733, -0.940611,
		29.138428, 30.329321, 38.129307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422947, 30.751217, 38.804523>,  <28.901012, 30.319008, 38.787735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422947, 30.751217, 38.804523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345890, 30.751446, 38.412014>,  <29.299656, 30.751583, 38.176510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345890, 30.751446, 38.412014>,  <29.422947, 30.751217, 38.804523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345890, 30.751446, 38.412014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076773, 0.996943, -0.014492,
		0.978262, -0.078126, -0.192095,
		-0.192640, 0.000571, -0.981269,
		29.288097, 30.751617, 38.117634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935688, 31.142050, 38.429611>,  <29.422947, 30.751217, 38.804523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935688, 31.142050, 38.429611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624804, 31.132801, 38.178085>,  <29.438272, 31.127253, 38.027168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624804, 31.132801, 38.178085>,  <29.935688, 31.142050, 38.429611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624804, 31.132801, 38.178085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109475, 0.979116, -0.171312,
		0.619645, -0.201985, -0.758447,
		-0.777210, -0.023121, -0.628817,
		29.391640, 31.125864, 37.989441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145821, 31.486240, 37.907700>,  <29.935688, 31.142050, 38.429611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145821, 31.486240, 37.907700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746286, 31.502077, 37.896690>,  <29.506565, 31.511580, 37.890083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746286, 31.502077, 37.896690>,  <30.145821, 31.486240, 37.907700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746286, 31.502077, 37.896690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045237, 0.967013, -0.250678,
		0.016691, -0.251632, -0.967679,
		-0.998837, 0.039591, -0.027524,
		29.446636, 31.513954, 37.888432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007465, 31.909925, 37.412445>,  <30.145821, 31.486240, 37.907700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007465, 31.909925, 37.412445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662762, 31.918913, 37.615173>,  <29.455940, 31.924305, 37.736809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662762, 31.918913, 37.615173>,  <30.007465, 31.909925, 37.412445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662762, 31.918913, 37.615173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116557, 0.963525, -0.240904,
		-0.493746, -0.266675, -0.827707,
		-0.861759, 0.022470, 0.506820,
		29.404234, 31.925653, 37.767220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663479, 32.371971, 37.007221>,  <30.007465, 31.909925, 37.412445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663479, 32.371971, 37.007221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445267, 32.332695, 37.340149>,  <29.314341, 32.309128, 37.539906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445267, 32.332695, 37.340149>,  <29.663479, 32.371971, 37.007221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445267, 32.332695, 37.340149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280078, 0.957375, -0.070631,
		-0.789908, -0.271646, -0.549776,
		-0.545529, -0.098189, 0.832320,
		29.281609, 32.303238, 37.589844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064640, 32.647125, 36.835392>,  <29.663479, 32.371971, 37.007221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064640, 32.647125, 36.835392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065670, 32.665916, 37.234947>,  <29.066288, 32.677193, 37.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065670, 32.665916, 37.234947>,  <29.064640, 32.647125, 36.835392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065670, 32.665916, 37.234947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303208, 0.951908, -0.043990,
		-0.952921, -0.302759, 0.016698,
		0.002577, 0.046982, 0.998892,
		29.066442, 32.680012, 37.534615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371073, 32.895012, 36.983658>,  <29.064640, 32.647125, 36.835392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371073, 32.895012, 36.983658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629881, 32.978397, 37.277027>,  <28.785166, 33.028427, 37.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629881, 32.978397, 37.277027>,  <28.371073, 32.895012, 36.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629881, 32.978397, 37.277027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235424, 0.969520, -0.067876,
		-0.725217, -0.128748, 0.676376,
		0.647021, 0.208459, 0.733422,
		28.823988, 33.040936, 37.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926460, 33.190434, 37.413807>,  <28.371073, 32.895012, 36.983658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926460, 33.190434, 37.413807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312727, 33.284847, 37.457203>,  <28.544487, 33.341496, 37.483238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312727, 33.284847, 37.457203>,  <27.926460, 33.190434, 37.413807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312727, 33.284847, 37.457203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230402, 0.971117, -0.062018,
		-0.119993, 0.034893, 0.992161,
		0.965669, 0.236038, 0.108488,
		28.602428, 33.355659, 37.489750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954069, 33.391403, 38.102585>,  <27.926460, 33.190434, 37.413807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954069, 33.391403, 38.102585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282801, 33.566093, 37.956238>,  <28.480040, 33.670910, 37.868427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282801, 33.566093, 37.956238>,  <27.954069, 33.391403, 38.102585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282801, 33.566093, 37.956238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340077, 0.891267, 0.299985,
		0.457101, -0.122113, 0.880992,
		0.821831, 0.436729, -0.365871,
		28.529350, 33.697113, 37.846478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262148, 33.865154, 38.636021>,  <27.954069, 33.391403, 38.102585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262148, 33.865154, 38.636021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368015, 33.984806, 38.269314>,  <28.431536, 34.056599, 38.049290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368015, 33.984806, 38.269314>,  <28.262148, 33.865154, 38.636021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368015, 33.984806, 38.269314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313161, 0.925810, 0.211675,
		0.912075, 0.231074, 0.338709,
		0.264667, 0.299133, -0.916772,
		28.447416, 34.074547, 37.994282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462191, 34.556107, 38.709469>,  <28.262148, 33.865154, 38.636021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462191, 34.556107, 38.709469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415743, 34.537518, 38.312611>,  <28.387875, 34.526363, 38.074493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415743, 34.537518, 38.312611>,  <28.462191, 34.556107, 38.709469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415743, 34.537518, 38.312611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397686, 0.917515, 0.003570,
		0.910144, 0.394978, -0.125019,
		-0.116116, -0.046469, -0.992148,
		28.380907, 34.523579, 38.014965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861898, 35.152103, 38.339542>,  <28.462191, 34.556107, 38.709469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861898, 35.152103, 38.339542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571915, 35.000042, 38.109787>,  <28.397924, 34.908806, 37.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571915, 35.000042, 38.109787>,  <28.861898, 35.152103, 38.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571915, 35.000042, 38.109787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370940, 0.918123, -0.139475,
		0.580379, 0.111948, -0.806615,
		-0.724958, -0.380154, -0.574385,
		28.354427, 34.885994, 37.937469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953051, 35.493557, 37.639465>,  <28.861898, 35.152103, 38.339542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953051, 35.493557, 37.639465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596252, 35.365402, 37.767025>,  <28.382174, 35.288509, 37.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596252, 35.365402, 37.767025>,  <28.953051, 35.493557, 37.639465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596252, 35.365402, 37.767025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358382, 0.931174, -0.066910,
		-0.275515, -0.173972, -0.945423,
		-0.891994, -0.320388, 0.318901,
		28.328653, 35.269287, 37.862694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695787, 35.507156, 37.426338>,  <28.953051, 35.493557, 37.639465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695787, 35.507156, 37.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062313, 35.365253, 37.352024>,  <30.282228, 35.280113, 37.307434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062313, 35.365253, 37.352024>,  <29.695787, 35.507156, 37.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062313, 35.365253, 37.352024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377427, 0.609968, 0.696770,
		-0.133861, -0.708580, 0.692817,
		0.916313, -0.354758, -0.185787,
		30.337208, 35.258827, 37.296288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057831, 35.280407, 37.995350>,  <29.695787, 35.507156, 37.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057831, 35.280407, 37.995350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364582, 35.384636, 37.760742>,  <30.548634, 35.447174, 37.619980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364582, 35.384636, 37.760742>,  <30.057831, 35.280407, 37.995350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364582, 35.384636, 37.760742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385610, 0.543452, 0.745631,
		0.513028, -0.797976, 0.316286,
		0.766882, 0.260566, -0.586514,
		30.594645, 35.462807, 37.584785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719860, 35.063931, 38.349354>,  <30.057831, 35.280407, 37.995350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719860, 35.063931, 38.349354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752735, 35.366489, 38.089779>,  <30.772461, 35.548023, 37.934036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752735, 35.366489, 38.089779>,  <30.719860, 35.063931, 38.349354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752735, 35.366489, 38.089779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613888, 0.474521, 0.630849,
		0.785102, -0.450221, -0.425341,
		0.082189, 0.756393, -0.648933,
		30.777391, 35.593407, 37.895100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383863, 35.318913, 38.036682>,  <30.719860, 35.063931, 38.349354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383863, 35.318913, 38.036682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125675, 35.623180, 38.064240>,  <30.970762, 35.805740, 38.080776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125675, 35.623180, 38.064240>,  <31.383863, 35.318913, 38.036682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125675, 35.623180, 38.064240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554186, 0.404360, 0.727579,
		0.525588, 0.507814, -0.682556,
		-0.645473, 0.760670, 0.068897,
		30.932034, 35.851383, 38.084908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512339, 35.917099, 38.451839>,  <31.383863, 35.318913, 38.036682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512339, 35.917099, 38.451839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361990, 36.181492, 38.711632>,  <31.271782, 36.340126, 38.867508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361990, 36.181492, 38.711632>,  <31.512339, 35.917099, 38.451839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361990, 36.181492, 38.711632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903120, 0.418299, 0.096952,
		-0.207595, 0.623003, -0.754170,
		-0.375870, 0.660979, 0.649483,
		31.249229, 36.379787, 38.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603748, 36.618095, 38.230511>,  <31.512339, 35.917099, 38.451839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603748, 36.618095, 38.230511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610695, 36.581131, 38.628738>,  <31.614862, 36.558952, 38.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610695, 36.581131, 38.628738>,  <31.603748, 36.618095, 38.230511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610695, 36.581131, 38.628738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973812, 0.227317, 0.004113,
		-0.226690, 0.969426, 0.093940,
		0.017367, -0.092412, 0.995569,
		31.615906, 36.553406, 38.927410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867498, 37.260616, 38.617981>,  <31.603748, 36.618095, 38.230511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867498, 37.260616, 38.617981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925497, 36.908348, 38.798382>,  <31.960297, 36.696987, 38.906624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925497, 36.908348, 38.798382>,  <31.867498, 37.260616, 38.617981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925497, 36.908348, 38.798382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949860, 0.251516, 0.185757,
		-0.277024, 0.401457, 0.872978,
		0.144995, -0.880666, 0.451004,
		31.968996, 36.644150, 38.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164059, 37.297752, 39.212189>,  <31.867498, 37.260616, 38.617981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164059, 37.297752, 39.212189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287228, 36.922253, 39.150307>,  <32.361130, 36.696953, 39.113178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287228, 36.922253, 39.150307>,  <32.164059, 37.297752, 39.212189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287228, 36.922253, 39.150307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948278, 0.289635, 0.129922,
		-0.077158, -0.186705, 0.979381,
		0.307920, -0.938751, -0.154701,
		32.379604, 36.640629, 39.103897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728317, 37.117645, 39.658958>,  <32.164059, 37.297752, 39.212189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728317, 37.117645, 39.658958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714085, 36.832722, 39.939342>,  <32.705544, 36.661766, 40.107574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714085, 36.832722, 39.939342>,  <32.728317, 37.117645, 39.658958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714085, 36.832722, 39.939342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144823, 0.690323, 0.708858,
		-0.988817, 0.126739, 0.078595,
		-0.035584, -0.712314, 0.700959,
		32.703411, 36.619026, 40.149632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088516, 37.167889, 40.072453>,  <32.728317, 37.117645, 39.658958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088516, 37.167889, 40.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384293, 37.010391, 40.290878>,  <32.561760, 36.915894, 40.421936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384293, 37.010391, 40.290878>,  <32.088516, 37.167889, 40.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384293, 37.010391, 40.290878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039748, 0.784179, 0.619260,
		-0.672047, -0.479611, 0.564204,
		0.739441, -0.393746, 0.546068,
		32.606125, 36.892269, 40.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864288, 37.259605, 40.796333>,  <32.088516, 37.167889, 40.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864288, 37.259605, 40.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260303, 37.224464, 40.752327>,  <32.497913, 37.203381, 40.725922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260303, 37.224464, 40.752327>,  <31.864288, 37.259605, 40.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260303, 37.224464, 40.752327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133610, 0.832620, 0.537487,
		0.044384, -0.546833, 0.836064,
		0.990039, -0.087851, -0.110018,
		32.557316, 37.198109, 40.719322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123104, 37.429619, 41.403618>,  <31.864288, 37.259605, 40.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123104, 37.429619, 41.403618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470116, 37.457710, 41.206657>,  <32.678322, 37.474567, 41.088482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470116, 37.457710, 41.206657>,  <32.123104, 37.429619, 41.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470116, 37.457710, 41.206657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293978, 0.726146, 0.621521,
		0.401204, -0.683944, 0.609308,
		0.867532, 0.070233, -0.492397,
		32.730377, 37.478779, 41.058937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532139, 37.299061, 41.919487>,  <32.123104, 37.429619, 41.403618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532139, 37.299061, 41.919487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737652, 37.493702, 41.636856>,  <32.860962, 37.610485, 41.467278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737652, 37.493702, 41.636856>,  <32.532139, 37.299061, 41.919487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737652, 37.493702, 41.636856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402816, 0.590337, 0.699458,
		0.757471, -0.643991, 0.107297,
		0.513786, 0.486599, -0.706574,
		32.891788, 37.639683, 41.424885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211857, 37.319210, 42.112156>,  <32.532139, 37.299061, 41.919487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211857, 37.319210, 42.112156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169006, 37.620174, 41.852184>,  <33.143295, 37.800751, 41.696201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169006, 37.620174, 41.852184>,  <33.211857, 37.319210, 42.112156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169006, 37.620174, 41.852184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396610, 0.631766, 0.666012,
		0.911715, -0.186419, -0.366093,
		-0.107128, 0.752409, -0.649926,
		33.136868, 37.845898, 41.657207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810257, 37.806217, 42.154049>,  <33.211857, 37.319210, 42.112156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810257, 37.806217, 42.154049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530010, 38.026756, 41.972878>,  <33.361862, 38.159081, 41.864174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530010, 38.026756, 41.972878>,  <33.810257, 37.806217, 42.154049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530010, 38.026756, 41.972878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216751, 0.769225, 0.601092,
		0.679820, 0.322962, -0.658438,
		-0.700617, 0.551352, -0.452932,
		33.319824, 38.192162, 41.836998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143295, 38.416634, 41.990723>,  <33.810257, 37.806217, 42.154049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143295, 38.416634, 41.990723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752373, 38.498188, 41.967739>,  <33.517818, 38.547123, 41.953949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752373, 38.498188, 41.967739>,  <34.143295, 38.416634, 41.990723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752373, 38.498188, 41.967739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126721, 0.780076, 0.612718,
		0.169749, 0.591532, -0.788210,
		-0.977306, 0.203891, -0.057458,
		33.459183, 38.559357, 41.950500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152462, 39.176647, 41.883240>,  <34.143295, 38.416634, 41.990723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152462, 39.176647, 41.883240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782337, 39.095802, 42.011581>,  <33.560261, 39.047295, 42.088589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782337, 39.095802, 42.011581>,  <34.152462, 39.176647, 41.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782337, 39.095802, 42.011581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108023, 0.670576, 0.733933,
		-0.363497, 0.713777, -0.598659,
		-0.925311, -0.202113, 0.320857,
		33.504745, 39.035168, 42.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887436, 39.776714, 42.068554>,  <34.152462, 39.176647, 41.883240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887436, 39.776714, 42.068554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697979, 39.486515, 42.268276>,  <33.584305, 39.312393, 42.388111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697979, 39.486515, 42.268276>,  <33.887436, 39.776714, 42.068554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697979, 39.486515, 42.268276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002499, 0.568038, 0.822998,
		-0.880712, 0.388562, -0.270863,
		-0.473646, -0.725501, 0.499307,
		33.555885, 39.268864, 42.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581394, 40.134365, 42.557732>,  <33.887436, 39.776714, 42.068554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581394, 40.134365, 42.557732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531567, 39.770836, 42.716995>,  <33.501671, 39.552719, 42.812553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531567, 39.770836, 42.716995>,  <33.581394, 40.134365, 42.557732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531567, 39.770836, 42.716995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224203, 0.365121, 0.903559,
		-0.966548, 0.201826, 0.158277,
		-0.124572, -0.908820, 0.398157,
		33.494194, 39.498192, 42.836441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250149, 40.340584, 43.120289>,  <33.581394, 40.134365, 42.557732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250149, 40.340584, 43.120289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429012, 39.988964, 43.186413>,  <33.536331, 39.777992, 43.226089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429012, 39.988964, 43.186413>,  <33.250149, 40.340584, 43.120289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429012, 39.988964, 43.186413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130922, 0.247152, 0.960091,
		-0.884823, -0.407667, 0.225602,
		0.447155, -0.879047, 0.165313,
		33.563160, 39.725250, 43.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074848, 40.165115, 43.842232>,  <33.250149, 40.340584, 43.120289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074848, 40.165115, 43.842232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374271, 39.909912, 43.770008>,  <33.553925, 39.756790, 43.726673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374271, 39.909912, 43.770008>,  <33.074848, 40.165115, 43.842232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374271, 39.909912, 43.770008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341912, 0.138089, 0.929531,
		-0.568118, -0.757543, 0.321512,
		0.748557, -0.638012, -0.180562,
		33.598839, 39.718510, 43.715839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074276, 39.776806, 44.385345>,  <33.074848, 40.165115, 43.842232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074276, 39.776806, 44.385345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447735, 39.726715, 44.251114>,  <33.671810, 39.696659, 44.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447735, 39.726715, 44.251114>,  <33.074276, 39.776806, 44.385345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447735, 39.726715, 44.251114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356309, 0.228846, 0.905910,
		-0.036652, -0.965374, 0.258283,
		0.933649, -0.125232, -0.335583,
		33.727829, 39.689144, 44.150440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476120, 39.325768, 44.902584>,  <33.074276, 39.776806, 44.385345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476120, 39.325768, 44.902584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760311, 39.520493, 44.699322>,  <33.930828, 39.637329, 44.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760311, 39.520493, 44.699322>,  <33.476120, 39.325768, 44.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760311, 39.520493, 44.699322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516759, 0.129238, 0.846320,
		0.477676, -0.863891, -0.159746,
		0.710483, 0.486817, -0.508157,
		33.973457, 39.666538, 44.546875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129017, 39.063087, 45.224777>,  <33.476120, 39.325768, 44.902584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129017, 39.063087, 45.224777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197033, 39.404610, 45.027962>,  <34.237843, 39.609524, 44.909874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197033, 39.404610, 45.027962>,  <34.129017, 39.063087, 45.224777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197033, 39.404610, 45.027962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566941, 0.323639, 0.757519,
		0.806017, -0.407769, -0.429024,
		0.170043, 0.853804, -0.492040,
		34.248047, 39.660751, 44.880348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895428, 39.336071, 45.277653>,  <34.129017, 39.063087, 45.224777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895428, 39.336071, 45.277653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686520, 39.671619, 45.216297>,  <34.561176, 39.872948, 45.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686520, 39.671619, 45.216297>,  <34.895428, 39.336071, 45.277653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686520, 39.671619, 45.216297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481754, 0.438645, 0.758620,
		0.703668, 0.322309, -0.633221,
		-0.522268, 0.838873, -0.153387,
		34.529839, 39.923283, 45.170280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392139, 39.843143, 45.151844>,  <34.895428, 39.336071, 45.277653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392139, 39.843143, 45.151844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074818, 40.037132, 45.299072>,  <34.884426, 40.153526, 45.387409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074818, 40.037132, 45.299072>,  <35.392139, 39.843143, 45.151844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074818, 40.037132, 45.299072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593294, 0.480094, 0.646152,
		0.136653, 0.730969, -0.668588,
		-0.793302, 0.484968, 0.368074,
		34.836826, 40.182621, 45.409492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657837, 40.541058, 45.309570>,  <35.392139, 39.843143, 45.151844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657837, 40.541058, 45.309570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301105, 40.537373, 45.490486>,  <35.087067, 40.535164, 45.599033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301105, 40.537373, 45.490486>,  <35.657837, 40.541058, 45.309570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301105, 40.537373, 45.490486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372633, 0.551927, 0.746004,
		-0.256499, 0.833841, -0.488791,
		-0.891826, -0.009209, 0.452285,
		35.033558, 40.534611, 45.626171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416363, 41.333424, 45.488224>,  <35.657837, 40.541058, 45.309570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416363, 41.333424, 45.488224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188396, 41.100613, 45.720238>,  <35.051617, 40.960926, 45.859444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188396, 41.100613, 45.720238>,  <35.416363, 41.333424, 45.488224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188396, 41.100613, 45.720238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377271, 0.441744, 0.813959,
		-0.729972, 0.682719, -0.032175,
		-0.569918, -0.582029, 0.580031,
		35.017422, 40.926003, 45.894245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978458, 41.802059, 46.032597>,  <35.416363, 41.333424, 45.488224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978458, 41.802059, 46.032597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992691, 41.431595, 46.182777>,  <35.001232, 41.209316, 46.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992691, 41.431595, 46.182777>,  <34.978458, 41.802059, 46.032597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992691, 41.431595, 46.182777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243982, 0.372374, 0.895439,
		-0.969127, 0.059740, 0.239216,
		0.035584, -0.926158, 0.375453,
		35.003365, 41.153748, 46.295414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704647, 41.906548, 46.594635>,  <34.978458, 41.802059, 46.032597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704647, 41.906548, 46.594635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857002, 41.542915, 46.662163>,  <34.948414, 41.324738, 46.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857002, 41.542915, 46.662163>,  <34.704647, 41.906548, 46.594635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857002, 41.542915, 46.662163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225130, 0.268267, 0.936670,
		-0.896796, -0.318758, 0.306840,
		0.380886, -0.909080, 0.168819,
		34.971268, 41.270191, 46.712807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344788, 41.697300, 47.096096>,  <34.704647, 41.906548, 46.594635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344788, 41.697300, 47.096096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681614, 41.481586, 47.100010>,  <34.883709, 41.352158, 47.102356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681614, 41.481586, 47.100010>,  <34.344788, 41.697300, 47.096096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681614, 41.481586, 47.100010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050086, 0.096236, 0.994098,
		-0.537041, -0.836608, 0.108048,
		0.842068, -0.539283, 0.009780,
		34.934235, 41.319801, 47.102943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271885, 41.225140, 47.709164>,  <34.344788, 41.697300, 47.096096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271885, 41.225140, 47.709164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659576, 41.239170, 47.611706>,  <34.892193, 41.247589, 47.553230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659576, 41.239170, 47.611706>,  <34.271885, 41.225140, 47.709164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659576, 41.239170, 47.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223255, 0.291643, 0.930108,
		0.103677, -0.955884, 0.274840,
		0.969231, 0.035071, -0.243643,
		34.950344, 41.249691, 47.538612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741119, 40.757729, 48.227425>,  <34.271885, 41.225140, 47.709164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741119, 40.757729, 48.227425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930069, 41.061451, 48.048393>,  <35.043438, 41.243683, 47.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930069, 41.061451, 48.048393>,  <34.741119, 40.757729, 48.227425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930069, 41.061451, 48.048393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271831, 0.357547, 0.893459,
		0.838436, -0.543708, -0.037507,
		0.472370, 0.759303, -0.447577,
		35.071781, 41.289242, 47.914120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095524, 41.027134, 48.791672>,  <34.741119, 40.757729, 48.227425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095524, 41.027134, 48.791672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193653, 41.335388, 48.556404>,  <35.252533, 41.520340, 48.415245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193653, 41.335388, 48.556404>,  <35.095524, 41.027134, 48.791672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193653, 41.335388, 48.556404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130364, 0.574974, 0.807719,
		0.960635, -0.274831, 0.040594,
		0.245327, 0.770631, -0.588168,
		35.267250, 41.566578, 48.379955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846333, 41.284683, 48.985905>,  <35.095524, 41.027134, 48.791672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846333, 41.284683, 48.985905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658096, 41.570248, 48.778492>,  <35.545155, 41.741585, 48.654045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658096, 41.570248, 48.778492>,  <35.846333, 41.284683, 48.985905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658096, 41.570248, 48.778492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138962, 0.640301, 0.755449,
		0.871339, 0.283453, -0.400528,
		-0.470593, 0.713911, -0.518530,
		35.516918, 41.784420, 48.622932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377270, 41.799110, 49.074463>,  <35.846333, 41.284683, 48.985905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377270, 41.799110, 49.074463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032627, 41.972038, 48.968079>,  <35.825840, 42.075794, 48.904247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032627, 41.972038, 48.968079>,  <36.377270, 41.799110, 49.074463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032627, 41.972038, 48.968079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135002, 0.700289, 0.700977,
		0.489294, 0.568062, -0.661738,
		-0.861607, 0.432320, -0.265958,
		35.774143, 42.101734, 48.888290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548908, 42.525143, 48.932529>,  <36.377270, 41.799110, 49.074463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548908, 42.525143, 48.932529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171089, 42.484646, 49.057480>,  <35.944397, 42.460346, 49.132450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171089, 42.484646, 49.057480>,  <36.548908, 42.525143, 48.932529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171089, 42.484646, 49.057480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172422, 0.656678, 0.734197,
		-0.279459, 0.747345, -0.602808,
		-0.944549, -0.101241, 0.312373,
		35.887726, 42.454273, 49.151192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336227, 43.222294, 49.057308>,  <36.548908, 42.525143, 48.932529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336227, 43.222294, 49.057308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078861, 43.000969, 49.268917>,  <35.924442, 42.868176, 49.395882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078861, 43.000969, 49.268917>,  <36.336227, 43.222294, 49.057308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078861, 43.000969, 49.268917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168013, 0.572146, 0.802758,
		-0.746849, 0.605392, -0.275167,
		-0.643420, -0.553308, 0.529020,
		35.885834, 42.834976, 49.427624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834087, 43.724655, 49.239555>,  <36.336227, 43.222294, 49.057308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834087, 43.724655, 49.239555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862103, 43.402271, 49.474682>,  <35.878910, 43.208839, 49.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862103, 43.402271, 49.474682>,  <35.834087, 43.724655, 49.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862103, 43.402271, 49.474682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175700, 0.590014, 0.788043,
		-0.981949, 0.048086, 0.182930,
		0.070038, -0.805960, 0.587813,
		35.883114, 43.160484, 49.651024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935669, 43.982239, 49.882771>,  <35.834087, 43.724655, 49.239555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935669, 43.982239, 49.882771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005058, 43.606270, 50.000381>,  <36.046692, 43.380688, 50.070946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005058, 43.606270, 50.000381>,  <35.935669, 43.982239, 49.882771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005058, 43.606270, 50.000381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458060, 0.341294, 0.820792,
		-0.871831, -0.007702, 0.489746,
		0.173469, -0.939925, 0.294023,
		36.057098, 43.324291, 50.088589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847927, 43.985954, 50.681557>,  <35.935669, 43.982239, 49.882771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847927, 43.985954, 50.681557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066963, 43.664017, 50.590015>,  <36.198387, 43.470856, 50.535091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066963, 43.664017, 50.590015>,  <35.847927, 43.985954, 50.681557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066963, 43.664017, 50.590015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554866, 0.144560, 0.819284,
		-0.626311, -0.575615, 0.525739,
		0.547593, -0.804841, -0.228850,
		36.231239, 43.422565, 50.521358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927910, 43.702572, 51.301918>,  <35.847927, 43.985954, 50.681557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927910, 43.702572, 51.301918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218437, 43.550484, 51.072868>,  <36.392754, 43.459229, 50.935440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218437, 43.550484, 51.072868>,  <35.927910, 43.702572, 51.301918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218437, 43.550484, 51.072868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633250, 0.046150, 0.772570,
		-0.267323, -0.923742, 0.274296,
		0.726314, -0.380224, -0.572623,
		36.436333, 43.436417, 50.901081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296856, 43.193710, 51.719204>,  <35.927910, 43.702572, 51.301918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296856, 43.193710, 51.719204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550163, 43.261879, 51.417229>,  <36.702148, 43.302780, 51.236046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550163, 43.261879, 51.417229>,  <36.296856, 43.193710, 51.719204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550163, 43.261879, 51.417229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763373, 0.023021, 0.645548,
		0.127394, -0.985102, -0.115517,
		0.633271, 0.170421, -0.754933,
		36.740143, 43.313004, 51.190750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895855, 42.843327, 51.821220>,  <36.296856, 43.193710, 51.719204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895855, 42.843327, 51.821220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035397, 43.134842, 51.585537>,  <37.119122, 43.309750, 51.444126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035397, 43.134842, 51.585537>,  <36.895855, 42.843327, 51.821220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035397, 43.134842, 51.585537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789858, 0.109742, 0.603391,
		0.504405, -0.675888, -0.537355,
		0.348854, 0.728788, -0.589210,
		37.140053, 43.353477, 51.408775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653980, 42.705032, 51.660095>,  <36.895855, 42.843327, 51.821220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653980, 42.705032, 51.660095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586155, 43.096024, 51.609833>,  <37.545460, 43.330616, 51.579674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586155, 43.096024, 51.609833>,  <37.653980, 42.705032, 51.660095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586155, 43.096024, 51.609833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908444, 0.204455, 0.364594,
		0.382073, -0.052330, -0.922650,
		-0.169561, 0.977476, -0.125655,
		37.535286, 43.389267, 51.572136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282001, 42.936352, 51.342255>,  <37.653980, 42.705032, 51.660095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282001, 42.936352, 51.342255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092102, 43.263733, 51.471718>,  <37.978161, 43.460159, 51.549397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092102, 43.263733, 51.471718>,  <38.282001, 42.936352, 51.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092102, 43.263733, 51.471718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843442, 0.318027, 0.432972,
		0.251435, 0.478538, -0.841298,
		-0.474749, 0.818450, 0.323656,
		37.949677, 43.509270, 51.568813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725822, 43.518288, 51.397453>,  <38.282001, 42.936352, 51.342255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725822, 43.518288, 51.397453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435486, 43.645977, 51.641174>,  <38.261284, 43.722591, 51.787407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435486, 43.645977, 51.641174>,  <38.725822, 43.518288, 51.397453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435486, 43.645977, 51.641174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679492, 0.194955, 0.707307,
		0.107003, 0.927409, -0.358416,
		-0.725838, 0.319225, 0.609307,
		38.217735, 43.741745, 51.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081139, 44.131664, 51.687840>,  <38.725822, 43.518288, 51.397453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081139, 44.131664, 51.687840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778751, 44.017750, 51.923603>,  <38.597317, 43.949402, 52.065063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778751, 44.017750, 51.923603>,  <39.081139, 44.131664, 51.687840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778751, 44.017750, 51.923603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502779, 0.323993, 0.801400,
		-0.419190, 0.902179, -0.101747,
		-0.755971, -0.284783, 0.589411,
		38.551960, 43.932316, 52.100426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950218, 44.683060, 52.054981>,  <39.081139, 44.131664, 51.687840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950218, 44.683060, 52.054981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780312, 44.397129, 52.277187>,  <38.678368, 44.225571, 52.410511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780312, 44.397129, 52.277187>,  <38.950218, 44.683060, 52.054981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780312, 44.397129, 52.277187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530968, 0.300284, 0.792403,
		-0.733242, 0.631548, 0.251999,
		-0.424769, -0.714827, 0.555512,
		38.652882, 44.182682, 52.443840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603397, 45.062050, 52.696289>,  <38.950218, 44.683060, 52.054981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603397, 45.062050, 52.696289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704548, 44.681648, 52.767445>,  <38.765240, 44.453407, 52.810139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704548, 44.681648, 52.767445>,  <38.603397, 45.062050, 52.696289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704548, 44.681648, 52.767445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380093, 0.266730, 0.885655,
		-0.889710, -0.156348, 0.428920,
		0.252876, -0.951005, 0.177886,
		38.780411, 44.396347, 52.820808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364803, 44.732651, 53.351341>,  <38.603397, 45.062050, 52.696289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364803, 44.732651, 53.351341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701942, 44.538952, 53.257439>,  <38.904224, 44.422733, 53.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701942, 44.538952, 53.257439>,  <38.364803, 44.732651, 53.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701942, 44.538952, 53.257439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438989, 0.366334, 0.820420,
		-0.311288, -0.794544, 0.521343,
		0.842845, -0.484251, -0.234761,
		38.954796, 44.393677, 53.187012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606220, 44.365494, 53.916943>,  <38.364803, 44.732651, 53.351341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606220, 44.365494, 53.916943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926979, 44.459778, 53.697338>,  <39.119434, 44.516346, 53.565575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926979, 44.459778, 53.697338>,  <38.606220, 44.365494, 53.916943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926979, 44.459778, 53.697338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496376, 0.248599, 0.831751,
		0.332535, -0.939489, 0.082350,
		0.801893, 0.235710, -0.549008,
		39.167545, 44.530491, 53.532635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269451, 44.554092, 54.386749>,  <38.606220, 44.365494, 53.916943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269451, 44.554092, 54.386749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276535, 44.688007, 54.763599>,  <39.280785, 44.768356, 54.989712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276535, 44.688007, 54.763599>,  <39.269451, 44.554092, 54.386749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276535, 44.688007, 54.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104429, -0.936503, 0.334748,
		0.994375, -0.104312, 0.018380,
		0.017706, 0.334784, 0.942128,
		39.281845, 44.788445, 55.046238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593803, 44.036381, 54.776207>,  <39.269451, 44.554092, 54.386749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593803, 44.036381, 54.776207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337910, 44.226559, 55.017765>,  <39.184372, 44.340664, 55.162701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337910, 44.226559, 55.017765>,  <39.593803, 44.036381, 54.776207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337910, 44.226559, 55.017765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236534, -0.869369, 0.433877,
		0.731291, 0.134726, 0.668627,
		-0.639738, 0.475444, 0.603894,
		39.145988, 44.369190, 55.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493103, 43.714390, 55.394032>,  <39.593803, 44.036381, 54.776207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493103, 43.714390, 55.394032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153297, 43.919724, 55.442730>,  <38.949413, 44.042923, 55.471951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153297, 43.919724, 55.442730>,  <39.493103, 43.714390, 55.394032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153297, 43.919724, 55.442730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456747, -0.831110, 0.317236,
		0.264033, 0.213888, 0.940499,
		-0.849511, 0.513331, 0.121748,
		38.898445, 44.073723, 55.479256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035427, 43.282856, 55.032185>,  <39.493103, 43.714390, 55.394032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035427, 43.282856, 55.032185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391884, 43.102482, 55.052296>,  <40.605759, 42.994259, 55.064362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391884, 43.102482, 55.052296>,  <40.035427, 43.282856, 55.032185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391884, 43.102482, 55.052296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333590, -0.726266, -0.601046,
		0.307547, 0.518844, -0.797631,
		0.891141, -0.450932, 0.050280,
		40.659225, 42.967201, 55.067379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220917, 43.300652, 54.348755>,  <40.035427, 43.282856, 55.032185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220917, 43.300652, 54.348755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353161, 42.988850, 54.561573>,  <40.432507, 42.801769, 54.689262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353161, 42.988850, 54.561573>,  <40.220917, 43.300652, 54.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353161, 42.988850, 54.561573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331567, -0.623747, -0.707816,
		0.883605, 0.057605, -0.464676,
		0.330614, -0.779501, 0.532046,
		40.452347, 42.755001, 54.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482880, 42.776295, 53.919315>,  <40.220917, 43.300652, 54.348755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482880, 42.776295, 53.919315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374306, 42.569901, 54.244297>,  <40.309162, 42.446064, 54.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374306, 42.569901, 54.244297>,  <40.482880, 42.776295, 53.919315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374306, 42.569901, 54.244297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528255, -0.625765, -0.573903,
		0.804532, -0.584959, -0.102719,
		-0.271432, -0.515985, 0.812456,
		40.292877, 42.415104, 54.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652618, 41.953114, 54.002396>,  <40.482880, 42.776295, 53.919315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652618, 41.953114, 54.002396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299332, 42.012978, 54.180172>,  <40.087360, 42.048897, 54.286839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299332, 42.012978, 54.180172>,  <40.652618, 41.953114, 54.002396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299332, 42.012978, 54.180172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445336, -0.564687, -0.694842,
		0.146981, -0.811622, 0.565390,
		-0.883217, 0.149660, 0.444443,
		40.034367, 42.057877, 54.313503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307701, 41.296825, 53.996632>,  <40.652618, 41.953114, 54.002396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307701, 41.296825, 53.996632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019096, 41.569271, 54.046432>,  <39.845932, 41.732738, 54.076313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019096, 41.569271, 54.046432>,  <40.307701, 41.296825, 53.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019096, 41.569271, 54.046432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531885, -0.430091, -0.729465,
		-0.443295, -0.592546, 0.672590,
		-0.721517, 0.681110, 0.124509,
		39.802643, 41.773605, 54.083782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620087, 40.991066, 54.270943>,  <40.307701, 41.296825, 53.996632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620087, 40.991066, 54.270943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576111, 41.311554, 54.035671>,  <39.549725, 41.503845, 53.894508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576111, 41.311554, 54.035671>,  <39.620087, 40.991066, 54.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576111, 41.311554, 54.035671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507096, -0.554175, -0.660108,
		-0.854849, 0.225690, 0.467223,
		-0.109944, 0.801220, -0.588183,
		39.543129, 41.551922, 53.859215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993603, 40.886246, 53.979244>,  <39.620087, 40.991066, 54.270943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993603, 40.886246, 53.979244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165550, 41.162746, 53.746906>,  <39.268719, 41.328648, 53.607502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165550, 41.162746, 53.746906>,  <38.993603, 40.886246, 53.979244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165550, 41.162746, 53.746906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450166, -0.393571, -0.801531,
		-0.782662, 0.606035, 0.141991,
		0.429873, 0.691248, -0.580849,
		39.294514, 41.370121, 53.572651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474739, 41.299450, 53.578960>,  <38.993603, 40.886246, 53.979244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474739, 41.299450, 53.578960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815304, 41.315384, 53.369766>,  <39.019642, 41.324944, 53.244251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815304, 41.315384, 53.369766>,  <38.474739, 41.299450, 53.578960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815304, 41.315384, 53.369766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496826, -0.258366, -0.828499,
		-0.168123, 0.965225, -0.200185,
		0.851410, 0.039833, -0.522987,
		39.070728, 41.327335, 53.212872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374905, 41.570896, 52.934479>,  <38.474739, 41.299450, 53.578960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374905, 41.570896, 52.934479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715767, 41.374252, 52.862759>,  <38.920284, 41.256268, 52.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715767, 41.374252, 52.862759>,  <38.374905, 41.570896, 52.934479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715767, 41.374252, 52.862759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384165, -0.355084, -0.852252,
		0.355305, 0.795135, -0.491446,
		0.852159, -0.491606, -0.179299,
		38.971416, 41.226772, 52.808968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423676, 41.742661, 52.287106>,  <38.374905, 41.570896, 52.934479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423676, 41.742661, 52.287106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642883, 41.413868, 52.349087>,  <38.774410, 41.216591, 52.386276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642883, 41.413868, 52.349087>,  <38.423676, 41.742661, 52.287106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642883, 41.413868, 52.349087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314262, -0.374010, -0.872558,
		0.775184, 0.429485, -0.463284,
		0.548023, -0.821985, 0.154956,
		38.807289, 41.167271, 52.395573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694172, 41.655472, 51.694309>,  <38.423676, 41.742661, 52.287106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694172, 41.655472, 51.694309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740482, 41.291565, 51.853771>,  <38.768269, 41.073223, 51.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740482, 41.291565, 51.853771>,  <38.694172, 41.655472, 51.694309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740482, 41.291565, 51.853771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139933, -0.412287, -0.900243,
		0.983369, 0.048440, -0.175039,
		0.115774, -0.909765, 0.398652,
		38.775215, 41.018635, 51.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124779, 41.373493, 51.279663>,  <38.694172, 41.655472, 51.694309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124779, 41.373493, 51.279663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939949, 41.066662, 51.457687>,  <38.829052, 40.882565, 51.564503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939949, 41.066662, 51.457687>,  <39.124779, 41.373493, 51.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939949, 41.066662, 51.457687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180511, -0.409988, -0.894050,
		0.868276, -0.493456, 0.050979,
		-0.462075, -0.767079, 0.445057,
		38.801327, 40.836536, 51.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417480, 40.726940, 50.907955>,  <39.124779, 41.373493, 51.279663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417480, 40.726940, 50.907955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083763, 40.623619, 51.102787>,  <38.883533, 40.561626, 51.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083763, 40.623619, 51.102787>,  <39.417480, 40.726940, 50.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083763, 40.623619, 51.102787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265799, -0.585572, -0.765805,
		0.483026, -0.768366, 0.419880,
		-0.834288, -0.258300, 0.487077,
		38.833477, 40.546127, 51.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406773, 40.075764, 50.968601>,  <39.417480, 40.726940, 50.907955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406773, 40.075764, 50.968601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015739, 40.155262, 50.996376>,  <38.781120, 40.202961, 51.013042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015739, 40.155262, 50.996376>,  <39.406773, 40.075764, 50.968601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015739, 40.155262, 50.996376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153719, -0.448480, -0.880475,
		-0.143850, -0.871415, 0.468980,
		-0.977587, 0.198747, 0.069439,
		38.722462, 40.214886, 51.017208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002148, 39.448425, 50.881664>,  <39.406773, 40.075764, 50.968601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002148, 39.448425, 50.881664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742668, 39.741611, 50.799732>,  <38.586979, 39.917522, 50.750572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742668, 39.741611, 50.799732>,  <39.002148, 39.448425, 50.881664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742668, 39.741611, 50.799732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285100, -0.483588, -0.827563,
		-0.705625, -0.478444, 0.522671,
		-0.648700, 0.732963, -0.204827,
		38.548058, 39.961502, 50.738285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456051, 38.988049, 50.599586>,  <39.002148, 39.448425, 50.881664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456051, 38.988049, 50.599586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410263, 39.366730, 50.479156>,  <38.382790, 39.593941, 50.406898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410263, 39.366730, 50.479156>,  <38.456051, 38.988049, 50.599586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410263, 39.366730, 50.479156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240535, -0.320459, -0.916214,
		-0.963866, -0.032464, 0.264400,
		-0.114474, 0.946706, -0.301071,
		38.375919, 39.650742, 50.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832073, 39.001545, 50.110008>,  <38.456051, 38.988049, 50.599586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832073, 39.001545, 50.110008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012608, 39.350082, 50.033009>,  <38.120926, 39.559204, 49.986809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012608, 39.350082, 50.033009>,  <37.832073, 39.001545, 50.110008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012608, 39.350082, 50.033009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054118, -0.242047, -0.968754,
		-0.890713, 0.426813, -0.156399,
		0.451333, 0.871346, -0.192497,
		38.148006, 39.611485, 49.975258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442802, 39.340603, 49.581417>,  <37.832073, 39.001545, 50.110008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442802, 39.340603, 49.581417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815125, 39.484825, 49.557396>,  <38.038517, 39.571358, 49.542984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815125, 39.484825, 49.557396>,  <37.442802, 39.340603, 49.581417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815125, 39.484825, 49.557396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011295, -0.135833, -0.990667,
		-0.365345, 0.922795, -0.122361,
		0.930804, 0.360554, -0.060049,
		38.094364, 39.592991, 49.539383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337318, 39.715221, 49.050220>,  <37.442802, 39.340603, 49.581417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337318, 39.715221, 49.050220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731236, 39.654762, 49.084484>,  <37.967587, 39.618488, 49.105042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731236, 39.654762, 49.084484>,  <37.337318, 39.715221, 49.050220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731236, 39.654762, 49.084484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072787, -0.088730, -0.993393,
		0.157745, 0.984522, -0.076380,
		0.984794, -0.151143, 0.085657,
		38.026672, 39.609421, 49.110180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610661, 40.123497, 48.564671>,  <37.337318, 39.715221, 49.050220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610661, 40.123497, 48.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891479, 39.850636, 48.646450>,  <38.059971, 39.686916, 48.695518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891479, 39.850636, 48.646450>,  <37.610661, 40.123497, 48.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891479, 39.850636, 48.646450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098855, -0.190956, -0.976608,
		0.705240, 0.705831, -0.066625,
		0.702043, -0.682157, 0.204445,
		38.102093, 39.645988, 48.707783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974506, 40.140980, 47.971920>,  <37.610661, 40.123497, 48.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974506, 40.140980, 47.971920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116764, 39.801048, 48.127514>,  <38.202118, 39.597088, 48.220871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116764, 39.801048, 48.127514>,  <37.974506, 40.140980, 47.971920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116764, 39.801048, 48.127514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249984, -0.314537, -0.915737,
		0.900569, 0.422917, 0.100580,
		0.355645, -0.849828, 0.388985,
		38.223457, 39.546101, 48.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579395, 39.957405, 47.593613>,  <37.974506, 40.140980, 47.971920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579395, 39.957405, 47.593613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457367, 39.622120, 47.774426>,  <38.384151, 39.420948, 47.882912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457367, 39.622120, 47.774426>,  <38.579395, 39.957405, 47.593613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457367, 39.622120, 47.774426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019084, -0.479941, -0.877093,
		0.952139, -0.258947, 0.162411,
		-0.305068, -0.838214, 0.452029,
		38.365845, 39.370655, 47.910034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060097, 39.443275, 47.376621>,  <38.579395, 39.957405, 47.593613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060097, 39.443275, 47.376621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722111, 39.255886, 47.479820>,  <38.519318, 39.143452, 47.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722111, 39.255886, 47.479820>,  <39.060097, 39.443275, 47.376621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722111, 39.255886, 47.479820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017358, -0.458125, -0.888718,
		0.534537, -0.755416, 0.378969,
		-0.844967, -0.468474, 0.257997,
		38.468620, 39.115345, 47.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068344, 38.788494, 47.110596>,  <39.060097, 39.443275, 47.376621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068344, 38.788494, 47.110596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677029, 38.838810, 47.176479>,  <38.442238, 38.868999, 47.216007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677029, 38.838810, 47.176479>,  <39.068344, 38.788494, 47.110596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677029, 38.838810, 47.176479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194607, -0.284299, -0.938777,
		-0.071257, -0.950448, 0.302606,
		-0.978290, 0.125783, 0.164706,
		38.383541, 38.876545, 47.225891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763103, 38.162819, 46.806797>,  <39.068344, 38.788494, 47.110596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763103, 38.162819, 46.806797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449680, 38.407776, 46.848785>,  <38.261627, 38.554749, 46.873978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449680, 38.407776, 46.848785>,  <38.763103, 38.162819, 46.806797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449680, 38.407776, 46.848785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446784, -0.437945, -0.780120,
		-0.431736, -0.658191, 0.616756,
		-0.783574, 0.612363, 0.104993,
		38.214615, 38.591492, 46.880276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102951, 37.814976, 46.941204>,  <38.763103, 38.162819, 46.806797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102951, 37.814976, 46.941204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022617, 38.160686, 46.756733>,  <37.974419, 38.368114, 46.646049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022617, 38.160686, 46.756733>,  <38.102951, 37.814976, 46.941204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022617, 38.160686, 46.756733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352421, -0.502994, -0.789174,
		-0.914038, 0.004038, 0.405608,
		-0.200832, 0.864280, -0.461179,
		37.962368, 38.419971, 46.618378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434246, 37.703316, 46.726021>,  <38.102951, 37.814976, 46.941204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434246, 37.703316, 46.726021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527084, 38.024826, 46.506901>,  <37.582787, 38.217731, 46.375431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527084, 38.024826, 46.506901>,  <37.434246, 37.703316, 46.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527084, 38.024826, 46.506901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553123, -0.354194, -0.754057,
		-0.800116, 0.478013, 0.362378,
		0.232097, 0.803772, -0.547797,
		37.596714, 38.265957, 46.342564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846767, 37.841866, 46.532730>,  <37.434246, 37.703316, 46.726021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846767, 37.841866, 46.532730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085636, 38.031624, 46.274014>,  <37.228958, 38.145477, 46.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085636, 38.031624, 46.274014>,  <36.846767, 37.841866, 46.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085636, 38.031624, 46.274014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574333, -0.310010, -0.757651,
		-0.559935, 0.823921, 0.087330,
		0.597171, 0.474392, -0.646791,
		37.264786, 38.173943, 46.079975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386143, 38.061119, 46.102283>,  <36.846767, 37.841866, 46.532730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386143, 38.061119, 46.102283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731220, 38.051983, 45.900200>,  <36.938267, 38.046501, 45.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731220, 38.051983, 45.900200>,  <36.386143, 38.061119, 46.102283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731220, 38.051983, 45.900200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491218, -0.275424, -0.826346,
		-0.120274, 0.961051, -0.248826,
		0.862693, -0.022840, -0.505212,
		36.990028, 38.045132, 45.748638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188450, 38.373528, 45.503910>,  <36.386143, 38.061119, 46.102283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188450, 38.373528, 45.503910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515285, 38.150311, 45.446011>,  <36.711388, 38.016380, 45.411270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515285, 38.150311, 45.446011>,  <36.188450, 38.373528, 45.503910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515285, 38.150311, 45.446011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427669, -0.418338, -0.801307,
		0.386610, 0.716645, -0.580477,
		0.817088, -0.558045, -0.144753,
		36.760410, 37.982899, 45.402584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374889, 38.478725, 44.773357>,  <36.188450, 38.373528, 45.503910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374889, 38.478725, 44.773357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598129, 38.160084, 44.866257>,  <36.732075, 37.968899, 44.921997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598129, 38.160084, 44.866257>,  <36.374889, 38.478725, 44.773357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598129, 38.160084, 44.866257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260642, -0.434028, -0.862372,
		0.787773, 0.420759, -0.449861,
		0.558103, -0.796606, 0.232248,
		36.765560, 37.921101, 44.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676685, 38.180725, 44.119068>,  <36.374889, 38.478725, 44.773357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676685, 38.180725, 44.119068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688896, 37.885033, 44.388172>,  <36.696220, 37.707619, 44.549633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688896, 37.885033, 44.388172>,  <36.676685, 38.180725, 44.119068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688896, 37.885033, 44.388172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299725, -0.648869, -0.699382,
		0.953537, -0.180295, -0.241372,
		0.030524, -0.739232, 0.672759,
		36.698055, 37.663261, 44.590000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208996, 37.690155, 43.846302>,  <36.676685, 38.180725, 44.119068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208996, 37.690155, 43.846302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935139, 37.518707, 44.082119>,  <36.770824, 37.415840, 44.223610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935139, 37.518707, 44.082119>,  <37.208996, 37.690155, 43.846302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935139, 37.518707, 44.082119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271411, -0.600747, -0.751957,
		0.676464, -0.674827, 0.294965,
		-0.684640, -0.428615, 0.589539,
		36.729748, 37.390121, 44.258980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232288, 37.034271, 43.829365>,  <37.208996, 37.690155, 43.846302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232288, 37.034271, 43.829365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862583, 37.054718, 43.980694>,  <36.640762, 37.066986, 44.071491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862583, 37.054718, 43.980694>,  <37.232288, 37.034271, 43.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862583, 37.054718, 43.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329259, -0.608281, -0.722207,
		0.193208, -0.792074, 0.579042,
		-0.924261, 0.051118, 0.378322,
		36.585304, 37.070053, 44.094189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069958, 36.314060, 43.821957>,  <37.232288, 37.034271, 43.829365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069958, 36.314060, 43.821957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720032, 36.503132, 43.864429>,  <36.510075, 36.616573, 43.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720032, 36.503132, 43.864429>,  <37.069958, 36.314060, 43.821957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720032, 36.503132, 43.864429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405107, -0.593541, -0.695412,
		-0.265678, -0.651374, 0.710723,
		-0.874816, 0.472674, 0.106185,
		36.457588, 36.644936, 43.896286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467319, 35.763149, 43.934990>,  <37.069958, 36.314060, 43.821957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467319, 35.763149, 43.934990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314404, 36.096504, 43.775326>,  <36.222652, 36.296516, 43.679527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314404, 36.096504, 43.775326>,  <36.467319, 35.763149, 43.934990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314404, 36.096504, 43.775326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608108, -0.552144, -0.570387,
		-0.695745, 0.024679, 0.717865,
		-0.382289, 0.833384, -0.399159,
		36.199718, 36.346519, 43.655579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835297, 35.572021, 43.827644>,  <36.467319, 35.763149, 43.934990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835297, 35.572021, 43.827644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825405, 35.912518, 43.617966>,  <35.819469, 36.116814, 43.492157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825405, 35.912518, 43.617966>,  <35.835297, 35.572021, 43.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825405, 35.912518, 43.617966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508531, -0.462160, -0.726501,
		-0.860688, 0.248606, 0.444309,
		-0.024729, 0.851236, -0.524199,
		35.817986, 36.167889, 43.460705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212681, 35.560081, 43.583565>,  <35.835297, 35.572021, 43.827644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212681, 35.560081, 43.583565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380054, 35.831039, 43.341560>,  <35.480480, 35.993614, 43.196358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380054, 35.831039, 43.341560>,  <35.212681, 35.560081, 43.583565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380054, 35.831039, 43.341560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483947, -0.397406, -0.779656,
		-0.768574, 0.619032, 0.161536,
		0.418437, 0.677398, -0.605014,
		35.505585, 36.034260, 43.160057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715710, 35.886356, 43.075756>,  <35.212681, 35.560081, 43.583565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715710, 35.886356, 43.075756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085781, 35.888821, 42.923969>,  <35.307823, 35.890297, 42.832897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085781, 35.888821, 42.923969>,  <34.715710, 35.886356, 43.075756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085781, 35.888821, 42.923969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346921, -0.391712, -0.852178,
		-0.153891, 0.920068, -0.360269,
		0.925183, 0.006158, -0.379472,
		35.363335, 35.890667, 42.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714176, 36.392303, 42.460846>,  <34.715710, 35.886356, 43.075756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714176, 36.392303, 42.460846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034462, 36.162342, 42.393494>,  <35.226631, 36.024368, 42.353085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034462, 36.162342, 42.393494>,  <34.714176, 36.392303, 42.460846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034462, 36.162342, 42.393494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288563, -0.123839, -0.949418,
		0.524968, 0.808799, -0.265054,
		0.800713, -0.574899, -0.168377,
		35.274677, 35.989872, 42.342979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852837, 36.532043, 41.706123>,  <34.714176, 36.392303, 42.460846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852837, 36.532043, 41.706123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063519, 36.202629, 41.790375>,  <35.189926, 36.004978, 41.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063519, 36.202629, 41.790375>,  <34.852837, 36.532043, 41.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063519, 36.202629, 41.790375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312016, -0.417793, -0.853285,
		0.790714, 0.383708, -0.477011,
		0.526705, -0.823539, 0.210632,
		35.221531, 35.955566, 41.853565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307335, 36.474876, 41.065361>,  <34.852837, 36.532043, 41.706123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307335, 36.474876, 41.065361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339901, 36.119026, 41.245106>,  <35.359440, 35.905514, 41.352955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339901, 36.119026, 41.245106>,  <35.307335, 36.474876, 41.065361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339901, 36.119026, 41.245106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205554, -0.456157, -0.865834,
		0.975253, -0.021873, -0.220007,
		0.081420, -0.889630, 0.449365,
		35.364326, 35.852139, 41.379917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791061, 35.969105, 40.713253>,  <35.307335, 36.474876, 41.065361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791061, 35.969105, 40.713253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539673, 35.742004, 40.925922>,  <35.388840, 35.605743, 41.053524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539673, 35.742004, 40.925922>,  <35.791061, 35.969105, 40.713253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539673, 35.742004, 40.925922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292736, -0.460632, -0.837928,
		0.720643, -0.682256, 0.123293,
		-0.628474, -0.567755, 0.531672,
		35.351131, 35.571678, 41.085423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819302, 35.241726, 40.468113>,  <35.791061, 35.969105, 40.713253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819302, 35.241726, 40.468113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477272, 35.268913, 40.673729>,  <35.272057, 35.285225, 40.797100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477272, 35.268913, 40.673729>,  <35.819302, 35.241726, 40.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477272, 35.268913, 40.673729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442045, -0.613739, -0.654157,
		0.271021, -0.786578, 0.554836,
		-0.855070, 0.067972, 0.514039,
		35.220753, 35.289307, 40.827942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543350, 34.995510, 40.608006>,  <35.819302, 35.241726, 40.468113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543350, 34.995510, 40.608006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786694, 34.705704, 40.478409>,  <36.932701, 34.531818, 40.400650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786694, 34.705704, 40.478409>,  <36.543350, 34.995510, 40.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786694, 34.705704, 40.478409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438492, -0.033431, 0.898113,
		-0.661529, -0.688446, 0.297356,
		0.608362, -0.724516, -0.323994,
		36.969204, 34.488350, 40.381210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511570, 34.452251, 41.044460>,  <36.543350, 34.995510, 40.608006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511570, 34.452251, 41.044460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869450, 34.472313, 40.866924>,  <37.084179, 34.484348, 40.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869450, 34.472313, 40.866924>,  <36.511570, 34.452251, 41.044460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869450, 34.472313, 40.866924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443110, 0.025419, 0.896107,
		0.056228, -0.998418, 0.000517,
		0.894702, 0.050158, -0.443838,
		37.137859, 34.487358, 40.733772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850330, 34.204445, 41.583736>,  <36.511570, 34.452251, 41.044460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850330, 34.204445, 41.583736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122223, 34.385452, 41.352848>,  <37.285358, 34.494057, 41.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122223, 34.385452, 41.352848>,  <36.850330, 34.204445, 41.583736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122223, 34.385452, 41.352848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538498, 0.226423, 0.811636,
		0.497980, -0.862529, -0.089774,
		0.679733, 0.452522, -0.577225,
		37.326141, 34.521210, 41.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455742, 33.908070, 41.820778>,  <36.850330, 34.204445, 41.583736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455742, 33.908070, 41.820778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563053, 34.237198, 41.620377>,  <37.627441, 34.434673, 41.500137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563053, 34.237198, 41.620377>,  <37.455742, 33.908070, 41.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563053, 34.237198, 41.620377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634238, 0.240587, 0.734752,
		0.725100, -0.514871, -0.457317,
		0.268277, 0.822816, -0.501000,
		37.643536, 34.484043, 41.470078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283333, 34.138298, 41.887089>,  <37.455742, 33.908070, 41.820778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283333, 34.138298, 41.887089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118713, 34.486954, 41.780609>,  <38.019939, 34.696148, 41.716721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118713, 34.486954, 41.780609>,  <38.283333, 34.138298, 41.887089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118713, 34.486954, 41.780609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572900, 0.474584, 0.668249,
		0.708810, 0.122510, -0.694680,
		-0.411551, 0.871643, -0.266203,
		37.995247, 34.748447, 41.700748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879124, 34.655602, 41.692528>,  <38.283333, 34.138298, 41.887089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879124, 34.655602, 41.692528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545418, 34.838879, 41.815201>,  <38.345192, 34.948845, 41.888805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545418, 34.838879, 41.815201>,  <38.879124, 34.655602, 41.692528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545418, 34.838879, 41.815201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544144, 0.594549, 0.591962,
		0.088895, 0.660735, -0.745337,
		-0.834269, 0.458193, 0.306683,
		38.295135, 34.976337, 41.907207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162853, 35.233665, 41.658516>,  <38.879124, 34.655602, 41.692528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162853, 35.233665, 41.658516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821495, 35.299141, 41.856476>,  <38.616680, 35.338428, 41.975254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821495, 35.299141, 41.856476>,  <39.162853, 35.233665, 41.658516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821495, 35.299141, 41.856476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439728, 0.735918, 0.514843,
		-0.279932, 0.656985, -0.700006,
		-0.853392, 0.163691, 0.494901,
		38.565479, 35.348248, 42.004948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107140, 35.983902, 41.650261>,  <39.162853, 35.233665, 41.658516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107140, 35.983902, 41.650261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896713, 35.819134, 41.947868>,  <38.770458, 35.720272, 42.126434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896713, 35.819134, 41.947868>,  <39.107140, 35.983902, 41.650261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896713, 35.819134, 41.947868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446299, 0.610997, 0.653835,
		-0.723925, 0.676020, -0.137587,
		-0.526070, -0.411922, 0.744023,
		38.738892, 35.695557, 42.171074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919090, 36.493790, 42.027664>,  <39.107140, 35.983902, 41.650261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919090, 36.493790, 42.027664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895653, 36.184414, 42.280128>,  <38.881592, 35.998791, 42.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895653, 36.184414, 42.280128>,  <38.919090, 36.493790, 42.027664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895653, 36.184414, 42.280128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659134, 0.444861, 0.606334,
		-0.749739, 0.451545, 0.483734,
		-0.058592, -0.773438, 0.631159,
		38.878075, 35.952381, 42.469475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653557, 36.810940, 42.620667>,  <38.919090, 36.493790, 42.027664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653557, 36.810940, 42.620667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843346, 36.475445, 42.727543>,  <38.957218, 36.274147, 42.791668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843346, 36.475445, 42.727543>,  <38.653557, 36.810940, 42.620667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843346, 36.475445, 42.727543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597553, 0.529771, 0.601891,
		-0.646380, -0.125920, 0.752554,
		0.474471, -0.838741, 0.267190,
		38.985687, 36.223824, 42.807701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618553, 36.910549, 43.401367>,  <38.653557, 36.810940, 42.620667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618553, 36.910549, 43.401367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888374, 36.620029, 43.348499>,  <39.050266, 36.445717, 43.316780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888374, 36.620029, 43.348499>,  <38.618553, 36.910549, 43.401367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888374, 36.620029, 43.348499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554545, 0.380344, 0.740147,
		-0.487298, -0.572562, 0.659328,
		0.674552, -0.726299, -0.132170,
		39.090740, 36.402142, 43.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812840, 36.709133, 44.025360>,  <38.618553, 36.910549, 43.401367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812840, 36.709133, 44.025360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130688, 36.577408, 43.821350>,  <39.321396, 36.498371, 43.698944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130688, 36.577408, 43.821350>,  <38.812840, 36.709133, 44.025360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130688, 36.577408, 43.821350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599809, 0.296025, 0.743370,
		-0.093821, -0.896617, 0.432753,
		0.794624, -0.329312, -0.510026,
		39.369076, 36.478615, 43.668343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263401, 36.172764, 44.475895>,  <38.812840, 36.709133, 44.025360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263401, 36.172764, 44.475895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514858, 36.308990, 44.196232>,  <39.665733, 36.390724, 44.028435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514858, 36.308990, 44.196232>,  <39.263401, 36.172764, 44.475895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514858, 36.308990, 44.196232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623911, 0.315838, 0.714830,
		0.464267, -0.885586, -0.013933,
		0.628643, 0.340565, -0.699159,
		39.703453, 36.411160, 43.986485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940224, 35.856998, 44.546776>,  <39.263401, 36.172764, 44.475895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940224, 35.856998, 44.546776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970760, 36.226109, 44.395695>,  <39.989082, 36.447575, 44.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970760, 36.226109, 44.395695>,  <39.940224, 35.856998, 44.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970760, 36.226109, 44.395695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467531, 0.301450, 0.830989,
		0.880674, -0.240026, -0.408413,
		0.076343, 0.922776, -0.377699,
		39.993664, 36.502941, 44.282387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602406, 36.061512, 44.731560>,  <39.940224, 35.856998, 44.546776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602406, 36.061512, 44.731560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426773, 36.406067, 44.629406>,  <40.321392, 36.612801, 44.568115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426773, 36.406067, 44.629406>,  <40.602406, 36.061512, 44.731560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426773, 36.406067, 44.629406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553498, 0.483246, 0.678316,
		0.707706, 0.156480, -0.688960,
		-0.439080, 0.861387, -0.255385,
		40.295048, 36.664482, 44.552792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119385, 36.554974, 44.720928>,  <40.602406, 36.061512, 44.731560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119385, 36.554974, 44.720928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787239, 36.764812, 44.796074>,  <40.587952, 36.890717, 44.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787239, 36.764812, 44.796074>,  <41.119385, 36.554974, 44.720928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787239, 36.764812, 44.796074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493374, 0.535473, 0.685457,
		0.258997, 0.661864, -0.703461,
		-0.830363, 0.524601, 0.187861,
		40.538132, 36.922192, 44.852432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293320, 37.137848, 45.154495>,  <41.119385, 36.554974, 44.720928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293320, 37.137848, 45.154495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896500, 37.146755, 45.204033>,  <40.658409, 37.152100, 45.233757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896500, 37.146755, 45.204033>,  <41.293320, 37.137848, 45.154495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896500, 37.146755, 45.204033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121312, 0.430667, 0.894321,
		-0.033424, 0.902236, -0.429945,
		-0.992052, 0.022266, 0.123847,
		40.598885, 37.153435, 45.241188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106632, 37.812206, 45.303711>,  <41.293320, 37.137848, 45.154495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106632, 37.812206, 45.303711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805870, 37.599136, 45.459087>,  <40.625412, 37.471294, 45.552315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805870, 37.599136, 45.459087>,  <41.106632, 37.812206, 45.303711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805870, 37.599136, 45.459087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046532, 0.630616, 0.774698,
		-0.657625, 0.564425, -0.498951,
		-0.751907, -0.532679, 0.388445,
		40.580299, 37.439331, 45.575623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625656, 38.314053, 45.565823>,  <41.106632, 37.812206, 45.303711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625656, 38.314053, 45.565823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527077, 37.966324, 45.737190>,  <40.467930, 37.757687, 45.840012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527077, 37.966324, 45.737190>,  <40.625656, 38.314053, 45.565823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527077, 37.966324, 45.737190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164457, 0.473152, 0.865495,
		-0.955100, 0.142846, -0.259575,
		-0.246451, -0.869323, 0.428415,
		40.453140, 37.705528, 45.865715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070595, 38.550117, 46.039173>,  <40.625656, 38.314053, 45.565823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070595, 38.550117, 46.039173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204288, 38.194908, 46.165470>,  <40.284504, 37.981781, 46.241249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204288, 38.194908, 46.165470>,  <40.070595, 38.550117, 46.039173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204288, 38.194908, 46.165470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001600, 0.335543, 0.942023,
		-0.942488, -0.314351, 0.113571,
		0.334234, -0.888028, 0.315742,
		40.304558, 37.928501, 46.260193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713158, 38.369900, 46.658661>,  <40.070595, 38.550117, 46.039173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713158, 38.369900, 46.658661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059662, 38.176731, 46.709862>,  <40.267563, 38.060829, 46.740582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059662, 38.176731, 46.709862>,  <39.713158, 38.369900, 46.658661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059662, 38.176731, 46.709862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123726, 0.455596, 0.881546,
		-0.484033, -0.747810, 0.454414,
		0.866259, -0.482921, 0.128000,
		40.319538, 38.031857, 46.748260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663982, 38.113415, 47.297653>,  <39.713158, 38.369900, 46.658661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663982, 38.113415, 47.297653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052273, 38.106438, 47.201832>,  <40.285248, 38.102253, 47.144341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052273, 38.106438, 47.201832>,  <39.663982, 38.113415, 47.297653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052273, 38.106438, 47.201832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235099, 0.273103, 0.932814,
		0.049153, -0.961826, 0.269209,
		0.970727, -0.017440, -0.239549,
		40.343491, 38.101204, 47.129967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960590, 37.820896, 47.826256>,  <39.663982, 38.113415, 47.297653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960590, 37.820896, 47.826256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281868, 37.973373, 47.643139>,  <40.474636, 38.064857, 47.533268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281868, 37.973373, 47.643139>,  <39.960590, 37.820896, 47.826256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281868, 37.973373, 47.643139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398286, 0.227837, 0.888515,
		0.442995, -0.895982, 0.031175,
		0.803196, 0.381191, -0.457788,
		40.522827, 38.087730, 47.505802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529057, 37.673954, 48.290421>,  <39.960590, 37.820896, 47.826256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529057, 37.673954, 48.290421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629707, 37.981113, 48.054787>,  <40.690098, 38.165409, 47.913406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629707, 37.981113, 48.054787>,  <40.529057, 37.673954, 48.290421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629707, 37.981113, 48.054787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375841, 0.483370, 0.790631,
		0.891868, -0.420345, -0.166978,
		0.251626, 0.767895, -0.589085,
		40.705196, 38.211483, 47.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343185, 37.975758, 48.333149>,  <40.529057, 37.673954, 48.290421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343185, 37.975758, 48.333149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100986, 38.274963, 48.224449>,  <40.955666, 38.454487, 48.159229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100986, 38.274963, 48.224449>,  <41.343185, 37.975758, 48.333149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100986, 38.274963, 48.224449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326048, 0.544644, 0.772694,
		0.725991, 0.379262, -0.573670,
		-0.605499, 0.748013, -0.271749,
		40.919338, 38.499367, 48.142925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683388, 38.507805, 48.533478>,  <41.343185, 37.975758, 48.333149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683388, 38.507805, 48.533478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329155, 38.690582, 48.500145>,  <41.116615, 38.800247, 48.480145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329155, 38.690582, 48.500145>,  <41.683388, 38.507805, 48.533478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329155, 38.690582, 48.500145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201525, 0.539640, 0.817420,
		0.418483, 0.707101, -0.569982,
		-0.885584, 0.456942, -0.083332,
		41.063480, 38.827663, 48.475147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801025, 39.164078, 48.688549>,  <41.683388, 38.507805, 48.533478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801025, 39.164078, 48.688549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404976, 39.219646, 48.696167>,  <41.167347, 39.252987, 48.700737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404976, 39.219646, 48.696167>,  <41.801025, 39.164078, 48.688549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404976, 39.219646, 48.696167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124922, 0.812258, 0.569764,
		0.063683, 0.566514, -0.821588,
		-0.990121, 0.138919, 0.019043,
		41.107941, 39.261322, 48.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860466, 39.847935, 48.751495>,  <41.801025, 39.164078, 48.688549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860466, 39.847935, 48.751495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474316, 39.772953, 48.824062>,  <41.242626, 39.727962, 48.867603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474316, 39.772953, 48.824062>,  <41.860466, 39.847935, 48.751495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474316, 39.772953, 48.824062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064329, 0.845027, 0.530840,
		-0.252809, 0.500789, -0.827827,
		-0.965375, -0.187454, 0.181415,
		41.184704, 39.716717, 48.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466782, 40.477127, 48.611179>,  <41.860466, 39.847935, 48.751495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466782, 40.477127, 48.611179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251884, 40.263351, 48.872173>,  <41.122944, 40.135086, 49.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251884, 40.263351, 48.872173>,  <41.466782, 40.477127, 48.611179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251884, 40.263351, 48.872173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057427, 0.795000, 0.603885,
		-0.841469, 0.286964, -0.457801,
		-0.537245, -0.534440, 0.652488,
		41.090710, 40.103020, 49.067921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834507, 40.825588, 48.660233>,  <41.466782, 40.477127, 48.611179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834507, 40.825588, 48.660233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874329, 40.621853, 49.002148>,  <40.898220, 40.499611, 49.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874329, 40.621853, 49.002148>,  <40.834507, 40.825588, 48.660233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874329, 40.621853, 49.002148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043925, 0.855968, 0.515161,
		-0.994062, -0.088831, 0.062840,
		0.099552, -0.509342, 0.854787,
		40.904194, 40.469051, 49.258583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370461, 41.023849, 49.245350>,  <40.834507, 40.825588, 48.660233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370461, 41.023849, 49.245350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643219, 40.854549, 49.483971>,  <40.806873, 40.752968, 49.627144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643219, 40.854549, 49.483971>,  <40.370461, 41.023849, 49.245350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643219, 40.854549, 49.483971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067908, 0.775420, 0.627784,
		-0.728288, -0.468595, 0.500016,
		0.681898, -0.423252, 0.596550,
		40.847790, 40.727573, 49.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066391, 41.121532, 49.963127>,  <40.370461, 41.023849, 49.245350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066391, 41.121532, 49.963127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459576, 41.053162, 49.990170>,  <40.695488, 41.012138, 50.006393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459576, 41.053162, 49.990170>,  <40.066391, 41.121532, 49.963127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459576, 41.053162, 49.990170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067261, 0.676754, 0.733131,
		-0.171064, -0.716092, 0.676720,
		0.982961, -0.170929, 0.067603,
		40.754463, 41.001884, 50.010452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231808, 41.129517, 50.688480>,  <40.066391, 41.121532, 49.963127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231808, 41.129517, 50.688480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590931, 41.169750, 50.516979>,  <40.806404, 41.193890, 50.414078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590931, 41.169750, 50.516979>,  <40.231808, 41.129517, 50.688480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590931, 41.169750, 50.516979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215409, 0.748864, 0.626738,
		0.384115, -0.655047, 0.650668,
		0.897805, 0.100580, -0.428754,
		40.860271, 41.199924, 50.388351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723515, 41.289528, 51.201027>,  <40.231808, 41.129517, 50.688480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723515, 41.289528, 51.201027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932106, 41.400307, 50.878201>,  <41.057262, 41.466774, 50.684505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932106, 41.400307, 50.878201>,  <40.723515, 41.289528, 51.201027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932106, 41.400307, 50.878201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427670, 0.733640, 0.528083,
		0.738357, -0.620538, 0.264122,
		0.521466, 0.276956, -0.807073,
		41.088551, 41.483391, 50.636078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380623, 41.407066, 51.538246>,  <40.723515, 41.289528, 51.201027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380623, 41.407066, 51.538246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361717, 41.609535, 51.193790>,  <41.350372, 41.731018, 50.987118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361717, 41.609535, 51.193790>,  <41.380623, 41.407066, 51.538246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361717, 41.609535, 51.193790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351899, 0.815268, 0.459897,
		0.934844, -0.281296, -0.216656,
		-0.047265, 0.506173, -0.861136,
		41.347538, 41.761387, 50.935452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019970, 41.833439, 51.435158>,  <41.380623, 41.407066, 51.538246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019970, 41.833439, 51.435158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739281, 42.019821, 51.219578>,  <41.570866, 42.131649, 51.090229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739281, 42.019821, 51.219578>,  <42.019970, 41.833439, 51.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739281, 42.019821, 51.219578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261906, 0.872224, 0.413075,
		0.662561, 0.148710, -0.734097,
		-0.701725, 0.465952, -0.538954,
		41.528763, 42.159607, 51.057892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439640, 42.294231, 51.018299>,  <42.019970, 41.833439, 51.435158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439640, 42.294231, 51.018299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058899, 42.412895, 51.049198>,  <41.830452, 42.484093, 51.067738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058899, 42.412895, 51.049198>,  <42.439640, 42.294231, 51.018299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058899, 42.412895, 51.049198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306261, 0.909382, 0.281478,
		0.013254, 0.291584, -0.956454,
		-0.951855, 0.296655, 0.077247,
		41.773342, 42.501892, 51.072372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395214, 42.882206, 50.521076>,  <42.439640, 42.294231, 51.018299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395214, 42.882206, 50.521076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126671, 42.936783, 50.812462>,  <41.965546, 42.969528, 50.987293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126671, 42.936783, 50.812462>,  <42.395214, 42.882206, 50.521076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126671, 42.936783, 50.812462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373564, 0.911212, 0.173615,
		-0.640096, 0.388686, -0.662722,
		-0.671362, 0.136438, 0.728463,
		41.925262, 42.977715, 51.031002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330536, 43.542286, 50.546337>,  <42.395214, 42.882206, 50.521076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330536, 43.542286, 50.546337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149273, 43.450001, 50.890759>,  <42.040516, 43.394630, 51.097412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149273, 43.450001, 50.890759>,  <42.330536, 43.542286, 50.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149273, 43.450001, 50.890759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205401, 0.912911, 0.352709,
		-0.867444, 0.336695, -0.366302,
		-0.453156, -0.230717, 0.861057,
		42.013325, 43.380787, 51.149075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851669, 44.052883, 50.344822>,  <42.330536, 43.542286, 50.546337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851669, 44.052883, 50.344822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992401, 44.332508, 50.095814>,  <43.076839, 44.500282, 49.946411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992401, 44.332508, 50.095814>,  <42.851669, 44.052883, 50.344822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992401, 44.332508, 50.095814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547298, -0.385895, -0.742664,
		-0.759393, 0.601997, 0.246823,
		0.351833, 0.699060, -0.622518,
		43.097950, 44.542225, 49.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305000, 44.122902, 49.841309>,  <42.851669, 44.052883, 50.344822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305000, 44.122902, 49.841309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624943, 44.279270, 49.659142>,  <42.816910, 44.373093, 49.549839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624943, 44.279270, 49.659142>,  <42.305000, 44.122902, 49.841309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624943, 44.279270, 49.659142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163148, -0.588610, -0.791783,
		-0.577590, 0.707615, -0.407026,
		0.799857, 0.390921, -0.455422,
		42.864899, 44.396545, 49.522514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055592, 44.407574, 49.315487>,  <42.305000, 44.122902, 49.841309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055592, 44.407574, 49.315487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437561, 44.309856, 49.248028>,  <42.666744, 44.251225, 49.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437561, 44.309856, 49.248028>,  <42.055592, 44.407574, 49.315487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437561, 44.309856, 49.248028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261517, -0.423468, -0.867343,
		0.140467, 0.872351, -0.468266,
		0.954923, -0.244293, -0.168651,
		42.724037, 44.236568, 49.197433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291912, 44.533890, 48.574135>,  <42.055592, 44.407574, 49.315487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291912, 44.533890, 48.574135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565781, 44.272678, 48.703613>,  <42.730103, 44.115952, 48.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565781, 44.272678, 48.703613>,  <42.291912, 44.533890, 48.574135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565781, 44.272678, 48.703613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127069, -0.544265, -0.829234,
		0.717686, 0.526625, -0.455624,
		0.684676, -0.653025, 0.323694,
		42.771183, 44.076771, 48.800720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655624, 44.304581, 47.906235>,  <42.291912, 44.533890, 48.574135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655624, 44.304581, 47.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805382, 44.048054, 48.174126>,  <42.895237, 43.894138, 48.334862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805382, 44.048054, 48.174126>,  <42.655624, 44.304581, 47.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805382, 44.048054, 48.174126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143799, -0.673369, -0.725187,
		0.916051, 0.367813, -0.159886,
		0.374395, -0.641317, 0.669731,
		42.917702, 43.855659, 48.375046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223560, 43.944511, 47.599754>,  <42.655624, 44.304581, 47.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223560, 43.944511, 47.599754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096844, 43.711182, 47.898922>,  <43.020813, 43.571182, 48.078423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096844, 43.711182, 47.898922>,  <43.223560, 43.944511, 47.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096844, 43.711182, 47.898922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082931, -0.768473, -0.634486,
		0.944863, -0.263024, 0.195069,
		-0.316791, -0.583325, 0.747915,
		43.001808, 43.536182, 48.123295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605362, 43.370541, 47.422501>,  <43.223560, 43.944511, 47.599754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605362, 43.370541, 47.422501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307823, 43.265984, 47.668545>,  <43.129299, 43.203251, 47.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307823, 43.265984, 47.668545>,  <43.605362, 43.370541, 47.422501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307823, 43.265984, 47.668545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150046, -0.831542, -0.534812,
		0.651286, -0.490115, 0.579322,
		-0.743851, -0.261391, 0.615111,
		43.084667, 43.187565, 47.853077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627693, 42.673107, 47.433327>,  <43.605362, 43.370541, 47.422501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627693, 42.673107, 47.433327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260120, 42.730080, 47.580444>,  <43.039577, 42.764263, 47.668713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260120, 42.730080, 47.580444>,  <43.627693, 42.673107, 47.433327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260120, 42.730080, 47.580444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340644, -0.756630, -0.558097,
		0.198792, -0.638141, 0.743813,
		-0.918935, 0.142430, 0.367791,
		42.984440, 42.772808, 47.690781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352642, 41.999043, 47.568333>,  <43.627693, 42.673107, 47.433327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352642, 41.999043, 47.568333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029938, 42.233814, 47.541042>,  <42.836315, 42.374676, 47.524670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029938, 42.233814, 47.541042>,  <43.352642, 41.999043, 47.568333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029938, 42.233814, 47.541042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425656, -0.657372, -0.621836,
		-0.409821, -0.472632, 0.780170,
		-0.806761, 0.586925, -0.068226,
		42.787910, 42.409893, 47.520573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785526, 41.589333, 47.578815>,  <43.352642, 41.999043, 47.568333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785526, 41.589333, 47.578815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640282, 41.921574, 47.409939>,  <42.553135, 42.120918, 47.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640282, 41.921574, 47.409939>,  <42.785526, 41.589333, 47.578815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640282, 41.921574, 47.409939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353700, -0.542078, -0.762265,
		-0.862002, -0.127458, 0.490619,
		-0.363110, 0.830606, -0.422191,
		42.531349, 42.170753, 47.283283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920658, 41.434448, 47.447128>,  <42.785526, 41.589333, 47.578815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920658, 41.434448, 47.447128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064789, 41.709576, 47.195072>,  <42.151268, 41.874653, 47.043839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064789, 41.709576, 47.195072>,  <41.920658, 41.434448, 47.447128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064789, 41.709576, 47.195072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371533, -0.513806, -0.773283,
		-0.855645, 0.512751, 0.070409,
		0.360325, 0.687815, -0.630140,
		42.172886, 41.915920, 47.006031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407124, 41.540783, 46.944286>,  <41.920658, 41.434448, 47.447128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407124, 41.540783, 46.944286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736145, 41.695869, 46.777874>,  <41.933559, 41.788921, 46.678028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736145, 41.695869, 46.777874>,  <41.407124, 41.540783, 46.944286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736145, 41.695869, 46.777874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280259, -0.360182, -0.889789,
		-0.494832, 0.848495, -0.187608,
		0.822555, 0.387717, -0.416028,
		41.982910, 41.812183, 46.653065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155071, 41.844116, 46.407642>,  <41.407124, 41.540783, 46.944286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155071, 41.844116, 46.407642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536961, 41.774792, 46.310921>,  <41.766094, 41.733196, 46.252888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536961, 41.774792, 46.310921>,  <41.155071, 41.844116, 46.407642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536961, 41.774792, 46.310921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286775, -0.319905, -0.903006,
		0.079149, 0.931463, -0.355122,
		0.954723, -0.173312, -0.241801,
		41.823376, 41.722797, 46.238380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183804, 41.971615, 45.719696>,  <41.155071, 41.844116, 46.407642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183804, 41.971615, 45.719696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512993, 41.751209, 45.774971>,  <41.710506, 41.618965, 45.808136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512993, 41.751209, 45.774971>,  <41.183804, 41.971615, 45.719696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512993, 41.751209, 45.774971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171164, -0.472475, -0.864564,
		0.541678, 0.687861, -0.483149,
		0.822975, -0.551013, 0.138192,
		41.759884, 41.585907, 45.816429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419769, 42.040356, 45.036114>,  <41.183804, 41.971615, 45.719696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419769, 42.040356, 45.036114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572357, 41.727180, 45.232677>,  <41.663910, 41.539276, 45.350616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572357, 41.727180, 45.232677>,  <41.419769, 42.040356, 45.036114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572357, 41.727180, 45.232677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012472, -0.535921, -0.844176,
		0.924296, 0.315902, -0.214204,
		0.381474, -0.782940, 0.491410,
		41.686798, 41.492298, 45.380100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935417, 41.779442, 44.592453>,  <41.419769, 42.040356, 45.036114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935417, 41.779442, 44.592453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874321, 41.467667, 44.835480>,  <41.837662, 41.280602, 44.981297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874321, 41.467667, 44.835480>,  <41.935417, 41.779442, 44.592453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874321, 41.467667, 44.835480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021739, -0.611984, -0.790571,
		0.988027, -0.133962, 0.076533,
		-0.152744, -0.779441, 0.607569,
		41.828499, 41.233833, 45.017750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252125, 41.127525, 44.288235>,  <41.935417, 41.779442, 44.592453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252125, 41.127525, 44.288235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992939, 40.971539, 44.549942>,  <41.837429, 40.877945, 44.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992939, 40.971539, 44.549942>,  <42.252125, 41.127525, 44.288235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992939, 40.971539, 44.549942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235077, -0.714668, -0.658778,
		0.724489, -0.580667, 0.371405,
		-0.647962, -0.389969, 0.654270,
		41.798550, 40.854549, 44.746223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275673, 40.483150, 44.012573>,  <42.252125, 41.127525, 44.288235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275673, 40.483150, 44.012573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974354, 40.502377, 44.274940>,  <41.793564, 40.513912, 44.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974354, 40.502377, 44.274940>,  <42.275673, 40.483150, 44.012573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974354, 40.502377, 44.274940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459491, -0.752013, -0.472594,
		0.470546, -0.657394, 0.588575,
		-0.753296, 0.048068, 0.655923,
		41.748363, 40.516796, 44.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188366, 39.807335, 44.260708>,  <42.275673, 40.483150, 44.012573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188366, 39.807335, 44.260708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857365, 40.028175, 44.301544>,  <41.658764, 40.160679, 44.326046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857365, 40.028175, 44.301544>,  <42.188366, 39.807335, 44.260708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857365, 40.028175, 44.301544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514333, -0.672478, -0.532198,
		-0.225172, -0.492906, 0.840441,
		-0.827501, 0.552103, 0.102095,
		41.609116, 40.193806, 44.332172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668373, 39.309345, 44.490738>,  <42.188366, 39.807335, 44.260708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668373, 39.309345, 44.490738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525105, 39.631790, 44.302311>,  <41.439144, 39.825256, 44.189255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525105, 39.631790, 44.302311>,  <41.668373, 39.309345, 44.490738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525105, 39.631790, 44.302311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628263, -0.581312, -0.517070,
		-0.690652, 0.110756, 0.714656,
		-0.358169, 0.806107, -0.471068,
		41.417652, 39.873623, 44.160992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968250, 39.311676, 44.625633>,  <41.668373, 39.309345, 44.490738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968250, 39.311676, 44.625633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 39.519215, 44.287579>,  <41.050579, 39.643738, 44.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 39.519215, 44.287579>,  <40.968250, 39.311676, 44.625633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019707, 39.519215, 44.287579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681752, -0.572626, -0.455316,
		-0.720185, 0.634742, 0.280064,
		0.128637, 0.518846, -0.845134,
		41.058296, 39.674870, 44.034039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331345, 39.228951, 44.389931>,  <40.968250, 39.311676, 44.625633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331345, 39.228951, 44.389931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568249, 39.350822, 44.091564>,  <40.710392, 39.423946, 43.912544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568249, 39.350822, 44.091564>,  <40.331345, 39.228951, 44.389931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568249, 39.350822, 44.091564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537347, -0.540473, -0.647416,
		-0.600401, 0.784259, -0.156387,
		0.592265, 0.304675, -0.745919,
		40.745930, 39.442226, 43.867790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951710, 39.039261, 43.819305>,  <40.331345, 39.228951, 44.389931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951710, 39.039261, 43.819305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301418, 39.110886, 43.638824>,  <40.511242, 39.153858, 43.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301418, 39.110886, 43.638824>,  <39.951710, 39.039261, 43.819305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301418, 39.110886, 43.638824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263945, -0.604737, -0.751416,
		-0.407408, 0.776036, -0.481443,
		0.874272, 0.179059, -0.451206,
		40.563702, 39.164604, 43.503464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771492, 39.306854, 43.168304>,  <39.951710, 39.039261, 43.819305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771492, 39.306854, 43.168304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121803, 39.115047, 43.146080>,  <40.331989, 38.999966, 43.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121803, 39.115047, 43.146080>,  <39.771492, 39.306854, 43.168304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121803, 39.115047, 43.146080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362809, -0.577928, -0.731005,
		0.318419, 0.660352, -0.680106,
		0.875773, -0.479514, -0.055558,
		40.384537, 38.971191, 43.129414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760254, 39.039551, 42.539360>,  <39.771492, 39.306854, 43.168304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760254, 39.039551, 42.539360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104553, 38.867870, 42.648830>,  <40.311134, 38.764862, 42.714512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104553, 38.867870, 42.648830>,  <39.760254, 39.039551, 42.539360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104553, 38.867870, 42.648830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095421, -0.664160, -0.741475,
		0.500006, 0.612110, -0.612630,
		0.860749, -0.429200, 0.273676,
		40.362778, 38.739109, 42.730934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206947, 39.055664, 41.899677>,  <39.760254, 39.039551, 42.539360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206947, 39.055664, 41.899677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321609, 38.752434, 42.133991>,  <40.390408, 38.570496, 42.274582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321609, 38.752434, 42.133991>,  <40.206947, 39.055664, 41.899677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321609, 38.752434, 42.133991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048758, -0.599112, -0.799179,
		0.956791, 0.257654, -0.134779,
		0.286660, -0.758076, 0.585788,
		40.407608, 38.525013, 42.309727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594105, 38.722343, 41.430798>,  <40.206947, 39.055664, 41.899677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594105, 38.722343, 41.430798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551891, 38.473644, 41.741226>,  <40.526562, 38.324425, 41.927483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551891, 38.473644, 41.741226>,  <40.594105, 38.722343, 41.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551891, 38.473644, 41.741226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054975, -0.775589, -0.628840,
		0.992895, -0.109028, 0.047669,
		-0.105533, -0.621752, 0.776072,
		40.520233, 38.287117, 41.974049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119446, 38.116180, 41.403465>,  <40.594105, 38.722343, 41.430798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119446, 38.116180, 41.403465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817455, 37.989067, 41.632912>,  <40.636261, 37.912800, 41.770580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817455, 37.989067, 41.632912>,  <41.119446, 38.116180, 41.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817455, 37.989067, 41.632912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102702, -0.921240, -0.375193,
		0.647664, -0.224349, 0.728147,
		-0.754972, -0.317781, 0.573613,
		40.590965, 37.893734, 41.804996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329308, 37.571968, 41.765594>,  <41.119446, 38.116180, 41.403465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329308, 37.571968, 41.765594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934147, 37.531803, 41.718311>,  <40.697052, 37.507706, 41.689941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934147, 37.531803, 41.718311>,  <41.329308, 37.571968, 41.765594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934147, 37.531803, 41.718311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137881, -0.917568, -0.372904,
		-0.071023, -0.384690, 0.920309,
		-0.987899, -0.100408, -0.118210,
		40.637775, 37.501682, 41.682850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231915, 36.864399, 41.957489>,  <41.329308, 37.571968, 41.765594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231915, 36.864399, 41.957489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927441, 37.019966, 41.749901>,  <40.744755, 37.113308, 41.625347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927441, 37.019966, 41.749901>,  <41.231915, 36.864399, 41.957489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927441, 37.019966, 41.749901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019398, -0.786221, -0.617641,
		-0.648239, -0.480209, 0.590919,
		-0.761189, 0.388917, -0.518974,
		40.699085, 37.136642, 41.594208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631847, 36.322063, 41.907261>,  <41.231915, 36.864399, 41.957489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631847, 36.322063, 41.907261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531784, 36.579994, 41.618366>,  <40.471745, 36.734753, 41.445030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531784, 36.579994, 41.618366>,  <40.631847, 36.322063, 41.907261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531784, 36.579994, 41.618366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152834, -0.762899, -0.628193,
		-0.956065, -0.046767, 0.289399,
		-0.250161, 0.644824, -0.722234,
		40.456738, 36.773441, 41.401695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153442, 35.930550, 41.453598>,  <40.631847, 36.322063, 41.907261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153442, 35.930550, 41.453598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257954, 36.253376, 41.241791>,  <40.320660, 36.447071, 41.114708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257954, 36.253376, 41.241791>,  <40.153442, 35.930550, 41.453598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257954, 36.253376, 41.241791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003770, -0.549418, -0.835540,
		-0.965257, 0.216310, -0.146592,
		0.261276, 0.807063, -0.529513,
		40.336338, 36.495495, 41.082935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739910, 35.993599, 40.896385>,  <40.153442, 35.930550, 41.453598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739910, 35.993599, 40.896385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042770, 36.227020, 40.778957>,  <40.224487, 36.367073, 40.708500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042770, 36.227020, 40.778957>,  <39.739910, 35.993599, 40.896385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042770, 36.227020, 40.778957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050763, -0.395482, -0.917070,
		-0.651263, 0.709264, -0.269817,
		0.757152, 0.583557, -0.293567,
		40.269917, 36.402088, 40.690887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530228, 36.268528, 40.242764>,  <39.739910, 35.993599, 40.896385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530228, 36.268528, 40.242764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928352, 36.303833, 40.258541>,  <40.167229, 36.325016, 40.268009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928352, 36.303833, 40.258541>,  <39.530228, 36.268528, 40.242764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928352, 36.303833, 40.258541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059684, -0.240023, -0.968931,
		-0.076053, 0.966747, -0.244166,
		0.995316, 0.088263, 0.039445,
		40.226948, 36.330311, 40.270374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730961, 36.686779, 39.770760>,  <39.530228, 36.268528, 40.242764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730961, 36.686779, 39.770760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056519, 36.464291, 39.837921>,  <40.251854, 36.330795, 39.878216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056519, 36.464291, 39.837921>,  <39.730961, 36.686779, 39.770760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056519, 36.464291, 39.837921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007595, -0.278773, -0.960327,
		0.580963, 0.782880, -0.222667,
		0.813895, -0.556223, 0.167902,
		40.300686, 36.297424, 39.888290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055653, 36.832512, 39.186371>,  <39.730961, 36.686779, 39.770760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055653, 36.832512, 39.186371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234459, 36.500328, 39.319344>,  <40.341743, 36.301018, 39.399128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234459, 36.500328, 39.319344>,  <40.055653, 36.832512, 39.186371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234459, 36.500328, 39.319344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009618, -0.376073, -0.926540,
		0.894474, 0.410981, -0.176098,
		0.447017, -0.830460, 0.332435,
		40.368565, 36.251190, 39.419075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630913, 36.712711, 38.839455>,  <40.055653, 36.832512, 39.186371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630913, 36.712711, 38.839455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538128, 36.346775, 38.971668>,  <40.482456, 36.127213, 39.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538128, 36.346775, 38.971668>,  <40.630913, 36.712711, 38.839455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538128, 36.346775, 38.971668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043798, -0.329637, -0.943091,
		0.971737, -0.233242, 0.036396,
		-0.231966, -0.914843, 0.330536,
		40.468536, 36.072323, 39.070827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924023, 36.253254, 38.290920>,  <40.630913, 36.712711, 38.839455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924023, 36.253254, 38.290920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677002, 36.011307, 38.492023>,  <40.528790, 35.866138, 38.612686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677002, 36.011307, 38.492023>,  <40.924023, 36.253254, 38.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677002, 36.011307, 38.492023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294750, -0.414659, -0.860918,
		0.729215, -0.679849, 0.077788,
		-0.617550, -0.604866, 0.502761,
		40.491737, 35.829845, 38.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051311, 35.545174, 38.017136>,  <40.924023, 36.253254, 38.290920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051311, 35.545174, 38.017136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692924, 35.509327, 38.191132>,  <40.477894, 35.487820, 38.295528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692924, 35.509327, 38.191132>,  <41.051311, 35.545174, 38.017136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692924, 35.509327, 38.191132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392917, -0.296621, -0.870421,
		0.207028, -0.950781, 0.230552,
		-0.895967, -0.089613, 0.434987,
		40.424133, 35.482445, 38.321629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719826, 34.833153, 37.827919>,  <41.051311, 35.545174, 38.017136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719826, 34.833153, 37.827919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419327, 35.066021, 37.952309>,  <40.239029, 35.205742, 38.026943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419327, 35.066021, 37.952309>,  <40.719826, 34.833153, 37.827919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419327, 35.066021, 37.952309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516290, -0.224815, -0.826379,
		-0.411185, -0.781366, 0.469462,
		-0.751247, 0.582173, 0.310971,
		40.193951, 35.240673, 38.045601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124760, 34.396507, 37.808979>,  <40.719826, 34.833153, 37.827919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124760, 34.396507, 37.808979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047443, 34.788181, 37.784225>,  <40.001053, 35.023186, 37.769375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047443, 34.788181, 37.784225>,  <40.124760, 34.396507, 37.808979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047443, 34.788181, 37.784225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201842, -0.101407, -0.974154,
		-0.960155, -0.175807, 0.217243,
		-0.193293, 0.979188, -0.061881,
		39.989456, 35.081936, 37.765659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437901, 34.551899, 37.525673>,  <40.124760, 34.396507, 37.808979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437901, 34.551899, 37.525673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748699, 34.782570, 37.424706>,  <39.935181, 34.920975, 37.364124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748699, 34.782570, 37.424706>,  <39.437901, 34.551899, 37.525673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748699, 34.782570, 37.424706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096231, -0.287451, -0.952949,
		-0.622103, 0.764731, -0.167855,
		0.776999, 0.576679, -0.252414,
		39.981800, 34.955574, 37.348980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384003, 34.544201, 36.764290>,  <39.437901, 34.551899, 37.525673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384003, 34.544201, 36.764290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737415, 34.708477, 36.854362>,  <39.949463, 34.807045, 36.908405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737415, 34.708477, 36.854362>,  <39.384003, 34.544201, 36.764290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737415, 34.708477, 36.854362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349976, -0.259367, -0.900137,
		-0.311274, 0.874106, -0.372891,
		0.883530, 0.410692, 0.225182,
		40.002476, 34.831684, 36.921917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594166, 35.064693, 36.269253>,  <39.384003, 34.544201, 36.764290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594166, 35.064693, 36.269253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896309, 34.852253, 36.422806>,  <40.077595, 34.724789, 36.514938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896309, 34.852253, 36.422806>,  <39.594166, 35.064693, 36.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896309, 34.852253, 36.422806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235543, -0.326613, -0.915338,
		0.611519, 0.781828, -0.121611,
		0.755356, -0.531102, 0.383885,
		40.122917, 34.692921, 36.537971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162495, 35.154705, 35.869064>,  <39.594166, 35.064693, 36.269253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162495, 35.154705, 35.869064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252895, 34.794052, 36.016567>,  <40.307137, 34.577660, 36.105068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252895, 34.794052, 36.016567>,  <40.162495, 35.154705, 35.869064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252895, 34.794052, 36.016567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186727, -0.331435, -0.924816,
		0.956064, 0.277863, 0.093456,
		0.225998, -0.901634, 0.368757,
		40.320694, 34.523563, 36.127193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264095, 35.670139, 36.382187>,  <40.162495, 35.154705, 35.869064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264095, 35.670139, 36.382187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423878, 35.651695, 36.748425>,  <40.519745, 35.640629, 36.968166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423878, 35.651695, 36.748425>,  <40.264095, 35.670139, 36.382187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423878, 35.651695, 36.748425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533988, -0.823522, 0.191491,
		0.745181, -0.565407, -0.353581,
		0.399452, -0.046113, 0.915594,
		40.543713, 35.637863, 37.023102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788216, 35.088215, 36.560104>,  <40.264095, 35.670139, 36.382187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788216, 35.088215, 36.560104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558262, 35.197674, 36.868553>,  <40.420288, 35.263348, 37.053623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558262, 35.197674, 36.868553>,  <40.788216, 35.088215, 36.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558262, 35.197674, 36.868553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424153, -0.905576, 0.005141,
		0.699713, -0.324117, 0.636672,
		-0.574888, 0.273644, 0.771118,
		40.385796, 35.279766, 37.099888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456047, 34.827740, 36.511971>,  <40.788216, 35.088215, 36.560104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456047, 34.827740, 36.511971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850765, 34.820309, 36.447613>,  <42.087597, 34.815849, 36.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850765, 34.820309, 36.447613>,  <41.456047, 34.827740, 36.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850765, 34.820309, 36.447613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107927, 0.665296, -0.738737,
		0.120764, 0.746348, 0.654508,
		0.986797, -0.018573, -0.160895,
		42.146805, 34.814735, 36.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719296, 35.431240, 36.651466>,  <41.456047, 34.827740, 36.511971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719296, 35.431240, 36.651466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008530, 35.304943, 36.405716>,  <42.182072, 35.229164, 36.258266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008530, 35.304943, 36.405716>,  <41.719296, 35.431240, 36.651466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008530, 35.304943, 36.405716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090590, 0.838386, -0.537496,
		0.684793, 0.444311, 0.577621,
		0.723085, -0.315747, -0.614371,
		42.225456, 35.210220, 36.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151077, 36.011990, 36.656967>,  <41.719296, 35.431240, 36.651466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151077, 36.011990, 36.656967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270119, 35.798035, 36.340656>,  <42.341545, 35.669662, 36.150871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270119, 35.798035, 36.340656>,  <42.151077, 36.011990, 36.656967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270119, 35.798035, 36.340656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108165, 0.841865, -0.528738,
		0.948541, 0.071822, 0.308402,
		0.297608, -0.534888, -0.790775,
		42.359402, 35.637569, 36.103424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874363, 36.286312, 36.383316>,  <42.151077, 36.011990, 36.656967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874363, 36.286312, 36.383316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693104, 36.092716, 36.083874>,  <42.584351, 35.976559, 35.904209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693104, 36.092716, 36.083874>,  <42.874363, 36.286312, 36.383316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693104, 36.092716, 36.083874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183654, 0.771071, -0.609689,
		0.872313, -0.413762, -0.260520,
		-0.453146, -0.483994, -0.748605,
		42.557159, 35.947517, 35.859291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218575, 36.526115, 35.900795>,  <42.874363, 36.286312, 36.383316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218575, 36.526115, 35.900795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890907, 36.384670, 35.720161>,  <42.694309, 36.299801, 35.611782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890907, 36.384670, 35.720161>,  <43.218575, 36.526115, 35.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890907, 36.384670, 35.720161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038784, 0.819681, -0.571506,
		0.572246, -0.450643, -0.685168,
		-0.819165, -0.353615, -0.451581,
		42.645157, 36.278587, 35.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331734, 36.685116, 35.178391>,  <43.218575, 36.526115, 35.900795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331734, 36.685116, 35.178391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941719, 36.643066, 35.256618>,  <42.707710, 36.617836, 35.303555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941719, 36.643066, 35.256618>,  <43.331734, 36.685116, 35.178391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941719, 36.643066, 35.256618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171383, 0.916327, -0.361900,
		-0.141160, -0.386384, -0.911472,
		-0.975039, -0.105125, 0.195568,
		42.649208, 36.611530, 35.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047375, 36.961880, 34.620674>,  <43.331734, 36.685116, 35.178391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047375, 36.961880, 34.620674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741199, 36.959587, 34.878071>,  <42.557495, 36.958210, 35.032509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741199, 36.959587, 34.878071>,  <43.047375, 36.961880, 34.620674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741199, 36.959587, 34.878071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217710, 0.943304, -0.250560,
		-0.605567, -0.331881, -0.723286,
		-0.765435, -0.005736, 0.643488,
		42.511570, 36.957867, 35.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465950, 36.973915, 34.236042>,  <43.047375, 36.961880, 34.620674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465950, 36.973915, 34.236042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381889, 37.125221, 34.596653>,  <42.331451, 37.216003, 34.813019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381889, 37.125221, 34.596653>,  <42.465950, 36.973915, 34.236042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381889, 37.125221, 34.596653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271256, 0.863357, -0.425482,
		-0.939284, -0.333962, -0.078833,
		-0.210155, 0.378265, 0.901527,
		42.318844, 37.238701, 34.867111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980629, 37.485435, 34.173206>,  <42.465950, 36.973915, 34.236042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980629, 37.485435, 34.173206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083828, 37.598694, 34.542698>,  <42.145748, 37.666649, 34.764393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083828, 37.598694, 34.542698>,  <41.980629, 37.485435, 34.173206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083828, 37.598694, 34.542698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103059, 0.942573, -0.317703,
		-0.960634, 0.177163, 0.213997,
		0.257993, 0.283142, 0.923726,
		42.161224, 37.683636, 34.819817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493881, 38.070057, 34.315334>,  <41.980629, 37.485435, 34.173206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493881, 38.070057, 34.315334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823105, 38.091003, 34.541550>,  <42.020638, 38.103573, 34.677280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823105, 38.091003, 34.541550>,  <41.493881, 38.070057, 34.315334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823105, 38.091003, 34.541550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094650, 0.969170, -0.227487,
		-0.560017, 0.240764, 0.792725,
		0.823057, 0.052365, 0.565540,
		42.070023, 38.106712, 34.711212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422825, 38.508739, 34.891216>,  <41.493881, 38.070057, 34.315334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422825, 38.508739, 34.891216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819653, 38.517517, 34.841721>,  <42.057751, 38.522781, 34.812023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819653, 38.517517, 34.841721>,  <41.422825, 38.508739, 34.891216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819653, 38.517517, 34.841721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051034, 0.970135, -0.237138,
		0.114841, 0.241573, 0.963563,
		0.992072, 0.021942, -0.123740,
		42.117275, 38.524101, 34.804600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574821, 39.218380, 35.043674>,  <41.422825, 38.508739, 34.891216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574821, 39.218380, 35.043674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902920, 39.083282, 34.859013>,  <42.099781, 39.002224, 34.748215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902920, 39.083282, 34.859013>,  <41.574821, 39.218380, 35.043674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902920, 39.083282, 34.859013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202887, 0.926385, -0.317250,
		0.534817, 0.166561, 0.828389,
		0.820248, -0.337741, -0.461653,
		42.148994, 38.981960, 34.720516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067780, 39.661465, 35.257530>,  <41.574821, 39.218380, 35.043674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067780, 39.661465, 35.257530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204460, 39.486904, 34.924595>,  <42.286469, 39.382168, 34.724834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204460, 39.486904, 34.924595>,  <42.067780, 39.661465, 35.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204460, 39.486904, 34.924595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277870, 0.892967, -0.354116,
		0.897790, -0.110281, 0.426393,
		0.341703, -0.436403, -0.832341,
		42.306973, 39.355984, 34.674892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798382, 39.762604, 35.264122>,  <42.067780, 39.661465, 35.257530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798382, 39.762604, 35.264122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669537, 39.728634, 34.886971>,  <42.592228, 39.708252, 34.660679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669537, 39.728634, 34.886971>,  <42.798382, 39.762604, 35.264122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669537, 39.728634, 34.886971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517950, 0.817875, -0.250616,
		0.792445, -0.569093, -0.219462,
		-0.322116, -0.084929, -0.942883,
		42.572903, 39.703156, 34.604107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400978, 39.986771, 34.938446>,  <42.798382, 39.762604, 35.264122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400978, 39.986771, 34.938446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106369, 39.982044, 34.667923>,  <42.929604, 39.979210, 34.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106369, 39.982044, 34.667923>,  <43.400978, 39.986771, 34.938446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106369, 39.982044, 34.667923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408501, 0.789147, -0.458665,
		0.539124, -0.614090, -0.576401,
		-0.736527, -0.011817, -0.676305,
		42.885410, 39.978500, 34.465031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706638, 39.876663, 34.274345>,  <43.400978, 39.986771, 34.938446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706638, 39.876663, 34.274345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356556, 40.063530, 34.224113>,  <43.146507, 40.175648, 34.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356556, 40.063530, 34.224113>,  <43.706638, 39.876663, 34.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356556, 40.063530, 34.224113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465271, 0.741868, -0.482861,
		-0.132414, -0.481031, -0.866646,
		-0.875208, 0.467163, -0.125576,
		43.093994, 40.203678, 34.186440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688896, 40.075962, 33.592098>,  <43.706638, 39.876663, 34.274345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688896, 40.075962, 33.592098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437050, 40.308060, 33.798748>,  <43.285942, 40.447319, 33.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437050, 40.308060, 33.798748>,  <43.688896, 40.075962, 33.592098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437050, 40.308060, 33.798748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360478, 0.807247, -0.467341,
		-0.688215, -0.108014, -0.717422,
		-0.629616, 0.580245, 0.516623,
		43.248165, 40.482132, 33.953735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524620, 40.545803, 33.120148>,  <43.688896, 40.075962, 33.592098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524620, 40.545803, 33.120148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403629, 40.712879, 33.462852>,  <43.331036, 40.813126, 33.668476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403629, 40.712879, 33.462852>,  <43.524620, 40.545803, 33.120148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403629, 40.712879, 33.462852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454678, 0.853236, -0.255454,
		-0.837721, 0.312282, -0.447999,
		-0.302475, 0.417694, 0.856762,
		43.312885, 40.838188, 33.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256123, 41.304512, 32.944698>,  <43.524620, 40.545803, 33.120148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256123, 41.304512, 32.944698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347626, 41.313858, 33.333981>,  <43.402527, 41.319466, 33.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347626, 41.313858, 33.333981>,  <43.256123, 41.304512, 32.944698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347626, 41.313858, 33.333981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510771, 0.848171, -0.140426,
		-0.828724, 0.529207, 0.182091,
		0.228758, 0.023367, 0.973203,
		43.416252, 41.320869, 33.625942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163399, 42.038422, 33.110924>,  <43.256123, 41.304512, 32.944698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163399, 42.038422, 33.110924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349857, 41.890907, 33.432598>,  <43.461731, 41.802399, 33.625603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349857, 41.890907, 33.432598>,  <43.163399, 42.038422, 33.110924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349857, 41.890907, 33.432598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445385, 0.883213, 0.146857,
		-0.764422, 0.289714, 0.575955,
		0.466144, -0.368783, 0.804182,
		43.489700, 41.780273, 33.673851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043713, 42.462048, 33.609348>,  <43.163399, 42.038422, 33.110924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043713, 42.462048, 33.609348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377842, 42.274216, 33.723705>,  <43.578320, 42.161518, 33.792320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377842, 42.274216, 33.723705>,  <43.043713, 42.462048, 33.609348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377842, 42.274216, 33.723705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454652, 0.882416, 0.120964,
		-0.309075, 0.028935, 0.950597,
		0.835323, -0.469579, 0.285888,
		43.628437, 42.133343, 33.809471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280117, 42.789589, 34.186253>,  <43.043713, 42.462048, 33.609348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280117, 42.789589, 34.186253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581303, 42.614845, 33.989399>,  <43.762016, 42.509998, 33.871284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581303, 42.614845, 33.989399>,  <43.280117, 42.789589, 34.186253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581303, 42.614845, 33.989399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546274, 0.831935, 0.097309,
		0.366915, -0.342111, 0.865063,
		0.752966, -0.436857, -0.492136,
		43.807194, 42.483788, 33.841759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769630, 43.329235, 34.149532>,  <43.280117, 42.789589, 34.186253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769630, 43.329235, 34.149532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074150, 43.579117, 34.219009>,  <44.256863, 43.729046, 34.260696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074150, 43.579117, 34.219009>,  <43.769630, 43.329235, 34.149532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074150, 43.579117, 34.219009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135547, 0.415298, -0.899530,
		-0.634074, 0.661268, 0.400843,
		0.761300, 0.624702, 0.173696,
		44.302540, 43.766529, 34.271118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445114, 43.978893, 33.917038>,  <43.769630, 43.329235, 34.149532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445114, 43.978893, 33.917038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844940, 43.977654, 33.905300>,  <44.084835, 43.976910, 33.898258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844940, 43.977654, 33.905300>,  <43.445114, 43.978893, 33.917038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844940, 43.977654, 33.905300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026783, 0.322077, -0.946334,
		0.012383, 0.946708, 0.321854,
		0.999565, -0.003099, -0.029344,
		44.144810, 43.976723, 33.896496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694717, 44.610443, 33.652958>,  <43.445114, 43.978893, 33.917038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694717, 44.610443, 33.652958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991867, 44.347324, 33.603252>,  <44.170155, 44.189453, 33.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991867, 44.347324, 33.603252>,  <43.694717, 44.610443, 33.652958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991867, 44.347324, 33.603252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082596, 0.274277, -0.958097,
		0.664320, 0.701479, 0.258084,
		0.742871, -0.657799, -0.124268,
		44.214729, 44.149986, 33.565971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235806, 44.998302, 33.403118>,  <43.694717, 44.610443, 33.652958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235806, 44.998302, 33.403118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286587, 44.621075, 33.280151>,  <44.317055, 44.394737, 33.206371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286587, 44.621075, 33.280151>,  <44.235806, 44.998302, 33.403118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286587, 44.621075, 33.280151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186102, 0.327065, -0.926496,
		0.974294, 0.060412, 0.217029,
		0.126954, -0.943069, -0.307415,
		44.324673, 44.338154, 33.187927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901451, 44.830902, 33.086388>,  <44.235806, 44.998302, 33.403118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901451, 44.830902, 33.086388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595222, 44.629959, 32.925617>,  <44.411484, 44.509396, 32.829155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.595222, 44.629959, 32.925617>,  <44.901451, 44.830902, 33.086388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595222, 44.629959, 32.925617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320877, 0.243329, -0.915330,
		0.557620, -0.829717, -0.025091,
		-0.765570, -0.502355, -0.401923,
		44.365551, 44.479252, 32.805042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114147, 44.257645, 33.418762>,  <44.901451, 44.830902, 33.086388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114147, 44.257645, 33.418762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452557, 44.138550, 33.241856>,  <45.655602, 44.067093, 33.135712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.452557, 44.138550, 33.241856>,  <45.114147, 44.257645, 33.418762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.452557, 44.138550, 33.241856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122727, -0.698508, 0.704999,
		-0.518831, -0.650723, -0.554413,
		0.846022, -0.297734, -0.442269,
		45.706364, 44.049229, 33.109173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128139, 43.545380, 33.374489>,  <45.114147, 44.257645, 33.418762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128139, 43.545380, 33.374489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511719, 43.658451, 33.365440>,  <45.741867, 43.726292, 33.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511719, 43.658451, 33.365440>,  <45.128139, 43.545380, 33.374489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511719, 43.658451, 33.365440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246041, -0.789692, 0.562006,
		0.140999, -0.544502, -0.826824,
		0.958949, 0.282675, -0.022624,
		45.799404, 43.743252, 33.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646103, 42.944275, 33.345539>,  <45.128139, 43.545380, 33.374489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646103, 42.944275, 33.345539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807186, 43.246983, 33.551502>,  <45.903835, 43.428608, 33.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807186, 43.246983, 33.551502>,  <45.646103, 42.944275, 33.345539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807186, 43.246983, 33.551502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151701, -0.609941, 0.777791,
		0.902670, -0.235110, -0.360430,
		0.402708, 0.756766, 0.514909,
		45.927998, 43.474014, 33.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413868, 42.909824, 33.479805>,  <45.646103, 42.944275, 33.345539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413868, 42.909824, 33.479805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211361, 43.106945, 33.762886>,  <46.089859, 43.225216, 33.932735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211361, 43.106945, 33.762886>,  <46.413868, 42.909824, 33.479805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211361, 43.106945, 33.762886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229223, -0.714222, 0.661319,
		0.831356, 0.497024, 0.248624,
		-0.506264, 0.492802, 0.707703,
		46.059483, 43.254787, 33.975197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796394, 43.008842, 34.241024>,  <46.413868, 42.909824, 33.479805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796394, 43.008842, 34.241024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410595, 42.903297, 34.236675>,  <46.179115, 42.839970, 34.234066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410595, 42.903297, 34.236675>,  <46.796394, 43.008842, 34.241024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410595, 42.903297, 34.236675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216869, -0.814874, 0.537539,
		-0.150693, 0.516099, 0.843169,
		-0.964500, -0.263860, -0.010870,
		46.121246, 42.824139, 34.233414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530956, 42.758099, 34.825275>,  <46.796394, 43.008842, 34.241024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530956, 42.758099, 34.825275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264957, 42.564148, 34.598057>,  <46.105358, 42.447777, 34.461723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264957, 42.564148, 34.598057>,  <46.530956, 42.758099, 34.825275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264957, 42.564148, 34.598057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131633, -0.824781, 0.549916,
		-0.735155, 0.290918, 0.612302,
		-0.664995, -0.484873, -0.568048,
		46.065460, 42.418686, 34.427643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100342, 42.390694, 35.206673>,  <46.530956, 42.758099, 34.825275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100342, 42.390694, 35.206673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068523, 42.209522, 34.851475>,  <46.049435, 42.100819, 34.638355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068523, 42.209522, 34.851475>,  <46.100342, 42.390694, 35.206673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068523, 42.209522, 34.851475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027751, -0.889462, 0.456165,
		-0.996445, 0.060926, 0.058180,
		-0.079542, -0.452929, -0.887991,
		46.044662, 42.073643, 34.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473701, 41.978672, 35.241909>,  <46.100342, 42.390694, 35.206673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473701, 41.978672, 35.241909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692116, 41.827255, 34.942963>,  <45.823162, 41.736404, 34.763596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692116, 41.827255, 34.942963>,  <45.473701, 41.978672, 35.241909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692116, 41.827255, 34.942963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116571, -0.917746, 0.379675,
		-0.829615, -0.120193, -0.545246,
		0.546032, -0.378543, -0.747365,
		45.855927, 41.713692, 34.718754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119759, 41.441418, 35.132439>,  <45.473701, 41.978672, 35.241909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119759, 41.441418, 35.132439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453224, 41.352657, 34.930149>,  <45.653305, 41.299400, 34.808773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453224, 41.352657, 34.930149>,  <45.119759, 41.441418, 35.132439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453224, 41.352657, 34.930149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074958, -0.952717, 0.294470,
		-0.547158, -0.207582, -0.810881,
		0.833667, -0.221904, -0.505726,
		45.703323, 41.286087, 34.778431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899834, 40.914478, 34.670105>,  <45.119759, 41.441418, 35.132439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899834, 40.914478, 34.670105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294598, 40.896431, 34.732040>,  <45.531456, 40.885601, 34.769203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294598, 40.896431, 34.732040>,  <44.899834, 40.914478, 34.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294598, 40.896431, 34.732040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068874, -0.986034, 0.151636,
		0.145838, -0.160315, -0.976233,
		0.986908, -0.045123, 0.154843,
		45.590672, 40.882893, 34.778492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148258, 40.408421, 34.237846>,  <44.899834, 40.914478, 34.670105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148258, 40.408421, 34.237846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463936, 40.428360, 34.482693>,  <45.653343, 40.440323, 34.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463936, 40.428360, 34.482693>,  <45.148258, 40.408421, 34.237846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463936, 40.428360, 34.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033853, -0.998716, 0.037686,
		0.613210, -0.009019, -0.789868,
		0.789194, 0.049848, 0.612118,
		45.700695, 40.443314, 34.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640766, 39.834297, 34.031811>,  <45.148258, 40.408421, 34.237846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640766, 39.834297, 34.031811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758202, 39.923344, 34.403671>,  <45.828663, 39.976772, 34.626785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758202, 39.923344, 34.403671>,  <45.640766, 39.834297, 34.031811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758202, 39.923344, 34.403671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042034, -0.968559, 0.245209,
		0.955007, -0.111068, -0.275001,
		0.293590, 0.222616, 0.929649,
		45.846279, 39.990128, 34.682568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136322, 39.448078, 34.126198>,  <45.640766, 39.834297, 34.031811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136322, 39.448078, 34.126198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982159, 39.535610, 34.484768>,  <45.889660, 39.588131, 34.699909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982159, 39.535610, 34.484768>,  <46.136322, 39.448078, 34.126198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982159, 39.535610, 34.484768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027361, -0.973755, 0.225947,
		0.922341, 0.062554, 0.381280,
		-0.385407, 0.218832, 0.896423,
		45.866535, 39.601261, 34.753696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502151, 38.970840, 34.638374>,  <46.136322, 39.448078, 34.126198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502151, 38.970840, 34.638374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180752, 39.083122, 34.848358>,  <45.987911, 39.150490, 34.974350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180752, 39.083122, 34.848358>,  <46.502151, 38.970840, 34.638374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180752, 39.083122, 34.848358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004294, -0.879092, 0.476632,
		0.595284, 0.385230, 0.705149,
		-0.803504, 0.280704, 0.524964,
		45.939701, 39.167332, 35.005848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576530, 38.740726, 35.335678>,  <46.502151, 38.970840, 34.638374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576530, 38.740726, 35.335678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181534, 38.796574, 35.306351>,  <45.944538, 38.830082, 35.288754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181534, 38.796574, 35.306351>,  <46.576530, 38.740726, 35.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181534, 38.796574, 35.306351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157559, -0.854290, 0.495343,
		0.006525, 0.500696, 0.865598,
		-0.987488, 0.139615, -0.073315,
		45.885288, 38.838459, 35.284355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345440, 38.487499, 35.956364>,  <46.576530, 38.740726, 35.335678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345440, 38.487499, 35.956364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029102, 38.475906, 35.711830>,  <45.839298, 38.468952, 35.565109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029102, 38.475906, 35.711830>,  <46.345440, 38.487499, 35.956364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029102, 38.475906, 35.711830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276845, -0.873901, 0.399568,
		-0.545824, 0.485239, 0.683095,
		-0.790843, -0.028982, -0.611332,
		45.791851, 38.467213, 35.528431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775021, 38.159218, 36.388683>,  <46.345440, 38.487499, 35.956364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775021, 38.159218, 36.388683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678188, 38.115128, 36.003094>,  <45.620090, 38.088673, 35.771740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678188, 38.115128, 36.003094>,  <45.775021, 38.159218, 36.388683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678188, 38.115128, 36.003094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335795, -0.922609, 0.189826,
		-0.910296, 0.369651, 0.186331,
		-0.242080, -0.110229, -0.963974,
		45.605564, 38.082058, 35.713902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046295, 37.943287, 36.375469>,  <45.775021, 38.159218, 36.388683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046295, 37.943287, 36.375469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197571, 37.839355, 36.020061>,  <45.288334, 37.776997, 35.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.197571, 37.839355, 36.020061>,  <45.046295, 37.943287, 36.375469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197571, 37.839355, 36.020061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333093, -0.933712, 0.131271,
		-0.863728, 0.246314, -0.439663,
		0.378185, -0.259831, -0.888518,
		45.311028, 37.761406, 35.753506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442467, 37.816040, 35.901085>,  <45.046295, 37.943287, 36.375469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442467, 37.816040, 35.901085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761219, 37.629307, 35.747704>,  <44.952473, 37.517265, 35.655674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761219, 37.629307, 35.747704>,  <44.442467, 37.816040, 35.901085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761219, 37.629307, 35.747704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434557, -0.883875, 0.172987,
		-0.419683, 0.028782, -0.907214,
		0.796885, -0.466836, -0.383455,
		45.000286, 37.489258, 35.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192890, 37.267609, 35.430973>,  <44.442467, 37.816040, 35.901085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192890, 37.267609, 35.430973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564289, 37.130917, 35.489101>,  <44.787128, 37.048901, 35.523979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564289, 37.130917, 35.489101>,  <44.192890, 37.267609, 35.430973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564289, 37.130917, 35.489101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338138, -0.939792, -0.049530,
		0.153497, -0.003150, -0.988144,
		0.928494, -0.341732, 0.145320,
		44.842838, 37.028397, 35.532696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272224, 36.639297, 34.998741>,  <44.192890, 37.267609, 35.430973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272224, 36.639297, 34.998741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584591, 36.612278, 35.247128>,  <44.772011, 36.596066, 35.396160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584591, 36.612278, 35.247128>,  <44.272224, 36.639297, 34.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584591, 36.612278, 35.247128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206075, -0.966336, 0.154040,
		0.589657, -0.248259, -0.768552,
		0.780921, -0.067549, 0.620967,
		44.818867, 36.592014, 35.433418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737244, 36.133682, 34.776646>,  <44.272224, 36.639297, 34.998741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737244, 36.133682, 34.776646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774731, 36.181458, 35.172009>,  <44.797222, 36.210125, 35.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774731, 36.181458, 35.172009>,  <44.737244, 36.133682, 34.776646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774731, 36.181458, 35.172009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272706, -0.951729, 0.140867,
		0.957522, -0.282746, -0.056620,
		0.093717, 0.119443, 0.988408,
		44.802845, 36.217289, 35.468533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234699, 35.628166, 34.951851>,  <44.737244, 36.133682, 34.776646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234699, 35.628166, 34.951851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066319, 35.735020, 35.298595>,  <44.965290, 35.799129, 35.506641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066319, 35.735020, 35.298595>,  <45.234699, 35.628166, 34.951851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066319, 35.735020, 35.298595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154676, -0.920517, 0.358780,
		0.893798, 0.285111, 0.346174,
		-0.420951, 0.267132, 0.866857,
		44.940033, 35.815159, 35.558651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624226, 35.433685, 35.408741>,  <45.234699, 35.628166, 34.951851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624226, 35.433685, 35.408741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278004, 35.466557, 35.606350>,  <45.070271, 35.486279, 35.724915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278004, 35.466557, 35.606350>,  <45.624226, 35.433685, 35.408741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278004, 35.466557, 35.606350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027318, -0.992723, 0.117277,
		0.500062, 0.088014, 0.861505,
		-0.865558, 0.082180, 0.494019,
		45.018337, 35.491211, 35.754555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765663, 35.007320, 35.943378>,  <45.624226, 35.433685, 35.408741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765663, 35.007320, 35.943378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376362, 35.056915, 35.866016>,  <45.142780, 35.086674, 35.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376362, 35.056915, 35.866016>,  <45.765663, 35.007320, 35.943378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376362, 35.056915, 35.866016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130289, -0.991271, 0.020140,
		-0.189220, 0.044800, 0.980912,
		-0.973252, 0.123991, -0.193405,
		45.084385, 35.094112, 35.807995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369694, 35.268414, 35.701355>,  <45.765663, 35.007320, 35.943378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369694, 35.268414, 35.701355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391960, 35.400700, 35.324520>,  <46.405319, 35.480072, 35.098419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391960, 35.400700, 35.324520>,  <46.369694, 35.268414, 35.701355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391960, 35.400700, 35.324520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697891, 0.661888, 0.273594,
		0.714038, -0.672704, -0.193958,
		0.055670, 0.330718, -0.942086,
		46.408661, 35.499916, 35.041893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998043, 34.988445, 35.255615>,  <46.369694, 35.268414, 35.701355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998043, 34.988445, 35.255615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851830, 35.357861, 35.209209>,  <46.764103, 35.579510, 35.181366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851830, 35.357861, 35.209209>,  <46.998043, 34.988445, 35.255615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851830, 35.357861, 35.209209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929273, 0.369221, 0.011318,
		0.053286, -0.103668, -0.993183,
		-0.365531, 0.923541, -0.116010,
		46.742168, 35.634922, 35.174408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134621, 35.499180, 34.586647>,  <46.998043, 34.988445, 35.255615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134621, 35.499180, 34.586647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124058, 35.644558, 34.959145>,  <47.117718, 35.731785, 35.182644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124058, 35.644558, 34.959145>,  <47.134621, 35.499180, 34.586647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124058, 35.644558, 34.959145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940225, 0.325436, -0.100345,
		-0.339529, 0.872927, -0.350311,
		-0.026410, 0.363441, 0.931243,
		47.116135, 35.753590, 35.238518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.407982, 34.814640, 34.591660>,  <47.134621, 35.499180, 34.586647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.407982, 34.814640, 34.591660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697887, 34.725883, 34.852573>,  <47.871830, 34.672630, 35.009121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697887, 34.725883, 34.852573>,  <47.407982, 34.814640, 34.591660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697887, 34.725883, 34.852573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672534, 0.433527, -0.599794,
		-0.149695, 0.873396, 0.463434,
		0.724768, -0.221889, 0.652285,
		47.915318, 34.659317, 35.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.448910, 43.348934, 45.232166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072777, 43.258018, 45.333450>,  <36.847095, 43.203468, 45.394222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072777, 43.258018, 45.333450>,  <37.448910, 43.348934, 45.232166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072777, 43.258018, 45.333450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059857, -0.622071, -0.780669,
		0.334955, -0.749244, 0.571348,
		-0.940331, -0.227290, 0.253213,
		36.790676, 43.189831, 45.409416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394806, 42.677063, 45.297333>,  <37.448910, 43.348934, 45.232166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394806, 42.677063, 45.297333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016598, 42.793365, 45.238739>,  <36.789673, 42.863148, 45.203583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016598, 42.793365, 45.238739>,  <37.394806, 42.677063, 45.297333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016598, 42.793365, 45.238739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089421, -0.664559, -0.741866,
		-0.313051, -0.688348, 0.654351,
		-0.945517, 0.290755, -0.146488,
		36.732944, 42.880592, 45.194794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077362, 42.046051, 45.091354>,  <37.394806, 42.677063, 45.297333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077362, 42.046051, 45.091354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773746, 42.282925, 44.983143>,  <36.591579, 42.425049, 44.918217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773746, 42.282925, 44.983143>,  <37.077362, 42.046051, 45.091354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773746, 42.282925, 44.983143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251058, -0.649625, -0.717605,
		-0.600691, -0.476772, 0.641762,
		-0.759039, 0.592179, -0.270527,
		36.546036, 42.460579, 44.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458038, 41.667614, 45.094738>,  <37.077362, 42.046051, 45.091354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458038, 41.667614, 45.094738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406307, 41.985432, 44.857430>,  <36.375271, 42.176125, 44.715046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406307, 41.985432, 44.857430>,  <36.458038, 41.667614, 45.094738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406307, 41.985432, 44.857430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057982, -0.603329, -0.795381,
		-0.989906, -0.068463, 0.124095,
		-0.129325, 0.794548, -0.593269,
		36.367508, 42.223797, 44.679447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736092, 41.498634, 44.722721>,  <36.458038, 41.667614, 45.094738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736092, 41.498634, 44.722721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915245, 41.777557, 44.498875>,  <36.022736, 41.944912, 44.364567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915245, 41.777557, 44.498875>,  <35.736092, 41.498634, 44.722721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915245, 41.777557, 44.498875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065980, -0.598421, -0.798460,
		-0.891656, 0.394538, -0.222013,
		0.447880, 0.697303, -0.559617,
		36.049610, 41.986748, 44.330990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310925, 41.669590, 44.128937>,  <35.736092, 41.498634, 44.722721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310925, 41.669590, 44.128937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684711, 41.758007, 44.017284>,  <35.908981, 41.811058, 43.950291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684711, 41.758007, 44.017284>,  <35.310925, 41.669590, 44.128937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684711, 41.758007, 44.017284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087891, -0.616500, -0.782434,
		-0.345038, 0.755690, -0.556670,
		0.934465, 0.221043, -0.279134,
		35.965050, 41.824322, 43.933544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261963, 41.811378, 43.413555>,  <35.310925, 41.669590, 44.128937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261963, 41.811378, 43.413555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641056, 41.705971, 43.485519>,  <35.868511, 41.642727, 43.528698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641056, 41.705971, 43.485519>,  <35.261963, 41.811378, 43.413555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641056, 41.705971, 43.485519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003588, -0.572607, -0.819822,
		0.319055, 0.776324, -0.543622,
		0.947729, -0.263519, 0.179907,
		35.925373, 41.626915, 43.539490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699894, 41.918743, 42.788025>,  <35.261963, 41.811378, 43.413555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699894, 41.918743, 42.788025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910828, 41.667366, 43.016754>,  <36.037388, 41.516541, 43.153992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910828, 41.667366, 43.016754>,  <35.699894, 41.918743, 42.788025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910828, 41.667366, 43.016754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030112, -0.686401, -0.726600,
		0.849127, 0.365939, -0.380884,
		0.527330, -0.628444, 0.571822,
		36.069027, 41.478832, 43.188301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238621, 41.621296, 42.423698>,  <35.699894, 41.918743, 42.788025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238621, 41.621296, 42.423698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183125, 41.344196, 42.706779>,  <36.149826, 41.177937, 42.876629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183125, 41.344196, 42.706779>,  <36.238621, 41.621296, 42.423698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183125, 41.344196, 42.706779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030115, -0.711334, -0.702209,
		0.989871, -0.118734, 0.077826,
		-0.138737, -0.692753, 0.707705,
		36.141502, 41.136372, 42.919090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488220, 41.107666, 42.124290>,  <36.238621, 41.621296, 42.423698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488220, 41.107666, 42.124290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339710, 40.927670, 42.449169>,  <36.250603, 40.819672, 42.644096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339710, 40.927670, 42.449169>,  <36.488220, 41.107666, 42.124290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339710, 40.927670, 42.449169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010686, -0.872591, -0.488335,
		0.928460, -0.189987, 0.319165,
		-0.371277, -0.449989, 0.812196,
		36.228329, 40.792671, 42.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931004, 40.476112, 42.227734>,  <36.488220, 41.107666, 42.124290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931004, 40.476112, 42.227734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571449, 40.414379, 42.391773>,  <36.355717, 40.377338, 42.490196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571449, 40.414379, 42.391773>,  <36.931004, 40.476112, 42.227734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571449, 40.414379, 42.391773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081772, -0.860399, -0.503018,
		0.430481, -0.485692, 0.760782,
		-0.898888, -0.154329, 0.410102,
		36.301785, 40.368080, 42.514805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957115, 39.835922, 42.475422>,  <36.931004, 40.476112, 42.227734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957115, 39.835922, 42.475422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565922, 39.907818, 42.433002>,  <36.331207, 39.950954, 42.407551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565922, 39.907818, 42.433002>,  <36.957115, 39.835922, 42.475422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565922, 39.907818, 42.433002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063732, -0.741122, -0.668338,
		-0.198723, -0.646863, 0.736259,
		-0.977981, 0.179737, -0.106052,
		36.272526, 39.961739, 42.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681309, 39.181351, 42.275948>,  <36.957115, 39.835922, 42.475422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681309, 39.181351, 42.275948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372967, 39.420502, 42.188019>,  <36.187962, 39.563992, 42.135262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372967, 39.420502, 42.188019>,  <36.681309, 39.181351, 42.275948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372967, 39.420502, 42.188019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201427, -0.556151, -0.806303,
		-0.604328, -0.577263, 0.549140,
		-0.770854, 0.597883, -0.219821,
		36.141708, 39.599865, 42.122074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026482, 38.746712, 42.208183>,  <36.681309, 39.181351, 42.275948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026482, 38.746712, 42.208183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983612, 39.090054, 42.007492>,  <35.957890, 39.296059, 41.887077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983612, 39.090054, 42.007492>,  <36.026482, 38.746712, 42.208183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983612, 39.090054, 42.007492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220913, -0.512583, -0.829733,
		-0.969387, 0.021911, 0.244559,
		-0.107176, 0.858358, -0.501731,
		35.951458, 39.347561, 41.856972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593708, 38.540207, 41.690895>,  <36.026482, 38.746712, 42.208183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593708, 38.540207, 41.690895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700146, 38.897808, 41.546696>,  <35.764008, 39.112370, 41.460178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700146, 38.897808, 41.546696>,  <35.593708, 38.540207, 41.690895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700146, 38.897808, 41.546696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222010, -0.307085, -0.925425,
		-0.938032, 0.326285, 0.116763,
		0.266096, 0.894001, -0.360494,
		35.779976, 39.166008, 41.438549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102272, 38.772171, 41.136333>,  <35.593708, 38.540207, 41.690895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102272, 38.772171, 41.136333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461933, 38.939255, 41.084103>,  <35.677731, 39.039505, 41.052765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461933, 38.939255, 41.084103>,  <35.102272, 38.772171, 41.136333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461933, 38.939255, 41.084103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004563, -0.307306, -0.951600,
		-0.437620, 0.855034, -0.278219,
		0.899148, 0.417709, -0.130582,
		35.731678, 39.064568, 41.044930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995270, 39.111053, 40.508045>,  <35.102272, 38.772171, 41.136333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995270, 39.111053, 40.508045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386677, 39.088196, 40.587280>,  <35.621521, 39.074482, 40.634823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386677, 39.088196, 40.587280>,  <34.995270, 39.111053, 40.508045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386677, 39.088196, 40.587280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178896, -0.242225, -0.953584,
		0.102472, 0.968536, -0.226799,
		0.978517, -0.057143, 0.198088,
		35.680233, 39.071053, 40.646706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303238, 39.374691, 39.885227>,  <34.995270, 39.111053, 40.508045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303238, 39.374691, 39.885227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611755, 39.184628, 40.054619>,  <35.796864, 39.070587, 40.156254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611755, 39.184628, 40.054619>,  <35.303238, 39.374691, 39.885227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611755, 39.184628, 40.054619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295604, -0.321805, -0.899477,
		0.563674, 0.818940, -0.107746,
		0.771291, -0.475162, 0.423475,
		35.843143, 39.042080, 40.181660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806744, 39.476620, 39.387943>,  <35.303238, 39.374691, 39.885227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806744, 39.476620, 39.387943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908081, 39.168671, 39.622246>,  <35.968884, 38.983902, 39.762829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.908081, 39.168671, 39.622246>,  <35.806744, 39.476620, 39.387943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908081, 39.168671, 39.622246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286789, -0.518517, -0.805538,
		0.923887, 0.372068, 0.089427,
		0.253346, -0.769874, 0.585756,
		35.984085, 38.937710, 39.797974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427338, 39.249001, 39.105091>,  <35.806744, 39.476620, 39.387943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427338, 39.249001, 39.105091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282974, 38.932789, 39.303005>,  <36.196358, 38.743061, 39.421753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282974, 38.932789, 39.303005>,  <36.427338, 39.249001, 39.105091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282974, 38.932789, 39.303005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276113, -0.597333, -0.752964,
		0.890791, -0.135131, 0.433856,
		-0.360906, -0.790527, 0.494788,
		36.174702, 38.695629, 39.451443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017860, 38.782162, 39.161083>,  <36.427338, 39.249001, 39.105091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017860, 38.782162, 39.161083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695099, 38.549465, 39.202026>,  <36.501442, 38.409847, 39.226593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695099, 38.549465, 39.202026>,  <37.017860, 38.782162, 39.161083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695099, 38.549465, 39.202026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407265, -0.673446, -0.616932,
		0.427827, -0.456122, 0.780332,
		-0.806908, -0.581742, 0.102356,
		36.453026, 38.374943, 39.232735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268028, 38.172001, 39.477180>,  <37.017860, 38.782162, 39.161083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268028, 38.172001, 39.477180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937439, 38.089287, 39.267731>,  <36.739086, 38.039658, 39.142059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937439, 38.089287, 39.267731>,  <37.268028, 38.172001, 39.477180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937439, 38.089287, 39.267731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509665, -0.669895, -0.539891,
		-0.239132, -0.713078, 0.659042,
		-0.826473, -0.206785, -0.523624,
		36.689499, 38.027252, 39.110645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256161, 37.742317, 38.932880>,  <37.268028, 38.172001, 39.477180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256161, 37.742317, 38.932880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555046, 37.596882, 38.710358>,  <37.734379, 37.509621, 38.576843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555046, 37.596882, 38.710358>,  <37.256161, 37.742317, 38.932880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555046, 37.596882, 38.710358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661067, 0.320659, 0.678357,
		-0.068259, -0.874632, 0.479957,
		0.747216, -0.363587, -0.556303,
		37.779209, 37.487804, 38.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660000, 37.390877, 39.335033>,  <37.256161, 37.742317, 38.932880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660000, 37.390877, 39.335033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892082, 37.478973, 39.021381>,  <38.031330, 37.531830, 38.833191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892082, 37.478973, 39.021381>,  <37.660000, 37.390877, 39.335033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892082, 37.478973, 39.021381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695971, 0.366028, 0.617777,
		0.423073, -0.904167, 0.059088,
		0.580202, 0.220241, -0.784130,
		38.066143, 37.545044, 38.786140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434010, 37.145283, 39.453999>,  <37.660000, 37.390877, 39.335033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434010, 37.145283, 39.453999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441360, 37.445988, 39.190327>,  <38.445770, 37.626411, 39.032124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441360, 37.445988, 39.190327>,  <38.434010, 37.145283, 39.453999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441360, 37.445988, 39.190327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668952, 0.480745, 0.566911,
		0.743079, -0.451375, -0.494059,
		0.018373, 0.751761, -0.659179,
		38.446873, 37.671516, 38.992573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156723, 37.419872, 39.527985>,  <38.434010, 37.145283, 39.453999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156723, 37.419872, 39.527985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954720, 37.701866, 39.328800>,  <38.833519, 37.871063, 39.209290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954720, 37.701866, 39.328800>,  <39.156723, 37.419872, 39.527985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954720, 37.701866, 39.328800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667182, 0.684865, 0.292964,
		0.547573, -0.184285, -0.816213,
		-0.505007, 0.704981, -0.497965,
		38.803219, 37.913361, 39.179409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653461, 37.950882, 39.155865>,  <39.156723, 37.419872, 39.527985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653461, 37.950882, 39.155865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297157, 38.117237, 39.229168>,  <39.083374, 38.217049, 39.273151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297157, 38.117237, 39.229168>,  <39.653461, 37.950882, 39.155865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297157, 38.117237, 39.229168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453156, 0.782072, 0.427799,
		0.034596, 0.464111, -0.885101,
		-0.890760, 0.415889, 0.183258,
		39.029930, 38.242004, 39.284145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818729, 38.652637, 39.151012>,  <39.653461, 37.950882, 39.155865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818729, 38.652637, 39.151012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449898, 38.657986, 39.305725>,  <39.228600, 38.661194, 39.398552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449898, 38.657986, 39.305725>,  <39.818729, 38.652637, 39.151012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449898, 38.657986, 39.305725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237141, 0.809327, 0.537358,
		-0.305843, 0.587206, -0.749433,
		-0.922076, 0.013374, 0.386778,
		39.173275, 38.661999, 39.421757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636341, 39.345177, 39.054661>,  <39.818729, 38.652637, 39.151012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636341, 39.345177, 39.054661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.400398, 39.212536, 39.349174>,  <39.258835, 39.132954, 39.525883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.400398, 39.212536, 39.349174>,  <39.636341, 39.345177, 39.054661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400398, 39.212536, 39.349174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221809, 0.810190, 0.542579,
		-0.776448, 0.483357, -0.404343,
		-0.589855, -0.331598, 0.736284,
		39.223442, 39.113056, 39.570061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183525, 39.895699, 39.232906>,  <39.636341, 39.345177, 39.054661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183525, 39.895699, 39.232906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149029, 39.657520, 39.552410>,  <39.128330, 39.514614, 39.744110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149029, 39.657520, 39.552410>,  <39.183525, 39.895699, 39.232906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149029, 39.657520, 39.552410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103704, 0.792023, 0.601619,
		-0.990862, 0.134718, -0.006554,
		-0.086240, -0.595442, 0.798756,
		39.123158, 39.478889, 39.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654938, 40.135147, 39.678509>,  <39.183525, 39.895699, 39.232906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654938, 40.135147, 39.678509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873924, 39.901028, 39.917744>,  <39.005314, 39.760555, 40.061283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873924, 39.901028, 39.917744>,  <38.654938, 40.135147, 39.678509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873924, 39.901028, 39.917744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136039, 0.642948, 0.753732,
		-0.825698, -0.494003, 0.272366,
		0.547463, -0.585302, 0.598085,
		39.038162, 39.725437, 40.097168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303909, 40.082771, 40.317581>,  <38.654938, 40.135147, 39.678509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303909, 40.082771, 40.317581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685505, 40.005516, 40.409328>,  <38.914463, 39.959164, 40.464375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685505, 40.005516, 40.409328>,  <38.303909, 40.082771, 40.317581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685505, 40.005516, 40.409328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076213, 0.583622, 0.808441,
		-0.290005, -0.788722, 0.542047,
		0.953986, -0.193141, 0.229364,
		38.971699, 39.947575, 40.478138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191032, 40.050503, 41.003948>,  <38.303909, 40.082771, 40.317581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191032, 40.050503, 41.003948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583263, 40.090958, 40.936722>,  <38.818600, 40.115231, 40.896385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583263, 40.090958, 40.936722>,  <38.191032, 40.050503, 41.003948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583263, 40.090958, 40.936722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072464, 0.609436, 0.789517,
		0.182273, -0.786359, 0.590268,
		0.980574, 0.101134, -0.168066,
		38.877434, 40.121300, 40.886303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528465, 39.866085, 41.624107>,  <38.191032, 40.050503, 41.003948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528465, 39.866085, 41.624107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804058, 40.076958, 41.425156>,  <38.969414, 40.203484, 41.305786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804058, 40.076958, 41.425156>,  <38.528465, 39.866085, 41.624107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804058, 40.076958, 41.425156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244603, 0.476855, 0.844262,
		0.682260, -0.703338, 0.199591,
		0.688978, 0.527186, -0.497378,
		39.010750, 40.235115, 41.275944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236900, 39.730282, 41.960098>,  <38.528465, 39.866085, 41.624107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236900, 39.730282, 41.960098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211712, 40.085114, 41.777176>,  <39.196598, 40.298012, 41.667423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211712, 40.085114, 41.777176>,  <39.236900, 39.730282, 41.960098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211712, 40.085114, 41.777176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278279, 0.455648, 0.845544,
		0.958434, -0.074018, -0.275545,
		-0.062967, 0.887077, -0.457307,
		39.192822, 40.351238, 41.639984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723183, 40.131397, 42.274937>,  <39.236900, 39.730282, 41.960098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723183, 40.131397, 42.274937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536877, 40.425247, 42.077602>,  <39.425091, 40.601559, 41.959202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536877, 40.425247, 42.077602>,  <39.723183, 40.131397, 42.274937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536877, 40.425247, 42.077602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095090, 0.595825, 0.797465,
		0.879783, 0.324522, -0.347372,
		-0.465767, 0.734628, -0.493338,
		39.397148, 40.645638, 41.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251526, 40.705154, 42.201481>,  <39.723183, 40.131397, 42.274937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251526, 40.705154, 42.201481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905495, 40.893127, 42.131268>,  <39.697876, 41.005913, 42.089138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905495, 40.893127, 42.131268>,  <40.251526, 40.705154, 42.201481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905495, 40.893127, 42.131268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056061, 0.438287, 0.897085,
		0.498502, 0.766205, -0.405495,
		-0.865074, 0.469931, -0.175532,
		39.645973, 41.034107, 42.078609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304684, 41.457005, 42.335194>,  <40.251526, 40.705154, 42.201481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304684, 41.457005, 42.335194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917149, 41.386990, 42.405300>,  <39.684628, 41.344982, 42.447365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917149, 41.386990, 42.405300>,  <40.304684, 41.457005, 42.335194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917149, 41.386990, 42.405300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051488, 0.549822, 0.833693,
		-0.242292, 0.816737, -0.523676,
		-0.968836, -0.175034, 0.175269,
		39.626499, 41.334480, 42.457882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064610, 42.055443, 42.514980>,  <40.304684, 41.457005, 42.335194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064610, 42.055443, 42.514980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777927, 41.805744, 42.639339>,  <39.605919, 41.655926, 42.713955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777927, 41.805744, 42.639339>,  <40.064610, 42.055443, 42.514980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777927, 41.805744, 42.639339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139119, 0.564826, 0.813399,
		-0.683361, 0.539715, -0.491657,
		-0.716704, -0.624243, 0.310895,
		39.562916, 41.618469, 42.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483265, 42.501141, 42.708103>,  <40.064610, 42.055443, 42.514980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483265, 42.501141, 42.708103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436947, 42.158772, 42.909695>,  <39.409157, 41.953350, 43.030651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436947, 42.158772, 42.909695>,  <39.483265, 42.501141, 42.708103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436947, 42.158772, 42.909695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114278, 0.515503, 0.849234,
		-0.986678, 0.040740, -0.157503,
		-0.115791, -0.855919, 0.503979,
		39.402210, 41.901997, 43.060890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.810127, 42.526615, 43.009209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972744, 42.227520, 43.219204>,  <39.070312, 42.048061, 43.345200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972744, 42.227520, 43.219204>,  <38.810127, 42.526615, 43.009209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972744, 42.227520, 43.219204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005379, 0.576561, 0.817036,
		-0.913617, -0.329335, 0.238418,
		0.406541, -0.747741, 0.524984,
		39.094707, 42.003197, 43.376698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317669, 42.351749, 43.578300>,  <38.810127, 42.526615, 43.009209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317669, 42.351749, 43.578300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680752, 42.230789, 43.694660>,  <38.898602, 42.158215, 43.764477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680752, 42.230789, 43.694660>,  <38.317669, 42.351749, 43.578300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680752, 42.230789, 43.694660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115219, 0.486990, 0.865774,
		-0.403476, -0.819386, 0.407202,
		0.907707, -0.302402, 0.290897,
		38.953064, 42.140068, 43.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243454, 41.971123, 44.316734>,  <38.317669, 42.351749, 43.578300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243454, 41.971123, 44.316734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602291, 42.138031, 44.258621>,  <38.817593, 42.238178, 44.223755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602291, 42.138031, 44.258621>,  <38.243454, 41.971123, 44.316734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602291, 42.138031, 44.258621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050022, 0.422608, 0.904931,
		0.439007, -0.804537, 0.399991,
		0.897090, 0.417280, -0.145284,
		38.871418, 42.263214, 44.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503529, 41.917664, 44.972622>,  <38.243454, 41.971123, 44.316734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503529, 41.917664, 44.972622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772942, 42.143963, 44.782345>,  <38.934589, 42.279743, 44.668179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.772942, 42.143963, 44.782345>,  <38.503529, 41.917664, 44.972622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772942, 42.143963, 44.782345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033515, 0.619529, 0.784258,
		0.738397, -0.544167, 0.398312,
		0.673533, 0.565744, -0.475695,
		38.975002, 42.313686, 44.639637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198708, 42.003960, 45.371655>,  <38.503529, 41.917664, 44.972622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198708, 42.003960, 45.371655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145874, 42.328186, 45.143433>,  <39.114174, 42.522724, 45.006500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145874, 42.328186, 45.143433>,  <39.198708, 42.003960, 45.371655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145874, 42.328186, 45.143433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268671, 0.583327, 0.766515,
		0.954132, -0.052045, -0.294827,
		-0.132087, 0.810568, -0.570554,
		39.106247, 42.571358, 44.972267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710354, 42.358566, 45.766899>,  <39.198708, 42.003960, 45.371655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710354, 42.358566, 45.766899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482422, 42.606350, 45.550911>,  <39.345661, 42.755020, 45.421318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482422, 42.606350, 45.550911>,  <39.710354, 42.358566, 45.766899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482422, 42.606350, 45.550911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341199, 0.776120, 0.530303,
		0.747582, 0.117945, -0.653613,
		-0.569829, 0.619457, -0.539971,
		39.311474, 42.792187, 45.388920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080860, 42.934349, 45.454887>,  <39.710354, 42.358566, 45.766899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080860, 42.934349, 45.454887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705166, 43.071423, 45.446873>,  <39.479748, 43.153667, 45.442066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705166, 43.071423, 45.446873>,  <40.080860, 42.934349, 45.454887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705166, 43.071423, 45.446873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306056, 0.862407, 0.403217,
		0.155454, 0.372585, -0.914885,
		-0.939235, 0.342688, -0.020033,
		39.423397, 43.174229, 45.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080593, 43.685993, 45.397758>,  <40.080860, 42.934349, 45.454887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080593, 43.685993, 45.397758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693996, 43.666279, 45.498535>,  <39.462040, 43.654449, 45.559002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693996, 43.666279, 45.498535>,  <40.080593, 43.685993, 45.397758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693996, 43.666279, 45.498535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080368, 0.873982, 0.479266,
		-0.243811, 0.483452, -0.840732,
		-0.966487, -0.049282, 0.251940,
		39.404049, 43.651493, 45.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722130, 44.279861, 45.192997>,  <40.080593, 43.685993, 45.397758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722130, 44.279861, 45.192997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481014, 44.121082, 45.469860>,  <39.336346, 44.025814, 45.635979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481014, 44.121082, 45.469860>,  <39.722130, 44.279861, 45.192997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481014, 44.121082, 45.469860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035007, 0.879793, 0.474065,
		-0.797131, 0.261532, -0.544227,
		-0.602791, -0.396943, 0.692155,
		39.300179, 44.001999, 45.677505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139656, 44.853031, 45.359039>,  <39.722130, 44.279861, 45.192997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139656, 44.853031, 45.359039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177349, 44.615379, 45.678574>,  <39.199963, 44.472790, 45.870293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177349, 44.615379, 45.678574>,  <39.139656, 44.853031, 45.359039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177349, 44.615379, 45.678574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205691, 0.773472, 0.599527,
		-0.974070, -0.220806, -0.049323,
		0.094229, -0.594126, 0.798833,
		39.205620, 44.437141, 45.918224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500137, 45.014256, 45.838871>,  <39.139656, 44.853031, 45.359039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500137, 45.014256, 45.838871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800259, 44.847080, 46.043762>,  <38.980331, 44.746777, 46.166695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800259, 44.847080, 46.043762>,  <38.500137, 45.014256, 45.838871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800259, 44.847080, 46.043762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119986, 0.848035, 0.516179,
		-0.650114, -0.325831, 0.686430,
		0.750304, -0.417937, 0.512224,
		39.025349, 44.721699, 46.197430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422348, 45.288338, 46.485718>,  <38.500137, 45.014256, 45.838871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422348, 45.288338, 46.485718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795860, 45.149345, 46.519920>,  <39.019966, 45.065952, 46.540443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795860, 45.149345, 46.519920>,  <38.422348, 45.288338, 46.485718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795860, 45.149345, 46.519920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188640, 0.681039, 0.707532,
		-0.304084, -0.644551, 0.701489,
		0.933782, -0.347478, 0.085505,
		39.075996, 45.045101, 46.545570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530411, 45.265583, 47.178860>,  <38.422348, 45.288338, 46.485718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530411, 45.265583, 47.178860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906052, 45.240204, 47.043766>,  <39.131435, 45.224976, 46.962711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906052, 45.240204, 47.043766>,  <38.530411, 45.265583, 47.178860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906052, 45.240204, 47.043766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315952, 0.545948, 0.775961,
		0.135148, -0.835413, 0.532748,
		0.939100, -0.063453, -0.337734,
		39.187782, 45.221169, 46.942444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915405, 45.252853, 47.833202>,  <38.530411, 45.265583, 47.178860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915405, 45.252853, 47.833202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181995, 45.335663, 47.546722>,  <39.341949, 45.385349, 47.374832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181995, 45.335663, 47.546722>,  <38.915405, 45.252853, 47.833202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181995, 45.335663, 47.546722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557015, 0.500244, 0.662941,
		0.495500, -0.840778, 0.218109,
		0.666494, 0.206997, -0.716197,
		39.381939, 45.397770, 47.331860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555557, 45.077644, 48.161057>,  <38.915405, 45.252853, 47.833202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555557, 45.077644, 48.161057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656944, 45.328281, 47.866264>,  <39.717777, 45.478664, 47.689388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656944, 45.328281, 47.866264>,  <39.555557, 45.077644, 48.161057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656944, 45.328281, 47.866264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649301, 0.454533, 0.609760,
		0.717051, -0.633076, -0.291637,
		0.253466, 0.626590, -0.736980,
		39.732983, 45.516258, 47.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323265, 45.084274, 48.121552>,  <39.555557, 45.077644, 48.161057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323265, 45.084274, 48.121552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.197567, 45.422840, 47.949585>,  <40.122150, 45.625980, 47.846405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.197567, 45.422840, 47.949585>,  <40.323265, 45.084274, 48.121552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197567, 45.422840, 47.949585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712950, 0.509432, 0.481852,
		0.626861, -0.155091, -0.763539,
		-0.314241, 0.846419, -0.429915,
		40.103294, 45.676765, 47.820610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935104, 45.286079, 47.922314>,  <40.323265, 45.084274, 48.121552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935104, 45.286079, 47.922314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699169, 45.608990, 47.930264>,  <40.557606, 45.802734, 47.935032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699169, 45.608990, 47.930264>,  <40.935104, 45.286079, 47.922314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699169, 45.608990, 47.930264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691788, 0.492457, 0.528125,
		0.416556, 0.325258, -0.848934,
		-0.589840, 0.807276, 0.019874,
		40.522217, 45.851173, 47.936226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339493, 45.855042, 47.690071>,  <40.935104, 45.286079, 47.922314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339493, 45.855042, 47.690071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054741, 46.014076, 47.921638>,  <40.883888, 46.109497, 48.060577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.054741, 46.014076, 47.921638>,  <41.339493, 45.855042, 47.690071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054741, 46.014076, 47.921638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696647, 0.504130, 0.510428,
		-0.088907, 0.766665, -0.635862,
		-0.711884, 0.397591, 0.578915,
		40.841175, 46.133354, 48.095314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547436, 46.437099, 47.979763>,  <41.339493, 45.855042, 47.690071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547436, 46.437099, 47.979763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247337, 46.368546, 48.235184>,  <41.067276, 46.327412, 48.388435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247337, 46.368546, 48.235184>,  <41.547436, 46.437099, 47.979763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247337, 46.368546, 48.235184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551359, 0.370809, 0.747331,
		-0.364866, 0.912757, -0.183702,
		-0.750250, -0.171389, 0.638553,
		41.022263, 46.317127, 48.426750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605125, 47.042145, 48.425709>,  <41.547436, 46.437099, 47.979763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605125, 47.042145, 48.425709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364929, 46.789707, 48.622131>,  <41.220810, 46.638245, 48.739983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364929, 46.789707, 48.622131>,  <41.605125, 47.042145, 48.425709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364929, 46.789707, 48.622131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374079, 0.321048, 0.870053,
		-0.706736, 0.706152, 0.043293,
		-0.600491, -0.631093, 0.491053,
		41.184784, 46.600380, 48.769447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414783, 47.459305, 48.901154>,  <41.605125, 47.042145, 48.425709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414783, 47.459305, 48.901154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372723, 47.080856, 49.023663>,  <41.347485, 46.853786, 49.097168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372723, 47.080856, 49.023663>,  <41.414783, 47.459305, 48.901154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372723, 47.080856, 49.023663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474515, 0.222922, 0.851552,
		-0.873944, 0.234876, 0.425506,
		-0.105154, -0.946118, 0.306273,
		41.341175, 46.797020, 49.115543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277325, 47.481796, 49.570454>,  <41.414783, 47.459305, 48.901154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277325, 47.481796, 49.570454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436783, 47.118263, 49.521309>,  <41.532459, 46.900143, 49.491821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436783, 47.118263, 49.521309>,  <41.277325, 47.481796, 49.570454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436783, 47.118263, 49.521309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493496, 0.099658, 0.864020,
		-0.773008, -0.405074, 0.488236,
		0.398648, -0.908836, -0.122866,
		41.556377, 46.845612, 49.484447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173874, 47.066681, 50.282524>,  <41.277325, 47.481796, 49.570454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173874, 47.066681, 50.282524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490898, 46.950764, 50.067909>,  <41.681110, 46.881214, 49.939140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.490898, 46.950764, 50.067909>,  <41.173874, 47.066681, 50.282524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490898, 46.950764, 50.067909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594210, 0.169352, 0.786279,
		-0.136993, -0.941988, 0.306418,
		0.792558, -0.289791, -0.536538,
		41.728664, 46.863827, 49.906948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553772, 46.690071, 50.703358>,  <41.173874, 47.066681, 50.282524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553772, 46.690071, 50.703358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.832890, 46.781376, 50.431778>,  <42.000359, 46.836159, 50.268829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.832890, 46.781376, 50.431778>,  <41.553772, 46.690071, 50.703358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832890, 46.781376, 50.431778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679272, 0.089923, 0.728357,
		0.227312, -0.969437, -0.092306,
		0.697796, 0.228265, -0.678953,
		42.042229, 46.849857, 50.228092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894932, 46.274761, 50.873974>,  <41.553772, 46.690071, 50.703358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894932, 46.274761, 50.873974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.594009, 46.415234, 51.096939>,  <40.413456, 46.499519, 51.230717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.594009, 46.415234, 51.096939>,  <40.894932, 46.274761, 50.873974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594009, 46.415234, 51.096939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655917, -0.319985, -0.683654,
		-0.061726, -0.879931, 0.471075,
		-0.752305, 0.351185, 0.557410,
		40.368317, 46.520588, 51.264164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432182, 45.701412, 51.113003>,  <40.894932, 46.274761, 50.873974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432182, 45.701412, 51.113003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181980, 46.010895, 51.153252>,  <40.031860, 46.196583, 51.177402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181980, 46.010895, 51.153252>,  <40.432182, 45.701412, 51.113003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181980, 46.010895, 51.153252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765718, -0.584001, -0.269480,
		-0.149731, -0.245613, 0.957734,
		-0.625506, 0.773703, 0.100627,
		39.994328, 46.243008, 51.183441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878757, 45.371487, 51.529007>,  <40.432182, 45.701412, 51.113003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878757, 45.371487, 51.529007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752682, 45.707657, 51.352673>,  <39.677036, 45.909359, 51.246872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752682, 45.707657, 51.352673>,  <39.878757, 45.371487, 51.529007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752682, 45.707657, 51.352673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774349, -0.496304, -0.392513,
		-0.548669, 0.217649, 0.807212,
		-0.315193, 0.840423, -0.440842,
		39.658123, 45.959785, 51.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189808, 45.500118, 51.679272>,  <39.878757, 45.371487, 51.529007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189808, 45.500118, 51.679272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234314, 45.713913, 51.344143>,  <39.261017, 45.842190, 51.143066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234314, 45.713913, 51.344143>,  <39.189808, 45.500118, 51.679272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234314, 45.713913, 51.344143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698654, -0.557490, -0.448428,
		-0.706755, 0.635242, 0.311392,
		0.111262, 0.534484, -0.837824,
		39.267693, 45.874260, 51.092796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583519, 45.449177, 51.435871>,  <39.189808, 45.500118, 51.679272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583519, 45.449177, 51.435871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778778, 45.607468, 51.124714>,  <38.895935, 45.702442, 50.938019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778778, 45.607468, 51.124714>,  <38.583519, 45.449177, 51.435871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778778, 45.607468, 51.124714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713930, -0.331617, -0.616713,
		-0.502011, 0.856406, 0.120643,
		0.488149, 0.395727, -0.777889,
		38.925224, 45.726185, 50.891346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084385, 45.853306, 51.088371>,  <38.583519, 45.449177, 51.435871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084385, 45.853306, 51.088371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378181, 45.767784, 50.830750>,  <38.554459, 45.716469, 50.676178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378181, 45.767784, 50.830750>,  <38.084385, 45.853306, 51.088371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378181, 45.767784, 50.830750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669848, -0.380481, -0.637604,
		-0.108724, 0.899734, -0.422680,
		0.734495, -0.213809, -0.644052,
		38.598530, 45.703640, 50.637535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729366, 45.961910, 50.402557>,  <38.084385, 45.853306, 51.088371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729366, 45.961910, 50.402557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075397, 45.775002, 50.329571>,  <38.283016, 45.662857, 50.285778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075397, 45.775002, 50.329571>,  <37.729366, 45.961910, 50.402557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075397, 45.775002, 50.329571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412992, -0.456950, -0.787803,
		0.284740, 0.756870, -0.588278,
		0.865078, -0.467273, -0.182470,
		38.334923, 45.634819, 50.274830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877289, 46.114761, 49.757519>,  <37.729366, 45.961910, 50.402557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877289, 46.114761, 49.757519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.054935, 45.762558, 49.823807>,  <38.161522, 45.551235, 49.863579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.054935, 45.762558, 49.823807>,  <37.877289, 46.114761, 49.757519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054935, 45.762558, 49.823807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344726, -0.338654, -0.875487,
		0.826997, 0.331690, -0.453936,
		0.444118, -0.880509, 0.165724,
		38.188171, 45.498405, 49.873524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184750, 45.891220, 49.129509>,  <37.877289, 46.114761, 49.757519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184750, 45.891220, 49.129509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149723, 45.548626, 49.332985>,  <38.128708, 45.343071, 49.455070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149723, 45.548626, 49.332985>,  <38.184750, 45.891220, 49.129509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149723, 45.548626, 49.332985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217712, -0.481851, -0.848776,
		0.972077, -0.185073, -0.144273,
		-0.087567, -0.856486, 0.508689,
		38.123451, 45.291679, 49.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381058, 45.400204, 48.699940>,  <38.184750, 45.891220, 49.129509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381058, 45.400204, 48.699940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174004, 45.181648, 48.963310>,  <38.049770, 45.050514, 49.121330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174004, 45.181648, 48.963310>,  <38.381058, 45.400204, 48.699940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174004, 45.181648, 48.963310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337138, -0.577030, -0.743891,
		0.786381, -0.607041, 0.114482,
		-0.517632, -0.546386, 0.658422,
		38.018715, 45.017731, 49.160835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659603, 44.818531, 48.564308>,  <38.381058, 45.400204, 48.699940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659603, 44.818531, 48.564308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291615, 44.771587, 48.713913>,  <38.070824, 44.743420, 48.803677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291615, 44.771587, 48.713913>,  <38.659603, 44.818531, 48.564308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291615, 44.771587, 48.713913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263534, -0.521152, -0.811758,
		0.290185, -0.845356, 0.448515,
		-0.919969, -0.117361, 0.374011,
		38.015625, 44.736378, 48.826115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516804, 44.125664, 48.569958>,  <38.659603, 44.818531, 48.564308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516804, 44.125664, 48.569958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157158, 44.300751, 48.570721>,  <37.941372, 44.405804, 48.571178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157158, 44.300751, 48.570721>,  <38.516804, 44.125664, 48.569958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157158, 44.300751, 48.570721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307603, -0.628741, -0.714189,
		-0.311411, -0.642723, 0.699951,
		-0.899113, 0.437713, 0.001907,
		37.887424, 44.432064, 48.571293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979168, 43.617115, 48.545952>,  <38.516804, 44.125664, 48.569958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979168, 43.617115, 48.545952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788113, 43.950283, 48.434170>,  <37.673477, 44.150185, 48.367100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.788113, 43.950283, 48.434170>,  <37.979168, 43.617115, 48.545952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788113, 43.950283, 48.434170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392501, -0.486887, -0.780311,
		-0.786003, -0.263022, 0.559481,
		-0.477642, 0.832923, -0.279458,
		37.644821, 44.200161, 48.350334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439243, 43.379665, 48.202888>,  <37.979168, 43.617115, 48.545952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439243, 43.379665, 48.202888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425064, 43.757317, 48.071827>,  <37.416557, 43.983910, 47.993191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425064, 43.757317, 48.071827>,  <37.439243, 43.379665, 48.202888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425064, 43.757317, 48.071827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521196, -0.297208, -0.800013,
		-0.852700, 0.142411, 0.502614,
		-0.035451, 0.944133, -0.327654,
		37.414429, 44.040558, 47.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775497, 43.437275, 47.910721>,  <37.439243, 43.379665, 48.202888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775497, 43.437275, 47.910721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991917, 43.733532, 47.751366>,  <37.121769, 43.911285, 47.655754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991917, 43.733532, 47.751366>,  <36.775497, 43.437275, 47.910721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991917, 43.733532, 47.751366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448040, -0.147038, -0.881839,
		-0.711708, 0.655611, 0.252283,
		0.541048, 0.740645, -0.398388,
		37.154232, 43.955727, 47.631847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275558, 43.907928, 47.612190>,  <36.775497, 43.437275, 47.910721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275558, 43.907928, 47.612190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.609779, 43.972378, 47.402084>,  <36.810310, 44.011047, 47.276020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.609779, 43.972378, 47.402084>,  <36.275558, 43.907928, 47.612190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609779, 43.972378, 47.402084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502014, -0.164580, -0.849055,
		-0.223250, 0.973115, -0.056628,
		0.835548, 0.161124, -0.525260,
		36.860443, 44.020714, 47.244507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094967, 44.363213, 47.009109>,  <36.275558, 43.907928, 47.612190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094967, 44.363213, 47.009109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422104, 44.150082, 46.922180>,  <36.618385, 44.022205, 46.870022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422104, 44.150082, 46.922180>,  <36.094967, 44.363213, 47.009109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422104, 44.150082, 46.922180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441612, -0.339030, -0.830685,
		0.368931, 0.775343, -0.512576,
		0.817844, -0.532825, -0.217322,
		36.667458, 43.990234, 46.856983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266556, 44.495106, 46.305943>,  <36.094967, 44.363213, 47.009109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266556, 44.495106, 46.305943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473091, 44.162060, 46.386093>,  <36.597012, 43.962234, 46.434185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473091, 44.162060, 46.386093>,  <36.266556, 44.495106, 46.305943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473091, 44.162060, 46.386093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346970, -0.417308, -0.839920,
		0.782948, 0.364156, -0.504364,
		0.516337, -0.832613, 0.200379,
		36.627991, 43.912277, 46.446205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648220, 44.406109, 45.722458>,  <36.266556, 44.495106, 46.305943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648220, 44.406109, 45.722458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623749, 44.052467, 45.907768>,  <36.609066, 43.840282, 46.018955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623749, 44.052467, 45.907768>,  <36.648220, 44.406109, 45.722458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623749, 44.052467, 45.907768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068241, -0.459353, -0.885628,
		0.995791, -0.085795, -0.032230,
		-0.061177, -0.884100, 0.463275,
		36.605396, 43.787239, 46.046749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182072, 43.997425, 45.371037>,  <36.648220, 44.406109, 45.722458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182072, 43.997425, 45.371037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957409, 43.725281, 45.559357>,  <36.822613, 43.561993, 45.672348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.957409, 43.725281, 45.559357>,  <37.182072, 43.997425, 45.371037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957409, 43.725281, 45.559357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070640, -0.527520, -0.846601,
		0.824352, -0.508753, 0.248222,
		-0.561653, -0.680363, 0.470800,
		36.788914, 43.521172, 45.700596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.650955, 41.460533, 34.212021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320187, 41.677006, 34.150940>,  <44.121723, 41.806889, 34.114292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320187, 41.677006, 34.150940>,  <44.650955, 41.460533, 34.212021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320187, 41.677006, 34.150940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551531, -0.833514, 0.032683,
		-0.109593, 0.111247, 0.987731,
		-0.826923, 0.541183, -0.152704,
		44.072109, 41.839359, 34.105129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156292, 41.439949, 34.727238>,  <44.650955, 41.460533, 34.212021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156292, 41.439949, 34.727238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974030, 41.525158, 34.381523>,  <43.864670, 41.576283, 34.174095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.974030, 41.525158, 34.381523>,  <44.156292, 41.439949, 34.727238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974030, 41.525158, 34.381523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471571, -0.881268, 0.031411,
		-0.754980, 0.421887, 0.502013,
		-0.455660, 0.213020, -0.864289,
		43.837330, 41.589066, 34.122238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551888, 41.298943, 34.891228>,  <44.156292, 41.439949, 34.727238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551888, 41.298943, 34.891228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527443, 41.315826, 34.492332>,  <43.512775, 41.325958, 34.252995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527443, 41.315826, 34.492332>,  <43.551888, 41.298943, 34.891228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527443, 41.315826, 34.492332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647834, -0.761745, 0.007456,
		-0.759327, 0.646500, 0.073893,
		-0.061107, 0.042209, -0.997238,
		43.509109, 41.328487, 34.193161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869652, 41.231049, 34.816921>,  <43.551888, 41.298943, 34.891228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869652, 41.231049, 34.816921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010742, 41.124985, 34.457973>,  <43.095398, 41.061344, 34.242603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010742, 41.124985, 34.457973>,  <42.869652, 41.231049, 34.816921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010742, 41.124985, 34.457973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586734, -0.809733, 0.008644,
		-0.728923, 0.523469, -0.441194,
		0.352725, -0.265164, -0.897370,
		43.116558, 41.045437, 34.188763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250793, 41.093010, 34.471123>,  <42.869652, 41.231049, 34.816921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250793, 41.093010, 34.471123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554703, 40.917187, 34.279488>,  <42.737049, 40.811691, 34.164505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554703, 40.917187, 34.279488>,  <42.250793, 41.093010, 34.471123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554703, 40.917187, 34.279488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532775, -0.843254, -0.071233,
		-0.372681, 0.309367, -0.874872,
		0.759776, -0.439563, -0.479087,
		42.782635, 40.785316, 34.135761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917370, 40.732895, 33.961617>,  <42.250793, 41.093010, 34.471123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917370, 40.732895, 33.961617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285061, 40.588501, 34.024483>,  <42.505676, 40.501865, 34.062202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.285061, 40.588501, 34.024483>,  <41.917370, 40.732895, 33.961617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285061, 40.588501, 34.024483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375141, -0.924219, 0.071336,
		0.119508, -0.124535, -0.984992,
		0.919232, -0.360986, 0.157169,
		42.560829, 40.480206, 34.071632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043858, 40.194157, 33.507809>,  <41.917370, 40.732895, 33.961617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043858, 40.194157, 33.507809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289913, 40.137135, 33.817978>,  <42.437546, 40.102921, 34.004078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289913, 40.137135, 33.817978>,  <42.043858, 40.194157, 33.507809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289913, 40.137135, 33.817978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223885, -0.974614, -0.001564,
		0.755961, -0.172644, -0.631441,
		0.615141, -0.142552, 0.775423,
		42.474457, 40.094368, 34.050606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312660, 39.508942, 33.340553>,  <42.043858, 40.194157, 33.507809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312660, 39.508942, 33.340553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373936, 39.574875, 33.730293>,  <42.410702, 39.614433, 33.964138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373936, 39.574875, 33.730293>,  <42.312660, 39.508942, 33.340553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373936, 39.574875, 33.730293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227943, -0.953507, 0.197145,
		0.961548, -0.252297, -0.108494,
		0.153189, 0.164834, 0.974352,
		42.419891, 39.624325, 34.022598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678379, 38.844425, 33.549419>,  <42.312660, 39.508942, 33.340553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678379, 38.844425, 33.549419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615387, 39.023151, 33.901680>,  <42.577591, 39.130386, 34.113037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615387, 39.023151, 33.901680>,  <42.678379, 38.844425, 33.549419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615387, 39.023151, 33.901680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094133, -0.894514, 0.437016,
		0.983025, -0.014075, 0.182933,
		-0.157485, 0.446818, 0.880655,
		42.568142, 39.157196, 34.165878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233547, 38.706844, 34.056587>,  <42.678379, 38.844425, 33.549419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233547, 38.706844, 34.056587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903126, 38.780369, 34.269695>,  <42.704872, 38.824482, 34.397560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903126, 38.780369, 34.269695>,  <43.233547, 38.706844, 34.056587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903126, 38.780369, 34.269695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134722, -0.853516, 0.503349,
		0.547248, 0.487571, 0.680289,
		-0.826056, 0.183807, 0.532772,
		42.655308, 38.835510, 34.429527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390034, 38.305901, 34.663605>,  <43.233547, 38.706844, 34.056587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390034, 38.305901, 34.663605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001156, 38.389507, 34.705860>,  <42.767830, 38.439671, 34.731213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001156, 38.389507, 34.705860>,  <43.390034, 38.305901, 34.663605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001156, 38.389507, 34.705860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114628, -0.818032, 0.563635,
		0.204219, 0.535853, 0.819242,
		-0.972191, 0.209013, 0.105634,
		42.709499, 38.452209, 34.737549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078964, 38.184437, 35.458035>,  <43.390034, 38.305901, 34.663605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078964, 38.184437, 35.458035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791916, 38.145985, 35.182125>,  <42.619686, 38.122913, 35.016579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791916, 38.145985, 35.182125>,  <43.078964, 38.184437, 35.458035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791916, 38.145985, 35.182125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207315, -0.916041, 0.343349,
		-0.664864, 0.389394, 0.637439,
		-0.717619, -0.096130, -0.689770,
		42.576630, 38.117146, 34.975193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610485, 37.864643, 36.031036>,  <43.078964, 38.184437, 35.458035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610485, 37.864643, 36.031036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438969, 37.811897, 35.673546>,  <42.336060, 37.780251, 35.459049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438969, 37.811897, 35.673546>,  <42.610485, 37.864643, 36.031036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438969, 37.811897, 35.673546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073402, -0.980934, 0.179944,
		-0.900418, 0.142760, 0.410935,
		-0.428789, -0.131862, -0.893730,
		42.310333, 37.772339, 35.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931896, 37.594723, 36.062943>,  <42.610485, 37.864643, 36.031036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931896, 37.594723, 36.062943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055859, 37.494289, 35.696136>,  <42.130238, 37.434029, 35.476051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055859, 37.494289, 35.696136>,  <41.931896, 37.594723, 36.062943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055859, 37.494289, 35.696136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147421, -0.965524, 0.214545,
		-0.939268, 0.068698, -0.336239,
		0.309908, -0.251084, -0.917014,
		42.148830, 37.418964, 35.421032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500488, 36.998360, 35.893429>,  <41.931896, 37.594723, 36.062943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500488, 36.998360, 35.893429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.815475, 36.969006, 35.648640>,  <42.004467, 36.951393, 35.501766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.815475, 36.969006, 35.648640>,  <41.500488, 36.998360, 35.893429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815475, 36.969006, 35.648640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042919, -0.997005, 0.064332,
		-0.614860, -0.024394, -0.788259,
		0.787467, -0.073386, -0.611972,
		42.051716, 36.946991, 35.465050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389927, 36.443253, 35.450222>,  <41.500488, 36.998360, 35.893429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389927, 36.443253, 35.450222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785313, 36.501797, 35.434650>,  <42.022545, 36.536922, 35.425308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785313, 36.501797, 35.434650>,  <41.389927, 36.443253, 35.450222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785313, 36.501797, 35.434650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145373, -0.989004, -0.027168,
		-0.042480, 0.021195, -0.998872,
		0.988464, 0.146364, -0.038932,
		42.081852, 36.545704, 35.422970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550430, 35.790901, 35.109615>,  <41.389927, 36.443253, 35.450222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550430, 35.790901, 35.109615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889668, 35.954689, 35.244118>,  <42.093212, 36.052963, 35.324818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889668, 35.954689, 35.244118>,  <41.550430, 35.790901, 35.109615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889668, 35.954689, 35.244118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258292, -0.873623, 0.412393,
		0.462621, -0.262898, -0.846680,
		0.848096, 0.409472, 0.336252,
		42.144096, 36.077530, 35.344994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125877, 35.240223, 34.848686>,  <41.550430, 35.790901, 35.109615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125877, 35.240223, 34.848686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.245712, 35.468834, 35.154263>,  <42.317612, 35.606003, 35.337608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.245712, 35.468834, 35.154263>,  <42.125877, 35.240223, 34.848686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245712, 35.468834, 35.154263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332298, -0.813084, 0.477987,
		0.894331, 0.110658, -0.433506,
		0.299584, 0.571532, 0.763938,
		42.335587, 35.640293, 35.383446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674698, 34.940788, 35.020706>,  <42.125877, 35.240223, 34.848686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674698, 34.940788, 35.020706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575176, 35.152264, 35.345322>,  <42.515465, 35.279148, 35.540089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.575176, 35.152264, 35.345322>,  <42.674698, 34.940788, 35.020706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575176, 35.152264, 35.345322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216971, -0.786165, 0.578677,
		0.943940, 0.320055, 0.080889,
		-0.248801, 0.528686, 0.811535,
		42.500538, 35.310871, 35.588783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172649, 34.742107, 35.523613>,  <42.674698, 34.940788, 35.020706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172649, 34.742107, 35.523613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873695, 34.894417, 35.741390>,  <42.694324, 34.985802, 35.872059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873695, 34.894417, 35.741390>,  <43.172649, 34.742107, 35.523613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873695, 34.894417, 35.741390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103286, -0.742916, 0.661367,
		0.656312, 0.550531, 0.515917,
		-0.747386, 0.380776, 0.544447,
		42.649479, 35.008648, 35.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430847, 34.711884, 36.146824>,  <43.172649, 34.742107, 35.523613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430847, 34.711884, 36.146824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037678, 34.737690, 36.215759>,  <42.801777, 34.753174, 36.257122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037678, 34.737690, 36.215759>,  <43.430847, 34.711884, 36.146824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037678, 34.737690, 36.215759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098955, -0.604301, 0.790587,
		0.155150, 0.794140, 0.587597,
		-0.982922, 0.064514, 0.172341,
		42.742802, 34.757046, 36.267460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686554, 35.345360, 36.005848>,  <43.430847, 34.711884, 36.146824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686554, 35.345360, 36.005848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076733, 35.258175, 36.018459>,  <44.310841, 35.205864, 36.026028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076733, 35.258175, 36.018459>,  <43.686554, 35.345360, 36.005848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076733, 35.258175, 36.018459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202590, 0.944211, 0.259659,
		-0.086369, -0.246895, 0.965186,
		0.975448, -0.217964, 0.031532,
		44.369366, 35.192787, 36.027920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047401, 35.557354, 36.661877>,  <43.686554, 35.345360, 36.005848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047401, 35.557354, 36.661877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305920, 35.549820, 36.356735>,  <44.461029, 35.545300, 36.173649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.305920, 35.549820, 36.356735>,  <44.047401, 35.557354, 36.661877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305920, 35.549820, 36.356735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089992, 0.994601, 0.051680,
		0.757765, -0.102052, 0.644498,
		0.646292, -0.018838, -0.762857,
		44.499805, 35.544170, 36.127876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399307, 36.177048, 36.700279>,  <44.047401, 35.557354, 36.661877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399307, 36.177048, 36.700279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583801, 36.061810, 36.364597>,  <44.694496, 35.992664, 36.163189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583801, 36.061810, 36.364597>,  <44.399307, 36.177048, 36.700279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583801, 36.061810, 36.364597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339462, 0.931156, -0.133094,
		0.819774, -0.223490, 0.527278,
		0.461233, -0.288098, -0.839204,
		44.722172, 35.975380, 36.112835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043373, 36.442726, 36.715683>,  <44.399307, 36.177048, 36.700279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043373, 36.442726, 36.715683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980038, 36.384605, 36.325027>,  <44.942036, 36.349731, 36.090633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980038, 36.384605, 36.325027>,  <45.043373, 36.442726, 36.715683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980038, 36.384605, 36.325027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422562, 0.883985, -0.200029,
		0.892396, -0.444361, -0.078569,
		-0.158339, -0.145305, -0.976635,
		44.932537, 36.341015, 36.032036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770355, 36.550667, 36.293865>,  <45.043373, 36.442726, 36.715683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770355, 36.550667, 36.293865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472656, 36.554588, 36.026730>,  <45.294037, 36.556942, 35.866447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472656, 36.554588, 36.026730>,  <45.770355, 36.550667, 36.293865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472656, 36.554588, 36.026730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379633, 0.828880, -0.410896,
		0.549527, -0.559340, -0.620612,
		-0.744244, 0.009806, -0.667836,
		45.249382, 36.557529, 35.826378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070633, 36.822403, 35.737190>,  <45.770355, 36.550667, 36.293865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070633, 36.822403, 35.737190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673603, 36.855865, 35.701855>,  <45.435387, 36.875942, 35.680653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673603, 36.855865, 35.701855>,  <46.070633, 36.822403, 35.737190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673603, 36.855865, 35.701855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116244, 0.866401, -0.485630,
		0.035908, -0.492291, -0.869690,
		-0.992571, 0.083658, -0.088337,
		45.375832, 36.880962, 35.675354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014095, 36.941826, 34.969158>,  <46.070633, 36.822403, 35.737190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014095, 36.941826, 34.969158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716675, 37.101055, 35.184071>,  <45.538223, 37.196594, 35.313019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716675, 37.101055, 35.184071>,  <46.014095, 36.941826, 34.969158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716675, 37.101055, 35.184071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198688, 0.898729, -0.390907,
		-0.638482, -0.183906, -0.747341,
		-0.743548, 0.398075, 0.537283,
		45.493610, 37.220478, 35.345257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738266, 37.484352, 34.611046>,  <46.014095, 36.941826, 34.969158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738266, 37.484352, 34.611046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587502, 37.597561, 34.963825>,  <45.497044, 37.665485, 35.175495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587502, 37.597561, 34.963825>,  <45.738266, 37.484352, 34.611046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587502, 37.597561, 34.963825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019497, 0.954388, -0.297933,
		-0.926046, -0.095097, -0.365234,
		-0.376907, 0.283021, 0.881952,
		45.474430, 37.682468, 35.228413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284309, 37.973724, 34.502354>,  <45.738266, 37.484352, 34.611046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284309, 37.973724, 34.502354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340687, 38.031464, 34.894131>,  <45.374512, 38.066105, 35.129196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340687, 38.031464, 34.894131>,  <45.284309, 37.973724, 34.502354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340687, 38.031464, 34.894131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062205, 0.988651, -0.136750,
		-0.988061, -0.041652, 0.148323,
		0.140943, 0.144343, 0.979438,
		45.382969, 38.074768, 35.187962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770332, 38.520649, 34.724712>,  <45.284309, 37.973724, 34.502354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770332, 38.520649, 34.724712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053185, 38.510166, 35.007351>,  <45.222897, 38.503876, 35.176933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053185, 38.510166, 35.007351>,  <44.770332, 38.520649, 34.724712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053185, 38.510166, 35.007351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001284, 0.999264, 0.038352,
		-0.707084, -0.028027, 0.706574,
		0.707128, -0.026211, 0.706600,
		45.265324, 38.502304, 35.219330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645763, 39.122799, 35.191692>,  <44.770332, 38.520649, 34.724712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645763, 39.122799, 35.191692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032074, 39.021618, 35.214642>,  <45.263859, 38.960911, 35.228413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032074, 39.021618, 35.214642>,  <44.645763, 39.122799, 35.191692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032074, 39.021618, 35.214642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251025, 0.967207, 0.038674,
		-0.065277, -0.022948, 0.997603,
		0.965777, -0.252948, 0.057376,
		45.321808, 38.945732, 35.231853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896030, 39.540428, 35.711632>,  <44.645763, 39.122799, 35.191692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896030, 39.540428, 35.711632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.220676, 39.438248, 35.501476>,  <45.415462, 39.376942, 35.375385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.220676, 39.438248, 35.501476>,  <44.896030, 39.540428, 35.711632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220676, 39.438248, 35.501476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257069, 0.963747, -0.071466,
		0.524594, -0.077057, 0.847858,
		0.811614, -0.255448, -0.525385,
		45.464161, 39.361614, 35.343861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494701, 39.930828, 35.967304>,  <44.896030, 39.540428, 35.711632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494701, 39.930828, 35.967304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604977, 39.825062, 35.597637>,  <45.671143, 39.761600, 35.375839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604977, 39.825062, 35.597637>,  <45.494701, 39.930828, 35.967304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604977, 39.825062, 35.597637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374250, 0.915086, -0.150180,
		0.885400, -0.304465, 0.351239,
		0.275689, -0.264420, -0.924163,
		45.687683, 39.745735, 35.320389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.122059, 40.229355, 35.891754>,  <45.494701, 39.930828, 35.967304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.122059, 40.229355, 35.891754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021248, 40.153824, 35.512108>,  <45.960762, 40.108505, 35.284321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021248, 40.153824, 35.512108>,  <46.122059, 40.229355, 35.891754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021248, 40.153824, 35.512108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289960, 0.920983, -0.260220,
		0.923258, -0.340789, -0.177362,
		-0.252028, -0.188822, -0.949120,
		45.945641, 40.097176, 35.227371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604443, 40.492065, 35.614296>,  <46.122059, 40.229355, 35.891754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604443, 40.492065, 35.614296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316158, 40.484715, 35.337101>,  <46.143188, 40.480305, 35.170784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.316158, 40.484715, 35.337101>,  <46.604443, 40.492065, 35.614296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316158, 40.484715, 35.337101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247578, 0.926901, -0.282063,
		0.647519, -0.374856, -0.663478,
		-0.720711, -0.018379, -0.692992,
		46.099945, 40.479202, 35.129204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.917706, 40.765076, 35.012432>,  <46.604443, 40.492065, 35.614296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.917706, 40.765076, 35.012432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525261, 40.790001, 34.939178>,  <46.289795, 40.804958, 34.895226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525261, 40.790001, 34.939178>,  <46.917706, 40.765076, 35.012432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525261, 40.790001, 34.939178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157064, 0.809269, -0.566052,
		0.112933, -0.584123, -0.803770,
		-0.981110, 0.062317, -0.183138,
		46.230927, 40.808697, 34.884235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849541, 40.975670, 34.254311>,  <46.917706, 40.765076, 35.012432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849541, 40.975670, 34.254311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497646, 41.069828, 34.419556>,  <46.286510, 41.126324, 34.518703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497646, 41.069828, 34.419556>,  <46.849541, 40.975670, 34.254311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497646, 41.069828, 34.419556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017491, 0.852242, -0.522856,
		-0.475147, -0.467199, -0.745627,
		-0.879732, 0.235391, 0.413112,
		46.233727, 41.140446, 34.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592415, 41.295471, 33.738804>,  <46.849541, 40.975670, 34.254311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592415, 41.295471, 33.738804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.329060, 41.414249, 34.015453>,  <46.171047, 41.485516, 34.181442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.329060, 41.414249, 34.015453>,  <46.592415, 41.295471, 33.738804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329060, 41.414249, 34.015453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175360, 0.833085, -0.524612,
		-0.731966, -0.466682, -0.496420,
		-0.658388, 0.296946, 0.691627,
		46.131542, 41.503334, 34.222942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900513, 41.480213, 33.422836>,  <46.592415, 41.295471, 33.738804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900513, 41.480213, 33.422836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962341, 41.668007, 33.770557>,  <45.999439, 41.780682, 33.979191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.962341, 41.668007, 33.770557>,  <45.900513, 41.480213, 33.422836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962341, 41.668007, 33.770557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261027, 0.868023, -0.422375,
		-0.952875, -0.161623, 0.256722,
		0.154575, 0.469482, 0.869306,
		46.008713, 41.808853, 34.031349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272373, 41.953789, 33.607311>,  <45.900513, 41.480213, 33.422836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272373, 41.953789, 33.607311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582336, 42.091454, 33.819374>,  <45.768314, 42.174053, 33.946613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582336, 42.091454, 33.819374>,  <45.272373, 41.953789, 33.607311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582336, 42.091454, 33.819374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224458, 0.933930, -0.278197,
		-0.590878, 0.096579, 0.800959,
		0.774908, 0.344162, 0.530161,
		45.814808, 42.194702, 33.978424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969486, 42.474129, 34.095432>,  <45.272373, 41.953789, 33.607311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969486, 42.474129, 34.095432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357716, 42.564533, 34.062168>,  <45.590652, 42.618774, 34.042210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357716, 42.564533, 34.062168>,  <44.969486, 42.474129, 34.095432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357716, 42.564533, 34.062168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219958, 0.972546, 0.075982,
		0.098053, -0.055453, 0.993635,
		0.970569, 0.226008, -0.083164,
		45.648888, 42.632336, 34.037220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.906612, 40.935318, 40.632870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624535, 40.718708, 40.815929>,  <39.455288, 40.588741, 40.925766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624535, 40.718708, 40.815929>,  <39.906612, 40.935318, 40.632870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624535, 40.718708, 40.815929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057568, -0.687081, -0.724297,
		0.706669, -0.484427, 0.515703,
		-0.705198, -0.541526, 0.457652,
		39.412975, 40.556252, 40.953224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090553, 40.251881, 40.533939>,  <39.906612, 40.935318, 40.632870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090553, 40.251881, 40.533939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708260, 40.210487, 40.644115>,  <39.478886, 40.185650, 40.710220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708260, 40.210487, 40.644115>,  <40.090553, 40.251881, 40.533939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708260, 40.210487, 40.644115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039324, -0.882792, -0.468115,
		0.291604, -0.458223, 0.839642,
		-0.955730, -0.103486, 0.275445,
		39.421539, 40.179443, 40.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148872, 39.574867, 40.770760>,  <40.090553, 40.251881, 40.533939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148872, 39.574867, 40.770760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771473, 39.677776, 40.687222>,  <39.545033, 39.739521, 40.637096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771473, 39.677776, 40.687222>,  <40.148872, 39.574867, 40.770760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771473, 39.677776, 40.687222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063968, -0.759815, -0.646985,
		-0.325135, -0.597072, 0.733343,
		-0.943502, 0.257268, -0.208849,
		39.488422, 39.754955, 40.624565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716995, 38.945190, 40.849693>,  <40.148872, 39.574867, 40.770760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716995, 38.945190, 40.849693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503609, 39.200230, 40.627384>,  <39.375576, 39.353252, 40.493999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503609, 39.200230, 40.627384>,  <39.716995, 38.945190, 40.849693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503609, 39.200230, 40.627384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253626, -0.747432, -0.614020,
		-0.806899, -0.186601, 0.560441,
		-0.533468, 0.637594, -0.555775,
		39.343567, 39.391506, 40.460651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118973, 38.604324, 40.749401>,  <39.716995, 38.945190, 40.849693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118973, 38.604324, 40.749401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155849, 38.877350, 40.459404>,  <39.177975, 39.041164, 40.285408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155849, 38.877350, 40.459404>,  <39.118973, 38.604324, 40.749401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155849, 38.877350, 40.459404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295623, -0.676500, -0.674503,
		-0.950846, 0.276505, 0.139416,
		0.092188, 0.682563, -0.724989,
		39.183506, 39.082119, 40.241909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504589, 38.488850, 40.462746>,  <39.118973, 38.604324, 40.749401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504589, 38.488850, 40.462746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743092, 38.677982, 40.203236>,  <38.886192, 38.791462, 40.047531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743092, 38.677982, 40.203236>,  <38.504589, 38.488850, 40.462746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743092, 38.677982, 40.203236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323777, -0.597862, -0.733300,
		-0.734604, 0.647295, -0.203388,
		0.596259, 0.472832, -0.648771,
		38.921970, 38.819832, 40.008606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035637, 38.763062, 40.011044>,  <38.504589, 38.488850, 40.462746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035637, 38.763062, 40.011044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398754, 38.720863, 39.848671>,  <38.616627, 38.695545, 39.751247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398754, 38.720863, 39.848671>,  <38.035637, 38.763062, 40.011044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398754, 38.720863, 39.848671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386165, -0.587902, -0.710808,
		-0.163657, 0.802023, -0.574435,
		0.907796, -0.105497, -0.405927,
		38.671093, 38.689213, 39.726894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977627, 38.965557, 39.292755>,  <38.035637, 38.763062, 40.011044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977627, 38.965557, 39.292755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299923, 38.728703, 39.297756>,  <38.493301, 38.586590, 39.300758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299923, 38.728703, 39.297756>,  <37.977627, 38.965557, 39.292755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299923, 38.728703, 39.297756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401333, -0.561394, -0.723719,
		0.435559, 0.578112, -0.689982,
		0.805742, -0.592135, 0.012505,
		38.541645, 38.551064, 39.301506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202194, 38.910824, 38.551479>,  <37.977627, 38.965557, 39.292755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202194, 38.910824, 38.551479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 38.600132, 38.732708>,  <38.482204, 38.413715, 38.841446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 38.600132, 38.732708>,  <38.202194, 38.910824, 38.551479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377201, 38.600132, 38.732708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430335, -0.623270, -0.652952,
		0.789553, 0.090703, -0.606942,
		0.437513, -0.776729, 0.453072,
		38.508453, 38.367115, 38.868629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527721, 38.550735, 38.012676>,  <38.202194, 38.910824, 38.551479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527721, 38.550735, 38.012676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513023, 38.273521, 38.300663>,  <38.504204, 38.107193, 38.473454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513023, 38.273521, 38.300663>,  <38.527721, 38.550735, 38.012676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513023, 38.273521, 38.300663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351520, -0.665446, -0.658495,
		0.935459, -0.277281, -0.219163,
		-0.036747, -0.693034, 0.719967,
		38.501999, 38.065613, 38.516655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815376, 37.951904, 37.783203>,  <38.527721, 38.550735, 38.012676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815376, 37.951904, 37.783203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600056, 37.803165, 38.085716>,  <38.470863, 37.713921, 38.267223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600056, 37.803165, 38.085716>,  <38.815376, 37.951904, 37.783203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600056, 37.803165, 38.085716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489577, -0.592463, -0.639766,
		0.685965, -0.714645, 0.136875,
		-0.538300, -0.371846, 0.756283,
		38.438564, 37.691612, 38.312603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915199, 37.184319, 37.734695>,  <38.815376, 37.951904, 37.783203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915199, 37.184319, 37.734695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584393, 37.291454, 37.932400>,  <38.385906, 37.355736, 38.051022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584393, 37.291454, 37.932400>,  <38.915199, 37.184319, 37.734695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584393, 37.291454, 37.932400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555712, -0.522393, -0.646754,
		0.084971, -0.809547, 0.580873,
		-0.827021, 0.267843, 0.494263,
		38.336285, 37.371807, 38.080677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605259, 36.860691, 37.715252>,  <38.915199, 37.184319, 37.734695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605259, 36.860691, 37.715252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508827, 37.246212, 37.760803>,  <39.450966, 37.477524, 37.788136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508827, 37.246212, 37.760803>,  <39.605259, 36.860691, 37.715252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508827, 37.246212, 37.760803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244192, -0.053322, 0.968260,
		0.939282, 0.261237, -0.222498,
		-0.241081, 0.963801, 0.113877,
		39.436504, 37.535351, 37.794968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395679, 36.245636, 37.923782>,  <39.605259, 36.860691, 37.715252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395679, 36.245636, 37.923782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467758, 35.853050, 37.897675>,  <39.511005, 35.617500, 37.882011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467758, 35.853050, 37.897675>,  <39.395679, 36.245636, 37.923782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467758, 35.853050, 37.897675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502872, 0.034889, 0.863656,
		-0.845370, -0.188447, 0.499837,
		0.180192, -0.981463, -0.065271,
		39.521816, 35.558613, 37.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282852, 35.961800, 38.557301>,  <39.395679, 36.245636, 37.923782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282852, 35.961800, 38.557301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526760, 35.692776, 38.389568>,  <39.673107, 35.531361, 38.288929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526760, 35.692776, 38.389568>,  <39.282852, 35.961800, 38.557301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526760, 35.692776, 38.389568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457747, -0.133070, 0.879068,
		-0.647027, -0.727980, 0.226720,
		0.609774, -0.672561, -0.419331,
		39.709694, 35.491009, 38.263771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273937, 35.320038, 38.880127>,  <39.282852, 35.961800, 38.557301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273937, 35.320038, 38.880127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626732, 35.386562, 38.703743>,  <39.838409, 35.426476, 38.597912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626732, 35.386562, 38.703743>,  <39.273937, 35.320038, 38.880127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626732, 35.386562, 38.703743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417295, 0.159244, 0.894710,
		0.219023, -0.973129, 0.071048,
		0.881983, 0.166314, -0.440960,
		39.891327, 35.436455, 38.571453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710323, 34.922733, 39.226078>,  <39.273937, 35.320038, 38.880127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710323, 34.922733, 39.226078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935780, 35.208435, 39.060112>,  <40.071053, 35.379856, 38.960533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935780, 35.208435, 39.060112>,  <39.710323, 34.922733, 39.226078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935780, 35.208435, 39.060112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429723, 0.175431, 0.885755,
		0.705443, -0.677543, -0.208052,
		0.563638, 0.714255, -0.414912,
		40.104870, 35.422710, 38.935638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379932, 34.855610, 39.452637>,  <39.710323, 34.922733, 39.226078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379932, 34.855610, 39.452637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380882, 35.239365, 39.339809>,  <40.381454, 35.469620, 39.272114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380882, 35.239365, 39.339809>,  <40.379932, 34.855610, 39.452637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380882, 35.239365, 39.339809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344387, 0.264029, 0.900936,
		0.938825, -0.099282, -0.329774,
		0.002377, 0.959391, -0.282069,
		40.381596, 35.527184, 39.255188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968216, 35.157295, 39.778042>,  <40.379932, 34.855610, 39.452637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968216, 35.157295, 39.778042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783077, 35.496643, 39.675255>,  <40.671993, 35.700253, 39.613583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783077, 35.496643, 39.675255>,  <40.968216, 35.157295, 39.778042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783077, 35.496643, 39.675255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434401, 0.469773, 0.768511,
		0.772700, 0.244080, -0.585969,
		-0.462851, 0.848374, -0.256965,
		40.644222, 35.751156, 39.598164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342255, 35.652409, 40.153217>,  <40.968216, 35.157295, 39.778042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342255, 35.652409, 40.153217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011906, 35.854382, 40.052837>,  <40.813698, 35.975567, 39.992607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011906, 35.854382, 40.052837>,  <41.342255, 35.652409, 40.153217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011906, 35.854382, 40.052837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122114, 0.594668, 0.794643,
		0.550478, 0.625627, -0.552779,
		-0.825870, 0.504936, -0.250954,
		40.764145, 36.005863, 39.977551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530556, 36.356392, 40.259445>,  <41.342255, 35.652409, 40.153217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530556, 36.356392, 40.259445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131382, 36.353352, 40.233910>,  <40.891880, 36.351528, 40.218590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131382, 36.353352, 40.233910>,  <41.530556, 36.356392, 40.259445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131382, 36.353352, 40.233910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046951, 0.764464, 0.642955,
		0.043917, 0.644622, -0.763239,
		-0.997931, -0.007598, -0.063839,
		40.832001, 36.351070, 40.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313637, 37.012665, 40.220051>,  <41.530556, 36.356392, 40.259445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313637, 37.012665, 40.220051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001015, 36.816612, 40.374420>,  <40.813442, 36.698978, 40.467041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001015, 36.816612, 40.374420>,  <41.313637, 37.012665, 40.220051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001015, 36.816612, 40.374420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035172, 0.652266, 0.757174,
		-0.622840, 0.578202, -0.527023,
		-0.781558, -0.490134, 0.385921,
		40.766548, 36.669571, 40.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816494, 37.459141, 40.344051>,  <41.313637, 37.012665, 40.220051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816494, 37.459141, 40.344051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672844, 37.161209, 40.569000>,  <40.586655, 36.982449, 40.703968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672844, 37.161209, 40.569000>,  <40.816494, 37.459141, 40.344051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672844, 37.161209, 40.569000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147537, 0.640297, 0.753825,
		-0.921553, 0.187749, -0.339838,
		-0.359127, -0.744828, 0.562369,
		40.565105, 36.937759, 40.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083324, 37.678432, 40.544842>,  <40.816494, 37.459141, 40.344051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083324, 37.678432, 40.544842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227543, 37.397537, 40.790401>,  <40.314072, 37.229000, 40.937737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227543, 37.397537, 40.790401>,  <40.083324, 37.678432, 40.544842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227543, 37.397537, 40.790401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188443, 0.589754, 0.785290,
		-0.913509, -0.398815, 0.080299,
		0.360541, -0.702237, 0.613899,
		40.335705, 37.186867, 40.974571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540352, 37.508389, 41.020355>,  <40.083324, 37.678432, 40.544842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540352, 37.508389, 41.020355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899548, 37.427826, 41.176842>,  <40.115067, 37.379490, 41.270733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899548, 37.427826, 41.176842>,  <39.540352, 37.508389, 41.020355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899548, 37.427826, 41.176842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246898, 0.505306, 0.826866,
		-0.364221, -0.839107, 0.404033,
		0.897989, -0.201407, 0.391217,
		40.168945, 37.367405, 41.294209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328327, 37.447937, 41.677185>,  <39.540352, 37.508389, 41.020355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328327, 37.447937, 41.677185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727119, 37.476883, 41.665962>,  <39.966396, 37.494251, 41.659229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727119, 37.476883, 41.665962>,  <39.328327, 37.447937, 41.677185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727119, 37.476883, 41.665962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016216, 0.547730, 0.836498,
		0.075897, -0.833520, 0.547251,
		0.996983, 0.072362, -0.028055,
		40.026215, 37.498592, 41.657547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636250, 37.319256, 42.395004>,  <39.328327, 37.447937, 41.677185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636250, 37.319256, 42.395004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928333, 37.526657, 42.217041>,  <40.103584, 37.651100, 42.110264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928333, 37.526657, 42.217041>,  <39.636250, 37.319256, 42.395004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928333, 37.526657, 42.217041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198284, 0.462339, 0.864249,
		0.653818, -0.719302, 0.234793,
		0.730209, 0.518506, -0.444912,
		40.147396, 37.682209, 42.083569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168606, 37.399422, 42.841763>,  <39.636250, 37.319256, 42.395004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168606, 37.399422, 42.841763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269985, 37.691971, 42.588509>,  <40.330814, 37.867500, 42.436558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269985, 37.691971, 42.588509>,  <40.168606, 37.399422, 42.841763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269985, 37.691971, 42.588509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475453, 0.475812, 0.739965,
		0.842442, -0.488570, -0.227137,
		0.253450, 0.731370, -0.633136,
		40.346020, 37.911381, 42.398567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474968, 36.827702, 43.043964>,  <40.168606, 37.399422, 42.841763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474968, 36.827702, 43.043964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234737, 36.699005, 43.336754>,  <40.090599, 36.621788, 43.512428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234737, 36.699005, 43.336754>,  <40.474968, 36.827702, 43.043964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234737, 36.699005, 43.336754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480450, -0.586547, -0.652020,
		0.639118, -0.743268, 0.197689,
		-0.600580, -0.321738, 0.731976,
		40.054562, 36.602486, 43.556347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434090, 36.051155, 43.085564>,  <40.474968, 36.827702, 43.043964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434090, 36.051155, 43.085564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104362, 36.196457, 43.259254>,  <39.906528, 36.283638, 43.363468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104362, 36.196457, 43.259254>,  <40.434090, 36.051155, 43.085564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104362, 36.196457, 43.259254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566048, -0.541998, -0.621150,
		0.009715, -0.757816, 0.652396,
		-0.824315, 0.363254, 0.434225,
		39.857067, 36.305431, 43.389523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047405, 35.499146, 43.177589>,  <40.434090, 36.051155, 43.085564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047405, 35.499146, 43.177589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749310, 35.763992, 43.209145>,  <39.570454, 35.922901, 43.228077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749310, 35.763992, 43.209145>,  <40.047405, 35.499146, 43.177589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749310, 35.763992, 43.209145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612461, -0.632927, -0.473597,
		-0.263647, -0.401257, 0.877202,
		-0.745239, 0.662115, 0.078885,
		39.525738, 35.962627, 43.232811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473541, 35.105858, 43.192841>,  <40.047405, 35.499146, 43.177589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473541, 35.105858, 43.192841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323406, 35.457954, 43.076698>,  <39.233326, 35.669212, 43.007015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323406, 35.457954, 43.076698>,  <39.473541, 35.105858, 43.192841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323406, 35.457954, 43.076698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708928, -0.474428, -0.521861,
		-0.597114, 0.009967, 0.802094,
		-0.375335, 0.880238, -0.290354,
		39.210804, 35.722027, 42.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796925, 34.921211, 43.229069>,  <39.473541, 35.105858, 43.192841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796925, 34.921211, 43.229069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819328, 35.251190, 43.004097>,  <38.832771, 35.449177, 42.869114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819328, 35.251190, 43.004097>,  <38.796925, 34.921211, 43.229069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819328, 35.251190, 43.004097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717456, -0.358492, -0.597278,
		-0.694348, 0.436971, 0.571784,
		0.056013, 0.824949, -0.562425,
		38.836132, 35.498676, 42.835369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107845, 35.160927, 43.218990>,  <38.796925, 34.921211, 43.229069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107845, 35.160927, 43.218990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286251, 35.336418, 42.906940>,  <38.393295, 35.441711, 42.719711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286251, 35.336418, 42.906940>,  <38.107845, 35.160927, 43.218990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286251, 35.336418, 42.906940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741548, -0.306935, -0.596571,
		-0.501177, 0.844578, 0.188438,
		0.446013, 0.438724, -0.780124,
		38.420055, 35.468037, 42.672905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553787, 35.609337, 42.753723>,  <38.107845, 35.160927, 43.218990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553787, 35.609337, 42.753723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863251, 35.503727, 42.523335>,  <38.048927, 35.440361, 42.385101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863251, 35.503727, 42.523335>,  <37.553787, 35.609337, 42.753723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863251, 35.503727, 42.523335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629951, -0.418002, -0.654551,
		-0.067944, 0.869234, -0.489710,
		0.773657, -0.264020, -0.575975,
		38.095348, 35.424522, 42.350540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170238, 35.562584, 42.143459>,  <37.553787, 35.609337, 42.753723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170238, 35.562584, 42.143459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525372, 35.398140, 42.060753>,  <37.738449, 35.299473, 42.011127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525372, 35.398140, 42.060753>,  <37.170238, 35.562584, 42.143459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525372, 35.398140, 42.060753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400295, -0.468317, -0.787683,
		0.226990, 0.782094, -0.580349,
		0.887829, -0.411107, -0.206765,
		37.791721, 35.274807, 41.998722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358101, 35.823368, 41.482426>,  <37.170238, 35.562584, 42.143459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358101, 35.823368, 41.482426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550560, 35.482037, 41.562748>,  <37.666035, 35.277237, 41.610943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550560, 35.482037, 41.562748>,  <37.358101, 35.823368, 41.482426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550560, 35.482037, 41.562748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304999, -0.377699, -0.874254,
		0.821872, 0.359400, -0.441994,
		0.481147, -0.853332, 0.200804,
		37.694904, 35.226036, 41.622990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830307, 35.672665, 40.966080>,  <37.358101, 35.823368, 41.482426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830307, 35.672665, 40.966080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752396, 35.317482, 41.132736>,  <37.705647, 35.104374, 41.232731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752396, 35.317482, 41.132736>,  <37.830307, 35.672665, 40.966080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752396, 35.317482, 41.132736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238577, -0.369130, -0.898234,
		0.951389, -0.274362, -0.139946,
		-0.194783, -0.887957, 0.416643,
		37.693962, 35.051094, 41.257729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252838, 35.166012, 40.555573>,  <37.830307, 35.672665, 40.966080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252838, 35.166012, 40.555573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943233, 34.980358, 40.727844>,  <37.757469, 34.868965, 40.831207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943233, 34.980358, 40.727844>,  <38.252838, 35.166012, 40.555573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943233, 34.980358, 40.727844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171746, -0.500790, -0.848359,
		0.609429, -0.730609, 0.307906,
		-0.774015, -0.464133, 0.430675,
		37.711029, 34.841118, 40.857048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338982, 34.494114, 40.216747>,  <38.252838, 35.166012, 40.555573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338982, 34.494114, 40.216747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975662, 34.524921, 40.381214>,  <37.757671, 34.543404, 40.479893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975662, 34.524921, 40.381214>,  <38.338982, 34.494114, 40.216747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975662, 34.524921, 40.381214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413308, -0.316822, -0.853698,
		0.064519, -0.945353, 0.319601,
		-0.908303, 0.077014, 0.411163,
		37.703171, 34.548027, 40.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.589279, 37.855038, 46.810707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212429, 37.919754, 46.928162>,  <40.986320, 37.958584, 46.998634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212429, 37.919754, 46.928162>,  <41.589279, 37.855038, 46.810707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212429, 37.919754, 46.928162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326837, -0.638318, -0.696941,
		0.074677, -0.752578, 0.654255,
		-0.942126, 0.161789, 0.293638,
		40.929790, 37.968292, 47.016254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298382, 37.208405, 46.851353>,  <41.589279, 37.855038, 46.810707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298382, 37.208405, 46.851353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995380, 37.464901, 46.802364>,  <40.813580, 37.618797, 46.772972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995380, 37.464901, 46.802364>,  <41.298382, 37.208405, 46.851353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995380, 37.464901, 46.802364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336747, -0.544523, -0.768177,
		-0.559281, -0.540650, 0.628413,
		-0.757500, 0.641242, -0.122479,
		40.768127, 37.657272, 46.765621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628036, 36.781303, 46.744709>,  <41.298382, 37.208405, 46.851353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628036, 36.781303, 46.744709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542042, 37.139591, 46.589035>,  <40.490444, 37.354565, 46.495632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542042, 37.139591, 46.589035>,  <40.628036, 36.781303, 46.744709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542042, 37.139591, 46.589035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283787, -0.438603, -0.852697,
		-0.934476, -0.072876, 0.348489,
		-0.214989, 0.895721, -0.389183,
		40.477547, 37.408306, 46.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969498, 36.699799, 46.526844>,  <40.628036, 36.781303, 46.744709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969498, 36.699799, 46.526844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122715, 37.011024, 46.327686>,  <40.214645, 37.197758, 46.208191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122715, 37.011024, 46.327686>,  <39.969498, 36.699799, 46.526844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122715, 37.011024, 46.327686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355293, -0.373444, -0.856917,
		-0.852670, 0.505134, 0.133395,
		0.383042, 0.778061, -0.497895,
		40.237629, 37.244442, 46.178318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521034, 36.829556, 45.968552>,  <39.969498, 36.699799, 46.526844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521034, 36.829556, 45.968552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844318, 37.022751, 45.833786>,  <40.038288, 37.138668, 45.752926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844318, 37.022751, 45.833786>,  <39.521034, 36.829556, 45.968552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844318, 37.022751, 45.833786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193610, -0.322388, -0.926597,
		-0.556153, 0.814119, -0.167047,
		0.808214, 0.482987, -0.336918,
		40.086784, 37.167648, 45.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329300, 37.302746, 45.369041>,  <39.521034, 36.829556, 45.968552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329300, 37.302746, 45.369041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.718975, 37.223080, 45.326546>,  <39.952782, 37.175278, 45.301048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.718975, 37.223080, 45.326546>,  <39.329300, 37.302746, 45.369041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718975, 37.223080, 45.326546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129821, -0.109303, -0.985494,
		0.184667, 0.973850, -0.132338,
		0.974189, -0.199169, -0.106242,
		40.011230, 37.163330, 45.294674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544899, 37.772690, 44.896233>,  <39.329300, 37.302746, 45.369041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544899, 37.772690, 44.896233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848133, 37.513943, 44.863102>,  <40.030075, 37.358692, 44.843224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848133, 37.513943, 44.863102>,  <39.544899, 37.772690, 44.896233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848133, 37.513943, 44.863102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294337, -0.226046, -0.928584,
		0.581953, 0.728327, -0.361761,
		0.758087, -0.646872, -0.082825,
		40.075558, 37.319881, 44.838253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874020, 37.851673, 44.197430>,  <39.544899, 37.772690, 44.896233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874020, 37.851673, 44.197430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978279, 37.488297, 44.328152>,  <40.040836, 37.270271, 44.406586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.978279, 37.488297, 44.328152>,  <39.874020, 37.851673, 44.197430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978279, 37.488297, 44.328152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292639, -0.396921, -0.869952,
		0.920012, 0.131121, -0.369303,
		0.260653, -0.908439, 0.326800,
		40.056477, 37.215763, 44.426193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199097, 37.594917, 43.611042>,  <39.874020, 37.851673, 44.197430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199097, 37.594917, 43.611042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101139, 37.273499, 43.828053>,  <40.042362, 37.080647, 43.958260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.101139, 37.273499, 43.828053>,  <40.199097, 37.594917, 43.611042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101139, 37.273499, 43.828053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233565, -0.494188, -0.837392,
		0.940996, -0.331789, -0.066656,
		-0.244897, -0.803551, 0.542523,
		40.027672, 37.032433, 43.990810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822674, 37.640137, 43.125107>,  <40.199097, 37.594917, 43.611042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822674, 37.640137, 43.125107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714577, 37.904224, 42.844799>,  <40.649719, 38.062675, 42.676613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714577, 37.904224, 42.844799>,  <40.822674, 37.640137, 43.125107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714577, 37.904224, 42.844799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351729, 0.745243, 0.566480,
		0.896246, -0.093395, -0.433614,
		-0.270241, 0.660220, -0.700771,
		40.633503, 38.102291, 42.634567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421913, 38.020741, 42.929344>,  <40.822674, 37.640137, 43.125107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421913, 38.020741, 42.929344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107052, 38.258385, 42.863098>,  <40.918137, 38.400970, 42.823349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107052, 38.258385, 42.863098>,  <41.421913, 38.020741, 42.929344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107052, 38.258385, 42.863098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316404, 0.619483, 0.718421,
		0.529419, 0.513102, -0.675604,
		-0.787149, 0.594110, -0.165619,
		40.870907, 38.436619, 42.813412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598938, 38.666454, 42.843479>,  <41.421913, 38.020741, 42.929344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598938, 38.666454, 42.843479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219448, 38.739288, 42.946838>,  <40.991753, 38.782990, 43.008854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.219448, 38.739288, 42.946838>,  <41.598938, 38.666454, 42.843479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219448, 38.739288, 42.946838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301614, 0.766107, 0.567546,
		-0.094621, 0.616381, -0.781742,
		-0.948723, 0.182082, 0.258399,
		40.934830, 38.793915, 43.024357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684566, 39.289219, 42.883163>,  <41.598938, 38.666454, 42.843479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684566, 39.289219, 42.883163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343712, 39.248726, 43.088539>,  <41.139198, 39.224430, 43.211765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.343712, 39.248726, 43.088539>,  <41.684566, 39.289219, 42.883163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343712, 39.248726, 43.088539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206570, 0.836377, 0.507743,
		-0.480825, 0.538726, -0.691796,
		-0.852136, -0.101231, 0.513435,
		41.088070, 39.218357, 43.242569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512646, 40.013439, 42.967731>,  <41.684566, 39.289219, 42.883163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512646, 40.013439, 42.967731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.274887, 39.812874, 43.219212>,  <41.132233, 39.692535, 43.370102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.274887, 39.812874, 43.219212>,  <41.512646, 40.013439, 42.967731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274887, 39.812874, 43.219212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055027, 0.805334, 0.590262,
		-0.802284, 0.316256, -0.506283,
		-0.594401, -0.501416, 0.628704,
		41.096565, 39.662449, 43.407822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036659, 40.500134, 43.045780>,  <41.512646, 40.013439, 42.967731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036659, 40.500134, 43.045780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082256, 40.243847, 43.349487>,  <41.109615, 40.090076, 43.531712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082256, 40.243847, 43.349487>,  <41.036659, 40.500134, 43.045780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082256, 40.243847, 43.349487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182848, 0.737664, 0.649937,
		-0.976510, -0.212919, -0.033065,
		0.113993, -0.640716, 0.759268,
		41.116455, 40.051632, 43.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662243, 40.904919, 43.671391>,  <41.036659, 40.500134, 43.045780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662243, 40.904919, 43.671391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912868, 40.619442, 43.796650>,  <41.063244, 40.448154, 43.871807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.912868, 40.619442, 43.796650>,  <40.662243, 40.904919, 43.671391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912868, 40.619442, 43.796650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307088, 0.595366, 0.742453,
		-0.716321, -0.369029, 0.592201,
		0.626563, -0.713692, 0.313149,
		41.100838, 40.405334, 43.890594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531746, 40.895401, 44.311707>,  <40.662243, 40.904919, 43.671391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531746, 40.895401, 44.311707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.866344, 40.676327, 44.304665>,  <41.067104, 40.544880, 44.300438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.866344, 40.676327, 44.304665>,  <40.531746, 40.895401, 44.311707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866344, 40.676327, 44.304665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205259, 0.283382, 0.936784,
		-0.508077, -0.787231, 0.349466,
		0.836497, -0.547689, -0.017606,
		41.117294, 40.512020, 44.299381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533627, 40.774437, 45.015564>,  <40.531746, 40.895401, 44.311707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533627, 40.774437, 45.015564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891953, 40.683357, 44.862900>,  <41.106949, 40.628712, 44.771301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891953, 40.683357, 44.862900>,  <40.533627, 40.774437, 45.015564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891953, 40.683357, 44.862900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438155, 0.308811, 0.844190,
		-0.074360, -0.923466, 0.376405,
		0.895819, -0.227697, -0.381658,
		41.160698, 40.615047, 44.748402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914814, 40.310616, 45.541557>,  <40.533627, 40.774437, 45.015564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914814, 40.310616, 45.541557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179150, 40.491425, 45.301903>,  <41.337753, 40.599911, 45.158112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179150, 40.491425, 45.301903>,  <40.914814, 40.310616, 45.541557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179150, 40.491425, 45.301903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508209, 0.317919, 0.800407,
		0.552277, -0.833430, -0.019627,
		0.660843, 0.452021, -0.599136,
		41.377403, 40.627029, 45.122162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551094, 40.293022, 45.880146>,  <40.914814, 40.310616, 45.541557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551094, 40.293022, 45.880146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.659908, 40.556934, 45.599953>,  <41.725197, 40.715282, 45.431835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.659908, 40.556934, 45.599953>,  <41.551094, 40.293022, 45.880146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659908, 40.556934, 45.599953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532190, 0.503330, 0.680760,
		0.801729, -0.557986, -0.214203,
		0.272040, 0.659781, -0.700488,
		41.741520, 40.754868, 45.389805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232044, 40.422916, 45.938004>,  <41.551094, 40.293022, 45.880146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232044, 40.422916, 45.938004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112057, 40.746315, 45.735481>,  <42.040066, 40.940353, 45.613968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112057, 40.746315, 45.735481>,  <42.232044, 40.422916, 45.938004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112057, 40.746315, 45.735481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313216, 0.584798, 0.748269,
		0.901064, 0.065870, -0.428654,
		-0.299965, 0.808500, -0.506309,
		42.022068, 40.988865, 45.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875961, 40.849224, 45.908245>,  <42.232044, 40.422916, 45.938004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875961, 40.849224, 45.908245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.533062, 41.055065, 45.901291>,  <42.327320, 41.178570, 45.897118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.533062, 41.055065, 45.901291>,  <42.875961, 40.849224, 45.908245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533062, 41.055065, 45.901291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385988, 0.664613, 0.639768,
		0.340781, 0.541732, -0.768372,
		-0.857252, 0.514603, -0.017385,
		42.275887, 41.209446, 45.896076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098473, 41.544704, 45.865829>,  <42.875961, 40.849224, 45.908245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098473, 41.544704, 45.865829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.722267, 41.571140, 45.999134>,  <42.496544, 41.587002, 46.079117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.722267, 41.571140, 45.999134>,  <43.098473, 41.544704, 45.865829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722267, 41.571140, 45.999134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307043, 0.585276, 0.750451,
		-0.145449, 0.808136, -0.570755,
		-0.940515, 0.066094, 0.333260,
		42.440113, 41.590969, 46.099113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.611931, 42.637749, 48.703968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970074, 42.468506, 48.759552>,  <35.184959, 42.366959, 48.792900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970074, 42.468506, 48.759552>,  <34.611931, 42.637749, 48.703968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970074, 42.468506, 48.759552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028977, -0.366711, -0.929884,
		0.444401, 0.828553, -0.340598,
		0.895359, -0.423111, 0.138958,
		35.238682, 42.341572, 48.801239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090298, 42.861591, 48.078796>,  <34.611931, 42.637749, 48.703968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090298, 42.861591, 48.078796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213371, 42.516598, 48.239517>,  <35.287216, 42.309601, 48.335949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213371, 42.516598, 48.239517>,  <35.090298, 42.861591, 48.078796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213371, 42.516598, 48.239517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180276, -0.361799, -0.914660,
		0.934254, 0.353863, 0.044166,
		0.307685, -0.862486, 0.401805,
		35.305676, 42.257851, 48.360058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575157, 42.561855, 47.584705>,  <35.090298, 42.861591, 48.078796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575157, 42.561855, 47.584705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436672, 42.273544, 47.824909>,  <35.353580, 42.100555, 47.969032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436672, 42.273544, 47.824909>,  <35.575157, 42.561855, 47.584705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436672, 42.273544, 47.824909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010997, -0.643169, -0.765645,
		0.938092, -0.258471, 0.230598,
		-0.346211, -0.720782, 0.600510,
		35.332809, 42.057308, 48.005062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010593, 42.109554, 47.453167>,  <35.575157, 42.561855, 47.584705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010593, 42.109554, 47.453167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716095, 41.878773, 47.594627>,  <35.539394, 41.740303, 47.679504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.716095, 41.878773, 47.594627>,  <36.010593, 42.109554, 47.453167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716095, 41.878773, 47.594627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081478, -0.594373, -0.800052,
		0.671791, -0.560220, 0.484613,
		-0.736245, -0.576953, 0.353649,
		35.495220, 41.705688, 47.700722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163887, 41.343655, 47.192921>,  <36.010593, 42.109554, 47.453167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163887, 41.343655, 47.192921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782658, 41.315201, 47.310623>,  <35.553921, 41.298130, 47.381245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782658, 41.315201, 47.310623>,  <36.163887, 41.343655, 47.192921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782658, 41.315201, 47.310623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182700, -0.639896, -0.746427,
		0.241393, -0.765162, 0.596872,
		-0.953074, -0.071134, 0.294261,
		35.496735, 41.293861, 47.398903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009785, 40.617241, 47.085571>,  <36.163887, 41.343655, 47.192921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009785, 40.617241, 47.085571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679012, 40.842083, 47.079449>,  <35.480549, 40.976986, 47.075775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679012, 40.842083, 47.079449>,  <36.009785, 40.617241, 47.085571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679012, 40.842083, 47.079449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338047, -0.518691, -0.785292,
		-0.449350, -0.644207, 0.618936,
		-0.826928, 0.562100, -0.015301,
		35.430935, 41.010715, 47.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573132, 40.153282, 46.847088>,  <36.009785, 40.617241, 47.085571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573132, 40.153282, 46.847088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341026, 40.478374, 46.826103>,  <35.201763, 40.673431, 46.813515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341026, 40.478374, 46.826103>,  <35.573132, 40.153282, 46.847088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341026, 40.478374, 46.826103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431396, -0.361358, -0.826631,
		-0.690788, -0.457036, 0.560294,
		-0.580267, 0.812736, -0.052458,
		35.166946, 40.722195, 46.810368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966949, 39.953548, 46.822201>,  <35.573132, 40.153282, 46.847088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966949, 39.953548, 46.822201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.967361, 40.315258, 46.651424>,  <34.967609, 40.532284, 46.548958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.967361, 40.315258, 46.651424>,  <34.966949, 39.953548, 46.822201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967361, 40.315258, 46.651424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413288, -0.388387, -0.823619,
		-0.910600, 0.177300, 0.373326,
		0.001033, 0.904279, -0.426942,
		34.967670, 40.586540, 46.523342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255836, 40.093197, 46.637547>,  <34.966949, 39.953548, 46.822201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255836, 40.093197, 46.637547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495510, 40.337643, 46.430656>,  <34.639313, 40.484310, 46.306522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495510, 40.337643, 46.430656>,  <34.255836, 40.093197, 46.637547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495510, 40.337643, 46.430656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536583, -0.172932, -0.825938,
		-0.594185, 0.772422, 0.224294,
		0.599185, 0.611112, -0.517222,
		34.675266, 40.520977, 46.275490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904953, 40.464729, 46.236870>,  <34.255836, 40.093197, 46.637547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904953, 40.464729, 46.236870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257862, 40.493557, 46.050793>,  <34.469608, 40.510853, 45.939144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257862, 40.493557, 46.050793>,  <33.904953, 40.464729, 46.236870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257862, 40.493557, 46.050793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412548, -0.357586, -0.837816,
		-0.226729, 0.931095, -0.285755,
		0.882269, 0.072070, -0.465196,
		34.522541, 40.515179, 45.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819744, 40.892612, 45.611034>,  <33.904953, 40.464729, 46.236870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819744, 40.892612, 45.611034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103306, 40.614899, 45.561356>,  <34.273441, 40.448269, 45.531548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103306, 40.614899, 45.561356>,  <33.819744, 40.892612, 45.611034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103306, 40.614899, 45.561356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436048, -0.293024, -0.850882,
		0.554364, 0.657346, -0.510467,
		0.708903, -0.694286, -0.124193,
		34.315975, 40.406612, 45.524097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952759, 41.006851, 44.905354>,  <33.819744, 40.892612, 45.611034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952759, 41.006851, 44.905354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124397, 40.651611, 44.971268>,  <34.227383, 40.438469, 45.010815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124397, 40.651611, 44.971268>,  <33.952759, 41.006851, 44.905354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124397, 40.651611, 44.971268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272872, -0.301365, -0.913630,
		0.861054, 0.347074, -0.371653,
		0.429101, -0.888098, 0.164785,
		34.253128, 40.385181, 45.020702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413612, 40.831173, 44.389782>,  <33.952759, 41.006851, 44.905354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413612, 40.831173, 44.389782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348820, 40.466301, 44.540352>,  <34.309944, 40.247379, 44.630695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348820, 40.466301, 44.540352>,  <34.413612, 40.831173, 44.389782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348820, 40.466301, 44.540352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102842, -0.363782, -0.925790,
		0.981420, -0.188675, -0.034883,
		-0.161984, -0.912176, 0.376426,
		34.300224, 40.192650, 44.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951241, 40.257416, 44.003075>,  <34.413612, 40.831173, 44.389782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951241, 40.257416, 44.003075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622742, 40.085999, 44.153751>,  <34.425640, 39.983147, 44.244156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622742, 40.085999, 44.153751>,  <34.951241, 40.257416, 44.003075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622742, 40.085999, 44.153751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129026, -0.503619, -0.854236,
		0.555787, -0.750146, 0.358305,
		-0.821251, -0.428542, 0.376693,
		34.376366, 39.957436, 44.266758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583660, 40.137321, 43.675377>,  <34.951241, 40.257416, 44.003075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583660, 40.137321, 43.675377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785484, 40.328556, 43.387806>,  <35.906578, 40.443295, 43.215263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785484, 40.328556, 43.387806>,  <35.583660, 40.137321, 43.675377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785484, 40.328556, 43.387806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162147, 0.765403, 0.622789,
		0.848015, -0.430805, 0.308670,
		0.504557, 0.478085, -0.718927,
		35.936852, 40.471981, 43.172127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206738, 40.320328, 43.946262>,  <35.583660, 40.137321, 43.675377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206738, 40.320328, 43.946262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184376, 40.553036, 43.621693>,  <36.170959, 40.692661, 43.426949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184376, 40.553036, 43.621693>,  <36.206738, 40.320328, 43.946262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184376, 40.553036, 43.621693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348745, 0.772888, 0.530114,
		0.935549, -0.253348, -0.246095,
		-0.055901, 0.581772, -0.811429,
		36.167606, 40.727566, 43.378265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872501, 40.734871, 43.844913>,  <36.206738, 40.320328, 43.946262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872501, 40.734871, 43.844913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591026, 40.957340, 43.668056>,  <36.422142, 41.090824, 43.561943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591026, 40.957340, 43.668056>,  <36.872501, 40.734871, 43.844913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591026, 40.957340, 43.668056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240760, 0.772131, 0.588089,
		0.668474, 0.307381, -0.677244,
		-0.703688, 0.556175, -0.442144,
		36.379921, 41.124191, 43.535412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161140, 41.350906, 43.838284>,  <36.872501, 40.734871, 43.844913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161140, 41.350906, 43.838284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785809, 41.445633, 43.737522>,  <36.560612, 41.502468, 43.677063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785809, 41.445633, 43.737522>,  <37.161140, 41.350906, 43.838284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785809, 41.445633, 43.737522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111791, 0.897262, 0.427110,
		0.327175, 0.372608, -0.868401,
		-0.938328, 0.236819, -0.251908,
		36.504311, 41.516678, 43.661949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209778, 42.042454, 43.632435>,  <37.161140, 41.350906, 43.838284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209778, 42.042454, 43.632435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822975, 41.990036, 43.719814>,  <36.590893, 41.958584, 43.772243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822975, 41.990036, 43.719814>,  <37.209778, 42.042454, 43.632435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822975, 41.990036, 43.719814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017202, 0.821983, 0.569252,
		-0.254161, 0.554229, -0.792611,
		-0.967009, -0.131047, 0.218450,
		36.532871, 41.950722, 43.785351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811775, 42.709679, 43.570297>,  <37.209778, 42.042454, 43.632435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811775, 42.709679, 43.570297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599747, 42.492538, 43.830864>,  <36.472530, 42.362255, 43.987202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599747, 42.492538, 43.830864>,  <36.811775, 42.709679, 43.570297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599747, 42.492538, 43.830864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151543, 0.816498, 0.557105,
		-0.834301, 0.196589, -0.515067,
		-0.530072, -0.542848, 0.651413,
		36.440723, 42.329685, 44.026287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288116, 43.228344, 43.863308>,  <36.811775, 42.709679, 43.570297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288116, 43.228344, 43.863308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304066, 42.921974, 44.119984>,  <36.313637, 42.738152, 44.273987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304066, 42.921974, 44.119984>,  <36.288116, 43.228344, 43.863308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304066, 42.921974, 44.119984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040351, 0.640440, 0.766947,
		-0.998389, -0.056476, -0.005367,
		0.039876, -0.765929, 0.641687,
		36.316029, 42.692196, 44.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724522, 43.340668, 44.408409>,  <36.288116, 43.228344, 43.863308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724522, 43.340668, 44.408409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988762, 43.077156, 44.552422>,  <36.147305, 42.919048, 44.638828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988762, 43.077156, 44.552422>,  <35.724522, 43.340668, 44.408409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988762, 43.077156, 44.552422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122591, 0.567785, 0.813998,
		-0.740662, -0.493590, 0.455838,
		0.660599, -0.658779, 0.360027,
		36.186943, 42.879524, 44.660431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486229, 43.256130, 45.084747>,  <35.724522, 43.340668, 44.408409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486229, 43.256130, 45.084747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869255, 43.142067, 45.101517>,  <36.099072, 43.073627, 45.111576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869255, 43.142067, 45.101517>,  <35.486229, 43.256130, 45.084747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869255, 43.142067, 45.101517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117383, 0.518666, 0.846881,
		-0.263239, -0.806020, 0.530128,
		0.957562, -0.285161, 0.041920,
		36.156525, 43.056519, 45.114094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603451, 42.845146, 45.695381>,  <35.486229, 43.256130, 45.084747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603451, 42.845146, 45.695381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971500, 42.974659, 45.607254>,  <36.192329, 43.052368, 45.554379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971500, 42.974659, 45.607254>,  <35.603451, 42.845146, 45.695381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971500, 42.974659, 45.607254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092831, 0.366204, 0.925893,
		0.380470, -0.872386, 0.306895,
		0.920122, 0.323785, -0.220314,
		36.247536, 43.071793, 45.541161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983994, 42.634346, 46.276299>,  <35.603451, 42.845146, 45.695381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983994, 42.634346, 46.276299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204697, 42.906902, 46.083935>,  <36.337120, 43.070435, 45.968517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204697, 42.906902, 46.083935>,  <35.983994, 42.634346, 46.276299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204697, 42.906902, 46.083935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404697, 0.285443, 0.868759,
		0.729235, -0.673967, -0.118260,
		0.551758, 0.681389, -0.480907,
		36.370224, 43.111320, 45.939663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657269, 42.590637, 46.561131>,  <35.983994, 42.634346, 46.276299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657269, 42.590637, 46.561131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648476, 42.956543, 46.399776>,  <36.643200, 43.176086, 46.302963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648476, 42.956543, 46.399776>,  <36.657269, 42.590637, 46.561131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648476, 42.956543, 46.399776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467528, 0.366051, 0.804627,
		0.883705, -0.170901, -0.435728,
		-0.021987, 0.914767, -0.403382,
		36.641880, 43.230972, 46.278763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353333, 42.866512, 46.707520>,  <36.657269, 42.590637, 46.561131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353333, 42.866512, 46.707520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134304, 43.190208, 46.622387>,  <37.002888, 43.384426, 46.571308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134304, 43.190208, 46.622387>,  <37.353333, 42.866512, 46.707520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134304, 43.190208, 46.622387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349688, 0.452380, 0.820409,
		0.760189, 0.374807, -0.530690,
		-0.547569, 0.809242, -0.212829,
		36.970032, 43.432980, 46.558537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778793, 43.393085, 46.592014>,  <37.353333, 42.866512, 46.707520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778793, 43.393085, 46.592014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429111, 43.564903, 46.682571>,  <37.219303, 43.667992, 46.736904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.429111, 43.564903, 46.682571>,  <37.778793, 43.393085, 46.592014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429111, 43.564903, 46.682571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464216, 0.602693, 0.649049,
		0.142347, 0.672500, -0.726279,
		-0.874209, 0.429540, 0.226394,
		37.166847, 43.693764, 46.750488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229385, 43.362843, 46.017273>,  <37.778793, 43.393085, 46.592014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229385, 43.362843, 46.017273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601116, 43.455997, 45.902657>,  <38.824154, 43.511890, 45.833885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601116, 43.455997, 45.902657>,  <38.229385, 43.362843, 46.017273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601116, 43.455997, 45.902657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108166, -0.570271, -0.814304,
		-0.353052, 0.787752, -0.504779,
		0.929330, 0.232892, -0.286544,
		38.879913, 43.525864, 45.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241291, 43.652027, 45.320766>,  <38.229385, 43.362843, 46.017273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241291, 43.652027, 45.320766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590347, 43.470211, 45.392208>,  <38.799782, 43.361122, 45.435074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.590347, 43.470211, 45.392208>,  <38.241291, 43.652027, 45.320766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590347, 43.470211, 45.392208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157911, -0.608685, -0.777539,
		0.462132, 0.650308, -0.602938,
		0.872639, -0.454536, 0.178602,
		38.852139, 43.333851, 45.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596165, 43.740093, 44.692284>,  <38.241291, 43.652027, 45.320766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596165, 43.740093, 44.692284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807480, 43.461281, 44.886215>,  <38.934269, 43.293995, 45.002575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807480, 43.461281, 44.886215>,  <38.596165, 43.740093, 44.692284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807480, 43.461281, 44.886215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073079, -0.531570, -0.843856,
		0.845912, 0.481233, -0.229886,
		0.528292, -0.697028, 0.484829,
		38.965969, 43.252171, 45.031666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305042, 43.647587, 44.409698>,  <38.596165, 43.740093, 44.692284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305042, 43.647587, 44.409698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182709, 43.295570, 44.555019>,  <39.109306, 43.084358, 44.642212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182709, 43.295570, 44.555019>,  <39.305042, 43.647587, 44.409698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182709, 43.295570, 44.555019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385701, -0.463392, -0.797811,
		0.870459, -0.103876, 0.481156,
		-0.305838, -0.880044, 0.363299,
		39.090958, 43.031559, 44.664009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760529, 43.200897, 44.069046>,  <39.305042, 43.647587, 44.409698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760529, 43.200897, 44.069046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528824, 42.938179, 44.262157>,  <39.389801, 42.780548, 44.378025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528824, 42.938179, 44.262157>,  <39.760529, 43.200897, 44.069046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528824, 42.938179, 44.262157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235647, -0.701899, -0.672167,
		0.780340, -0.275594, 0.561354,
		-0.579259, -0.656800, 0.482776,
		39.355045, 42.741138, 44.406990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151802, 42.576248, 44.127621>,  <39.760529, 43.200897, 44.069046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151802, 42.576248, 44.127621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764450, 42.481838, 44.159958>,  <39.532040, 42.425194, 44.179359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764450, 42.481838, 44.159958>,  <40.151802, 42.576248, 44.127621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764450, 42.481838, 44.159958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137355, -0.774887, -0.616995,
		0.208270, -0.586381, 0.782803,
		-0.968378, -0.236024, 0.080843,
		39.473938, 42.411030, 44.184212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069782, 41.766315, 44.171539>,  <40.151802, 42.576248, 44.127621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069782, 41.766315, 44.171539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696693, 41.851124, 44.054871>,  <39.472839, 41.902008, 43.984871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696693, 41.851124, 44.054871>,  <40.069782, 41.766315, 44.171539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696693, 41.851124, 44.054871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016349, -0.783171, -0.621591,
		-0.360221, -0.584542, 0.727016,
		-0.932724, 0.212024, -0.291672,
		39.416878, 41.914730, 43.967369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746204, 41.108643, 44.065186>,  <40.069782, 41.766315, 44.171539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746204, 41.108643, 44.065186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548656, 41.388542, 43.858715>,  <39.430126, 41.556484, 43.734833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548656, 41.388542, 43.858715>,  <39.746204, 41.108643, 44.065186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548656, 41.388542, 43.858715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088479, -0.630985, -0.770733,
		-0.865023, -0.334971, 0.373538,
		-0.493870, 0.699751, -0.516179,
		39.400494, 41.598469, 43.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264957, 40.724163, 43.707417>,  <39.746204, 41.108643, 44.065186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264957, 40.724163, 43.707417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.303459, 41.074554, 43.518353>,  <39.326561, 41.284790, 43.404915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.303459, 41.074554, 43.518353>,  <39.264957, 40.724163, 43.707417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303459, 41.074554, 43.518353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182680, -0.451249, -0.873500,
		-0.978450, 0.170421, 0.116590,
		0.096251, 0.875974, -0.472657,
		39.332336, 41.337345, 43.376556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662636, 40.866081, 43.226822>,  <39.264957, 40.724163, 43.707417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662636, 40.866081, 43.226822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958534, 41.091652, 43.079983>,  <39.136074, 41.226994, 42.991879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958534, 41.091652, 43.079983>,  <38.662636, 40.866081, 43.226822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958534, 41.091652, 43.079983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229330, -0.301595, -0.925445,
		-0.632599, 0.768781, -0.093779,
		0.739748, 0.563929, -0.367093,
		39.180458, 41.260830, 42.969856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362110, 41.146267, 42.680111>,  <38.662636, 40.866081, 43.226822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362110, 41.146267, 42.680111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745972, 41.211857, 42.588749>,  <38.976288, 41.251209, 42.533932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745972, 41.211857, 42.588749>,  <38.362110, 41.146267, 42.680111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745972, 41.211857, 42.588749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140895, -0.422550, -0.895321,
		-0.243322, 0.891383, -0.382401,
		0.959658, 0.163973, -0.228407,
		39.033871, 41.261047, 42.520226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346199, 41.400368, 41.948235>,  <38.362110, 41.146267, 42.680111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346199, 41.400368, 41.948235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.725601, 41.289448, 42.009480>,  <38.953243, 41.222897, 42.046227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.725601, 41.289448, 42.009480>,  <38.346199, 41.400368, 41.948235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725601, 41.289448, 42.009480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000127, -0.483695, -0.875237,
		0.316760, 0.830148, -0.458822,
		0.948506, -0.277299, 0.153110,
		39.010155, 41.206257, 42.055412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707363, 41.554672, 41.329578>,  <38.346199, 41.400368, 41.948235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707363, 41.554672, 41.329578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909061, 41.273735, 41.530560>,  <39.030079, 41.105175, 41.651146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909061, 41.273735, 41.530560>,  <38.707363, 41.554672, 41.329578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909061, 41.273735, 41.530560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002970, -0.583243, -0.812293,
		0.863557, 0.408100, -0.296182,
		0.504242, -0.702341, 0.502451,
		39.060333, 41.063034, 41.681293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257774, 41.459442, 40.854420>,  <38.707363, 41.554672, 41.329578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257774, 41.459442, 40.854420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244137, 41.132729, 41.084797>,  <39.235954, 40.936703, 41.223022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244137, 41.132729, 41.084797>,  <39.257774, 41.459442, 40.854420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244137, 41.132729, 41.084797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168326, -0.572735, -0.802272,
		0.985141, 0.069591, 0.157014,
		-0.034096, -0.816781, 0.575939,
		39.233910, 40.887695, 41.257580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.115385, 27.074942, 35.210243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966751, 27.005140, 34.845501>,  <27.877571, 26.963259, 34.626656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966751, 27.005140, 34.845501>,  <28.115385, 27.074942, 35.210243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966751, 27.005140, 34.845501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253110, 0.964012, -0.081343,
		0.893230, 0.200573, -0.402381,
		-0.371585, -0.174505, -0.911851,
		27.855276, 26.952789, 34.571945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389969, 27.539272, 34.711948>,  <28.115385, 27.074942, 35.210243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389969, 27.539272, 34.711948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052216, 27.434807, 34.524841>,  <27.849564, 27.372128, 34.412575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052216, 27.434807, 34.524841>,  <28.389969, 27.539272, 34.711948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052216, 27.434807, 34.524841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155547, 0.955032, -0.252427,
		0.512662, -0.140384, -0.847036,
		-0.844383, -0.261164, -0.467772,
		27.798901, 27.356457, 34.384510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434189, 27.926771, 34.059937>,  <28.389969, 27.539272, 34.711948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434189, 27.926771, 34.059937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058374, 27.831440, 34.158302>,  <27.832886, 27.774242, 34.217323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058374, 27.831440, 34.158302>,  <28.434189, 27.926771, 34.059937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058374, 27.831440, 34.158302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301753, 0.915691, -0.265433,
		-0.161924, -0.323590, -0.932239,
		-0.939535, -0.238326, 0.245916,
		27.776514, 27.759943, 34.232079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174843, 28.549696, 33.898243>,  <28.434189, 27.926771, 34.059937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174843, 28.549696, 33.898243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834360, 28.371511, 34.009247>,  <27.630072, 28.264601, 34.075848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834360, 28.371511, 34.009247>,  <28.174843, 28.549696, 33.898243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834360, 28.371511, 34.009247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432648, 0.894896, 0.109440,
		-0.297094, -0.026908, -0.954469,
		-0.851205, -0.445463, 0.277510,
		27.578999, 28.237873, 34.092499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597599, 28.921553, 33.516117>,  <28.174843, 28.549696, 33.898243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597599, 28.921553, 33.516117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445040, 28.720852, 33.826672>,  <27.353504, 28.600431, 34.013004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445040, 28.720852, 33.826672>,  <27.597599, 28.921553, 33.516117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445040, 28.720852, 33.826672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395543, 0.847685, 0.353519,
		-0.835513, -0.172264, -0.521770,
		-0.381398, -0.501752, 0.776390,
		27.330620, 28.570326, 34.059589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968601, 29.157366, 33.486694>,  <27.597599, 28.921553, 33.516117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968601, 29.157366, 33.486694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043146, 29.021238, 33.855358>,  <27.087873, 28.939562, 34.076557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043146, 29.021238, 33.855358>,  <26.968601, 29.157366, 33.486694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043146, 29.021238, 33.855358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450032, 0.804322, 0.387992,
		-0.873351, -0.487081, -0.003261,
		0.186361, -0.340320, 0.921657,
		27.099054, 28.919142, 34.131855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349697, 29.107103, 33.937794>,  <26.968601, 29.157366, 33.486694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349697, 29.107103, 33.937794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664865, 29.128607, 34.183163>,  <26.853966, 29.141508, 34.330383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.664865, 29.128607, 34.183163>,  <26.349697, 29.107103, 33.937794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664865, 29.128607, 34.183163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396557, 0.806407, 0.438691,
		-0.471089, -0.588912, 0.656702,
		0.787920, 0.053757, 0.613427,
		26.901241, 29.144733, 34.367191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092581, 29.369730, 34.513546>,  <26.349697, 29.107103, 33.937794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092581, 29.369730, 34.513546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482054, 29.428854, 34.582932>,  <26.715738, 29.464329, 34.624561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.482054, 29.428854, 34.582932>,  <26.092581, 29.369730, 34.513546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482054, 29.428854, 34.582932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207978, 0.887537, 0.411124,
		-0.093188, -0.436382, 0.894923,
		0.973685, 0.147812, 0.173465,
		26.774158, 29.473198, 34.634972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017481, 29.762554, 35.087749>,  <26.092581, 29.369730, 34.513546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017481, 29.762554, 35.087749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391872, 29.823530, 34.960812>,  <26.616507, 29.860115, 34.884647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391872, 29.823530, 34.960812>,  <26.017481, 29.762554, 35.087749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391872, 29.823530, 34.960812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004528, 0.906535, 0.422106,
		0.352029, -0.393646, 0.849187,
		0.935978, 0.152438, -0.317344,
		26.672667, 29.869261, 34.865608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340794, 30.241777, 35.591427>,  <26.017481, 29.762554, 35.087749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340794, 30.241777, 35.591427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.590731, 30.232826, 35.279255>,  <26.740692, 30.227455, 35.091953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.590731, 30.232826, 35.279255>,  <26.340794, 30.241777, 35.591427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590731, 30.232826, 35.279255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214503, 0.966044, 0.144037,
		0.750707, -0.257405, 0.608426,
		0.624842, -0.022379, -0.780430,
		26.778183, 30.226112, 35.045124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889574, 30.517513, 35.860344>,  <26.340794, 30.241777, 35.591427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889574, 30.517513, 35.860344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929049, 30.561531, 35.464737>,  <26.952734, 30.587942, 35.227375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.929049, 30.561531, 35.464737>,  <26.889574, 30.517513, 35.860344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929049, 30.561531, 35.464737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377408, 0.915476, 0.139523,
		0.920774, -0.387031, 0.048814,
		0.098688, 0.110046, -0.989015,
		26.958654, 30.594545, 35.168034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468983, 30.931221, 35.758636>,  <26.889574, 30.517513, 35.860344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468983, 30.931221, 35.758636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267946, 31.000669, 35.419872>,  <27.147324, 31.042339, 35.216614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267946, 31.000669, 35.419872>,  <27.468983, 30.931221, 35.758636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267946, 31.000669, 35.419872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110395, 0.984495, 0.136316,
		0.857447, -0.024984, -0.513965,
		-0.502591, 0.173623, -0.846911,
		27.117168, 31.052757, 35.165798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735435, 31.566818, 35.592899>,  <27.468983, 30.931221, 35.758636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735435, 31.566818, 35.592899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414364, 31.521128, 35.358753>,  <27.221722, 31.493713, 35.218266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414364, 31.521128, 35.358753>,  <27.735435, 31.566818, 35.592899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414364, 31.521128, 35.358753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112908, 0.992843, -0.038914,
		0.585625, 0.034858, -0.809832,
		-0.802680, -0.114226, -0.585370,
		27.173559, 31.486860, 35.183144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891447, 32.023983, 35.085972>,  <27.735435, 31.566818, 35.592899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891447, 32.023983, 35.085972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499723, 31.959696, 35.036785>,  <27.264688, 31.921124, 35.007271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499723, 31.959696, 35.036785>,  <27.891447, 32.023983, 35.085972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499723, 31.959696, 35.036785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160475, 0.986968, -0.011924,
		0.123282, 0.008056, -0.992339,
		-0.979311, -0.160716, -0.122969,
		27.205931, 31.911482, 34.999893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578470, 32.496876, 34.532780>,  <27.891447, 32.023983, 35.085972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578470, 32.496876, 34.532780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262907, 32.402622, 34.759796>,  <27.073568, 32.346069, 34.896004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262907, 32.402622, 34.759796>,  <27.578470, 32.496876, 34.532780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262907, 32.402622, 34.759796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268495, 0.962915, 0.026559,
		-0.552750, -0.131429, -0.822918,
		-0.788909, -0.235630, 0.567539,
		27.026234, 32.331932, 34.930058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020468, 32.979614, 34.242821>,  <27.578470, 32.496876, 34.532780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020468, 32.979614, 34.242821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913525, 32.862003, 34.609879>,  <26.849358, 32.791435, 34.830112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913525, 32.862003, 34.609879>,  <27.020468, 32.979614, 34.242821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913525, 32.862003, 34.609879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271533, 0.936705, 0.221027,
		-0.924548, -0.190077, -0.330276,
		-0.267359, -0.294031, 0.917641,
		26.833317, 32.773792, 34.885170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371489, 33.292931, 34.305332>,  <27.020468, 32.979614, 34.242821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371489, 33.292931, 34.305332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519392, 33.216290, 34.668995>,  <26.608133, 33.170303, 34.887192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519392, 33.216290, 34.668995>,  <26.371489, 33.292931, 34.305332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519392, 33.216290, 34.668995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326335, 0.889384, 0.320159,
		-0.869934, -0.415071, 0.266329,
		0.369757, -0.191604, 0.909157,
		26.630320, 33.158810, 34.941742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891109, 33.600910, 34.659122>,  <26.371489, 33.292931, 34.305332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891109, 33.600910, 34.659122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174156, 33.550541, 34.937237>,  <26.343985, 33.520317, 35.104103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174156, 33.550541, 34.937237>,  <25.891109, 33.600910, 34.659122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174156, 33.550541, 34.937237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355368, 0.787064, 0.504225,
		-0.610728, -0.603881, 0.512191,
		0.707619, -0.125928, 0.695282,
		26.386442, 33.512764, 35.145821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492783, 33.738113, 35.225822>,  <25.891109, 33.600910, 34.659122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492783, 33.738113, 35.225822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882507, 33.755070, 35.314297>,  <26.116343, 33.765244, 35.367382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.882507, 33.755070, 35.314297>,  <25.492783, 33.738113, 35.225822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882507, 33.755070, 35.314297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126255, 0.916092, 0.380571,
		-0.186489, -0.398720, 0.897911,
		0.974311, 0.042393, 0.221182,
		26.174801, 33.767788, 35.380650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538017, 34.069489, 35.935394>,  <25.492783, 33.738113, 35.225822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538017, 34.069489, 35.935394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909861, 34.113480, 35.794693>,  <26.132967, 34.139874, 35.710274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909861, 34.113480, 35.794693>,  <25.538017, 34.069489, 35.935394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909861, 34.113480, 35.794693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053343, 0.904235, 0.423691,
		0.364666, -0.412631, 0.834718,
		0.929609, 0.109979, -0.351754,
		26.188744, 34.146473, 35.689167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161386, 34.132393, 36.547195>,  <25.538017, 34.069489, 35.935394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161386, 34.132393, 36.547195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265142, 34.317062, 36.207882>,  <26.327396, 34.427864, 36.004295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265142, 34.317062, 36.207882>,  <26.161386, 34.132393, 36.547195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265142, 34.317062, 36.207882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074897, 0.866081, 0.494260,
		0.962864, -0.191739, 0.190074,
		0.259389, 0.461670, -0.848280,
		26.342958, 34.455563, 35.953400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651062, 34.612465, 36.707207>,  <26.161386, 34.132393, 36.547195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651062, 34.612465, 36.707207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520855, 34.747944, 36.354088>,  <26.442730, 34.829231, 36.142216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520855, 34.747944, 36.354088>,  <26.651062, 34.612465, 36.707207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520855, 34.747944, 36.354088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145620, 0.940462, 0.307126,
		0.934256, -0.028578, -0.355457,
		-0.325517, 0.338695, -0.882793,
		26.423201, 34.849552, 36.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154924, 35.055679, 36.389462>,  <26.651062, 34.612465, 36.707207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154924, 35.055679, 36.389462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801706, 35.188370, 36.256683>,  <26.589775, 35.267986, 36.177017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.801706, 35.188370, 36.256683>,  <27.154924, 35.055679, 36.389462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801706, 35.188370, 36.256683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204423, 0.908607, 0.364204,
		0.422427, 0.253751, -0.870153,
		-0.883044, 0.331729, -0.331948,
		26.536793, 35.287888, 36.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624079, 34.640163, 36.878586>,  <27.154924, 35.055679, 36.389462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624079, 34.640163, 36.878586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883541, 34.832756, 37.114357>,  <28.039219, 34.948311, 37.255817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.883541, 34.832756, 37.114357>,  <27.624079, 34.640163, 36.878586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883541, 34.832756, 37.114357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609428, -0.792498, -0.023311,
		0.455895, 0.374333, -0.807486,
		0.648658, 0.481478, 0.589425,
		28.078138, 34.977200, 37.291183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309135, 34.563110, 36.670219>,  <27.624079, 34.640163, 36.878586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309135, 34.563110, 36.670219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337402, 34.563210, 37.069218>,  <28.354362, 34.563267, 37.308617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337402, 34.563210, 37.069218>,  <28.309135, 34.563110, 36.670219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337402, 34.563210, 37.069218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507252, -0.861057, -0.035726,
		0.858895, 0.508509, -0.060972,
		0.070668, 0.000244, 0.997500,
		28.358603, 34.563282, 37.368469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966385, 34.496101, 36.836353>,  <28.309135, 34.563110, 36.670219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966385, 34.496101, 36.836353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789848, 34.349098, 37.163807>,  <28.683926, 34.260895, 37.360279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789848, 34.349098, 37.163807>,  <28.966385, 34.496101, 36.836353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789848, 34.349098, 37.163807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596192, -0.801914, -0.038583,
		0.670650, 0.471033, 0.573024,
		-0.441342, -0.367508, 0.818630,
		28.657446, 34.238846, 37.409397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547926, 34.135262, 37.171001>,  <28.966385, 34.496101, 36.836353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547926, 34.135262, 37.171001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220282, 34.010334, 37.363464>,  <29.023695, 33.935379, 37.478943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220282, 34.010334, 37.363464>,  <29.547926, 34.135262, 37.171001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220282, 34.010334, 37.363464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431688, -0.887988, 0.158504,
		0.377760, 0.337543, 0.862185,
		-0.819111, -0.312318, 0.481159,
		28.974548, 33.916637, 37.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737286, 33.826702, 37.814411>,  <29.547926, 34.135262, 37.171001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737286, 33.826702, 37.814411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377300, 33.683067, 37.715515>,  <29.161310, 33.596886, 37.656178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377300, 33.683067, 37.715515>,  <29.737286, 33.826702, 37.814411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377300, 33.683067, 37.715515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330018, -0.931679, 0.151861,
		-0.284881, 0.055074, 0.956979,
		-0.899961, -0.359083, -0.247242,
		29.107311, 33.575344, 37.641342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673388, 33.353889, 38.472164>,  <29.737286, 33.826702, 37.814411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673388, 33.353889, 38.472164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400379, 33.268841, 38.192463>,  <29.236574, 33.217812, 38.024643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400379, 33.268841, 38.192463>,  <29.673388, 33.353889, 38.472164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400379, 33.268841, 38.192463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044646, -0.967089, 0.250490,
		-0.729499, 0.139746, 0.669553,
		-0.682523, -0.212625, -0.699252,
		29.195621, 33.205055, 37.982689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200613, 32.800419, 38.819965>,  <29.673388, 33.353889, 38.472164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200613, 32.800419, 38.819965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164139, 32.763401, 38.423355>,  <29.142254, 32.741192, 38.185390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164139, 32.763401, 38.423355>,  <29.200613, 32.800419, 38.819965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164139, 32.763401, 38.423355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147993, -0.985875, 0.078404,
		-0.984776, -0.139590, 0.103591,
		-0.091183, -0.092541, -0.991525,
		29.136784, 32.735638, 38.125896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626957, 32.396305, 38.691757>,  <29.200613, 32.800419, 38.819965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626957, 32.396305, 38.691757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855135, 32.341587, 38.367813>,  <28.992043, 32.308754, 38.173447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855135, 32.341587, 38.367813>,  <28.626957, 32.396305, 38.691757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855135, 32.341587, 38.367813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096563, -0.990364, 0.099269,
		-0.815638, 0.021575, -0.578160,
		0.570447, -0.136797, -0.809862,
		29.026270, 32.300549, 38.124855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274923, 31.873564, 38.393692>,  <28.626957, 32.396305, 38.691757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274923, 31.873564, 38.393692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599955, 31.901371, 38.162216>,  <28.794973, 31.918055, 38.023331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599955, 31.901371, 38.162216>,  <28.274923, 31.873564, 38.393692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599955, 31.901371, 38.162216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028353, -0.986972, -0.158375,
		-0.582160, 0.145100, -0.800023,
		0.812580, 0.069516, -0.578689,
		28.843729, 31.922226, 37.988609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155916, 31.390806, 37.866943>,  <28.274923, 31.873564, 38.393692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155916, 31.390806, 37.866943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552294, 31.442802, 37.853493>,  <28.790121, 31.473999, 37.845425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552294, 31.442802, 37.853493>,  <28.155916, 31.390806, 37.866943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552294, 31.442802, 37.853493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118893, -0.965874, -0.230112,
		-0.062387, 0.224031, -0.972583,
		0.990945, 0.129989, -0.033622,
		28.849577, 31.481800, 37.843407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375294, 31.186304, 37.216557>,  <28.155916, 31.390806, 37.866943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375294, 31.186304, 37.216557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675411, 31.161879, 37.479866>,  <28.855482, 31.147224, 37.637852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.675411, 31.161879, 37.479866>,  <28.375294, 31.186304, 37.216557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675411, 31.161879, 37.479866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071192, -0.982473, -0.172278,
		0.657258, 0.176123, -0.732798,
		0.750296, -0.061062, 0.658276,
		28.900499, 31.143560, 37.677349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014818, 30.796486, 36.868484>,  <28.375294, 31.186304, 37.216557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014818, 30.796486, 36.868484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090872, 30.783449, 37.260971>,  <29.136503, 30.775627, 37.496464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.090872, 30.783449, 37.260971>,  <29.014818, 30.796486, 36.868484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090872, 30.783449, 37.260971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336281, -0.936827, -0.096281,
		0.922369, 0.348271, -0.167161,
		0.190133, -0.032594, 0.981217,
		29.147911, 30.773670, 37.555336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749454, 30.540154, 36.994286>,  <29.014818, 30.796486, 36.868484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749454, 30.540154, 36.994286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528660, 30.469219, 37.320198>,  <29.396183, 30.426659, 37.515747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528660, 30.469219, 37.320198>,  <29.749454, 30.540154, 36.994286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528660, 30.469219, 37.320198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283299, -0.958885, -0.016774,
		0.784255, 0.221567, 0.579528,
		-0.551984, -0.177334, 0.814780,
		29.363064, 30.416019, 37.564632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014858, 30.019091, 37.202171>,  <29.749454, 30.540154, 36.994286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014858, 30.019091, 37.202171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716829, 30.003426, 37.468506>,  <29.538012, 29.994026, 37.628307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716829, 30.003426, 37.468506>,  <30.014858, 30.019091, 37.202171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716829, 30.003426, 37.468506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196047, -0.967037, 0.162498,
		0.637523, 0.251607, 0.728188,
		-0.745070, -0.039163, 0.665835,
		29.493309, 29.991676, 37.668255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285566, 29.610914, 37.611031>,  <30.014858, 30.019091, 37.202171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285566, 29.610914, 37.611031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897434, 29.594965, 37.706425>,  <29.664555, 29.585396, 37.763660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897434, 29.594965, 37.706425>,  <30.285566, 29.610914, 37.611031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897434, 29.594965, 37.706425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061987, -0.994369, 0.085956,
		0.233711, 0.098188, 0.967336,
		-0.970328, -0.039874, 0.238481,
		29.606337, 29.583002, 37.777969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254148, 29.164080, 38.230728>,  <30.285566, 29.610914, 37.611031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254148, 29.164080, 38.230728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894592, 29.158180, 38.055557>,  <29.678858, 29.154640, 37.950455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.894592, 29.158180, 38.055557>,  <30.254148, 29.164080, 38.230728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894592, 29.158180, 38.055557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043318, -0.997528, -0.055323,
		-0.436026, -0.068700, 0.897308,
		-0.898891, -0.014747, -0.437924,
		29.624926, 29.153755, 37.924179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864235, 28.692032, 38.645943>,  <30.254148, 29.164080, 38.230728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864235, 28.692032, 38.645943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685793, 28.712622, 38.288544>,  <29.578728, 28.724976, 38.074104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685793, 28.712622, 38.288544>,  <29.864235, 28.692032, 38.645943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685793, 28.712622, 38.288544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071424, -0.997208, -0.021791,
		-0.892126, 0.054096, 0.448536,
		-0.446105, 0.051476, -0.893499,
		29.551962, 28.728064, 38.020493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147526, 28.342358, 38.661766>,  <29.864235, 28.692032, 38.645943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147526, 28.342358, 38.661766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304796, 28.346893, 38.294010>,  <29.399158, 28.349615, 38.073357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304796, 28.346893, 38.294010>,  <29.147526, 28.342358, 38.661766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304796, 28.346893, 38.294010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109714, -0.992201, -0.059156,
		-0.912895, 0.124129, -0.388864,
		0.393174, 0.011340, -0.919394,
		29.422749, 28.350296, 38.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512228, 27.755274, 38.634922>,  <29.147526, 28.342358, 38.661766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512228, 27.755274, 38.634922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150276, 27.674231, 38.784664>,  <27.933105, 27.625605, 38.874508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150276, 27.674231, 38.784664>,  <28.512228, 27.755274, 38.634922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150276, 27.674231, 38.784664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405149, 0.679679, -0.611467,
		-0.130553, -0.704974, -0.697114,
		-0.904881, -0.202606, 0.374354,
		27.878811, 27.613449, 38.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.066639, 42.303898, 46.056828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.745564, 42.146282, 46.235905>,  <42.552917, 42.051712, 46.343349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.745564, 42.146282, 46.235905>,  <43.066639, 42.303898, 46.056828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745564, 42.146282, 46.235905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060662, 0.692815, 0.718560,
		-0.593309, 0.603935, -0.532209,
		-0.802686, -0.394043, 0.447689,
		42.504757, 42.028069, 46.370213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604057, 42.852703, 46.171661>,  <43.066639, 42.303898, 46.056828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604057, 42.852703, 46.171661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.511768, 42.575436, 46.444801>,  <42.456394, 42.409077, 46.608685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.511768, 42.575436, 46.444801>,  <42.604057, 42.852703, 46.171661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511768, 42.575436, 46.444801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150761, 0.718780, 0.678694,
		-0.961268, 0.053644, -0.270343,
		-0.230725, -0.693165, 0.682853,
		42.442551, 42.367485, 46.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146519, 43.173553, 46.620117>,  <42.604057, 42.852703, 46.171661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146519, 43.173553, 46.620117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.273766, 42.851738, 46.820724>,  <42.350113, 42.658649, 46.941090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.273766, 42.851738, 46.820724>,  <42.146519, 43.173553, 46.620117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273766, 42.851738, 46.820724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069428, 0.507808, 0.858668,
		-0.945505, -0.307979, 0.105687,
		0.318120, -0.804537, 0.501518,
		42.369202, 42.610378, 46.971180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795139, 43.176491, 47.280128>,  <42.146519, 43.173553, 46.620117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795139, 43.176491, 47.280128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124172, 42.958988, 47.346691>,  <42.321590, 42.828487, 47.386627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124172, 42.958988, 47.346691>,  <41.795139, 43.176491, 47.280128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124172, 42.958988, 47.346691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163195, 0.506055, 0.846921,
		-0.544728, -0.669505, 0.505009,
		0.822581, -0.543756, 0.166402,
		42.370945, 42.795860, 47.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773571, 43.007965, 48.023060>,  <41.795139, 43.176491, 47.280128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773571, 43.007965, 48.023060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152901, 42.915318, 47.936314>,  <42.380497, 42.859730, 47.884266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152901, 42.915318, 47.936314>,  <41.773571, 43.007965, 48.023060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152901, 42.915318, 47.936314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297980, 0.415243, 0.859524,
		-0.109029, -0.879731, 0.462803,
		0.948325, -0.231619, -0.216868,
		42.437397, 42.845833, 47.871254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986732, 42.674446, 48.540447>,  <41.773571, 43.007965, 48.023060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986732, 42.674446, 48.540447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.292362, 42.859035, 48.360119>,  <42.475739, 42.969788, 48.251923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.292362, 42.859035, 48.360119>,  <41.986732, 42.674446, 48.540447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292362, 42.859035, 48.360119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307529, 0.353762, 0.883334,
		0.567116, -0.813570, 0.128384,
		0.764071, 0.461471, -0.450821,
		42.521584, 42.997478, 48.224873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455173, 42.899231, 49.040154>,  <41.986732, 42.674446, 48.540447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455173, 42.899231, 49.040154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.667233, 43.064507, 48.743988>,  <42.794468, 43.163673, 48.566288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.667233, 43.064507, 48.743988>,  <42.455173, 42.899231, 49.040154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667233, 43.064507, 48.743988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466793, 0.586759, 0.661678,
		0.707845, -0.696409, 0.118195,
		0.530150, 0.413193, -0.740413,
		42.826279, 43.188465, 48.521866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151760, 43.003536, 49.348640>,  <42.455173, 42.899231, 49.040154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151760, 43.003536, 49.348640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.065170, 43.253548, 49.048645>,  <43.013218, 43.403553, 48.868649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.065170, 43.253548, 49.048645>,  <43.151760, 43.003536, 49.348640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065170, 43.253548, 49.048645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341710, 0.768116, 0.541508,
		0.914534, -0.139055, -0.379857,
		-0.216475, 0.625029, -0.749985,
		43.000229, 43.441055, 48.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763828, 43.479156, 49.313404>,  <43.151760, 43.003536, 49.348640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763828, 43.479156, 49.313404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.444897, 43.647388, 49.140259>,  <43.253536, 43.748329, 49.036369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.444897, 43.647388, 49.140259>,  <43.763828, 43.479156, 49.313404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444897, 43.647388, 49.140259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191126, 0.856250, 0.479904,
		0.572481, 0.299910, -0.763099,
		-0.797331, 0.420584, -0.432866,
		43.205696, 43.773563, 49.010399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035763, 44.027161, 48.939133>,  <43.763828, 43.479156, 49.313404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035763, 44.027161, 48.939133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.648273, 44.103527, 49.002548>,  <43.415779, 44.149345, 49.040596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.648273, 44.103527, 49.002548>,  <44.035763, 44.027161, 48.939133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648273, 44.103527, 49.002548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247682, 0.783399, 0.570035,
		-0.015366, 0.591471, -0.806180,
		-0.968719, 0.190918, 0.158534,
		43.357658, 44.160801, 49.050110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866745, 44.715267, 48.778793>,  <44.035763, 44.027161, 48.939133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866745, 44.715267, 48.778793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.576580, 44.618511, 49.036560>,  <43.402481, 44.560459, 49.191219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.576580, 44.618511, 49.036560>,  <43.866745, 44.715267, 48.778793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576580, 44.618511, 49.036560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247954, 0.781528, 0.572479,
		-0.642104, 0.575067, -0.506951,
		-0.725411, -0.241890, 0.644413,
		43.358955, 44.545944, 49.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455669, 45.380547, 49.026398>,  <43.866745, 44.715267, 48.778793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455669, 45.380547, 49.026398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.420326, 45.102798, 49.312069>,  <43.399120, 44.936150, 49.483471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.420326, 45.102798, 49.312069>,  <43.455669, 45.380547, 49.026398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420326, 45.102798, 49.312069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363629, 0.645011, 0.672112,
		-0.927344, 0.319083, 0.195499,
		-0.088361, -0.694368, 0.714175,
		43.393818, 44.894489, 49.526321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987659, 45.720387, 49.349941>,  <43.455669, 45.380547, 49.026398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987659, 45.720387, 49.349941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.215294, 46.010433, 49.194839>,  <43.351875, 46.184460, 49.101780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.215294, 46.010433, 49.194839>,  <42.987659, 45.720387, 49.349941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215294, 46.010433, 49.194839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588472, 0.029780, -0.807969,
		-0.574322, 0.687984, 0.443657,
		0.569082, 0.725114, -0.387756,
		43.386017, 46.227966, 49.078514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460018, 46.194710, 49.109390>,  <42.987659, 45.720387, 49.349941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460018, 46.194710, 49.109390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.243988, 46.359077, 49.403183>,  <42.114368, 46.457699, 49.579460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.243988, 46.359077, 49.403183>,  <42.460018, 46.194710, 49.109390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243988, 46.359077, 49.403183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838905, -0.192863, -0.508962,
		-0.067486, -0.891040, 0.448880,
		-0.540078, 0.410915, 0.734483,
		42.081966, 46.482353, 49.623528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931103, 45.669418, 49.324509>,  <42.460018, 46.194710, 49.109390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931103, 45.669418, 49.324509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.801205, 46.040054, 49.400375>,  <41.723267, 46.262436, 49.445896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.801205, 46.040054, 49.400375>,  <41.931103, 45.669418, 49.324509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801205, 46.040054, 49.400375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765865, -0.139953, -0.627586,
		-0.554968, -0.349071, 0.755090,
		-0.324749, 0.926587, 0.189671,
		41.703781, 46.318031, 49.457275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237579, 45.491001, 49.503834>,  <41.931103, 45.669418, 49.324509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237579, 45.491001, 49.503834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265659, 45.872627, 49.387329>,  <41.282509, 46.101604, 49.317429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265659, 45.872627, 49.387329>,  <41.237579, 45.491001, 49.503834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265659, 45.872627, 49.387329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848163, -0.096598, -0.520853,
		-0.525063, 0.283600, 0.802421,
		0.070202, 0.954065, -0.291259,
		41.286720, 46.158848, 49.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524727, 45.649666, 49.422421>,  <41.237579, 45.491001, 49.503834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524727, 45.649666, 49.422421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710285, 45.948830, 49.232506>,  <40.821621, 46.128330, 49.118557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710285, 45.948830, 49.232506>,  <40.524727, 45.649666, 49.422421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710285, 45.948830, 49.232506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735905, 0.026966, -0.676548,
		-0.493194, 0.663251, 0.562901,
		0.463900, 0.747911, -0.474790,
		40.849457, 46.173203, 49.090069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061417, 46.207748, 49.282627>,  <40.524727, 45.649666, 49.422421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061417, 46.207748, 49.282627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.361362, 46.243801, 49.020458>,  <40.541328, 46.265434, 48.863155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.361362, 46.243801, 49.020458>,  <40.061417, 46.207748, 49.282627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361362, 46.243801, 49.020458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646317, -0.111851, -0.754827,
		-0.141343, 0.989629, -0.025620,
		0.749865, 0.090131, -0.655423,
		40.586323, 46.270840, 48.823830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865150, 46.734264, 48.750248>,  <40.061417, 46.207748, 49.282627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865150, 46.734264, 48.750248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172771, 46.563484, 48.559975>,  <40.357346, 46.461018, 48.445812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172771, 46.563484, 48.559975>,  <39.865150, 46.734264, 48.750248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172771, 46.563484, 48.559975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622948, -0.333982, -0.707384,
		0.143146, 0.840341, -0.522816,
		0.769055, -0.426947, -0.475681,
		40.403488, 46.435402, 48.417271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658176, 46.850113, 48.086964>,  <39.865150, 46.734264, 48.750248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658176, 46.850113, 48.086964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923634, 46.553894, 48.044682>,  <40.082909, 46.376163, 48.019314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923634, 46.553894, 48.044682>,  <39.658176, 46.850113, 48.086964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923634, 46.553894, 48.044682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592463, -0.434069, -0.678655,
		0.456692, 0.513008, -0.726812,
		0.663641, -0.740545, -0.105702,
		40.122726, 46.331730, 48.012970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684299, 46.818195, 47.379299>,  <39.658176, 46.850113, 48.086964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684299, 46.818195, 47.379299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816784, 46.468468, 47.521210>,  <39.896275, 46.258629, 47.606354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816784, 46.468468, 47.521210>,  <39.684299, 46.818195, 47.379299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816784, 46.468468, 47.521210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275714, -0.449264, -0.849790,
		0.902376, 0.183643, -0.389863,
		0.331210, -0.874321, 0.354772,
		39.916145, 46.206173, 47.627640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909718, 46.461876, 46.743076>,  <39.684299, 46.818195, 47.379299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909718, 46.461876, 46.743076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868313, 46.164459, 47.007332>,  <39.843472, 45.986012, 47.165886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.868313, 46.164459, 47.007332>,  <39.909718, 46.461876, 46.743076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868313, 46.164459, 47.007332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314873, -0.605545, -0.730869,
		0.943473, -0.283668, -0.171440,
		-0.103510, -0.743537, 0.660635,
		39.837261, 45.941399, 47.205521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269974, 45.915775, 46.563667>,  <39.909718, 46.461876, 46.743076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269974, 45.915775, 46.563667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994793, 45.740814, 46.795322>,  <39.829685, 45.635838, 46.934315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.994793, 45.740814, 46.795322>,  <40.269974, 45.915775, 46.563667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994793, 45.740814, 46.795322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144138, -0.699737, -0.699709,
		0.711296, -0.564843, 0.418342,
		-0.687955, -0.437401, 0.579136,
		39.788406, 45.609592, 46.969063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301250, 45.252663, 46.258492>,  <40.269974, 45.915775, 46.563667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301250, 45.252663, 46.258492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.987640, 45.220238, 46.504658>,  <39.799477, 45.200783, 46.652359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.987640, 45.220238, 46.504658>,  <40.301250, 45.252663, 46.258492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987640, 45.220238, 46.504658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326188, -0.789709, -0.519578,
		0.528119, -0.608103, 0.592708,
		-0.784023, -0.081065, 0.615416,
		39.752434, 45.195919, 46.689281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185616, 44.544338, 46.451477>,  <40.301250, 45.252663, 46.258492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185616, 44.544338, 46.451477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826786, 44.699039, 46.536964>,  <39.611488, 44.791859, 46.588257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.826786, 44.699039, 46.536964>,  <40.185616, 44.544338, 46.451477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826786, 44.699039, 46.536964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435405, -0.856129, -0.278327,
		0.075324, -0.342734, 0.936408,
		-0.897078, 0.386752, 0.213715,
		39.557663, 44.815063, 46.601078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815380, 44.097919, 47.022404>,  <40.185616, 44.544338, 46.451477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815380, 44.097919, 47.022404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583664, 44.300884, 46.767231>,  <39.444633, 44.422665, 46.614128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.583664, 44.300884, 46.767231>,  <39.815380, 44.097919, 47.022404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583664, 44.300884, 46.767231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350876, -0.861629, -0.366717,
		-0.735735, 0.011398, 0.677174,
		-0.579293, 0.507411, -0.637929,
		39.409878, 44.453106, 46.575851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262196, 43.660797, 46.964619>,  <39.815380, 44.097919, 47.022404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262196, 43.660797, 46.964619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213142, 43.886002, 46.637699>,  <39.183712, 44.021126, 46.441547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213142, 43.886002, 46.637699>,  <39.262196, 43.660797, 46.964619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213142, 43.886002, 46.637699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250589, -0.814398, -0.523413,
		-0.960295, 0.140621, 0.240953,
		-0.122629, 0.563011, -0.817301,
		39.176353, 44.054905, 46.392509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587791, 43.522602, 46.683704>,  <39.262196, 43.660797, 46.964619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587791, 43.522602, 46.683704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821320, 43.672573, 46.395653>,  <38.961437, 43.762558, 46.222824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821320, 43.672573, 46.395653>,  <38.587791, 43.522602, 46.683704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821320, 43.672573, 46.395653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137844, -0.828328, -0.543021,
		-0.800095, 0.416291, -0.431913,
		0.583821, 0.374932, -0.720125,
		38.996468, 43.785053, 46.179615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995266, 44.110996, 46.678852>,  <38.587791, 43.522602, 46.683704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995266, 44.110996, 46.678852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637348, 44.094563, 46.856686>,  <37.422596, 44.084702, 46.963387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637348, 44.094563, 46.856686>,  <37.995266, 44.110996, 46.678852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637348, 44.094563, 46.856686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398616, 0.375037, 0.836930,
		-0.201118, 0.926099, -0.319206,
		-0.894794, -0.041081, 0.444585,
		37.368912, 44.082237, 46.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861961, 44.764305, 46.943497>,  <37.995266, 44.110996, 46.678852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861961, 44.764305, 46.943497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645275, 44.518627, 47.173038>,  <37.515263, 44.371220, 47.310764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645275, 44.518627, 47.173038>,  <37.861961, 44.764305, 46.943497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645275, 44.518627, 47.173038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277203, 0.513975, 0.811781,
		-0.793537, 0.598830, -0.108172,
		-0.541717, -0.614193, 0.573856,
		37.482761, 44.334370, 47.345196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459335, 45.189690, 47.398369>,  <37.861961, 44.764305, 46.943497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459335, 45.189690, 47.398369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427624, 44.845760, 47.600128>,  <37.408596, 44.639404, 47.721184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427624, 44.845760, 47.600128>,  <37.459335, 45.189690, 47.398369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427624, 44.845760, 47.600128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262387, 0.470150, 0.842681,
		-0.961701, 0.199153, 0.188335,
		-0.079277, -0.859824, 0.504399,
		37.403839, 44.587814, 47.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952229, 45.305050, 48.048027>,  <37.459335, 45.189690, 47.398369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952229, 45.305050, 48.048027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170719, 44.978748, 48.124119>,  <37.301815, 44.782967, 48.169773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170719, 44.978748, 48.124119>,  <36.952229, 45.305050, 48.048027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170719, 44.978748, 48.124119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130224, 0.307037, 0.942746,
		-0.827452, -0.490182, 0.273942,
		0.546227, -0.815751, 0.190225,
		37.334587, 44.734024, 48.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737232, 45.067776, 48.623085>,  <36.952229, 45.305050, 48.048027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737232, 45.067776, 48.623085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091415, 44.882618, 48.606613>,  <37.303925, 44.771523, 48.596729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091415, 44.882618, 48.606613>,  <36.737232, 45.067776, 48.623085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091415, 44.882618, 48.606613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171068, 0.242270, 0.955008,
		-0.432094, -0.852662, 0.293707,
		0.885455, -0.462897, -0.041180,
		37.357052, 44.743748, 48.594257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766624, 44.545097, 49.190483>,  <36.737232, 45.067776, 48.623085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766624, 44.545097, 49.190483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146816, 44.604832, 49.081455>,  <37.374931, 44.640671, 49.016037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146816, 44.604832, 49.081455>,  <36.766624, 44.545097, 49.190483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146816, 44.604832, 49.081455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238100, 0.213804, 0.947415,
		0.199743, -0.965397, 0.167664,
		0.950479, 0.149319, -0.272567,
		37.431957, 44.649632, 48.999683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200825, 44.316555, 49.796837>,  <36.766624, 44.545097, 49.190483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200825, 44.316555, 49.796837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454220, 44.549850, 49.593456>,  <37.606258, 44.689827, 49.471428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454220, 44.549850, 49.593456>,  <37.200825, 44.316555, 49.796837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454220, 44.549850, 49.593456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344659, 0.375634, 0.860296,
		0.692748, -0.720233, 0.036943,
		0.633491, 0.583236, -0.508454,
		37.644268, 44.724819, 49.440922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341469, 43.716724, 50.138355>,  <37.200825, 44.316555, 49.796837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341469, 43.716724, 50.138355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228306, 43.543114, 50.480488>,  <37.160408, 43.438950, 50.685768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228306, 43.543114, 50.480488>,  <37.341469, 43.716724, 50.138355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228306, 43.543114, 50.480488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662452, -0.556478, -0.501487,
		0.693629, -0.708488, -0.130088,
		-0.282907, -0.434023, 0.855329,
		37.143433, 43.412907, 50.737087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373177, 43.016544, 50.023354>,  <37.341469, 43.716724, 50.138355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373177, 43.016544, 50.023354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090973, 43.125870, 50.284904>,  <36.921650, 43.191463, 50.441837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090973, 43.125870, 50.284904>,  <37.373177, 43.016544, 50.023354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090973, 43.125870, 50.284904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697676, -0.429979, -0.573033,
		0.124538, -0.860476, 0.494036,
		-0.705506, 0.273312, 0.653882,
		36.879322, 43.207863, 50.481068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972668, 42.442287, 50.083748>,  <37.373177, 43.016544, 50.023354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972668, 42.442287, 50.083748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743259, 42.745106, 50.208935>,  <36.605614, 42.926796, 50.284046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743259, 42.745106, 50.208935>,  <36.972668, 42.442287, 50.083748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743259, 42.745106, 50.208935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784620, -0.397834, -0.475499,
		-0.235467, -0.518270, 0.822162,
		-0.573521, 0.757050, 0.312969,
		36.571201, 42.972221, 50.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327526, 42.121353, 50.466732>,  <36.972668, 42.442287, 50.083748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327526, 42.121353, 50.466732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253239, 42.495453, 50.346191>,  <36.208668, 42.719913, 50.273869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253239, 42.495453, 50.346191>,  <36.327526, 42.121353, 50.466732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253239, 42.495453, 50.346191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858089, -0.303790, -0.413998,
		-0.478740, 0.181700, 0.858949,
		-0.185716, 0.935252, -0.301351,
		36.197525, 42.776028, 50.255787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667152, 42.062454, 50.411438>,  <36.327526, 42.121353, 50.466732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667152, 42.062454, 50.411438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736122, 42.385361, 50.185661>,  <35.777504, 42.579105, 50.050194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736122, 42.385361, 50.185661>,  <35.667152, 42.062454, 50.411438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736122, 42.385361, 50.185661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602096, -0.367136, -0.709008,
		-0.779583, 0.462100, 0.422746,
		0.172427, 0.807264, -0.564441,
		35.787849, 42.627541, 50.016331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053162, 42.284813, 50.161533>,  <35.667152, 42.062454, 50.411438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053162, 42.284813, 50.161533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341805, 42.415810, 49.917557>,  <35.514988, 42.494408, 49.771172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341805, 42.415810, 49.917557>,  <35.053162, 42.284813, 50.161533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341805, 42.415810, 49.917557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563130, -0.234824, -0.792302,
		-0.402705, 0.915207, 0.014972,
		0.721605, 0.327495, -0.609945,
		35.558285, 42.514057, 49.734573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728321, 42.372932, 49.572098>,  <35.053162, 42.284813, 50.161533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728321, 42.372932, 49.572098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104595, 42.370655, 49.436409>,  <35.330360, 42.369289, 49.354996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104595, 42.370655, 49.436409>,  <34.728321, 42.372932, 49.572098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104595, 42.370655, 49.436409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331114, -0.233352, -0.914281,
		-0.073954, 0.972376, -0.221397,
		0.940688, -0.005692, -0.339224,
		35.386803, 42.368946, 49.334641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.390202, 43.143764, 52.175030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.556419, 43.244480, 51.825417>,  <41.656151, 43.304909, 51.615650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.556419, 43.244480, 51.825417>,  <41.390202, 43.143764, 52.175030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556419, 43.244480, 51.825417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488994, -0.748401, -0.448086,
		-0.766949, 0.613593, -0.187866,
		0.415541, 0.251794, -0.874028,
		41.681080, 43.320019, 51.563210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845074, 43.050129, 51.705601>,  <41.390202, 43.143764, 52.175030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845074, 43.050129, 51.705601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.181797, 43.031651, 51.490482>,  <41.383831, 43.020565, 51.361412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.181797, 43.031651, 51.490482>,  <40.845074, 43.050129, 51.705601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181797, 43.031651, 51.490482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414544, -0.693437, -0.589320,
		-0.345706, 0.719034, -0.602890,
		0.841808, -0.046193, -0.537796,
		41.434338, 43.017792, 51.329144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505390, 42.951828, 51.061035>,  <40.845074, 43.050129, 51.705601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505390, 42.951828, 51.061035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.881840, 42.816742, 51.067120>,  <41.107708, 42.735691, 51.070770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.881840, 42.816742, 51.067120>,  <40.505390, 42.951828, 51.061035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881840, 42.816742, 51.067120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253561, -0.734935, -0.628950,
		0.223586, 0.588064, -0.777297,
		0.941125, -0.337716, 0.015211,
		41.164177, 42.715427, 51.071682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710152, 42.839897, 50.354485>,  <40.505390, 42.951828, 51.061035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710152, 42.839897, 50.354485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.942596, 42.619698, 50.594234>,  <41.082066, 42.487576, 50.738087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.942596, 42.619698, 50.594234>,  <40.710152, 42.839897, 50.354485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942596, 42.619698, 50.594234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164867, -0.800859, -0.575712,
		0.796948, 0.235737, -0.556150,
		0.581114, -0.550503, 0.599378,
		41.116932, 42.454548, 50.774048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101673, 42.445980, 49.832623>,  <40.710152, 42.839897, 50.354485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101673, 42.445980, 49.832623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.185974, 42.240643, 50.165382>,  <41.236553, 42.117439, 50.365040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.185974, 42.240643, 50.165382>,  <41.101673, 42.445980, 49.832623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185974, 42.240643, 50.165382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120681, -0.858170, -0.498979,
		0.970062, 0.004764, -0.242809,
		0.210749, -0.513343, 0.831904,
		41.249199, 42.086639, 50.414955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560059, 41.975990, 49.602180>,  <41.101673, 42.445980, 49.832623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560059, 41.975990, 49.602180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.391979, 41.836815, 49.937408>,  <41.291130, 41.753311, 50.138546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.391979, 41.836815, 49.937408>,  <41.560059, 41.975990, 49.602180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391979, 41.836815, 49.937408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033996, -0.916884, -0.397705,
		0.906794, -0.195608, 0.373448,
		-0.420202, -0.347940, 0.838074,
		41.265919, 41.732433, 50.188831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045593, 41.463917, 49.801872>,  <41.560059, 41.975990, 49.602180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045593, 41.463917, 49.801872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.680824, 41.387043, 49.946903>,  <41.461964, 41.340919, 50.033920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.680824, 41.387043, 49.946903>,  <42.045593, 41.463917, 49.801872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680824, 41.387043, 49.946903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008610, -0.874402, -0.485126,
		0.410271, -0.445519, 0.795732,
		-0.911923, -0.192182, 0.362578,
		41.407246, 41.329388, 50.055676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012028, 40.886189, 50.146458>,  <42.045593, 41.463917, 49.801872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012028, 40.886189, 50.146458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.619011, 40.917629, 50.079006>,  <41.383202, 40.936493, 50.038536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.619011, 40.917629, 50.079006>,  <42.012028, 40.886189, 50.146458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619011, 40.917629, 50.079006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039442, -0.973773, -0.224078,
		-0.181819, -0.213515, 0.959871,
		-0.982540, 0.078601, -0.168629,
		41.324249, 40.941208, 50.028416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885567, 40.228096, 50.255585>,  <42.012028, 40.886189, 50.146458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885567, 40.228096, 50.255585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.552387, 40.364853, 50.081547>,  <41.352482, 40.446907, 49.977123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.552387, 40.364853, 50.081547>,  <41.885567, 40.228096, 50.255585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552387, 40.364853, 50.081547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092050, -0.860948, -0.500295,
		-0.545643, -0.376668, 0.748595,
		-0.832947, 0.341890, -0.435099,
		41.302502, 40.467419, 49.951015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195282, 39.807034, 50.292427>,  <41.885567, 40.228096, 50.255585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195282, 39.807034, 50.292427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094105, 40.035069, 49.979755>,  <41.033398, 40.171890, 49.792152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.094105, 40.035069, 49.979755>,  <41.195282, 39.807034, 50.292427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094105, 40.035069, 49.979755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268623, -0.817568, -0.509338,
		-0.929441, 0.081142, 0.359938,
		-0.252945, 0.570087, -0.781678,
		41.018223, 40.206093, 49.745251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531109, 39.418396, 49.968586>,  <41.195282, 39.807034, 50.292427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531109, 39.418396, 49.968586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.696793, 39.641632, 49.680984>,  <40.796204, 39.775574, 49.508423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.696793, 39.641632, 49.680984>,  <40.531109, 39.418396, 49.968586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696793, 39.641632, 49.680984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207645, -0.711183, -0.671641,
		-0.886180, 0.427497, -0.178693,
		0.414208, 0.558090, -0.719004,
		40.821056, 39.809059, 49.465282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039875, 39.364754, 49.497948>,  <40.531109, 39.418396, 49.968586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039875, 39.364754, 49.497948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.381008, 39.481979, 49.325073>,  <40.585690, 39.552315, 49.221348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.381008, 39.481979, 49.325073>,  <40.039875, 39.364754, 49.497948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381008, 39.481979, 49.325073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242209, -0.511225, -0.824611,
		-0.462606, 0.807938, -0.365010,
		0.852837, 0.293061, -0.432185,
		40.636860, 39.569897, 49.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335396, 39.593060, 49.248100>,  <40.039875, 39.364754, 49.497948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335396, 39.593060, 49.248100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.939053, 39.591290, 49.194176>,  <38.701244, 39.590229, 49.161819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.939053, 39.591290, 49.194176>,  <39.335396, 39.593060, 49.248100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939053, 39.591290, 49.194176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109195, 0.613041, 0.782469,
		0.079181, 0.790039, -0.607922,
		-0.990862, -0.004425, -0.134810,
		38.641792, 39.589962, 49.153732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159458, 40.287239, 49.347580>,  <39.335396, 39.593060, 49.248100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159458, 40.287239, 49.347580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.836788, 40.059628, 49.411430>,  <38.643185, 39.923061, 49.449741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.836788, 40.059628, 49.411430>,  <39.159458, 40.287239, 49.347580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836788, 40.059628, 49.411430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215041, 0.534194, 0.817554,
		-0.550480, 0.625176, -0.553287,
		-0.806678, -0.569027, 0.159624,
		38.594784, 39.888920, 49.459316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738819, 40.719975, 49.716709>,  <39.159458, 40.287239, 49.347580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738819, 40.719975, 49.716709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.548912, 40.374790, 49.785866>,  <38.434967, 40.167679, 49.827358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.548912, 40.374790, 49.785866>,  <38.738819, 40.719975, 49.716709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548912, 40.374790, 49.785866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191011, 0.292788, 0.936904,
		-0.859133, 0.411790, -0.303842,
		-0.474769, -0.862963, 0.172887,
		38.406483, 40.115902, 49.837730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053230, 40.851856, 49.878208>,  <38.738819, 40.719975, 49.716709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053230, 40.851856, 49.878208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150894, 40.500164, 50.041840>,  <38.209492, 40.289150, 50.140018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150894, 40.500164, 50.041840>,  <38.053230, 40.851856, 49.878208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150894, 40.500164, 50.041840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246915, 0.351573, 0.903011,
		-0.937773, -0.321489, -0.131254,
		0.244163, -0.879228, 0.409076,
		38.224144, 40.236397, 50.164562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672928, 40.934464, 50.545326>,  <38.053230, 40.851856, 49.878208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672928, 40.934464, 50.545326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927055, 40.629807, 50.596344>,  <38.079533, 40.447010, 50.626957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.927055, 40.629807, 50.596344>,  <37.672928, 40.934464, 50.545326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927055, 40.629807, 50.596344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170098, 0.299121, 0.938932,
		-0.753286, -0.574824, 0.319591,
		0.635317, -0.761646, 0.127547,
		38.117649, 40.401314, 50.634609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508591, 40.640377, 51.205627>,  <37.672928, 40.934464, 50.545326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508591, 40.640377, 51.205627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883984, 40.520035, 51.137817>,  <38.109219, 40.447830, 51.097134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883984, 40.520035, 51.137817>,  <37.508591, 40.640377, 51.205627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883984, 40.520035, 51.137817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231720, 0.184656, 0.955096,
		-0.256043, -0.935621, 0.243011,
		0.938482, -0.300856, -0.169522,
		38.165527, 40.429779, 51.086960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730469, 40.168587, 51.741405>,  <37.508591, 40.640377, 51.205627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730469, 40.168587, 51.741405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.068989, 40.328190, 51.600227>,  <38.272102, 40.423950, 51.515522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.068989, 40.328190, 51.600227>,  <37.730469, 40.168587, 51.741405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068989, 40.328190, 51.600227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316801, 0.155669, 0.935630,
		0.428264, -0.903638, 0.005338,
		0.846302, 0.399006, -0.352941,
		38.322880, 40.447891, 51.494347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198334, 39.847408, 52.136250>,  <37.730469, 40.168587, 51.741405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198334, 39.847408, 52.136250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.376984, 40.163918, 51.969196>,  <38.484173, 40.353821, 51.868965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.376984, 40.163918, 51.969196>,  <38.198334, 39.847408, 52.136250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376984, 40.163918, 51.969196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480447, 0.181671, 0.858001,
		0.754782, -0.583858, -0.299023,
		0.446627, 0.791268, -0.417635,
		38.510971, 40.401299, 51.843906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831520, 39.842369, 52.448723>,  <38.198334, 39.847408, 52.136250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831520, 39.842369, 52.448723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822281, 40.215046, 52.303722>,  <38.816738, 40.438652, 52.216721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.822281, 40.215046, 52.303722>,  <38.831520, 39.842369, 52.448723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822281, 40.215046, 52.303722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562703, 0.311826, 0.765592,
		0.826337, -0.186302, -0.531469,
		-0.023095, 0.931695, -0.362505,
		38.815353, 40.494556, 52.194969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562931, 40.129173, 52.638809>,  <38.831520, 39.842369, 52.448723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562931, 40.129173, 52.638809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.337662, 40.451935, 52.567551>,  <39.202499, 40.645592, 52.524796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.337662, 40.451935, 52.567551>,  <39.562931, 40.129173, 52.638809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337662, 40.451935, 52.567551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632280, 0.559592, 0.535798,
		0.532027, 0.189111, -0.825339,
		-0.563178, 0.806904, -0.178147,
		39.168709, 40.694008, 52.514107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066864, 40.703449, 52.645912>,  <39.562931, 40.129173, 52.638809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066864, 40.703449, 52.645912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.715786, 40.893169, 52.673294>,  <39.505138, 41.007004, 52.689724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.715786, 40.893169, 52.673294>,  <40.066864, 40.703449, 52.645912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715786, 40.893169, 52.673294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407327, 0.663120, 0.627979,
		0.252458, 0.579058, -0.775214,
		-0.877696, 0.474304, 0.068456,
		39.452477, 41.035461, 52.693832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213440, 41.464691, 52.662579>,  <40.066864, 40.703449, 52.645912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213440, 41.464691, 52.662579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.855434, 41.415798, 52.834164>,  <39.640633, 41.386463, 52.937115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.855434, 41.415798, 52.834164>,  <40.213440, 41.464691, 52.662579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855434, 41.415798, 52.834164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245354, 0.668230, 0.702332,
		-0.372492, 0.733845, -0.568085,
		-0.895015, -0.122231, 0.428962,
		39.586929, 41.379128, 52.962852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041817, 42.159771, 52.853874>,  <40.213440, 41.464691, 52.662579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041817, 42.159771, 52.853874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.792976, 41.920635, 53.056095>,  <39.643673, 41.777153, 53.177429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.792976, 41.920635, 53.056095>,  <40.041817, 42.159771, 52.853874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792976, 41.920635, 53.056095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091627, 0.585681, 0.805346,
		-0.777559, 0.547327, -0.309574,
		-0.622099, -0.597838, 0.505552,
		39.606346, 41.741283, 53.207760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415684, 42.581493, 53.069580>,  <40.041817, 42.159771, 52.853874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415684, 42.581493, 53.069580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479279, 42.272713, 53.315773>,  <39.517433, 42.087444, 53.463486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479279, 42.272713, 53.315773>,  <39.415684, 42.581493, 53.069580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479279, 42.272713, 53.315773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033280, 0.627242, 0.778113,
		-0.986720, -0.103224, 0.125411,
		0.158983, -0.771953, 0.615478,
		39.526974, 42.041126, 53.500416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913185, 43.061378, 53.015369>,  <39.415684, 42.581493, 53.069580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913185, 43.061378, 53.015369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.823837, 43.450748, 52.995182>,  <38.770229, 43.684372, 52.983070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.823837, 43.450748, 52.995182>,  <38.913185, 43.061378, 53.015369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823837, 43.450748, 52.995182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730418, -0.201441, -0.652618,
		-0.645442, -0.108914, 0.756005,
		-0.223370, 0.973427, -0.050466,
		38.756828, 43.742775, 52.980042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252487, 43.108490, 53.179741>,  <38.913185, 43.061378, 53.015369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252487, 43.108490, 53.179741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.353844, 43.434612, 52.971481>,  <38.414658, 43.630283, 52.846527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.353844, 43.434612, 52.971481>,  <38.252487, 43.108490, 53.179741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353844, 43.434612, 52.971481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788422, -0.137802, -0.599500,
		-0.560520, 0.562400, 0.607884,
		0.253392, 0.815301, -0.520649,
		38.429863, 43.679203, 52.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656662, 43.537235, 52.981239>,  <38.252487, 43.108490, 53.179741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656662, 43.537235, 52.981239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.921841, 43.683361, 52.719845>,  <38.080948, 43.771038, 52.563007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.921841, 43.683361, 52.719845>,  <37.656662, 43.537235, 52.981239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921841, 43.683361, 52.719845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683118, -0.061995, -0.727672,
		-0.306343, 0.928817, 0.208454,
		0.662951, 0.365316, -0.653483,
		38.120728, 43.792957, 52.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423340, 44.220818, 52.717350>,  <37.656662, 43.537235, 52.981239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423340, 44.220818, 52.717350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658379, 44.055763, 52.438938>,  <37.799400, 43.956730, 52.271889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.658379, 44.055763, 52.438938>,  <37.423340, 44.220818, 52.717350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658379, 44.055763, 52.438938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718094, 0.130519, -0.683597,
		0.372925, 0.901495, -0.219623,
		0.587595, -0.412640, -0.696032,
		37.834656, 43.931973, 52.230129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289371, 44.525108, 52.071877>,  <37.423340, 44.220818, 52.717350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289371, 44.525108, 52.071877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.495983, 44.207981, 51.942482>,  <37.619949, 44.017704, 51.864845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.495983, 44.207981, 51.942482>,  <37.289371, 44.525108, 52.071877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495983, 44.207981, 51.942482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593135, -0.058816, -0.802952,
		0.617568, 0.606615, -0.500628,
		0.516528, -0.792817, -0.323482,
		37.650940, 43.970135, 51.845436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329769, 44.655766, 51.369038>,  <37.289371, 44.525108, 52.071877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329769, 44.655766, 51.369038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.413773, 44.269836, 51.432308>,  <37.464172, 44.038280, 51.470272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.413773, 44.269836, 51.432308>,  <37.329769, 44.655766, 51.369038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413773, 44.269836, 51.432308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615898, -0.256198, -0.745005,
		0.759320, 0.059035, -0.648034,
		0.210007, -0.964820, 0.158177,
		37.476776, 43.980389, 51.479763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428013, 44.352360, 50.692566>,  <37.329769, 44.655766, 51.369038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428013, 44.352360, 50.692566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311375, 44.063164, 50.943089>,  <37.241390, 43.889645, 51.093403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.311375, 44.063164, 50.943089>,  <37.428013, 44.352360, 50.692566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311375, 44.063164, 50.943089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653262, -0.327762, -0.682511,
		0.698728, -0.608157, -0.376729,
		-0.291597, -0.722992, 0.626302,
		37.223896, 43.846268, 51.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019695, 44.274288, 50.254631>,  <37.428013, 44.352360, 50.692566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019695, 44.274288, 50.254631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023930, 44.586403, 50.004498>,  <38.026470, 44.773670, 49.854416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023930, 44.586403, 50.004498>,  <38.019695, 44.274288, 50.254631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023930, 44.586403, 50.004498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654422, 0.467436, 0.594335,
		0.756055, -0.415526, -0.505687,
		0.010586, 0.780283, -0.625337,
		38.027103, 44.820488, 49.816895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757080, 44.482796, 50.371925>,  <38.019695, 44.274288, 50.254631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757080, 44.482796, 50.371925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.563320, 44.788246, 50.201172>,  <38.447063, 44.971516, 50.098721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.563320, 44.788246, 50.201172>,  <38.757080, 44.482796, 50.371925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563320, 44.788246, 50.201172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606623, 0.644776, 0.465051,
		0.630370, -0.033688, -0.775563,
		-0.484398, 0.763629, -0.426883,
		38.417999, 45.017334, 50.073109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269787, 44.779896, 50.008202>,  <38.757080, 44.482796, 50.371925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269787, 44.779896, 50.008202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.009480, 45.066147, 50.109688>,  <38.853294, 45.237900, 50.170582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.009480, 45.066147, 50.109688>,  <39.269787, 44.779896, 50.008202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009480, 45.066147, 50.109688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758752, 0.625342, 0.182325,
		-0.028184, 0.311161, -0.949939,
		-0.650769, 0.715629, 0.253719,
		38.814247, 45.280834, 50.185802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525219, 45.362293, 49.685223>,  <39.269787, 44.779896, 50.008202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525219, 45.362293, 49.685223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.293915, 45.460995, 49.996277>,  <39.155132, 45.520218, 50.182911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.293915, 45.460995, 49.996277>,  <39.525219, 45.362293, 49.685223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293915, 45.460995, 49.996277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669051, 0.688894, 0.278920,
		-0.466884, 0.681569, -0.563457,
		-0.578265, 0.246758, 0.777638,
		39.120434, 45.535023, 50.229568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575478, 46.059254, 49.829716>,  <39.525219, 45.362293, 49.685223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575478, 46.059254, 49.829716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.387035, 45.955055, 50.166809>,  <39.273972, 45.892536, 50.369064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.387035, 45.955055, 50.166809>,  <39.575478, 46.059254, 49.829716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387035, 45.955055, 50.166809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433773, 0.763473, 0.478487,
		-0.768051, 0.590972, -0.246677,
		-0.471104, -0.260500, 0.842734,
		39.245705, 45.876904, 50.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382290, 46.681637, 50.071877>,  <39.575478, 46.059254, 49.829716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382290, 46.681637, 50.071877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352665, 46.428013, 50.379768>,  <39.334888, 46.275837, 50.564503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352665, 46.428013, 50.379768>,  <39.382290, 46.681637, 50.071877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352665, 46.428013, 50.379768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413968, 0.682658, 0.602170,
		-0.907274, 0.363241, 0.211921,
		-0.074063, -0.634061, 0.769728,
		39.330444, 46.237793, 50.610687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346569, 47.135773, 50.714565>,  <39.382290, 46.681637, 50.071877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346569, 47.135773, 50.714565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.445248, 46.773178, 50.851627>,  <39.504456, 46.555622, 50.933865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.445248, 46.773178, 50.851627>,  <39.346569, 47.135773, 50.714565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445248, 46.773178, 50.851627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516949, 0.422174, 0.744670,
		-0.819697, -0.006575, 0.572760,
		0.246701, -0.906491, 0.342655,
		39.519257, 46.501232, 50.954426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275005, 47.267654, 51.413406>,  <39.346569, 47.135773, 50.714565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275005, 47.267654, 51.413406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.484982, 46.933170, 51.349915>,  <39.610966, 46.732479, 51.311821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.484982, 46.933170, 51.349915>,  <39.275005, 47.267654, 51.413406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484982, 46.933170, 51.349915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674315, 0.294794, 0.677048,
		-0.519363, -0.462440, 0.718618,
		0.524939, -0.836209, -0.158725,
		39.642464, 46.682308, 51.302296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453609, 47.002659, 52.008991>,  <39.275005, 47.267654, 51.413406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453609, 47.002659, 52.008991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726353, 46.834232, 51.769737>,  <39.889999, 46.733177, 51.626186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726353, 46.834232, 51.769737>,  <39.453609, 47.002659, 52.008991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726353, 46.834232, 51.769737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731331, 0.375780, 0.569162,
		-0.014889, -0.825524, 0.564170,
		0.681861, -0.421069, -0.598136,
		39.930912, 46.707912, 51.590298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.507980, 37.799549, 38.671738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880600, 37.834385, 38.812950>,  <36.104172, 37.855286, 38.897678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880600, 37.834385, 38.812950>,  <35.507980, 37.799549, 38.671738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880600, 37.834385, 38.812950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342293, 0.537620, 0.770585,
		-0.122689, -0.838678, 0.530629,
		0.931549, 0.087088, 0.353033,
		36.160065, 37.860512, 38.918861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462711, 37.561962, 39.450886>,  <35.507980, 37.799549, 38.671738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462711, 37.561962, 39.450886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767750, 37.814449, 39.394314>,  <35.950775, 37.965942, 39.360371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767750, 37.814449, 39.394314>,  <35.462711, 37.561962, 39.450886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767750, 37.814449, 39.394314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253681, 0.492956, 0.832250,
		0.595055, -0.598793, 0.536056,
		0.762598, 0.631222, -0.141433,
		35.996529, 38.003815, 39.351883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790764, 37.598930, 40.095184>,  <35.462711, 37.561962, 39.450886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790764, 37.598930, 40.095184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928432, 37.922291, 39.904171>,  <36.011036, 38.116306, 39.789562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928432, 37.922291, 39.904171>,  <35.790764, 37.598930, 40.095184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928432, 37.922291, 39.904171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083007, 0.532813, 0.842152,
		0.935229, -0.250210, 0.250483,
		0.344175, 0.808397, -0.477533,
		36.031685, 38.164810, 39.760910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189163, 37.887131, 40.554901>,  <35.790764, 37.598930, 40.095184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189163, 37.887131, 40.554901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147614, 38.199169, 40.308109>,  <36.122684, 38.386391, 40.160034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147614, 38.199169, 40.308109>,  <36.189163, 37.887131, 40.554901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147614, 38.199169, 40.308109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053877, 0.623835, 0.779697,
		0.993130, 0.047752, -0.106831,
		-0.103877, 0.780096, -0.616977,
		36.116451, 38.433197, 40.123016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802830, 38.265640, 40.689278>,  <36.189163, 37.887131, 40.554901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802830, 38.265640, 40.689278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507607, 38.500061, 40.555527>,  <36.330471, 38.640713, 40.475277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507607, 38.500061, 40.555527>,  <36.802830, 38.265640, 40.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507607, 38.500061, 40.555527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112699, 0.595674, 0.795280,
		0.665256, 0.549282, -0.505691,
		-0.738061, 0.586056, -0.334373,
		36.286190, 38.675877, 40.455215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964413, 39.036861, 40.841839>,  <36.802830, 38.265640, 40.689278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964413, 39.036861, 40.841839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570278, 39.041428, 40.773754>,  <36.333797, 39.044167, 40.732903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570278, 39.041428, 40.773754>,  <36.964413, 39.036861, 40.841839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570278, 39.041428, 40.773754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117924, 0.675432, 0.727932,
		0.123278, 0.737334, -0.664185,
		-0.985341, 0.011415, -0.170215,
		36.274677, 39.044853, 40.722691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785236, 39.747044, 40.777489>,  <36.964413, 39.036861, 40.841839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785236, 39.747044, 40.777489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447472, 39.546890, 40.854004>,  <36.244812, 39.426800, 40.899914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447472, 39.546890, 40.854004>,  <36.785236, 39.747044, 40.777489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447472, 39.546890, 40.854004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067015, 0.452950, 0.889013,
		-0.531491, 0.737871, -0.416008,
		-0.844409, -0.500381, 0.191291,
		36.194149, 39.396774, 40.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274132, 40.273197, 40.968868>,  <36.785236, 39.747044, 40.777489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274132, 40.273197, 40.968868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119793, 39.937149, 41.121349>,  <36.027187, 39.735519, 41.212837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119793, 39.937149, 41.121349>,  <36.274132, 40.273197, 40.968868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119793, 39.937149, 41.121349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222723, 0.485808, 0.845213,
		-0.895273, 0.241223, -0.374564,
		-0.385851, -0.840120, 0.381204,
		36.004036, 39.685112, 41.235710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724094, 40.510658, 41.271503>,  <36.274132, 40.273197, 40.968868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724094, 40.510658, 41.271503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781605, 40.150932, 41.436699>,  <35.816109, 39.935097, 41.535816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781605, 40.150932, 41.436699>,  <35.724094, 40.510658, 41.271503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781605, 40.150932, 41.436699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109484, 0.400304, 0.909819,
		-0.983536, -0.176021, -0.040909,
		0.143771, -0.899319, 0.412985,
		35.824738, 39.881138, 41.560593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186810, 40.424335, 41.790810>,  <35.724094, 40.510658, 41.271503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186810, 40.424335, 41.790810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481163, 40.178326, 41.904095>,  <35.657776, 40.030720, 41.972065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481163, 40.178326, 41.904095>,  <35.186810, 40.424335, 41.790810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481163, 40.178326, 41.904095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032458, 0.449831, 0.892524,
		-0.676325, -0.647605, 0.350988,
		0.735888, -0.615028, 0.283212,
		35.701931, 39.993816, 41.989059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951473, 40.086769, 42.357685>,  <35.186810, 40.424335, 41.790810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951473, 40.086769, 42.357685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351368, 40.087112, 42.366920>,  <35.591305, 40.087318, 42.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351368, 40.087112, 42.366920>,  <34.951473, 40.086769, 42.357685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351368, 40.087112, 42.366920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019545, 0.564281, 0.825351,
		-0.012322, -0.825582, 0.564147,
		0.999733, 0.000857, 0.023089,
		35.651287, 40.087368, 42.373848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142323, 40.061996, 43.041660>,  <34.951473, 40.086769, 42.357685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142323, 40.061996, 43.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487926, 40.180946, 42.879150>,  <35.695290, 40.252316, 42.781643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487926, 40.180946, 42.879150>,  <35.142323, 40.061996, 43.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487926, 40.180946, 42.879150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068110, 0.730487, 0.679521,
		0.498853, -0.614782, 0.610891,
		0.864006, 0.297373, -0.406279,
		35.747128, 40.270157, 42.757267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929684, 39.613792, 43.644703>,  <35.142323, 40.061996, 43.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929684, 39.613792, 43.644703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562847, 39.622120, 43.803955>,  <34.342743, 39.627117, 43.899506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562847, 39.622120, 43.803955>,  <34.929684, 39.613792, 43.644703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562847, 39.622120, 43.803955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367517, -0.431149, -0.824040,
		0.154499, -0.902040, 0.403055,
		-0.917094, 0.020816, 0.398127,
		34.287720, 39.628365, 43.923393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616467, 38.938862, 43.464520>,  <34.929684, 39.613792, 43.644703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616467, 38.938862, 43.464520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290436, 39.140244, 43.579185>,  <34.094818, 39.261074, 43.647987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290436, 39.140244, 43.579185>,  <34.616467, 38.938862, 43.464520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290436, 39.140244, 43.579185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483662, -0.318929, -0.815080,
		-0.318929, -0.803005, 0.503455,
		0.815080, -0.503455, -0.286667,
		34.045914, 39.291279, 43.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103165, 38.522686, 43.367222>,  <34.616467, 38.938862, 43.464520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103165, 38.522686, 43.367222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907990, 38.871468, 43.351143>,  <33.790886, 39.080738, 43.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907990, 38.871468, 43.351143>,  <34.103165, 38.522686, 43.367222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907990, 38.871468, 43.351143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461315, -0.296690, -0.836160,
		-0.741018, -0.389450, 0.547011,
		-0.487935, 0.871954, -0.040194,
		33.761608, 39.133053, 43.339085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415169, 38.277569, 43.271008>,  <34.103165, 38.522686, 43.367222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415169, 38.277569, 43.271008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418777, 38.658958, 43.150475>,  <33.420940, 38.887794, 43.078156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418777, 38.658958, 43.150475>,  <33.415169, 38.277569, 43.271008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418777, 38.658958, 43.150475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449534, -0.265313, -0.852953,
		-0.893218, 0.143152, 0.426227,
		0.009019, 0.953476, -0.301334,
		33.421482, 38.945000, 43.060074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715965, 38.473743, 43.049824>,  <33.415169, 38.277569, 43.271008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715965, 38.473743, 43.049824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977539, 38.706825, 42.856815>,  <33.134483, 38.846676, 42.741013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977539, 38.706825, 42.856815>,  <32.715965, 38.473743, 43.049824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977539, 38.706825, 42.856815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381027, -0.297329, -0.875451,
		-0.653599, 0.756338, 0.027594,
		0.653932, 0.582708, -0.482519,
		33.173717, 38.881638, 42.712059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322754, 38.750298, 42.483829>,  <32.715965, 38.473743, 43.049824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322754, 38.750298, 42.483829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700474, 38.807041, 42.365047>,  <32.927105, 38.841087, 42.293777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700474, 38.807041, 42.365047>,  <32.322754, 38.750298, 42.483829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700474, 38.807041, 42.365047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223885, -0.384442, -0.895589,
		-0.241208, 0.912185, -0.331267,
		0.944296, 0.141858, -0.296955,
		32.983761, 38.849598, 42.275963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240349, 39.004864, 41.872448>,  <32.322754, 38.750298, 42.483829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240349, 39.004864, 41.872448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614170, 38.862667, 41.878651>,  <32.838463, 38.777351, 41.882370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614170, 38.862667, 41.878651>,  <32.240349, 39.004864, 41.872448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614170, 38.862667, 41.878651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224844, -0.623746, -0.748589,
		0.275787, 0.696109, -0.662853,
		0.934552, -0.355490, 0.015505,
		32.894535, 38.756020, 41.883301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551449, 38.992844, 41.215164>,  <32.240349, 39.004864, 41.872448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551449, 38.992844, 41.215164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804733, 38.750141, 41.407364>,  <32.956703, 38.604519, 41.522686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804733, 38.750141, 41.407364>,  <32.551449, 38.992844, 41.215164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804733, 38.750141, 41.407364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045348, -0.590673, -0.805636,
		0.772646, 0.531931, -0.346508,
		0.633215, -0.606758, 0.480503,
		32.994698, 38.568115, 41.551514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028214, 38.758736, 40.696362>,  <32.551449, 38.992844, 41.215164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028214, 38.758736, 40.696362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042538, 38.478233, 40.981167>,  <33.051132, 38.309933, 41.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042538, 38.478233, 40.981167>,  <33.028214, 38.758736, 40.696362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042538, 38.478233, 40.981167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000408, -0.712457, -0.701715,
		0.999359, 0.025420, -0.025228,
		0.035812, -0.701255, 0.712011,
		33.053280, 38.267857, 41.194771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419498, 38.280724, 40.439945>,  <33.028214, 38.758736, 40.696362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419498, 38.280724, 40.439945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234905, 38.073994, 40.728371>,  <33.124149, 37.949955, 40.901424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234905, 38.073994, 40.728371>,  <33.419498, 38.280724, 40.439945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234905, 38.073994, 40.728371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003533, -0.813848, -0.581067,
		0.887143, -0.265604, 0.377402,
		-0.461481, -0.516823, 0.721061,
		33.096462, 37.918945, 40.944691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811726, 37.579887, 40.417744>,  <33.419498, 38.280724, 40.439945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811726, 37.579887, 40.417744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459484, 37.552189, 40.605251>,  <33.248138, 37.535572, 40.717754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459484, 37.552189, 40.605251>,  <33.811726, 37.579887, 40.417744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459484, 37.552189, 40.605251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119366, -0.924947, -0.360865,
		0.458571, -0.373734, 0.806247,
		-0.880604, -0.069244, 0.468766,
		33.195301, 37.531414, 40.745880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821186, 36.925747, 40.903088>,  <33.811726, 37.579887, 40.417744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821186, 36.925747, 40.903088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434689, 37.017490, 40.856167>,  <33.202789, 37.072536, 40.828014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434689, 37.017490, 40.856167>,  <33.821186, 36.925747, 40.903088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434689, 37.017490, 40.856167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193992, -0.947419, -0.254489,
		-0.169506, -0.223143, 0.959935,
		-0.966248, 0.229357, -0.117305,
		33.144814, 37.086296, 40.820976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443462, 36.437969, 41.301174>,  <33.821186, 36.925747, 40.903088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443462, 36.437969, 41.301174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212303, 36.563755, 40.999939>,  <33.073608, 36.639225, 40.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212303, 36.563755, 40.999939>,  <33.443462, 36.437969, 41.301174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212303, 36.563755, 40.999939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222028, -0.948558, -0.225702,
		-0.785325, 0.036774, 0.617991,
		-0.577900, 0.314460, -0.753091,
		33.038933, 36.658092, 40.774014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969116, 35.852676, 41.155190>,  <33.443462, 36.437969, 41.301174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969116, 35.852676, 41.155190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872772, 36.078613, 40.839481>,  <32.814968, 36.214176, 40.650055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872772, 36.078613, 40.839481>,  <32.969116, 35.852676, 41.155190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872772, 36.078613, 40.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157235, -0.825176, -0.542552,
		-0.957740, -0.006576, 0.287561,
		-0.240856, 0.564838, -0.789269,
		32.800514, 36.248066, 40.602699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116997, 35.220070, 40.658108>,  <32.969116, 35.852676, 41.155190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116997, 35.220070, 40.658108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160076, 35.538261, 40.419575>,  <33.185925, 35.729176, 40.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160076, 35.538261, 40.419575>,  <33.116997, 35.220070, 40.658108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160076, 35.538261, 40.419575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846269, 0.241437, 0.474908,
		0.521756, -0.555807, -0.647186,
		0.107702, 0.795479, -0.596333,
		33.192387, 35.776905, 40.240673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695698, 35.219528, 40.145889>,  <33.116997, 35.220070, 40.658108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695698, 35.219528, 40.145889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595306, 35.566616, 40.317505>,  <33.535072, 35.774868, 40.420475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595306, 35.566616, 40.317505>,  <33.695698, 35.219528, 40.145889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595306, 35.566616, 40.317505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868619, 0.006268, 0.495440,
		0.427213, 0.497017, -0.755290,
		-0.250977, 0.867718, 0.429041,
		33.520012, 35.826931, 40.446217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283386, 35.168785, 40.686146>,  <33.695698, 35.219528, 40.145889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283386, 35.168785, 40.686146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288944, 35.136501, 40.287491>,  <34.292278, 35.117130, 40.048298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288944, 35.136501, 40.287491>,  <34.283386, 35.168785, 40.686146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288944, 35.136501, 40.287491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719835, -0.691001, 0.065995,
		-0.694007, -0.718334, 0.048491,
		0.013899, -0.080706, -0.996641,
		34.293114, 35.112289, 39.988499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086399, 35.431431, 41.382565>,  <34.283386, 35.168785, 40.686146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086399, 35.431431, 41.382565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446423, 35.350155, 41.228367>,  <34.662437, 35.301388, 41.135849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446423, 35.350155, 41.228367>,  <34.086399, 35.431431, 41.382565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446423, 35.350155, 41.228367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409684, 0.093077, 0.907467,
		-0.148507, -0.974705, 0.167018,
		0.900058, -0.203190, -0.385499,
		34.716438, 35.289200, 41.112717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391075, 34.863052, 41.797726>,  <34.086399, 35.431431, 41.382565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391075, 34.863052, 41.797726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669289, 35.062862, 41.591148>,  <34.836216, 35.182747, 41.467201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669289, 35.062862, 41.591148>,  <34.391075, 34.863052, 41.797726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669289, 35.062862, 41.591148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495147, 0.187609, 0.848311,
		0.520641, -0.845742, -0.116850,
		0.695530, 0.499523, -0.516443,
		34.877949, 35.212719, 41.436214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151497, 34.747112, 41.985985>,  <34.391075, 34.863052, 41.797726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151497, 34.747112, 41.985985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183708, 35.101418, 41.803146>,  <35.203037, 35.313999, 41.693443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183708, 35.101418, 41.803146>,  <35.151497, 34.747112, 41.985985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183708, 35.101418, 41.803146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506857, 0.358478, 0.783957,
		0.858260, -0.294817, -0.420087,
		0.080532, 0.885763, -0.457097,
		35.207867, 35.367146, 41.666016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857819, 34.851276, 42.052986>,  <35.151497, 34.747112, 41.985985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857819, 34.851276, 42.052986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648338, 35.186806, 41.993511>,  <35.522652, 35.388123, 41.957829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648338, 35.186806, 41.993511>,  <35.857819, 34.851276, 42.052986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648338, 35.186806, 41.993511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471920, 0.430961, 0.769132,
		0.709246, 0.332629, -0.621553,
		-0.523701, 0.838827, -0.148683,
		35.491226, 35.438454, 41.948906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336456, 35.301376, 42.220253>,  <35.857819, 34.851276, 42.052986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336456, 35.301376, 42.220253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002453, 35.520275, 42.243160>,  <35.802052, 35.651615, 42.256905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002453, 35.520275, 42.243160>,  <36.336456, 35.301376, 42.220253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002453, 35.520275, 42.243160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395785, 0.525054, 0.753440,
		0.382247, 0.651797, -0.655018,
		-0.835010, 0.547246, 0.057271,
		35.751949, 35.684448, 42.260342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528393, 35.995453, 42.255779>,  <36.336456, 35.301376, 42.220253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528393, 35.995453, 42.255779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175735, 35.938305, 42.435688>,  <35.964142, 35.904015, 42.543633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175735, 35.938305, 42.435688>,  <36.528393, 35.995453, 42.255779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175735, 35.938305, 42.435688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259137, 0.649953, 0.714429,
		-0.394402, 0.746424, -0.536003,
		-0.881644, -0.142874, 0.449769,
		35.911243, 35.895443, 42.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146870, 36.769749, 42.340321>,  <36.528393, 35.995453, 42.255779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146870, 36.769749, 42.340321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948757, 36.547340, 42.607319>,  <35.829891, 36.413895, 42.767517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948757, 36.547340, 42.607319>,  <36.146870, 36.769749, 42.340321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948757, 36.547340, 42.607319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249739, 0.644790, 0.722410,
		-0.832064, 0.524492, -0.180491,
		-0.495277, -0.556016, 0.667493,
		35.800175, 36.380535, 42.807568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956169, 37.290474, 42.801659>,  <36.146870, 36.769749, 42.340321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956169, 37.290474, 42.801659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913013, 36.944004, 42.996841>,  <35.887119, 36.736122, 43.113949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913013, 36.944004, 42.996841>,  <35.956169, 37.290474, 42.801659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913013, 36.944004, 42.996841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285862, 0.443063, 0.849693,
		-0.952179, 0.231156, 0.199807,
		-0.107885, -0.866177, 0.487954,
		35.880650, 36.684151, 43.143227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566338, 37.455570, 43.410843>,  <35.956169, 37.290474, 42.801659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566338, 37.455570, 43.410843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772266, 37.115891, 43.457848>,  <35.895824, 36.912083, 43.486050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772266, 37.115891, 43.457848>,  <35.566338, 37.455570, 43.410843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772266, 37.115891, 43.457848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219177, 0.262894, 0.939600,
		-0.828804, -0.457975, 0.321470,
		0.514826, -0.849203, 0.117510,
		35.926716, 36.861130, 43.493099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350788, 37.241432, 44.093430>,  <35.566338, 37.455570, 43.410843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350788, 37.241432, 44.093430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705078, 37.073627, 44.013931>,  <35.917652, 36.972942, 43.966232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705078, 37.073627, 44.013931>,  <35.350788, 37.241432, 44.093430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705078, 37.073627, 44.013931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350565, 0.323822, 0.878774,
		-0.304300, -0.848025, 0.433884,
		0.885723, -0.419516, -0.198749,
		35.970795, 36.947773, 43.954308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500607, 36.972878, 44.715096>,  <35.350788, 37.241432, 44.093430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500607, 36.972878, 44.715096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848278, 36.995144, 44.518559>,  <36.056881, 37.008503, 44.400635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848278, 36.995144, 44.518559>,  <35.500607, 36.972878, 44.715096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848278, 36.995144, 44.518559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452743, 0.310002, 0.836016,
		0.198855, -0.949105, 0.244247,
		0.869184, 0.055665, -0.491346,
		36.109032, 37.011845, 44.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071312, 36.693291, 45.193951>,  <35.500607, 36.972878, 44.715096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071312, 36.693291, 45.193951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272930, 36.871273, 44.897854>,  <36.393902, 36.978062, 44.720196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272930, 36.871273, 44.897854>,  <36.071312, 36.693291, 45.193951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272930, 36.871273, 44.897854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609345, 0.424188, 0.669897,
		0.612076, -0.788719, -0.057323,
		0.504045, 0.444957, -0.740238,
		36.424145, 37.004761, 44.675781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793766, 36.664955, 45.415394>,  <36.071312, 36.693291, 45.193951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793766, 36.664955, 45.415394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750854, 36.973011, 45.163879>,  <36.725105, 37.157845, 45.012970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750854, 36.973011, 45.163879>,  <36.793766, 36.664955, 45.415394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750854, 36.973011, 45.163879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510457, 0.585387, 0.629885,
		0.853185, -0.253395, -0.455924,
		-0.107282, 0.770138, -0.628791,
		36.718670, 37.204052, 44.975243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430920, 36.903049, 45.356163>,  <36.793766, 36.664955, 45.415394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430920, 36.903049, 45.356163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231129, 37.220497, 45.217201>,  <37.111256, 37.410965, 45.133823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231129, 37.220497, 45.217201>,  <37.430920, 36.903049, 45.356163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231129, 37.220497, 45.217201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460050, 0.582777, 0.669869,
		0.734081, 0.174761, -0.656189,
		-0.499479, 0.793618, -0.347407,
		37.081284, 37.458584, 45.112980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925713, 37.386364, 45.270622>,  <37.430920, 36.903049, 45.356163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925713, 37.386364, 45.270622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583820, 37.593857, 45.278015>,  <37.378685, 37.718353, 45.282452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583820, 37.593857, 45.278015>,  <37.925713, 37.386364, 45.270622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583820, 37.593857, 45.278015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463245, 0.746270, 0.478001,
		0.234162, 0.417127, -0.878165,
		-0.854735, 0.518735, 0.018484,
		37.327400, 37.749477, 45.283562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137539, 38.060677, 45.248531>,  <37.925713, 37.386364, 45.270622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137539, 38.060677, 45.248531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760479, 38.096031, 45.377281>,  <37.534245, 38.117245, 45.454533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760479, 38.096031, 45.377281>,  <38.137539, 38.060677, 45.248531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760479, 38.096031, 45.377281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322439, 0.490496, 0.809596,
		-0.086320, 0.866949, -0.490865,
		-0.942646, 0.088389, 0.321878,
		37.477684, 38.122547, 45.473843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073318, 38.743053, 45.240086>,  <38.137539, 38.060677, 45.248531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073318, 38.743053, 45.240086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802422, 38.603653, 45.499283>,  <37.639885, 38.520012, 45.654800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802422, 38.603653, 45.499283>,  <38.073318, 38.743053, 45.240086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802422, 38.603653, 45.499283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365224, 0.605312, 0.707255,
		-0.638714, 0.715645, -0.282662,
		-0.677242, -0.348498, 0.647992,
		37.599251, 38.499104, 45.693680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904682, 39.358025, 45.674629>,  <38.073318, 38.743053, 45.240086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904682, 39.358025, 45.674629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819057, 39.016781, 45.864944>,  <37.767681, 38.812035, 45.979134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819057, 39.016781, 45.864944>,  <37.904682, 39.358025, 45.674629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819057, 39.016781, 45.864944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475443, 0.334498, 0.813674,
		-0.853306, 0.400389, 0.334003,
		-0.214063, -0.853112, 0.475791,
		37.754837, 38.760849, 46.007683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446491, 39.573544, 46.246189>,  <37.904682, 39.358025, 45.674629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446491, 39.573544, 46.246189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613995, 39.223270, 46.342373>,  <37.714497, 39.013107, 46.400082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613995, 39.223270, 46.342373>,  <37.446491, 39.573544, 46.246189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613995, 39.223270, 46.342373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282382, 0.377238, 0.882016,
		-0.863077, -0.301450, 0.405249,
		0.418759, -0.875682, 0.240461,
		37.739624, 38.960567, 46.414513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260307, 39.436821, 46.872993>,  <37.446491, 39.573544, 46.246189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260307, 39.436821, 46.872993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561939, 39.174187, 46.866566>,  <37.742916, 39.016605, 46.862709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561939, 39.174187, 46.866566>,  <37.260307, 39.436821, 46.872993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561939, 39.174187, 46.866566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128118, 0.123052, 0.984096,
		-0.644169, -0.744143, 0.176911,
		0.754077, -0.656589, -0.016072,
		37.788162, 38.977211, 46.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160618, 38.960831, 47.450706>,  <37.260307, 39.436821, 46.872993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160618, 38.960831, 47.450706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551777, 38.924946, 47.375160>,  <37.786472, 38.903416, 47.329834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551777, 38.924946, 47.375160>,  <37.160618, 38.960831, 47.450706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551777, 38.924946, 47.375160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193288, 0.043389, 0.980182,
		-0.079745, -0.995022, 0.059772,
		0.977896, -0.089717, -0.188865,
		37.845146, 38.898029, 47.318501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361923, 38.666145, 48.036804>,  <37.160618, 38.960831, 47.450706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361923, 38.666145, 48.036804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704681, 38.803413, 47.882935>,  <37.910336, 38.885773, 47.790615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704681, 38.803413, 47.882935>,  <37.361923, 38.666145, 48.036804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704681, 38.803413, 47.882935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372434, 0.103803, 0.922235,
		0.356413, -0.933520, -0.038860,
		0.856891, 0.343170, -0.384671,
		37.961750, 38.906364, 47.767532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938866, 38.256699, 48.394787>,  <37.361923, 38.666145, 48.036804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938866, 38.256699, 48.394787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056305, 38.608536, 48.245060>,  <38.126770, 38.819637, 48.155224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056305, 38.608536, 48.245060>,  <37.938866, 38.256699, 48.394787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056305, 38.608536, 48.245060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227384, 0.316072, 0.921083,
		0.928491, -0.355544, -0.107207,
		0.293600, 0.879595, -0.374315,
		38.144386, 38.872414, 48.132767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609264, 38.382153, 48.776882>,  <37.938866, 38.256699, 48.394787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609264, 38.382153, 48.776882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479889, 38.725922, 48.618500>,  <38.402264, 38.932182, 48.523472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479889, 38.725922, 48.618500>,  <38.609264, 38.382153, 48.776882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479889, 38.725922, 48.618500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163364, 0.462881, 0.871237,
		0.932041, 0.217104, -0.290111,
		-0.323436, 0.859423, -0.395957,
		38.382858, 38.983749, 48.499714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157806, 38.906906, 48.864178>,  <38.609264, 38.382153, 48.776882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157806, 38.906906, 48.864178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811588, 39.105976, 48.841702>,  <38.603859, 39.225418, 48.828217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811588, 39.105976, 48.841702>,  <39.157806, 38.906906, 48.864178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811588, 39.105976, 48.841702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222533, 0.482656, 0.847067,
		0.448681, 0.720669, -0.528508,
		-0.865543, 0.497673, -0.056186,
		38.551926, 39.255280, 48.824844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761219, 39.293228, 48.724010>,  <39.157806, 38.906906, 48.864178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761219, 39.293228, 48.724010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160835, 39.310219, 48.728191>,  <40.400604, 39.320412, 48.730701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160835, 39.310219, 48.728191>,  <39.761219, 39.293228, 48.724010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160835, 39.310219, 48.728191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034957, -0.631544, -0.774552,
		-0.026295, 0.774176, -0.632424,
		0.999043, 0.042474, 0.010456,
		40.460548, 39.322960, 48.731327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016068, 39.520641, 48.063511>,  <39.761219, 39.293228, 48.724010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016068, 39.520641, 48.063511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323380, 39.332886, 48.237602>,  <40.507767, 39.220234, 48.342056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323380, 39.332886, 48.237602>,  <40.016068, 39.520641, 48.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323380, 39.332886, 48.237602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158171, -0.519631, -0.839622,
		0.620264, 0.713906, -0.324979,
		0.768281, -0.469385, 0.435227,
		40.553864, 39.192070, 48.368172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633900, 39.581165, 47.572407>,  <40.016068, 39.520641, 48.063511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633900, 39.581165, 47.572407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728584, 39.232609, 47.744289>,  <40.785397, 39.023476, 47.847420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728584, 39.232609, 47.744289>,  <40.633900, 39.581165, 47.572407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728584, 39.232609, 47.744289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013973, -0.445283, -0.895281,
		0.971479, 0.205921, -0.117580,
		0.236713, -0.871390, 0.429705,
		40.799599, 38.971191, 47.873199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997364, 39.209412, 47.017712>,  <40.633900, 39.581165, 47.572407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997364, 39.209412, 47.017712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936924, 38.909317, 47.275181>,  <40.900658, 38.729259, 47.429661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936924, 38.909317, 47.275181>,  <40.997364, 39.209412, 47.017712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936924, 38.909317, 47.275181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077929, -0.640078, -0.764348,
		0.985442, -0.165655, 0.038251,
		-0.151102, -0.750239, 0.643668,
		40.891594, 38.684246, 47.468281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449184, 38.679874, 46.742828>,  <40.997364, 39.209412, 47.017712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449184, 38.679874, 46.742828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168781, 38.514420, 46.975204>,  <41.000538, 38.415146, 47.114632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168781, 38.514420, 46.975204>,  <41.449184, 38.679874, 46.742828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168781, 38.514420, 46.975204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196583, -0.670967, -0.714953,
		0.685525, -0.615390, 0.389038,
		-0.701007, -0.413639, 0.580940,
		40.958481, 38.390327, 47.149487>
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
