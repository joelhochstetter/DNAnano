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
	<24.744497, 34.676750, 35.255470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507030, 34.816380, 34.965450>,  <24.364550, 34.900158, 34.791439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507030, 34.816380, 34.965450>,  <24.744497, 34.676750, 35.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507030, 34.816380, 34.965450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245344, 0.936631, 0.250056,
		0.766397, -0.029437, -0.641693,
		-0.593668, 0.349078, -0.725053,
		24.328930, 34.921104, 34.747932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188917, 35.139000, 34.864170>,  <24.744497, 34.676750, 35.255470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188917, 35.139000, 34.864170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797586, 35.201523, 34.809845>,  <24.562788, 35.239037, 34.777248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797586, 35.201523, 34.809845>,  <25.188917, 35.139000, 34.864170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797586, 35.201523, 34.809845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140536, 0.982914, 0.118866,
		0.152075, 0.097203, -0.983577,
		-0.978326, 0.156305, -0.135816,
		24.504089, 35.248413, 34.769100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495758, 35.167278, 34.140236>,  <25.188917, 35.139000, 34.864170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495758, 35.167278, 34.140236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889433, 35.123722, 34.084354>,  <26.125637, 35.097588, 34.050823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889433, 35.123722, 34.084354>,  <25.495758, 35.167278, 34.140236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889433, 35.123722, 34.084354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084370, -0.981686, 0.170805,
		-0.155748, -0.156317, -0.975350,
		0.984187, -0.108893, -0.139707,
		26.184689, 35.091053, 34.042442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554344, 34.572105, 33.671684>,  <25.495758, 35.167278, 34.140236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554344, 34.572105, 33.671684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867235, 34.651100, 33.908031>,  <26.054970, 34.698498, 34.049839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867235, 34.651100, 33.908031>,  <25.554344, 34.572105, 33.671684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867235, 34.651100, 33.908031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081142, -0.972645, 0.217666,
		0.617688, -0.122320, -0.776852,
		0.782226, 0.197485, 0.590865,
		26.101904, 34.710346, 34.085293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049929, 34.142815, 33.460072>,  <25.554344, 34.572105, 33.671684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049929, 34.142815, 33.460072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157019, 34.223072, 33.837021>,  <26.221272, 34.271225, 34.063190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157019, 34.223072, 33.837021>,  <26.049929, 34.142815, 33.460072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157019, 34.223072, 33.837021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543473, -0.839076, 0.024253,
		0.795588, 0.505661, -0.333685,
		0.267724, 0.200644, 0.942373,
		26.237335, 34.283264, 34.119732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850134, 34.145126, 33.487659>,  <26.049929, 34.142815, 33.460072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850134, 34.145126, 33.487659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723707, 34.095188, 33.863853>,  <26.647852, 34.065224, 34.089569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723707, 34.095188, 33.863853>,  <26.850134, 34.145126, 33.487659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723707, 34.095188, 33.863853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573591, -0.814760, 0.084610,
		0.755708, 0.566197, 0.329128,
		-0.316067, -0.124844, 0.940487,
		26.628887, 34.057735, 34.146000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389496, 33.852131, 33.789959>,  <26.850134, 34.145126, 33.487659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389496, 33.852131, 33.789959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091570, 33.754005, 34.038174>,  <26.912813, 33.695129, 34.187103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091570, 33.754005, 34.038174>,  <27.389496, 33.852131, 33.789959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091570, 33.754005, 34.038174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359634, -0.930921, 0.063640,
		0.562060, 0.270567, 0.781590,
		-0.744817, -0.245316, 0.620538,
		26.868124, 33.680412, 34.224335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722816, 33.388992, 34.264374>,  <27.389496, 33.852131, 33.789959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722816, 33.388992, 34.264374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326904, 33.344208, 34.299702>,  <27.089357, 33.317337, 34.320900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326904, 33.344208, 34.299702>,  <27.722816, 33.388992, 34.264374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326904, 33.344208, 34.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128930, -0.967233, 0.218719,
		0.060942, 0.227871, 0.971782,
		-0.989779, -0.111963, 0.088324,
		27.029970, 33.310619, 34.326199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588024, 33.216167, 34.949871>,  <27.722816, 33.388992, 34.264374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588024, 33.216167, 34.949871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297928, 33.076820, 34.712330>,  <27.123871, 32.993210, 34.569805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297928, 33.076820, 34.712330>,  <27.588024, 33.216167, 34.949871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297928, 33.076820, 34.712330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143382, -0.920050, 0.364622,
		-0.673400, 0.179291, 0.717208,
		-0.725241, -0.348372, -0.593854,
		27.080355, 32.972309, 34.534172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254562, 32.738468, 35.360088>,  <27.588024, 33.216167, 34.949871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254562, 32.738468, 35.360088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116560, 32.612717, 35.006332>,  <27.033758, 32.537266, 34.794079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116560, 32.612717, 35.006332>,  <27.254562, 32.738468, 35.360088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116560, 32.612717, 35.006332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152919, -0.910823, 0.383429,
		-0.926060, 0.267524, 0.266166,
		-0.345006, -0.314376, -0.884386,
		27.013058, 32.518402, 34.741016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770231, 32.368835, 35.597366>,  <27.254562, 32.738468, 35.360088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770231, 32.368835, 35.597366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800056, 32.243530, 35.218674>,  <26.817951, 32.168346, 34.991459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800056, 32.243530, 35.218674>,  <26.770231, 32.368835, 35.597366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800056, 32.243530, 35.218674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202842, -0.934296, 0.293167,
		-0.976369, 0.170179, -0.133205,
		0.074562, -0.313259, -0.946736,
		26.822426, 32.149551, 34.934654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082792, 31.902733, 35.399239>,  <26.770231, 32.368835, 35.597366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082792, 31.902733, 35.399239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380850, 31.826778, 35.143520>,  <26.559685, 31.781206, 34.990089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380850, 31.826778, 35.143520>,  <26.082792, 31.902733, 35.399239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380850, 31.826778, 35.143520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026649, -0.949364, 0.313045,
		-0.666369, -0.250301, -0.702354,
		0.745146, -0.189886, -0.639297,
		26.604393, 31.769812, 34.951733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986382, 31.227242, 35.149292>,  <26.082792, 31.902733, 35.399239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986382, 31.227242, 35.149292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366549, 31.298275, 35.047176>,  <26.594648, 31.340895, 34.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366549, 31.298275, 35.047176>,  <25.986382, 31.227242, 35.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366549, 31.298275, 35.047176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258012, -0.908569, 0.328530,
		-0.173606, -0.378108, -0.909338,
		0.950416, 0.177585, -0.255290,
		26.651674, 31.351551, 34.970589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202278, 30.667973, 34.735859>,  <25.986382, 31.227242, 35.149292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202278, 30.667973, 34.735859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532753, 30.837994, 34.883774>,  <26.731039, 30.940006, 34.972523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532753, 30.837994, 34.883774>,  <26.202278, 30.667973, 34.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532753, 30.837994, 34.883774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335801, -0.898545, 0.282586,
		0.452382, -0.109296, -0.885101,
		0.826189, 0.425055, 0.369784,
		26.780609, 30.965509, 34.994709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794086, 30.447208, 34.327694>,  <26.202278, 30.667973, 34.735859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794086, 30.447208, 34.327694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936707, 30.556376, 34.685104>,  <27.022278, 30.621876, 34.899551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936707, 30.556376, 34.685104>,  <26.794086, 30.447208, 34.327694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936707, 30.556376, 34.685104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532824, -0.845003, 0.045482,
		0.767445, 0.459875, -0.446703,
		0.356549, 0.272919, 0.893526,
		27.043671, 30.638250, 34.953163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440264, 30.023394, 34.343430>,  <26.794086, 30.447208, 34.327694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440264, 30.023394, 34.343430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376432, 30.151560, 34.716927>,  <27.338133, 30.228458, 34.941025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376432, 30.151560, 34.716927>,  <27.440264, 30.023394, 34.343430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376432, 30.151560, 34.716927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554252, -0.753632, 0.353333,
		0.816908, 0.573912, -0.057325,
		-0.159580, 0.320413, 0.933740,
		27.328558, 30.247684, 34.997047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037897, 29.987688, 34.670708>,  <27.440264, 30.023394, 34.343430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037897, 29.987688, 34.670708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789417, 29.967358, 34.983509>,  <27.640329, 29.955160, 35.171188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789417, 29.967358, 34.983509>,  <28.037897, 29.987688, 34.670708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789417, 29.967358, 34.983509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574113, -0.708730, 0.409996,
		0.533389, 0.703647, 0.469443,
		-0.621201, -0.050826, 0.782002,
		27.603058, 29.952110, 35.218109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463938, 29.893167, 35.289352>,  <28.037897, 29.987688, 34.670708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463938, 29.893167, 35.289352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104366, 29.772808, 35.416718>,  <27.888624, 29.700592, 35.493137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104366, 29.772808, 35.416718>,  <28.463938, 29.893167, 35.289352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104366, 29.772808, 35.416718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401771, -0.855994, 0.325353,
		0.174660, 0.420398, 0.890370,
		-0.898929, -0.300899, 0.318411,
		27.834688, 29.682539, 35.512241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554615, 29.706287, 35.925694>,  <28.463938, 29.893167, 35.289352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554615, 29.706287, 35.925694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205101, 29.517460, 35.878960>,  <27.995392, 29.404163, 35.850918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205101, 29.517460, 35.878960>,  <28.554615, 29.706287, 35.925694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205101, 29.517460, 35.878960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354335, -0.782560, 0.511905,
		-0.333083, 0.405897, 0.851060,
		-0.873786, -0.472068, -0.116834,
		27.942965, 29.375839, 35.843910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217609, 29.562317, 36.567417>,  <28.554615, 29.706287, 35.925694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217609, 29.562317, 36.567417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055758, 29.284327, 36.329666>,  <27.958647, 29.117533, 36.187016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055758, 29.284327, 36.329666>,  <28.217609, 29.562317, 36.567417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055758, 29.284327, 36.329666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405937, -0.718918, 0.564245,
		-0.819444, -0.012969, 0.573013,
		-0.404632, -0.694974, -0.594378,
		27.934368, 29.075834, 36.151352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008266, 29.077660, 37.093731>,  <28.217609, 29.562317, 36.567417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008266, 29.077660, 37.093731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998381, 28.893682, 36.738689>,  <27.992449, 28.783297, 36.525665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998381, 28.893682, 36.738689>,  <28.008266, 29.077660, 37.093731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998381, 28.893682, 36.738689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266832, -0.858700, 0.437532,
		-0.963426, -0.226027, 0.143951,
		-0.024716, -0.459941, -0.887606,
		27.990965, 28.755701, 36.472408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597582, 28.457462, 37.172447>,  <28.008266, 29.077660, 37.093731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597582, 28.457462, 37.172447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848341, 28.419226, 36.863163>,  <27.998796, 28.396284, 36.677593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848341, 28.419226, 36.863163>,  <27.597582, 28.457462, 37.172447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848341, 28.419226, 36.863163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485127, -0.728675, 0.483409,
		-0.609631, -0.678156, -0.410432,
		0.626898, -0.095590, -0.773214,
		28.036411, 28.390549, 36.631199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635126, 27.770512, 37.119137>,  <27.597582, 28.457462, 37.172447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635126, 27.770512, 37.119137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954229, 27.890099, 36.909679>,  <28.145691, 27.961851, 36.784004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954229, 27.890099, 36.909679>,  <27.635126, 27.770512, 37.119137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954229, 27.890099, 36.909679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554567, -0.704720, 0.442522,
		-0.236719, -0.643419, -0.727995,
		0.797759, 0.298969, -0.523639,
		28.193558, 27.979790, 36.752586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977459, 27.176153, 36.941746>,  <27.635126, 27.770512, 37.119137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977459, 27.176153, 36.941746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267443, 27.443733, 36.876095>,  <28.441433, 27.604282, 36.836704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267443, 27.443733, 36.876095>,  <27.977459, 27.176153, 36.941746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267443, 27.443733, 36.876095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681126, -0.660791, 0.315315,
		0.102479, -0.340380, -0.934687,
		0.724959, 0.668952, -0.164124,
		28.484930, 27.644419, 36.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469318, 26.791620, 36.600430>,  <27.977459, 27.176153, 36.941746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469318, 26.791620, 36.600430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645319, 27.113916, 36.759014>,  <28.750919, 27.307293, 36.854164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645319, 27.113916, 36.759014>,  <28.469318, 26.791620, 36.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645319, 27.113916, 36.759014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619731, -0.591968, 0.515274,
		0.649869, 0.018978, -0.759809,
		0.440003, 0.805738, 0.396463,
		28.777321, 27.355639, 36.877953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138405, 26.609867, 36.495117>,  <28.469318, 26.791620, 36.600430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138405, 26.609867, 36.495117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094662, 26.862822, 36.801876>,  <29.068415, 27.014593, 36.985931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094662, 26.862822, 36.801876>,  <29.138405, 26.609867, 36.495117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094662, 26.862822, 36.801876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751514, -0.452372, 0.480193,
		0.650590, 0.628848, -0.425774,
		-0.109360, 0.632384, 0.766897,
		29.061853, 27.052536, 37.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855650, 26.859385, 36.757057>,  <29.138405, 26.609867, 36.495117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855650, 26.859385, 36.757057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601944, 26.869375, 37.066143>,  <29.449720, 26.875370, 37.251595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601944, 26.869375, 37.066143>,  <29.855650, 26.859385, 36.757057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601944, 26.869375, 37.066143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762612, -0.143984, 0.630627,
		0.127010, 0.989265, 0.072276,
		-0.634264, 0.024977, 0.772713,
		29.411665, 26.876869, 37.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222607, 27.216610, 37.330463>,  <29.855650, 26.859385, 36.757057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222607, 27.216610, 37.330463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946392, 26.975662, 37.490620>,  <29.780663, 26.831093, 37.586712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946392, 26.975662, 37.490620>,  <30.222607, 27.216610, 37.330463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946392, 26.975662, 37.490620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619976, -0.207820, 0.756598,
		-0.372544, 0.770688, 0.516963,
		-0.690537, -0.602370, 0.400386,
		29.739231, 26.794950, 37.610737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769514, 27.400452, 37.487198>,  <30.222607, 27.216610, 37.330463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769514, 27.400452, 37.487198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134697, 27.355190, 37.644020>,  <31.353806, 27.328033, 37.738113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134697, 27.355190, 37.644020>,  <30.769514, 27.400452, 37.487198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134697, 27.355190, 37.644020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119132, 0.992836, 0.009137,
		-0.390281, 0.038365, 0.919896,
		0.912956, -0.113155, 0.392056,
		31.408585, 27.321243, 37.761639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844097, 27.659828, 38.189095>,  <30.769514, 27.400452, 37.487198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844097, 27.659828, 38.189095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200541, 27.675461, 38.008251>,  <31.414406, 27.684841, 37.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200541, 27.675461, 38.008251>,  <30.844097, 27.659828, 38.189095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200541, 27.675461, 38.008251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039977, 0.999172, 0.007581,
		0.452026, 0.011318, 0.891933,
		0.891109, 0.039083, -0.452104,
		31.467873, 27.687185, 37.872620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102575, 28.172323, 38.559822>,  <30.844097, 27.659828, 38.189095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102575, 28.172323, 38.559822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311039, 28.173420, 38.218441>,  <31.436117, 28.174078, 38.013611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311039, 28.173420, 38.218441>,  <31.102575, 28.172323, 38.559822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311039, 28.173420, 38.218441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120510, 0.990212, -0.070405,
		0.844910, 0.139542, 0.516387,
		0.521157, 0.002744, -0.853456,
		31.467386, 28.174244, 37.962402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555370, 28.773506, 38.483036>,  <31.102575, 28.172323, 38.559822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555370, 28.773506, 38.483036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459143, 28.660320, 38.111649>,  <31.401405, 28.592409, 37.888817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459143, 28.660320, 38.111649>,  <31.555370, 28.773506, 38.483036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459143, 28.660320, 38.111649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159918, 0.955045, -0.249631,
		0.957368, 0.088426, -0.275004,
		-0.240567, -0.282967, -0.928470,
		31.386972, 28.575430, 37.833107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934914, 29.173344, 38.050873>,  <31.555370, 28.773506, 38.483036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934914, 29.173344, 38.050873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601908, 29.076220, 37.851688>,  <31.402103, 29.017944, 37.732178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601908, 29.076220, 37.851688>,  <31.934914, 29.173344, 38.050873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601908, 29.076220, 37.851688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151557, 0.964366, -0.216859,
		0.532869, -0.105070, -0.839650,
		-0.832515, -0.242812, -0.497957,
		31.352154, 29.003376, 37.702301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852482, 29.613844, 37.558792>,  <31.934914, 29.173344, 38.050873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852482, 29.613844, 37.558792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479872, 29.469664, 37.578114>,  <31.256306, 29.383156, 37.589706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479872, 29.469664, 37.578114>,  <31.852482, 29.613844, 37.558792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479872, 29.469664, 37.578114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357758, 0.884402, -0.299737,
		0.065325, -0.296492, -0.952798,
		-0.931527, -0.360452, 0.048299,
		31.200415, 29.361528, 37.592602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536333, 29.789879, 36.953568>,  <31.852482, 29.613844, 37.558792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536333, 29.789879, 36.953568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251272, 29.769672, 37.233444>,  <31.080235, 29.757547, 37.401371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251272, 29.769672, 37.233444>,  <31.536333, 29.789879, 36.953568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251272, 29.769672, 37.233444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401450, 0.847311, -0.347710,
		-0.575294, -0.528689, -0.624120,
		-0.712654, -0.050518, 0.699695,
		31.037476, 29.754517, 37.443352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919828, 29.925602, 36.603645>,  <31.536333, 29.789879, 36.953568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919828, 29.925602, 36.603645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892260, 30.023891, 36.990398>,  <30.875719, 30.082865, 37.222450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892260, 30.023891, 36.990398>,  <30.919828, 29.925602, 36.603645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892260, 30.023891, 36.990398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349959, 0.901647, -0.254091,
		-0.934226, -0.355883, 0.023851,
		-0.068922, 0.245726, 0.966886,
		30.871584, 30.097609, 37.280464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196453, 29.971741, 36.662975>,  <30.919828, 29.925602, 36.603645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196453, 29.971741, 36.662975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364103, 30.200714, 36.944870>,  <30.464693, 30.338099, 37.114006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364103, 30.200714, 36.944870>,  <30.196453, 29.971741, 36.662975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364103, 30.200714, 36.944870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488389, 0.796484, -0.356496,
		-0.765382, -0.194769, 0.613397,
		0.419126, 0.572432, 0.704738,
		30.489841, 30.372444, 37.156292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673115, 30.483791, 36.772346>,  <30.196453, 29.971741, 36.662975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673115, 30.483791, 36.772346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979856, 30.641697, 36.974770>,  <30.163902, 30.736441, 37.096222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979856, 30.641697, 36.974770>,  <29.673115, 30.483791, 36.772346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979856, 30.641697, 36.974770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292060, 0.916741, -0.272556,
		-0.571518, 0.061212, 0.818303,
		0.766855, 0.394764, 0.506057,
		30.209913, 30.760126, 37.126587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415615, 31.076591, 37.201649>,  <29.673115, 30.483791, 36.772346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415615, 31.076591, 37.201649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807787, 31.145081, 37.162785>,  <30.043091, 31.186174, 37.139465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807787, 31.145081, 37.162785>,  <29.415615, 31.076591, 37.201649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807787, 31.145081, 37.162785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172650, 0.984962, -0.006405,
		0.094606, 0.023055, 0.995248,
		0.980429, 0.171223, -0.097164,
		30.101915, 31.196447, 37.133636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582350, 31.521889, 37.655811>,  <29.415615, 31.076591, 37.201649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582350, 31.521889, 37.655811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875725, 31.541979, 37.384651>,  <30.051750, 31.554033, 37.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875725, 31.541979, 37.384651>,  <29.582350, 31.521889, 37.655811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875725, 31.541979, 37.384651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173016, 0.978216, -0.114715,
		0.657370, 0.201424, 0.726150,
		0.733437, 0.050225, -0.677899,
		30.095757, 31.557047, 37.181282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790579, 32.186295, 37.758842>,  <29.582350, 31.521889, 37.655811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790579, 32.186295, 37.758842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957235, 32.070370, 37.414188>,  <30.057230, 32.000813, 37.207397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957235, 32.070370, 37.414188>,  <29.790579, 32.186295, 37.758842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957235, 32.070370, 37.414188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049638, 0.939153, -0.339893,
		0.907714, 0.184384, 0.376906,
		0.416643, -0.289817, -0.861635,
		30.082228, 31.983425, 37.155697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220108, 32.654602, 37.782825>,  <29.790579, 32.186295, 37.758842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220108, 32.654602, 37.782825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163372, 32.515095, 37.412258>,  <30.129330, 32.431393, 37.189919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163372, 32.515095, 37.412258>,  <30.220108, 32.654602, 37.782825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163372, 32.515095, 37.412258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213375, 0.924648, -0.315432,
		0.966619, 0.152933, -0.205572,
		-0.141842, -0.348766, -0.926414,
		30.120819, 32.410465, 37.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488684, 33.107170, 37.256992>,  <30.220108, 32.654602, 37.782825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488684, 33.107170, 37.256992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267626, 32.880066, 37.012951>,  <30.134991, 32.743801, 36.866524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267626, 32.880066, 37.012951>,  <30.488684, 33.107170, 37.256992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267626, 32.880066, 37.012951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254041, 0.811976, -0.525508,
		0.793755, -0.135428, -0.592969,
		-0.552645, -0.567763, -0.610105,
		30.101833, 32.709736, 36.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663357, 33.309853, 36.560551>,  <30.488684, 33.107170, 37.256992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663357, 33.309853, 36.560551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304136, 33.133923, 36.557549>,  <30.088604, 33.028366, 36.555748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304136, 33.133923, 36.557549>,  <30.663357, 33.309853, 36.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304136, 33.133923, 36.557549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367469, 0.759479, -0.536803,
		0.241800, -0.479319, -0.843674,
		-0.898053, -0.439823, -0.007508,
		30.034719, 33.001976, 36.555298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437777, 33.331821, 35.824131>,  <30.663357, 33.309853, 36.560551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437777, 33.331821, 35.824131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115150, 33.249409, 36.045761>,  <29.921576, 33.199959, 36.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115150, 33.249409, 36.045761>,  <30.437777, 33.331821, 35.824131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115150, 33.249409, 36.045761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502815, 0.731990, -0.459748,
		-0.310856, -0.649416, -0.693994,
		-0.806564, -0.206036, 0.554079,
		29.873180, 33.187599, 36.211987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854296, 33.207729, 35.339432>,  <30.437777, 33.331821, 35.824131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854296, 33.207729, 35.339432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697685, 33.294708, 35.697075>,  <29.603718, 33.346897, 35.911659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697685, 33.294708, 35.697075>,  <29.854296, 33.207729, 35.339432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697685, 33.294708, 35.697075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448141, 0.803591, -0.391678,
		-0.803664, -0.554037, -0.217179,
		-0.391527, 0.217450, 0.894104,
		29.580227, 33.359943, 35.965305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207331, 33.333538, 35.196518>,  <29.854296, 33.207729, 35.339432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207331, 33.333538, 35.196518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280649, 33.492641, 35.556114>,  <29.324640, 33.588104, 35.771873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280649, 33.492641, 35.556114>,  <29.207331, 33.333538, 35.196518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280649, 33.492641, 35.556114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331014, 0.886058, -0.324547,
		-0.925653, -0.238092, 0.294073,
		0.183294, 0.397760, 0.898994,
		29.335638, 33.611969, 35.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539560, 33.764179, 35.323906>,  <29.207331, 33.333538, 35.196518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539560, 33.764179, 35.323906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824873, 33.884933, 35.576916>,  <28.996061, 33.957386, 35.728722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824873, 33.884933, 35.576916>,  <28.539560, 33.764179, 35.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824873, 33.884933, 35.576916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308442, 0.945598, -0.103483,
		-0.629358, -0.121286, 0.767593,
		0.713283, 0.301885, 0.632529,
		29.038858, 33.975498, 35.766674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251642, 34.254822, 35.650463>,  <28.539560, 33.764179, 35.323906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251642, 34.254822, 35.650463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644464, 34.318058, 35.691601>,  <28.880157, 34.355999, 35.716282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644464, 34.318058, 35.691601>,  <28.251642, 34.254822, 35.650463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644464, 34.318058, 35.691601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128327, 0.959738, -0.249870,
		-0.138201, 0.232189, 0.962803,
		0.982055, 0.158086, 0.102840,
		28.939081, 34.365482, 35.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324280, 34.890202, 36.021938>,  <28.251642, 34.254822, 35.650463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324280, 34.890202, 36.021938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673838, 34.823620, 35.839245>,  <28.883572, 34.783672, 35.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673838, 34.823620, 35.839245>,  <28.324280, 34.890202, 36.021938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673838, 34.823620, 35.839245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067123, 0.971867, -0.225762,
		0.481463, 0.166634, 0.860480,
		0.873892, -0.166454, -0.456733,
		28.936005, 34.773685, 35.702225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732138, 35.456940, 36.192341>,  <28.324280, 34.890202, 36.021938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732138, 35.456940, 36.192341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916920, 35.294941, 35.876728>,  <29.027790, 35.197742, 35.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916920, 35.294941, 35.876728>,  <28.732138, 35.456940, 36.192341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916920, 35.294941, 35.876728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066208, 0.902916, -0.424687,
		0.884428, 0.143947, 0.443922,
		0.461957, -0.404996, -0.789034,
		29.055508, 35.173443, 35.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285177, 35.857449, 36.118923>,  <28.732138, 35.456940, 36.192341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285177, 35.857449, 36.118923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228846, 35.673695, 35.768120>,  <29.195047, 35.563442, 35.557640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228846, 35.673695, 35.768120>,  <29.285177, 35.857449, 36.118923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228846, 35.673695, 35.768120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051704, 0.881211, -0.469888,
		0.988683, -0.111519, -0.100348,
		-0.140829, -0.459382, -0.877004,
		29.186596, 35.535881, 35.505020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753382, 36.088741, 35.576366>,  <29.285177, 35.857449, 36.118923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753382, 36.088741, 35.576366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428911, 35.958412, 35.382118>,  <29.234228, 35.880215, 35.265568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428911, 35.958412, 35.382118>,  <29.753382, 36.088741, 35.576366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428911, 35.958412, 35.382118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022109, 0.846900, -0.531292,
		0.584383, -0.420235, -0.694190,
		-0.811177, -0.325826, -0.485623,
		29.185558, 35.860664, 35.236431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979179, 36.394539, 34.977718>,  <29.753382, 36.088741, 35.576366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979179, 36.394539, 34.977718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285913, 36.537239, 34.764294>,  <30.469954, 36.622860, 34.636238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285913, 36.537239, 34.764294>,  <29.979179, 36.394539, 34.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285913, 36.537239, 34.764294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606538, -0.130872, 0.784209,
		0.209937, -0.924988, -0.316739,
		0.766836, 0.356749, -0.533565,
		30.515965, 36.644264, 34.604225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452477, 35.853848, 35.048347>,  <29.979179, 36.394539, 34.977718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452477, 35.853848, 35.048347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643349, 36.204247, 35.020260>,  <30.757872, 36.414486, 35.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643349, 36.204247, 35.020260>,  <30.452477, 35.853848, 35.048347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643349, 36.204247, 35.020260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360910, -0.122485, 0.924522,
		0.801275, -0.466509, -0.374603,
		0.477181, 0.875995, -0.070223,
		30.786503, 36.467045, 34.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277712, 35.718021, 35.127544>,  <30.452477, 35.853848, 35.048347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277712, 35.718021, 35.127544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186268, 36.089291, 35.245010>,  <31.131401, 36.312050, 35.315491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186268, 36.089291, 35.245010>,  <31.277712, 35.718021, 35.127544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186268, 36.089291, 35.245010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436889, -0.171755, 0.882966,
		0.869981, 0.330151, -0.366243,
		-0.228608, 0.928171, 0.293662,
		31.117685, 36.367741, 35.333111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904202, 36.200142, 35.321251>,  <31.277712, 35.718021, 35.127544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904202, 36.200142, 35.321251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575270, 36.311207, 35.519917>,  <31.377911, 36.377846, 35.639118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575270, 36.311207, 35.519917>,  <31.904202, 36.200142, 35.321251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575270, 36.311207, 35.519917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507399, -0.037222, 0.860907,
		0.257529, 0.959957, -0.110278,
		-0.822329, 0.277664, 0.496667,
		31.328571, 36.394505, 35.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959595, 36.968098, 35.246311>,  <31.904202, 36.200142, 35.321251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959595, 36.968098, 35.246311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131390, 37.169434, 34.946392>,  <32.234467, 37.290234, 34.766441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131390, 37.169434, 34.946392>,  <31.959595, 36.968098, 35.246311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131390, 37.169434, 34.946392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380672, -0.853808, -0.355108,
		-0.818919, -0.132911, -0.558306,
		0.429489, 0.503336, -0.749795,
		32.260235, 37.320435, 34.721455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018753, 37.054424, 35.887470>,  <31.959595, 36.968098, 35.246311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018753, 37.054424, 35.887470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279774, 36.765305, 35.978443>,  <32.436386, 36.591831, 36.033028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279774, 36.765305, 35.978443>,  <32.018753, 37.054424, 35.887470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279774, 36.765305, 35.978443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348448, 0.552775, 0.756984,
		-0.672871, -0.414725, 0.612575,
		0.652556, -0.722803, 0.227436,
		32.475540, 36.548462, 36.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110184, 37.194672, 36.512321>,  <32.018753, 37.054424, 35.887470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110184, 37.194672, 36.512321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433739, 36.987022, 36.401897>,  <32.627872, 36.862434, 36.335644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433739, 36.987022, 36.401897>,  <32.110184, 37.194672, 36.512321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433739, 36.987022, 36.401897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544569, 0.484454, 0.684653,
		-0.221677, -0.704144, 0.674567,
		0.808890, -0.519120, -0.276063,
		32.676407, 36.831287, 36.319080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280762, 36.677902, 37.125648>,  <32.110184, 37.194672, 36.512321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280762, 36.677902, 37.125648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566532, 36.845337, 36.901367>,  <32.737995, 36.945797, 36.766800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566532, 36.845337, 36.901367>,  <32.280762, 36.677902, 37.125648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566532, 36.845337, 36.901367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429698, 0.369972, 0.823699,
		0.552231, -0.829402, 0.084452,
		0.714423, 0.418583, -0.560702,
		32.780861, 36.970913, 36.733158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037018, 36.550396, 37.442402>,  <32.280762, 36.677902, 37.125648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037018, 36.550396, 37.442402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020245, 36.904446, 37.257015>,  <33.010181, 37.116875, 37.145782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020245, 36.904446, 37.257015>,  <33.037018, 36.550396, 37.442402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020245, 36.904446, 37.257015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357133, 0.446505, 0.820420,
		0.933112, -0.131115, -0.334831,
		-0.041934, 0.885122, -0.463465,
		33.007664, 37.169983, 37.117977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676701, 36.954437, 37.349731>,  <33.037018, 36.550396, 37.442402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676701, 36.954437, 37.349731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389904, 37.233269, 37.348679>,  <33.217827, 37.400566, 37.348045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389904, 37.233269, 37.348679>,  <33.676701, 36.954437, 37.349731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389904, 37.233269, 37.348679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459100, 0.475047, 0.750705,
		0.524552, 0.537038, -0.660633,
		-0.716988, 0.697080, -0.002633,
		33.174809, 37.442394, 37.347889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842930, 37.631763, 37.205509>,  <33.676701, 36.954437, 37.349731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842930, 37.631763, 37.205509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531261, 37.667645, 37.453655>,  <33.344261, 37.689175, 37.602543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531261, 37.667645, 37.453655>,  <33.842930, 37.631763, 37.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531261, 37.667645, 37.453655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537861, 0.603906, 0.588220,
		-0.321875, 0.791992, -0.518793,
		-0.779167, 0.089705, 0.620364,
		33.297512, 37.694557, 37.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616261, 38.394043, 37.209949>,  <33.842930, 37.631763, 37.205509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616261, 38.394043, 37.209949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513725, 38.208027, 37.548897>,  <33.452206, 38.096416, 37.752266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513725, 38.208027, 37.548897>,  <33.616261, 38.394043, 37.209949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513725, 38.208027, 37.548897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431104, 0.729629, 0.530840,
		-0.865124, 0.501377, 0.013448,
		-0.256339, -0.465040, 0.847366,
		33.436825, 38.068516, 37.803108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356167, 38.941296, 37.589787>,  <33.616261, 38.394043, 37.209949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356167, 38.941296, 37.589787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452675, 38.651588, 37.848156>,  <33.510578, 38.477764, 38.003178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452675, 38.651588, 37.848156>,  <33.356167, 38.941296, 37.589787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452675, 38.651588, 37.848156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122633, 0.683009, 0.720042,
		-0.962679, -0.094511, 0.253608,
		0.241268, -0.724270, 0.645928,
		33.525055, 38.434307, 38.041935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878193, 39.073204, 38.196606>,  <33.356167, 38.941296, 37.589787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878193, 39.073204, 38.196606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170254, 38.832649, 38.326351>,  <33.345490, 38.688316, 38.404198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170254, 38.832649, 38.326351>,  <32.878193, 39.073204, 38.196606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170254, 38.832649, 38.326351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065644, 0.534253, 0.842772,
		-0.680125, -0.594058, 0.429563,
		0.730151, -0.601389, 0.324362,
		33.389297, 38.652233, 38.423660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707527, 38.940369, 38.872993>,  <32.878193, 39.073204, 38.196606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707527, 38.940369, 38.872993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093582, 38.835941, 38.865524>,  <33.325214, 38.773285, 38.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093582, 38.835941, 38.865524>,  <32.707527, 38.940369, 38.872993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093582, 38.835941, 38.865524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128209, 0.409353, 0.903323,
		-0.228189, -0.874226, 0.428554,
		0.965138, -0.261073, -0.018674,
		33.383125, 38.757618, 38.859921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805305, 38.702206, 39.499798>,  <32.707527, 38.940369, 38.872993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805305, 38.702206, 39.499798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180027, 38.764618, 39.374546>,  <33.404861, 38.802063, 39.299397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180027, 38.764618, 39.374546>,  <32.805305, 38.702206, 39.499798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180027, 38.764618, 39.374546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193597, 0.514314, 0.835465,
		0.291402, -0.843289, 0.451606,
		0.936806, 0.156027, -0.313130,
		33.461067, 38.811424, 39.280605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317841, 38.536972, 40.031872>,  <32.805305, 38.702206, 39.499798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317841, 38.536972, 40.031872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496052, 38.791092, 39.779556>,  <33.602978, 38.943565, 39.628166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496052, 38.791092, 39.779556>,  <33.317841, 38.536972, 40.031872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496052, 38.791092, 39.779556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297225, 0.559660, 0.773587,
		0.844490, -0.532141, 0.060517,
		0.445526, 0.635300, -0.630793,
		33.629711, 38.981682, 39.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121601, 38.534603, 40.233082>,  <33.317841, 38.536972, 40.031872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121601, 38.534603, 40.233082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994236, 38.874279, 40.064564>,  <33.917816, 39.078083, 39.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994236, 38.874279, 40.064564>,  <34.121601, 38.534603, 40.233082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994236, 38.874279, 40.064564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202605, 0.495124, 0.844869,
		0.926047, 0.183663, -0.329705,
		-0.318415, 0.849188, -0.421297,
		33.898712, 39.129036, 39.938175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587902, 38.967167, 40.496502>,  <34.121601, 38.534603, 40.233082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587902, 38.967167, 40.496502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294106, 39.202335, 40.360928>,  <34.117828, 39.343437, 40.279583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294106, 39.202335, 40.360928>,  <34.587902, 38.967167, 40.496502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294106, 39.202335, 40.360928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178881, 0.649516, 0.739006,
		0.654620, 0.482163, -0.582230,
		-0.734489, 0.587918, -0.338936,
		34.073757, 39.378712, 40.259247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825676, 39.746742, 40.480648>,  <34.587902, 38.967167, 40.496502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825676, 39.746742, 40.480648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426800, 39.771023, 40.498180>,  <34.187473, 39.785591, 40.508698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426800, 39.771023, 40.498180>,  <34.825676, 39.746742, 40.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426800, 39.771023, 40.498180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073756, 0.695875, 0.714365,
		0.012863, 0.715593, -0.698399,
		-0.997193, 0.060700, 0.043829,
		34.127644, 39.789234, 40.511330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552834, 40.414314, 40.295258>,  <34.825676, 39.746742, 40.480648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552834, 40.414314, 40.295258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265274, 40.248825, 40.518692>,  <34.092739, 40.149532, 40.652752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265274, 40.248825, 40.518692>,  <34.552834, 40.414314, 40.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265274, 40.248825, 40.518692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068733, 0.757340, 0.649393,
		-0.691707, 0.505242, -0.516016,
		-0.718900, -0.413722, 0.558584,
		34.049603, 40.124710, 40.686268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309204, 41.079678, 40.595558>,  <34.552834, 40.414314, 40.295258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309204, 41.079678, 40.595558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115982, 40.794689, 40.799141>,  <34.000050, 40.623695, 40.921291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115982, 40.794689, 40.799141>,  <34.309204, 41.079678, 40.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115982, 40.794689, 40.799141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176357, 0.648535, 0.740474,
		-0.857644, 0.267932, -0.438929,
		-0.483057, -0.712471, 0.508960,
		33.971066, 40.580948, 40.951828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686340, 41.379890, 40.877106>,  <34.309204, 41.079678, 40.595558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686340, 41.379890, 40.877106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750214, 41.052799, 41.098309>,  <33.788540, 40.856544, 41.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750214, 41.052799, 41.098309>,  <33.686340, 41.379890, 40.877106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750214, 41.052799, 41.098309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313219, 0.489282, 0.813939,
		-0.936159, -0.303188, -0.177996,
		0.159686, -0.817729, 0.553010,
		33.798119, 40.807480, 41.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092621, 41.346943, 41.374207>,  <33.686340, 41.379890, 40.877106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092621, 41.346943, 41.374207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366306, 41.104370, 41.536236>,  <33.530518, 40.958824, 41.633453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366306, 41.104370, 41.536236>,  <33.092621, 41.346943, 41.374207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366306, 41.104370, 41.536236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271762, 0.303413, 0.913283,
		-0.676752, -0.734967, 0.042794,
		0.684217, -0.606436, 0.405072,
		33.571571, 40.922440, 41.657757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663521, 40.906178, 42.002220>,  <33.092621, 41.346943, 41.374207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663521, 40.906178, 42.002220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058983, 40.944866, 42.048199>,  <33.296261, 40.968079, 42.075787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058983, 40.944866, 42.048199>,  <32.663521, 40.906178, 42.002220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058983, 40.944866, 42.048199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138490, 0.290357, 0.946844,
		0.058201, -0.952018, 0.300456,
		0.988652, 0.096718, 0.114946,
		33.355579, 40.973881, 42.082684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803440, 40.561974, 42.608799>,  <32.663521, 40.906178, 42.002220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803440, 40.561974, 42.608799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120941, 40.803394, 42.578648>,  <33.311443, 40.948246, 42.560555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120941, 40.803394, 42.578648>,  <32.803440, 40.561974, 42.608799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120941, 40.803394, 42.578648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220448, 0.400977, 0.889168,
		0.566882, -0.689164, 0.451329,
		0.793755, 0.603548, -0.075382,
		33.359066, 40.984459, 42.556034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183346, 40.490540, 43.256199>,  <32.803440, 40.561974, 42.608799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183346, 40.490540, 43.256199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314396, 40.826687, 43.083481>,  <33.393024, 41.028374, 42.979851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314396, 40.826687, 43.083481>,  <33.183346, 40.490540, 43.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314396, 40.826687, 43.083481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020649, 0.463283, 0.885970,
		0.944582, -0.281349, 0.169135,
		0.327624, 0.840364, -0.431800,
		33.412682, 41.078796, 42.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793285, 40.665001, 43.612720>,  <33.183346, 40.490540, 43.256199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793285, 40.665001, 43.612720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639240, 40.984516, 43.427841>,  <33.546814, 41.176224, 43.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639240, 40.984516, 43.427841>,  <33.793285, 40.665001, 43.612720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639240, 40.984516, 43.427841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040990, 0.485528, 0.873260,
		0.921958, 0.355250, -0.154242,
		-0.385114, 0.798787, -0.462198,
		33.523705, 41.224152, 43.289181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122345, 41.253902, 43.875900>,  <33.793285, 40.665001, 43.612720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122345, 41.253902, 43.875900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795158, 41.413631, 43.710266>,  <33.598846, 41.509468, 43.610886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795158, 41.413631, 43.710266>,  <34.122345, 41.253902, 43.875900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795158, 41.413631, 43.710266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170694, 0.518924, 0.837605,
		0.549356, 0.755816, -0.356301,
		-0.817968, 0.399325, -0.414087,
		33.549767, 41.533428, 43.586040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085220, 42.017563, 44.028275>,  <34.122345, 41.253902, 43.875900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085220, 42.017563, 44.028275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705700, 41.916248, 43.952785>,  <33.477985, 41.855461, 43.907494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705700, 41.916248, 43.952785>,  <34.085220, 42.017563, 44.028275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705700, 41.916248, 43.952785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305041, 0.579722, 0.755561,
		-0.081969, 0.774447, -0.627306,
		-0.948805, -0.253286, -0.188719,
		33.421059, 41.840263, 43.896172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613823, 42.630375, 44.115177>,  <34.085220, 42.017563, 44.028275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613823, 42.630375, 44.115177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361374, 42.322823, 44.156178>,  <33.209904, 42.138290, 44.180779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361374, 42.322823, 44.156178>,  <33.613823, 42.630375, 44.115177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361374, 42.322823, 44.156178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297511, 0.361983, 0.883434,
		-0.716359, 0.527060, -0.457206,
		-0.631123, -0.768880, 0.102504,
		33.172035, 42.092159, 44.186928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130417, 42.985653, 44.418743>,  <33.613823, 42.630375, 44.115177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130417, 42.985653, 44.418743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071232, 42.595840, 44.486141>,  <33.035721, 42.361954, 44.526581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071232, 42.595840, 44.486141>,  <33.130417, 42.985653, 44.418743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071232, 42.595840, 44.486141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405284, 0.215153, 0.888512,
		-0.902138, 0.063177, -0.426798,
		-0.147961, -0.974535, 0.168493,
		33.026844, 42.303478, 44.536690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468643, 42.938229, 44.772949>,  <33.130417, 42.985653, 44.418743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468643, 42.938229, 44.772949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631683, 42.581116, 44.849678>,  <32.729507, 42.366848, 44.895718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631683, 42.581116, 44.849678>,  <32.468643, 42.938229, 44.772949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631683, 42.581116, 44.849678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251387, 0.092245, 0.963481,
		-0.877874, -0.440941, -0.186835,
		0.407603, -0.892783, 0.191826,
		32.753963, 42.313282, 44.907227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977587, 42.601791, 45.241783>,  <32.468643, 42.938229, 44.772949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977587, 42.601791, 45.241783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314205, 42.386742, 45.262787>,  <32.516174, 42.257710, 45.275387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314205, 42.386742, 45.262787>,  <31.977587, 42.601791, 45.241783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314205, 42.386742, 45.262787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153391, -0.144633, 0.977524,
		-0.517951, -0.830684, -0.204182,
		0.841545, -0.537629, 0.052507,
		32.566669, 42.225452, 45.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819777, 42.080143, 45.789627>,  <31.977587, 42.601791, 45.241783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819777, 42.080143, 45.789627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219196, 42.100159, 45.781666>,  <32.458847, 42.112167, 45.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219196, 42.100159, 45.781666>,  <31.819777, 42.080143, 45.789627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219196, 42.100159, 45.781666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016894, 0.059889, 0.998062,
		0.051098, -0.996952, 0.058957,
		0.998551, 0.050003, -0.019903,
		32.518761, 42.115170, 45.775696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078835, 41.589203, 46.282631>,  <31.819777, 42.080143, 45.789627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078835, 41.589203, 46.282631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374798, 41.849682, 46.215134>,  <32.552376, 42.005970, 46.174637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374798, 41.849682, 46.215134>,  <32.078835, 41.589203, 46.282631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374798, 41.849682, 46.215134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040263, 0.207517, 0.977402,
		0.671497, -0.729986, 0.127325,
		0.739912, 0.651196, -0.168739,
		32.596771, 42.045040, 46.164513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655006, 41.531605, 46.887333>,  <32.078835, 41.589203, 46.282631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655006, 41.531605, 46.887333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716167, 41.893272, 46.727779>,  <32.752865, 42.110271, 46.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716167, 41.893272, 46.727779>,  <32.655006, 41.531605, 46.887333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716167, 41.893272, 46.727779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323301, 0.335648, 0.884770,
		0.933861, -0.264245, -0.240994,
		0.152907, 0.904165, -0.398880,
		32.762039, 42.164520, 46.608116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294830, 41.753380, 47.053677>,  <32.655006, 41.531605, 46.887333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294830, 41.753380, 47.053677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088509, 42.085960, 46.971092>,  <32.964714, 42.285511, 46.921543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088509, 42.085960, 46.971092>,  <33.294830, 41.753380, 47.053677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088509, 42.085960, 46.971092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358747, 0.428475, 0.829283,
		0.777975, 0.353681, -0.519292,
		-0.515805, 0.831456, -0.206461,
		32.933765, 42.335396, 46.909153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662861, 42.255692, 47.266079>,  <33.294830, 41.753380, 47.053677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662861, 42.255692, 47.266079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311298, 42.446037, 47.252968>,  <33.100361, 42.560246, 47.245102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311298, 42.446037, 47.252968>,  <33.662861, 42.255692, 47.266079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311298, 42.446037, 47.252968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243290, 0.506338, 0.827304,
		0.410285, 0.719147, -0.560798,
		-0.878906, 0.475867, -0.032782,
		33.047626, 42.588799, 47.243134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799446, 42.928623, 47.451916>,  <33.662861, 42.255692, 47.266079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799446, 42.928623, 47.451916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403725, 42.914074, 47.508434>,  <33.166294, 42.905346, 47.542347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403725, 42.914074, 47.508434>,  <33.799446, 42.928623, 47.451916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403725, 42.914074, 47.508434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094569, 0.577625, 0.810806,
		-0.111105, 0.815492, -0.568005,
		-0.989299, -0.036369, 0.141297,
		33.106934, 42.903164, 47.550823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648808, 43.550808, 47.669308>,  <33.799446, 42.928623, 47.451916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648808, 43.550808, 47.669308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320591, 43.352055, 47.782322>,  <33.123661, 43.232803, 47.850128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320591, 43.352055, 47.782322>,  <33.648808, 43.550808, 47.669308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320591, 43.352055, 47.782322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073002, 0.581346, 0.810375,
		-0.566907, 0.644320, -0.513291,
		-0.820541, -0.496879, 0.282532,
		33.074429, 43.202991, 47.867081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112411, 44.048176, 47.829304>,  <33.648808, 43.550808, 47.669308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112411, 44.048176, 47.829304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056187, 43.724487, 48.057484>,  <33.022453, 43.530273, 48.194389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056187, 43.724487, 48.057484>,  <33.112411, 44.048176, 47.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056187, 43.724487, 48.057484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011668, 0.574773, 0.818229,
		-0.990004, 0.121665, -0.071347,
		-0.140558, -0.809218, 0.570448,
		33.014019, 43.481724, 48.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780823, 44.314930, 48.354954>,  <33.112411, 44.048176, 47.829304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780823, 44.314930, 48.354954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859211, 43.944817, 48.484848>,  <32.906242, 43.722748, 48.562786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859211, 43.944817, 48.484848>,  <32.780823, 44.314930, 48.354954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859211, 43.944817, 48.484848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013413, 0.328598, 0.944375,
		-0.980518, -0.189424, 0.051985,
		0.195969, -0.925279, 0.324737,
		32.918003, 43.667233, 48.582268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406380, 44.225498, 48.959560>,  <32.780823, 44.314930, 48.354954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406380, 44.225498, 48.959560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682159, 43.939659, 49.006920>,  <32.847626, 43.768158, 49.035336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682159, 43.939659, 49.006920>,  <32.406380, 44.225498, 48.959560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682159, 43.939659, 49.006920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103676, 0.259128, 0.960262,
		-0.716879, -0.649774, 0.252741,
		0.689446, -0.714595, 0.118398,
		32.888992, 43.725281, 49.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137581, 43.740295, 49.504002>,  <32.406380, 44.225498, 48.959560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137581, 43.740295, 49.504002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525349, 43.648323, 49.469673>,  <32.758007, 43.593140, 49.449074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525349, 43.648323, 49.469673>,  <32.137581, 43.740295, 49.504002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525349, 43.648323, 49.469673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018932, -0.278592, 0.960223,
		-0.244698, -0.932479, -0.265718,
		0.969415, -0.229934, -0.085824,
		32.816174, 43.579342, 49.443928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102257, 43.105793, 49.754017>,  <32.137581, 43.740295, 49.504002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102257, 43.105793, 49.754017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485477, 43.218273, 49.776180>,  <32.715408, 43.285759, 49.789478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485477, 43.218273, 49.776180>,  <32.102257, 43.105793, 49.754017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485477, 43.218273, 49.776180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032565, -0.298862, 0.953740,
		0.284748, -0.911926, -0.295482,
		0.958049, 0.281198, 0.055404,
		32.772892, 43.302631, 49.792801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459877, 42.604427, 50.125126>,  <32.102257, 43.105793, 49.754017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459877, 42.604427, 50.125126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691658, 42.928398, 50.161461>,  <32.830727, 43.122780, 50.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691658, 42.928398, 50.161461>,  <32.459877, 42.604427, 50.125126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691658, 42.928398, 50.161461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031644, -0.089017, 0.995527,
		0.814390, -0.579737, -0.025952,
		0.579454, 0.809926, 0.090840,
		32.865494, 43.171375, 50.188713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018570, 42.423344, 50.530903>,  <32.459877, 42.604427, 50.125126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018570, 42.423344, 50.530903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969532, 42.818493, 50.569031>,  <32.940109, 43.055580, 50.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969532, 42.818493, 50.569031>,  <33.018570, 42.423344, 50.530903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969532, 42.818493, 50.569031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006227, -0.096804, 0.995284,
		0.992437, 0.121427, 0.018019,
		-0.122599, 0.987869, 0.095316,
		32.932751, 43.114853, 50.597626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620209, 42.629974, 50.973759>,  <33.018570, 42.423344, 50.530903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620209, 42.629974, 50.973759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327908, 42.903030, 50.973091>,  <33.152527, 43.066864, 50.972691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327908, 42.903030, 50.973091>,  <33.620209, 42.629974, 50.973759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327908, 42.903030, 50.973091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002158, 0.000128, 0.999998,
		0.682637, 0.730757, 0.001379,
		-0.730755, 0.682638, -0.001664,
		33.108681, 43.107822, 50.972591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782429, 43.087280, 51.555275>,  <33.620209, 42.629974, 50.973759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782429, 43.087280, 51.555275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400875, 43.183624, 51.483616>,  <33.171944, 43.241432, 51.440620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400875, 43.183624, 51.483616>,  <33.782429, 43.087280, 51.555275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400875, 43.183624, 51.483616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111856, 0.268601, 0.956735,
		0.278560, 0.932651, -0.229272,
		-0.953883, 0.240863, -0.179144,
		33.114712, 43.255882, 51.429874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712971, 43.677704, 51.805119>,  <33.782429, 43.087280, 51.555275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712971, 43.677704, 51.805119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361134, 43.487415, 51.806255>,  <33.150032, 43.373241, 51.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361134, 43.487415, 51.806255>,  <33.712971, 43.677704, 51.805119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361134, 43.487415, 51.806255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235735, 0.441040, 0.865975,
		-0.413215, 0.761036, -0.500079,
		-0.879592, -0.475720, 0.002841,
		33.097256, 43.344700, 51.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207607, 44.259716, 51.876644>,  <33.712971, 43.677704, 51.805119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207607, 44.259716, 51.876644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108620, 43.906837, 52.036888>,  <33.049225, 43.695110, 52.133034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108620, 43.906837, 52.036888>,  <33.207607, 44.259716, 51.876644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108620, 43.906837, 52.036888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268357, 0.459707, 0.846554,
		-0.930990, 0.101990, -0.350507,
		-0.247471, -0.882195, 0.400613,
		33.034378, 43.642178, 52.157074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557518, 44.312511, 52.326672>,  <33.207607, 44.259716, 51.876644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557518, 44.312511, 52.326672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807899, 44.028904, 52.456581>,  <32.958126, 43.858738, 52.534527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807899, 44.028904, 52.456581>,  <32.557518, 44.312511, 52.326672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807899, 44.028904, 52.456581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105410, 0.335704, 0.936051,
		-0.772707, -0.620155, 0.135396,
		0.625949, -0.709021, 0.324772,
		32.995686, 43.816196, 52.554012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073586, 44.599411, 52.844398>,  <32.557518, 44.312511, 52.326672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073586, 44.599411, 52.844398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982235, 44.305218, 53.099556>,  <31.927425, 44.128700, 53.252651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982235, 44.305218, 53.099556>,  <32.073586, 44.599411, 52.844398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982235, 44.305218, 53.099556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879908, -0.436336, -0.188076,
		0.416662, 0.518334, 0.746808,
		-0.228374, -0.735487, 0.637891,
		31.913723, 44.084572, 53.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405704, 44.774658, 53.419113>,  <32.073586, 44.599411, 52.844398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405704, 44.774658, 53.419113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366371, 44.393402, 53.304668>,  <32.342770, 44.164650, 53.236000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366371, 44.393402, 53.304668>,  <32.405704, 44.774658, 53.419113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366371, 44.393402, 53.304668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971324, -0.154469, 0.180743,
		-0.216469, -0.260132, 0.940995,
		-0.098338, -0.953137, -0.286111,
		32.336868, 44.107460, 53.218834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665783, 44.389641, 53.904156>,  <32.405704, 44.774658, 53.419113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665783, 44.389641, 53.904156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716183, 44.226505, 53.542427>,  <32.746422, 44.128624, 53.325390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716183, 44.226505, 53.542427>,  <32.665783, 44.389641, 53.904156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716183, 44.226505, 53.542427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981834, -0.079099, 0.172468,
		-0.141870, -0.909622, 0.390462,
		0.125996, -0.407836, -0.904320,
		32.753983, 44.104153, 53.271130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233265, 43.823135, 53.913280>,  <32.665783, 44.389641, 53.904156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233265, 43.823135, 53.913280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186806, 43.948467, 53.536274>,  <33.158928, 44.023666, 53.310070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186806, 43.948467, 53.536274>,  <33.233265, 43.823135, 53.913280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186806, 43.948467, 53.536274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984981, -0.085719, -0.149879,
		-0.127753, -0.945769, -0.298665,
		-0.116150, 0.313327, -0.942515,
		33.151962, 44.042465, 53.253521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803574, 43.261242, 54.103706>,  <33.233265, 43.823135, 53.913280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803574, 43.261242, 54.103706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732563, 43.010639, 54.407276>,  <32.689957, 42.860275, 54.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732563, 43.010639, 54.407276>,  <32.803574, 43.261242, 54.103706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732563, 43.010639, 54.407276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152632, -0.779372, -0.607687,
		0.972207, 0.007955, 0.233986,
		-0.177528, -0.626511, 0.758925,
		32.679306, 42.822685, 54.634953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369499, 42.786926, 54.280663>,  <32.803574, 43.261242, 54.103706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369499, 42.786926, 54.280663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011696, 42.627190, 54.361038>,  <32.797012, 42.531349, 54.409264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011696, 42.627190, 54.361038>,  <33.369499, 42.786926, 54.280663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011696, 42.627190, 54.361038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201458, -0.761341, -0.616258,
		0.399078, -0.510770, 0.761479,
		-0.894512, -0.399341, 0.200936,
		32.743343, 42.507389, 54.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454758, 42.122124, 54.054604>,  <33.369499, 42.786926, 54.280663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454758, 42.122124, 54.054604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058743, 42.143330, 54.106777>,  <32.821133, 42.156055, 54.138081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058743, 42.143330, 54.106777>,  <33.454758, 42.122124, 54.054604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058743, 42.143330, 54.106777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137167, -0.572238, -0.808535,
		0.031773, -0.818372, 0.573810,
		-0.990039, 0.053018, 0.130435,
		32.761730, 42.159237, 54.145908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269833, 41.662762, 53.603230>,  <33.454758, 42.122124, 54.054604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269833, 41.662762, 53.603230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902447, 41.800747, 53.680599>,  <32.682014, 41.883537, 53.727020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902447, 41.800747, 53.680599>,  <33.269833, 41.662762, 53.603230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902447, 41.800747, 53.680599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335874, -0.422134, -0.842016,
		-0.208813, -0.838333, 0.503581,
		-0.918469, 0.344964, 0.193428,
		32.626907, 41.904236, 53.738628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791302, 41.177593, 53.472675>,  <33.269833, 41.662762, 53.603230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791302, 41.177593, 53.472675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631886, 41.541771, 53.428371>,  <32.536236, 41.760277, 53.401791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631886, 41.541771, 53.428371>,  <32.791302, 41.177593, 53.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631886, 41.541771, 53.428371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318767, -0.250736, -0.914068,
		-0.859975, -0.328983, 0.390145,
		-0.398536, 0.910441, -0.110758,
		32.512325, 41.814903, 53.395145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076656, 41.161919, 53.362404>,  <32.791302, 41.177593, 53.472675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076656, 41.161919, 53.362404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239922, 41.466125, 53.160408>,  <32.337879, 41.648651, 53.039211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239922, 41.466125, 53.160408>,  <32.076656, 41.161919, 53.362404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239922, 41.466125, 53.160408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173530, -0.478448, -0.860799,
		-0.896265, 0.438977, -0.063312,
		0.408163, 0.760517, -0.504991,
		32.362370, 41.694283, 53.008911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652693, 41.334000, 52.799789>,  <32.076656, 41.161919, 53.362404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652693, 41.334000, 52.799789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025726, 41.442471, 52.704502>,  <32.249546, 41.507553, 52.647331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025726, 41.442471, 52.704502>,  <31.652693, 41.334000, 52.799789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025726, 41.442471, 52.704502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065729, -0.521354, -0.850805,
		-0.354915, 0.809106, -0.468383,
		0.932585, 0.271177, -0.238218,
		32.305500, 41.523823, 52.633038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608114, 41.335567, 52.121998>,  <31.652693, 41.334000, 52.799789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608114, 41.335567, 52.121998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002777, 41.373905, 52.174644>,  <32.239574, 41.396908, 52.206234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002777, 41.373905, 52.174644>,  <31.608114, 41.335567, 52.121998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002777, 41.373905, 52.174644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157617, -0.359654, -0.919677,
		-0.040806, 0.928150, -0.369962,
		0.986657, 0.095840, 0.131616,
		32.298775, 41.402657, 52.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894665, 41.631203, 51.560726>,  <31.608114, 41.335567, 52.121998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894665, 41.631203, 51.560726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195877, 41.416679, 51.713211>,  <32.376606, 41.287968, 51.804703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195877, 41.416679, 51.713211>,  <31.894665, 41.631203, 51.560726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195877, 41.416679, 51.713211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195271, -0.371108, -0.907826,
		0.628341, 0.758061, -0.174731,
		0.753032, -0.536305, 0.381209,
		32.421787, 41.255787, 51.827576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265923, 41.426029, 50.865849>,  <31.894665, 41.631203, 51.560726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265923, 41.426029, 50.865849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471722, 41.246986, 51.158409>,  <32.595200, 41.139561, 51.333946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471722, 41.246986, 51.158409>,  <32.265923, 41.426029, 50.865849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471722, 41.246986, 51.158409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482984, -0.553510, -0.678493,
		0.708534, 0.702335, -0.068592,
		0.514496, -0.447607, 0.731397,
		32.626072, 41.112705, 51.377827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000999, 41.413303, 50.684898>,  <32.265923, 41.426029, 50.865849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000999, 41.413303, 50.684898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951202, 41.114643, 50.946281>,  <32.921326, 40.935448, 51.103111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951202, 41.114643, 50.946281>,  <33.000999, 41.413303, 50.684898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951202, 41.114643, 50.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548220, -0.600689, -0.581917,
		0.827017, 0.285797, 0.484111,
		-0.124490, -0.746655, 0.653459,
		32.913857, 40.890648, 51.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590538, 41.090145, 50.821068>,  <33.000999, 41.413303, 50.684898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590538, 41.090145, 50.821068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330902, 40.799583, 50.911415>,  <33.175121, 40.625248, 50.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330902, 40.799583, 50.911415>,  <33.590538, 41.090145, 50.821068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330902, 40.799583, 50.911415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435456, -0.598268, -0.672646,
		0.623744, -0.338252, 0.704648,
		-0.649092, -0.726403, 0.225872,
		33.136173, 40.581661, 50.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013462, 40.484581, 50.865227>,  <33.590538, 41.090145, 50.821068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013462, 40.484581, 50.865227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630062, 40.379971, 50.819843>,  <33.400021, 40.317204, 50.792614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630062, 40.379971, 50.819843>,  <34.013462, 40.484581, 50.865227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630062, 40.379971, 50.819843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268800, -0.696524, -0.665283,
		0.094960, -0.668175, 0.737919,
		-0.958504, -0.261528, -0.113463,
		33.342510, 40.301514, 50.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032745, 39.687370, 50.889565>,  <34.013462, 40.484581, 50.865227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032745, 39.687370, 50.889565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685909, 39.809776, 50.732334>,  <33.477806, 39.883221, 50.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685909, 39.809776, 50.732334>,  <34.032745, 39.687370, 50.889565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685909, 39.809776, 50.732334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110839, -0.650779, -0.751134,
		-0.485663, -0.694869, 0.530366,
		-0.867090, 0.306013, -0.393077,
		33.425781, 39.901581, 50.614410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710903, 39.108906, 50.696938>,  <34.032745, 39.687370, 50.889565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710903, 39.108906, 50.696938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514477, 39.388996, 50.489651>,  <33.396622, 39.557049, 50.365280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514477, 39.388996, 50.489651>,  <33.710903, 39.108906, 50.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514477, 39.388996, 50.489651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002974, -0.593530, -0.804806,
		-0.871119, -0.396751, 0.289378,
		-0.491062, 0.700222, -0.518216,
		33.367157, 39.599064, 50.334187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442329, 38.690739, 50.191818>,  <33.710903, 39.108906, 50.696938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442329, 38.690739, 50.191818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388752, 39.058437, 50.043743>,  <33.356606, 39.279057, 49.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388752, 39.058437, 50.043743>,  <33.442329, 38.690739, 50.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388752, 39.058437, 50.043743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001290, -0.373394, -0.927672,
		-0.990988, -0.124730, 0.048827,
		-0.133940, 0.919249, -0.370190,
		33.348572, 39.334213, 49.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929375, 38.715305, 49.641144>,  <33.442329, 38.690739, 50.191818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929375, 38.715305, 49.641144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148022, 39.041016, 49.562996>,  <33.279209, 39.236443, 49.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148022, 39.041016, 49.562996>,  <32.929375, 38.715305, 49.641144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148022, 39.041016, 49.562996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038725, -0.257639, -0.965465,
		-0.836485, 0.520177, -0.172363,
		0.546620, 0.814271, -0.195367,
		33.312008, 39.285297, 49.504387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726055, 38.867786, 48.993080>,  <32.929375, 38.715305, 49.641144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726055, 38.867786, 48.993080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067513, 39.071808, 49.035271>,  <33.272388, 39.194221, 49.060585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067513, 39.071808, 49.035271>,  <32.726055, 38.867786, 48.993080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067513, 39.071808, 49.035271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206901, -0.146223, -0.967373,
		-0.477993, 0.847620, -0.230355,
		0.853648, 0.510058, 0.105480,
		33.323608, 39.224827, 49.066914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823174, 39.442722, 48.443413>,  <32.726055, 38.867786, 48.993080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823174, 39.442722, 48.443413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179054, 39.323006, 48.581310>,  <33.392582, 39.251175, 48.664051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179054, 39.323006, 48.581310>,  <32.823174, 39.442722, 48.443413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179054, 39.323006, 48.581310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320316, -0.128842, -0.938508,
		0.325305, 0.945423, -0.018763,
		0.889705, -0.299292, 0.344747,
		33.445965, 39.233219, 48.684734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258526, 39.793941, 48.139244>,  <32.823174, 39.442722, 48.443413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258526, 39.793941, 48.139244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476780, 39.478355, 48.252251>,  <33.607735, 39.289005, 48.320053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476780, 39.478355, 48.252251>,  <33.258526, 39.793941, 48.139244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476780, 39.478355, 48.252251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342755, -0.097525, -0.934349,
		0.764720, 0.606650, 0.217208,
		0.545639, -0.788965, 0.282512,
		33.640472, 39.241665, 48.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965015, 39.779579, 47.808910>,  <33.258526, 39.793941, 48.139244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965015, 39.779579, 47.808910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914059, 39.397289, 47.915009>,  <33.883484, 39.167915, 47.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914059, 39.397289, 47.915009>,  <33.965015, 39.779579, 47.808910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914059, 39.397289, 47.915009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485141, -0.293292, -0.823783,
		0.865106, 0.023736, 0.501027,
		-0.127393, -0.955728, 0.265244,
		33.875839, 39.110569, 47.994583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643261, 39.468185, 47.799034>,  <33.965015, 39.779579, 47.808910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643261, 39.468185, 47.799034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323074, 39.235519, 47.741184>,  <34.130962, 39.095921, 47.706474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323074, 39.235519, 47.741184>,  <34.643261, 39.468185, 47.799034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323074, 39.235519, 47.741184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334986, -0.234066, -0.912687,
		0.497024, -0.779026, 0.382212,
		-0.800469, -0.581663, -0.144627,
		34.082935, 39.061020, 47.697796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957771, 39.085667, 47.353184>,  <34.643261, 39.468185, 47.799034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957771, 39.085667, 47.353184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577305, 38.962200, 47.354263>,  <34.349026, 38.888123, 47.354912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577305, 38.962200, 47.354263>,  <34.957771, 39.085667, 47.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577305, 38.962200, 47.354263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078399, -0.250028, -0.965059,
		0.298553, -0.917722, 0.262018,
		-0.951168, -0.308663, 0.002698,
		34.291954, 38.869602, 47.355072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961277, 38.542034, 46.945122>,  <34.957771, 39.085667, 47.353184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961277, 38.542034, 46.945122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567230, 38.608551, 46.962486>,  <34.330803, 38.648460, 46.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567230, 38.608551, 46.962486>,  <34.961277, 38.542034, 46.945122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567230, 38.608551, 46.962486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089872, -0.283147, -0.954856,
		-0.146489, -0.944551, 0.293879,
		-0.985121, 0.166287, 0.043411,
		34.271694, 38.658436, 46.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639839, 38.008457, 46.571602>,  <34.961277, 38.542034, 46.945122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639839, 38.008457, 46.571602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361240, 38.295013, 46.555229>,  <34.194080, 38.466946, 46.545406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361240, 38.295013, 46.555229>,  <34.639839, 38.008457, 46.571602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361240, 38.295013, 46.555229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244857, -0.290908, -0.924888,
		-0.674490, -0.634159, 0.378029,
		-0.696498, 0.716391, -0.040936,
		34.152290, 38.509930, 46.542950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892258, 37.775089, 46.344116>,  <34.639839, 38.008457, 46.571602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892258, 37.775089, 46.344116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890678, 38.164337, 46.252014>,  <33.889732, 38.397888, 46.196754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890678, 38.164337, 46.252014>,  <33.892258, 37.775089, 46.344116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890678, 38.164337, 46.252014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379174, -0.214517, -0.900117,
		-0.925317, 0.083753, 0.369829,
		-0.003947, 0.973123, -0.230253,
		33.889496, 38.456272, 46.182938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176338, 37.881714, 46.077759>,  <33.892258, 37.775089, 46.344116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176338, 37.881714, 46.077759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401772, 38.188042, 45.953892>,  <33.537033, 38.371838, 45.879574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401772, 38.188042, 45.953892>,  <33.176338, 37.881714, 46.077759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401772, 38.188042, 45.953892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461462, -0.019044, -0.886956,
		-0.685145, 0.642774, 0.342663,
		0.563586, 0.765819, -0.309664,
		33.570847, 38.417786, 45.860992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625664, 38.291401, 45.641014>,  <33.176338, 37.881714, 46.077759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625664, 38.291401, 45.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999866, 38.390659, 45.540413>,  <33.224388, 38.450214, 45.480053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999866, 38.390659, 45.540413>,  <32.625664, 38.291401, 45.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999866, 38.390659, 45.540413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257820, -0.007250, -0.966166,
		-0.241569, 0.968697, 0.057194,
		0.935507, 0.248142, -0.251501,
		33.280518, 38.465103, 45.464962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541248, 38.739033, 45.047184>,  <32.625664, 38.291401, 45.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541248, 38.739033, 45.047184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912197, 38.591835, 45.020138>,  <33.134766, 38.503517, 45.003910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912197, 38.591835, 45.020138>,  <32.541248, 38.739033, 45.047184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912197, 38.591835, 45.020138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132219, -0.153257, -0.979301,
		0.350011, 0.917113, -0.190781,
		0.927368, -0.367991, -0.067618,
		33.190407, 38.481438, 44.999851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909195, 39.157383, 44.491230>,  <32.541248, 38.739033, 45.047184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909195, 39.157383, 44.491230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111439, 38.815968, 44.541569>,  <33.232784, 38.611118, 44.571770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111439, 38.815968, 44.541569>,  <32.909195, 39.157383, 44.491230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111439, 38.815968, 44.541569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146506, -0.228682, -0.962414,
		0.850232, 0.468170, -0.240672,
		0.505611, -0.853535, 0.125843,
		33.263123, 38.559906, 44.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303814, 39.117630, 43.928349>,  <32.909195, 39.157383, 44.491230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303814, 39.117630, 43.928349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293404, 38.737118, 44.051243>,  <33.287159, 38.508812, 44.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293404, 38.737118, 44.051243>,  <33.303814, 39.117630, 43.928349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293404, 38.737118, 44.051243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135500, -0.301144, -0.943902,
		0.990435, -0.066193, -0.121062,
		-0.026022, -0.951278, 0.307233,
		33.285599, 38.451733, 44.143414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707859, 38.821522, 43.376347>,  <33.303814, 39.117630, 43.928349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707859, 38.821522, 43.376347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510811, 38.528954, 43.564964>,  <33.392582, 38.353413, 43.678135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510811, 38.528954, 43.564964>,  <33.707859, 38.821522, 43.376347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510811, 38.528954, 43.564964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170875, -0.450004, -0.876526,
		0.853303, -0.512369, 0.096700,
		-0.492620, -0.731419, 0.471541,
		33.363026, 38.309528, 43.706425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890804, 38.184807, 42.982853>,  <33.707859, 38.821522, 43.376347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890804, 38.184807, 42.982853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565529, 38.079060, 43.190247>,  <33.370361, 38.015610, 43.314682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565529, 38.079060, 43.190247>,  <33.890804, 38.184807, 42.982853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565529, 38.079060, 43.190247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357490, -0.476105, -0.803446,
		0.459262, -0.838709, 0.292654,
		-0.813190, -0.264371, 0.518487,
		33.321571, 37.999748, 43.345791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845867, 37.500355, 42.927067>,  <33.890804, 38.184807, 42.982853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845867, 37.500355, 42.927067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 37.593464, 43.044079>,  <33.252270, 37.649330, 43.114285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 37.593464, 43.044079>,  <33.845867, 37.500355, 42.927067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474869, 37.593464, 43.044079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371822, -0.493184, -0.786459,
		-0.038794, -0.838204, 0.543975,
		-0.927493, 0.232772, 0.292530,
		33.196621, 37.663296, 43.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361713, 36.902042, 42.793186>,  <33.845867, 37.500355, 42.927067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361713, 36.902042, 42.793186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119904, 37.215290, 42.851540>,  <32.974819, 37.403236, 42.886551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119904, 37.215290, 42.851540>,  <33.361713, 36.902042, 42.793186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119904, 37.215290, 42.851540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685595, -0.418240, -0.595848,
		-0.405597, -0.460229, 0.789734,
		-0.604525, 0.783112, 0.145894,
		32.938549, 37.450226, 42.895306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657600, 36.621288, 42.963528>,  <33.361713, 36.902042, 42.793186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657600, 36.621288, 42.963528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640209, 36.984169, 42.796150>,  <32.629776, 37.201897, 42.695724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640209, 36.984169, 42.796150>,  <32.657600, 36.621288, 42.963528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640209, 36.984169, 42.796150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731831, -0.314042, -0.604815,
		-0.680098, 0.279938, 0.677570,
		-0.043475, 0.907200, -0.418447,
		32.627167, 37.256329, 42.670616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982901, 36.719471, 42.745869>,  <32.657600, 36.621288, 42.963528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982901, 36.719471, 42.745869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152943, 37.037292, 42.572449>,  <32.254967, 37.227985, 42.468395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152943, 37.037292, 42.572449>,  <31.982901, 36.719471, 42.745869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152943, 37.037292, 42.572449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313869, -0.319864, -0.893965,
		-0.848983, 0.516105, 0.113412,
		0.425104, 0.794558, -0.433549,
		32.280476, 37.275661, 42.442383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492968, 37.040722, 42.113647>,  <31.982901, 36.719471, 42.745869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492968, 37.040722, 42.113647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855171, 37.164261, 41.997253>,  <32.072495, 37.238384, 41.927418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855171, 37.164261, 41.997253>,  <31.492968, 37.040722, 42.113647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855171, 37.164261, 41.997253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147595, -0.413686, -0.898376,
		-0.397835, 0.856434, -0.329011,
		0.905507, 0.308845, -0.290984,
		32.126823, 37.256916, 41.909958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402969, 37.274292, 41.321064>,  <31.492968, 37.040722, 42.113647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402969, 37.274292, 41.321064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785498, 37.191830, 41.403965>,  <32.015015, 37.142353, 41.453705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785498, 37.191830, 41.403965>,  <31.402969, 37.274292, 41.321064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785498, 37.191830, 41.403965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102143, -0.428631, -0.897687,
		0.273901, 0.879644, -0.388850,
		0.956319, -0.206159, 0.207251,
		32.072392, 37.129982, 41.466141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638273, 37.306816, 40.699646>,  <31.402969, 37.274292, 41.321064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638273, 37.306816, 40.699646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936625, 37.125538, 40.894901>,  <32.115635, 37.016769, 41.012054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936625, 37.125538, 40.894901>,  <31.638273, 37.306816, 40.699646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936625, 37.125538, 40.894901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064203, -0.680522, -0.729909,
		0.662983, 0.575762, -0.478489,
		0.745876, -0.453198, 0.488140,
		32.160389, 36.989578, 41.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225254, 37.256451, 40.243050>,  <31.638273, 37.306816, 40.699646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225254, 37.256451, 40.243050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315765, 36.980984, 40.518597>,  <32.370071, 36.815704, 40.683926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315765, 36.980984, 40.518597>,  <32.225254, 37.256451, 40.243050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315765, 36.980984, 40.518597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069908, -0.693906, -0.716664,
		0.971551, 0.210324, -0.108873,
		0.226279, -0.688664, 0.688869,
		32.383648, 36.774384, 40.725258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883778, 37.000484, 40.143318>,  <32.225254, 37.256451, 40.243050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883778, 37.000484, 40.143318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674847, 36.720764, 40.338524>,  <32.549488, 36.552933, 40.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674847, 36.720764, 40.338524>,  <32.883778, 37.000484, 40.143318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674847, 36.720764, 40.338524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261888, -0.676173, -0.688625,
		0.811534, -0.231885, 0.536322,
		-0.522328, -0.699299, 0.488010,
		32.518147, 36.510975, 40.484928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205975, 36.435474, 39.912022>,  <32.883778, 37.000484, 40.143318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205975, 36.435474, 39.912022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858509, 36.314087, 40.068657>,  <32.650032, 36.241257, 40.162636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858509, 36.314087, 40.068657>,  <33.205975, 36.435474, 39.912022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858509, 36.314087, 40.068657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047065, -0.736302, -0.675014,
		0.493168, -0.604788, 0.625313,
		-0.868660, -0.303465, 0.391586,
		32.597912, 36.223049, 40.186134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351879, 35.787857, 40.105099>,  <33.205975, 36.435474, 39.912022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351879, 35.787857, 40.105099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964725, 35.850655, 40.026554>,  <32.732433, 35.888332, 39.979427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964725, 35.850655, 40.026554>,  <33.351879, 35.787857, 40.105099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964725, 35.850655, 40.026554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043801, -0.663807, -0.746620,
		-0.247555, -0.731242, 0.635611,
		-0.967883, 0.156989, -0.196357,
		32.674362, 35.897751, 39.967648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075920, 35.153759, 40.088184>,  <33.351879, 35.787857, 40.105099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075920, 35.153759, 40.088184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836765, 35.395710, 39.877789>,  <32.693272, 35.540882, 39.751553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836765, 35.395710, 39.877789>,  <33.075920, 35.153759, 40.088184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836765, 35.395710, 39.877789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242195, -0.489196, -0.837872,
		-0.764119, -0.628340, 0.145984,
		-0.597883, 0.604877, -0.525985,
		32.657402, 35.577171, 39.719994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535328, 35.371998, 39.558212>,  <33.075920, 35.153759, 40.088184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535328, 35.371998, 39.558212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906521, 35.428783, 39.420403>,  <34.129238, 35.462856, 39.337719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906521, 35.428783, 39.420403>,  <33.535328, 35.371998, 39.558212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906521, 35.428783, 39.420403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368655, -0.215205, 0.904312,
		0.054240, -0.966195, -0.252043,
		0.927982, 0.141967, -0.344520,
		34.184917, 35.471375, 39.317047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940769, 34.813011, 39.682114>,  <33.535328, 35.371998, 39.558212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940769, 34.813011, 39.682114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205296, 35.111732, 39.653988>,  <34.364010, 35.290966, 39.637112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205296, 35.111732, 39.653988>,  <33.940769, 34.813011, 39.682114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205296, 35.111732, 39.653988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367462, -0.240822, 0.898319,
		0.653938, -0.619907, -0.433682,
		0.661314, 0.746807, -0.070310,
		34.403690, 35.335773, 39.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458221, 34.501453, 39.902668>,  <33.940769, 34.813011, 39.682114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458221, 34.501453, 39.902668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562176, 34.885639, 39.942600>,  <34.624550, 35.116150, 39.966560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562176, 34.885639, 39.942600>,  <34.458221, 34.501453, 39.902668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562176, 34.885639, 39.942600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363934, -0.193187, 0.911170,
		0.894433, -0.200469, -0.399752,
		0.259888, 0.960464, 0.099835,
		34.640141, 35.173779, 39.972549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112606, 34.452328, 40.048870>,  <34.458221, 34.501453, 39.902668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112606, 34.452328, 40.048870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975479, 34.797318, 40.197796>,  <34.893204, 35.004311, 40.287151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975479, 34.797318, 40.197796>,  <35.112606, 34.452328, 40.048870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975479, 34.797318, 40.197796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439075, -0.203262, 0.875156,
		0.830474, 0.463494, -0.309008,
		-0.342820, 0.862472, 0.372312,
		34.872635, 35.056061, 40.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695312, 34.798008, 40.285046>,  <35.112606, 34.452328, 40.048870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695312, 34.798008, 40.285046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393078, 34.972477, 40.480530>,  <35.211735, 35.077156, 40.597820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393078, 34.972477, 40.480530>,  <35.695312, 34.798008, 40.285046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393078, 34.972477, 40.480530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528132, -0.035717, 0.848411,
		0.387505, 0.899156, -0.203368,
		-0.755590, 0.436169, 0.488713,
		35.166401, 35.103329, 40.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064911, 35.269051, 40.697544>,  <35.695312, 34.798008, 40.285046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064911, 35.269051, 40.697544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705597, 35.202366, 40.860168>,  <35.490009, 35.162357, 40.957745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705597, 35.202366, 40.860168>,  <36.064911, 35.269051, 40.697544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705597, 35.202366, 40.860168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409044, 0.020742, 0.912279,
		-0.160518, 0.985788, 0.049560,
		-0.898286, -0.166709, 0.406560,
		35.436111, 35.152351, 40.982136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242973, 35.538731, 41.359802>,  <36.064911, 35.269051, 40.697544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242973, 35.538731, 41.359802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876053, 35.385166, 41.402069>,  <35.655899, 35.293026, 41.427429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876053, 35.385166, 41.402069>,  <36.242973, 35.538731, 41.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876053, 35.385166, 41.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136252, -0.053270, 0.989241,
		-0.374152, 0.921832, 0.101173,
		-0.917303, -0.383912, 0.105670,
		35.600861, 35.269993, 41.433769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958466, 35.923279, 41.849091>,  <36.242973, 35.538731, 41.359802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958466, 35.923279, 41.849091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702354, 35.616249, 41.860901>,  <35.548687, 35.432030, 41.867985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702354, 35.616249, 41.860901>,  <35.958466, 35.923279, 41.849091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702354, 35.616249, 41.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235645, 0.232855, 0.943531,
		-0.731104, 0.597167, -0.329967,
		-0.640280, -0.767574, 0.029522,
		35.510269, 35.385979, 41.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268372, 36.247623, 42.076698>,  <35.958466, 35.923279, 41.849091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268372, 36.247623, 42.076698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321991, 35.863644, 42.175114>,  <35.354164, 35.633255, 42.234161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321991, 35.863644, 42.175114>,  <35.268372, 36.247623, 42.076698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321991, 35.863644, 42.175114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181147, 0.220356, 0.958451,
		-0.974277, -0.173051, -0.144352,
		0.134052, -0.959946, 0.246035,
		35.362206, 35.575661, 42.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910816, 36.221581, 42.737442>,  <35.268372, 36.247623, 42.076698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910816, 36.221581, 42.737442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076424, 35.859535, 42.698757>,  <35.175789, 35.642307, 42.675545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076424, 35.859535, 42.698757>,  <34.910816, 36.221581, 42.737442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076424, 35.859535, 42.698757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143846, -0.169966, 0.974895,
		-0.898831, -0.389713, -0.200566,
		0.414019, -0.905116, -0.096712,
		35.200630, 35.588001, 42.669743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459068, 35.683334, 43.070175>,  <34.910816, 36.221581, 42.737442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459068, 35.683334, 43.070175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839836, 35.561775, 43.085587>,  <35.068298, 35.488838, 43.094833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839836, 35.561775, 43.085587>,  <34.459068, 35.683334, 43.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839836, 35.561775, 43.085587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098710, -0.185250, 0.977721,
		-0.289993, -0.934520, -0.206342,
		0.951924, -0.303901, 0.038526,
		35.125412, 35.470604, 43.097145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456688, 35.150852, 43.657967>,  <34.459068, 35.683334, 43.070175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456688, 35.150852, 43.657967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834591, 35.274250, 43.613682>,  <35.061333, 35.348289, 43.587109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834591, 35.274250, 43.613682>,  <34.456688, 35.150852, 43.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834591, 35.274250, 43.613682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059668, 0.170273, 0.983589,
		0.322283, -0.935863, 0.142460,
		0.944761, 0.308494, -0.110717,
		35.118019, 35.366798, 43.580467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805954, 34.875431, 44.148548>,  <34.456688, 35.150852, 43.657967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805954, 34.875431, 44.148548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020077, 35.201668, 44.060680>,  <35.148552, 35.397411, 44.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020077, 35.201668, 44.060680>,  <34.805954, 34.875431, 44.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020077, 35.201668, 44.060680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157123, 0.159376, 0.974634,
		0.829913, -0.556246, -0.042833,
		0.535310, 0.815591, -0.219668,
		35.180668, 35.446346, 43.994781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485104, 34.817997, 44.494125>,  <34.805954, 34.875431, 44.148548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485104, 34.817997, 44.494125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448063, 35.211205, 44.430756>,  <35.425838, 35.447128, 44.392735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448063, 35.211205, 44.430756>,  <35.485104, 34.817997, 44.494125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448063, 35.211205, 44.430756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195286, 0.173944, 0.965198,
		0.976365, 0.058440, -0.208077,
		-0.092600, 0.983020, -0.158421,
		35.420284, 35.506111, 44.383228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052200, 35.111126, 44.868187>,  <35.485104, 34.817997, 44.494125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052200, 35.111126, 44.868187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837914, 35.437626, 44.781704>,  <35.709343, 35.633526, 44.729816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837914, 35.437626, 44.781704>,  <36.052200, 35.111126, 44.868187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837914, 35.437626, 44.781704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255910, 0.400951, 0.879630,
		0.804684, 0.415905, -0.423683,
		-0.535718, 0.816248, -0.216204,
		35.677197, 35.682499, 44.716843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460823, 35.783836, 45.079865>,  <36.052200, 35.111126, 44.868187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460823, 35.783836, 45.079865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082096, 35.912323, 45.072300>,  <35.854858, 35.989414, 45.067760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082096, 35.912323, 45.072300>,  <36.460823, 35.783836, 45.079865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082096, 35.912323, 45.072300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166697, 0.539926, 0.825041,
		0.275229, 0.778010, -0.564757,
		-0.946816, 0.321219, -0.018911,
		35.798050, 36.008690, 45.066628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561039, 36.447063, 45.359463>,  <36.460823, 35.783836, 45.079865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561039, 36.447063, 45.359463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170258, 36.364265, 45.380264>,  <35.935787, 36.314587, 45.392746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170258, 36.364265, 45.380264>,  <36.561039, 36.447063, 45.359463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170258, 36.364265, 45.380264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081134, 0.585563, 0.806556,
		-0.197408, 0.783752, -0.588865,
		-0.976958, -0.206998, 0.052006,
		35.877171, 36.302166, 45.395866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205406, 37.068535, 45.434135>,  <36.561039, 36.447063, 45.359463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205406, 37.068535, 45.434135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954582, 36.793472, 45.580521>,  <35.804089, 36.628433, 45.668350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954582, 36.793472, 45.580521>,  <36.205406, 37.068535, 45.434135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954582, 36.793472, 45.580521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200384, 0.596388, 0.777282,
		-0.752758, 0.414068, -0.511765,
		-0.627058, -0.687655, 0.365963,
		35.766464, 36.587177, 45.690311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600460, 37.443752, 45.735397>,  <36.205406, 37.068535, 45.434135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600460, 37.443752, 45.735397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560421, 37.088432, 45.914688>,  <35.536396, 36.875240, 46.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560421, 37.088432, 45.914688>,  <35.600460, 37.443752, 45.735397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560421, 37.088432, 45.914688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081110, 0.456274, 0.886135,
		-0.991666, 0.052346, -0.117723,
		-0.100100, -0.888298, 0.448226,
		35.530392, 36.821941, 46.049156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115555, 37.528072, 46.290699>,  <35.600460, 37.443752, 45.735397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115555, 37.528072, 46.290699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320660, 37.204479, 46.405678>,  <35.443722, 37.010323, 46.474667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320660, 37.204479, 46.405678>,  <35.115555, 37.528072, 46.290699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320660, 37.204479, 46.405678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080037, 0.288313, 0.954185,
		-0.854793, -0.512275, 0.083087,
		0.512760, -0.808981, 0.287449,
		35.474487, 36.961784, 46.491913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836742, 37.335056, 46.948532>,  <35.115555, 37.528072, 46.290699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836742, 37.335056, 46.948532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198536, 37.164501, 46.944626>,  <35.415611, 37.062168, 46.942284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198536, 37.164501, 46.944626>,  <34.836742, 37.335056, 46.948532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198536, 37.164501, 46.944626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147299, 0.290814, 0.945373,
		-0.400256, -0.856517, 0.325844,
		0.904488, -0.426387, -0.009764,
		35.469883, 37.036587, 46.941696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791058, 36.921181, 47.562641>,  <34.836742, 37.335056, 46.948532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791058, 36.921181, 47.562641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180378, 36.976460, 47.489326>,  <35.413971, 37.009628, 47.445335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180378, 36.976460, 47.489326>,  <34.791058, 36.921181, 47.562641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180378, 36.976460, 47.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141753, 0.266189, 0.953441,
		0.180551, -0.953963, 0.239491,
		0.973297, 0.138197, -0.183288,
		35.472366, 37.017918, 47.434341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112247, 36.691067, 48.170940>,  <34.791058, 36.921181, 47.562641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112247, 36.691067, 48.170940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367081, 36.932476, 47.979156>,  <35.519981, 37.077320, 47.864086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367081, 36.932476, 47.979156>,  <35.112247, 36.691067, 48.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367081, 36.932476, 47.979156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313201, 0.365674, 0.876463,
		0.704292, -0.708549, 0.043942,
		0.637086, 0.603523, -0.479459,
		35.558205, 37.113533, 47.835320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657932, 36.745617, 48.603897>,  <35.112247, 36.691067, 48.170940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657932, 36.745617, 48.603897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703686, 37.074837, 48.381367>,  <35.731136, 37.272369, 48.247849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703686, 37.074837, 48.381367>,  <35.657932, 36.745617, 48.603897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703686, 37.074837, 48.381367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264205, 0.514632, 0.815690,
		0.957660, -0.240286, -0.158589,
		0.114383, 0.823053, -0.556327,
		35.738003, 37.321754, 48.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318317, 36.949436, 48.716671>,  <35.657932, 36.745617, 48.603897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318317, 36.949436, 48.716671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124870, 37.264450, 48.563881>,  <36.008801, 37.453457, 48.472206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124870, 37.264450, 48.563881>,  <36.318317, 36.949436, 48.716671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124870, 37.264450, 48.563881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249070, 0.542188, 0.802494,
		0.839094, 0.292961, -0.458362,
		-0.483617, 0.787532, -0.381979,
		35.979786, 37.500710, 48.449287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777317, 37.476273, 48.751373>,  <36.318317, 36.949436, 48.716671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777317, 37.476273, 48.751373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417202, 37.646915, 48.716766>,  <36.201134, 37.749302, 48.696003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417202, 37.646915, 48.716766>,  <36.777317, 37.476273, 48.751373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417202, 37.646915, 48.716766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242103, 0.655914, 0.714957,
		0.361756, 0.622721, -0.693795,
		-0.900288, 0.426610, -0.086519,
		36.147114, 37.774899, 48.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923851, 38.188576, 48.673435>,  <36.777317, 37.476273, 48.751373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923851, 38.188576, 48.673435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540997, 38.176327, 48.788635>,  <36.311283, 38.168980, 48.857758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540997, 38.176327, 48.788635>,  <36.923851, 38.188576, 48.673435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540997, 38.176327, 48.788635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162787, 0.765587, 0.622396,
		-0.239549, 0.642603, -0.727790,
		-0.957140, -0.030620, 0.288003,
		36.253853, 38.167141, 48.875034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574635, 38.903931, 48.488213>,  <36.923851, 38.188576, 48.673435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574635, 38.903931, 48.488213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385830, 38.720188, 48.789196>,  <36.272549, 38.609943, 48.969788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385830, 38.720188, 48.789196>,  <36.574635, 38.903931, 48.488213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385830, 38.720188, 48.789196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286537, 0.727246, 0.623707,
		-0.833727, 0.510005, -0.211645,
		-0.472011, -0.459358, 0.752460,
		36.244228, 38.582382, 49.014935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500237, 39.440475, 48.874733>,  <36.574635, 38.903931, 48.488213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500237, 39.440475, 48.874733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342625, 39.173080, 49.127041>,  <36.248058, 39.012646, 49.278427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342625, 39.173080, 49.127041>,  <36.500237, 39.440475, 48.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342625, 39.173080, 49.127041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043808, 0.671853, 0.739388,
		-0.918054, 0.318972, -0.235444,
		-0.394027, -0.668484, 0.630771,
		36.224415, 38.972534, 49.316273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968834, 39.827824, 49.121071>,  <36.500237, 39.440475, 48.874733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968834, 39.827824, 49.121071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101574, 39.552330, 49.378914>,  <36.181217, 39.387035, 49.533619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101574, 39.552330, 49.378914>,  <35.968834, 39.827824, 49.121071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101574, 39.552330, 49.378914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063039, 0.697996, 0.713322,
		-0.941222, -0.196083, 0.275050,
		0.331854, -0.688733, 0.644608,
		36.201130, 39.345711, 49.572296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761349, 40.128651, 49.768280>,  <35.968834, 39.827824, 49.121071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761349, 40.128651, 49.768280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008747, 39.829292, 49.864082>,  <36.157185, 39.649677, 49.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008747, 39.829292, 49.864082>,  <35.761349, 40.128651, 49.768280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008747, 39.829292, 49.864082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211821, 0.452304, 0.866344,
		-0.756700, -0.485098, 0.438275,
		0.618496, -0.748399, 0.239505,
		36.194294, 39.604774, 49.935932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629120, 40.009827, 50.366081>,  <35.761349, 40.128651, 49.768280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629120, 40.009827, 50.366081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995258, 39.848854, 50.371452>,  <36.214943, 39.752270, 50.374676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995258, 39.848854, 50.371452>,  <35.629120, 40.009827, 50.366081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995258, 39.848854, 50.371452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179101, 0.436777, 0.881560,
		-0.360634, -0.804532, 0.471881,
		0.915350, -0.402435, 0.013424,
		36.269863, 39.728123, 50.375481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596497, 39.725796, 50.958218>,  <35.629120, 40.009827, 50.366081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596497, 39.725796, 50.958218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967709, 39.788029, 50.822834>,  <36.190437, 39.825367, 50.741604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967709, 39.788029, 50.822834>,  <35.596497, 39.725796, 50.958218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967709, 39.788029, 50.822834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159933, 0.654174, 0.739242,
		0.336422, -0.740169, 0.582211,
		0.928032, 0.155582, -0.338456,
		36.246117, 39.834702, 50.721298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073479, 39.669895, 51.564465>,  <35.596497, 39.725796, 50.958218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073479, 39.669895, 51.564465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254238, 39.877426, 51.274193>,  <36.362694, 40.001945, 51.100029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254238, 39.877426, 51.274193>,  <36.073479, 39.669895, 51.564465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254238, 39.877426, 51.274193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318965, 0.665726, 0.674589,
		0.833098, -0.536309, 0.135351,
		0.451895, 0.518827, -0.725679,
		36.389805, 40.033073, 51.056488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857174, 39.746059, 51.625336>,  <36.073479, 39.669895, 51.564465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857174, 39.746059, 51.625336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753952, 40.058197, 51.397484>,  <36.692020, 40.245480, 51.260773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753952, 40.058197, 51.397484>,  <36.857174, 39.746059, 51.625336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753952, 40.058197, 51.397484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441801, 0.619649, 0.648727,
		0.859197, -0.084256, -0.504659,
		-0.258052, 0.780344, -0.569625,
		36.676537, 40.292301, 51.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307060, 40.190186, 51.835785>,  <36.857174, 39.746059, 51.625336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307060, 40.190186, 51.835785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047009, 40.415783, 51.632122>,  <36.890976, 40.551140, 51.509922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047009, 40.415783, 51.632122>,  <37.307060, 40.190186, 51.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047009, 40.415783, 51.632122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110296, 0.733056, 0.671166,
		0.751774, 0.380187, -0.538788,
		-0.650131, 0.563991, -0.509160,
		36.851971, 40.584980, 51.479374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658581, 40.817478, 51.704880>,  <37.307060, 40.190186, 51.835785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658581, 40.817478, 51.704880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262775, 40.874809, 51.697651>,  <37.025291, 40.909210, 51.693314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262775, 40.874809, 51.697651>,  <37.658581, 40.817478, 51.704880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262775, 40.874809, 51.697651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095364, 0.742031, 0.663548,
		0.108515, 0.654864, -0.747915,
		-0.989510, 0.143330, -0.018071,
		36.965923, 40.917809, 51.692230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470993, 41.587967, 51.528664>,  <37.658581, 40.817478, 51.704880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470993, 41.587967, 51.528664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154041, 41.452175, 51.731403>,  <36.963871, 41.370701, 51.853046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154041, 41.452175, 51.731403>,  <37.470993, 41.587967, 51.528664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154041, 41.452175, 51.731403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021684, 0.814657, 0.579538,
		-0.609645, 0.470204, -0.638155,
		-0.792378, -0.339475, 0.506847,
		36.916328, 41.350334, 51.883457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102917, 42.207336, 51.240879>,  <37.470993, 41.587967, 51.528664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102917, 42.207336, 51.240879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398018, 42.470585, 51.301022>,  <37.575077, 42.628532, 51.337105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398018, 42.470585, 51.301022>,  <37.102917, 42.207336, 51.240879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398018, 42.470585, 51.301022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312366, -0.135349, -0.940270,
		-0.598458, 0.740649, -0.305427,
		0.737750, 0.658118, 0.150353,
		37.619343, 42.668018, 51.346127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050270, 42.876053, 50.824074>,  <37.102917, 42.207336, 51.240879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050270, 42.876053, 50.824074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436794, 42.804726, 50.898323>,  <37.668709, 42.761929, 50.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436794, 42.804726, 50.898323>,  <37.050270, 42.876053, 50.824074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436794, 42.804726, 50.898323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157725, -0.159676, -0.974488,
		0.203408, 0.970931, -0.126171,
		0.966306, -0.178318, 0.185619,
		37.726685, 42.751232, 50.954010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417660, 43.192162, 50.224030>,  <37.050270, 42.876053, 50.824074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417660, 43.192162, 50.224030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719341, 42.974789, 50.371460>,  <37.900352, 42.844364, 50.459919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719341, 42.974789, 50.371460>,  <37.417660, 43.192162, 50.224030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719341, 42.974789, 50.371460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241356, -0.292587, -0.925278,
		0.610669, 0.786811, -0.089510,
		0.754208, -0.543435, 0.368576,
		37.945602, 42.811760, 50.482033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944096, 43.300930, 49.713730>,  <37.417660, 43.192162, 50.224030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944096, 43.300930, 49.713730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044678, 42.971039, 49.916348>,  <38.105026, 42.773102, 50.037918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044678, 42.971039, 49.916348>,  <37.944096, 43.300930, 49.713730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044678, 42.971039, 49.916348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195211, -0.469389, -0.861143,
		0.947979, 0.315421, 0.042967,
		0.251454, -0.824733, 0.506544,
		38.120113, 42.723618, 50.068310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589542, 43.011726, 49.554375>,  <37.944096, 43.300930, 49.713730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589542, 43.011726, 49.554375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399963, 42.695812, 49.710129>,  <38.286217, 42.506264, 49.803581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399963, 42.695812, 49.710129>,  <38.589542, 43.011726, 49.554375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399963, 42.695812, 49.710129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251129, -0.545071, -0.799895,
		0.843982, -0.281324, 0.456673,
		-0.473949, -0.789781, 0.389382,
		38.257778, 42.458878, 49.826942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041656, 42.407352, 49.265446>,  <38.589542, 43.011726, 49.554375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041656, 42.407352, 49.265446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671398, 42.282684, 49.351273>,  <38.449242, 42.207882, 49.402771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671398, 42.282684, 49.351273>,  <39.041656, 42.407352, 49.265446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671398, 42.282684, 49.351273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103158, -0.753438, -0.649377,
		0.364059, -0.578958, 0.729568,
		-0.925645, -0.311672, 0.214572,
		38.393703, 42.189182, 49.415646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165638, 41.645515, 49.328182>,  <39.041656, 42.407352, 49.265446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165638, 41.645515, 49.328182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769604, 41.693157, 49.298393>,  <38.531982, 41.721745, 49.280521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769604, 41.693157, 49.298393>,  <39.165638, 41.645515, 49.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769604, 41.693157, 49.298393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018775, -0.637592, -0.770145,
		-0.139213, -0.761110, 0.633507,
		-0.990085, 0.119109, -0.074471,
		38.472580, 41.728889, 49.276051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857006, 40.940907, 49.245739>,  <39.165638, 41.645515, 49.328182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857006, 40.940907, 49.245739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548771, 41.164013, 49.122395>,  <38.363831, 41.297878, 49.048389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548771, 41.164013, 49.122395>,  <38.857006, 40.940907, 49.245739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548771, 41.164013, 49.122395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209208, -0.678399, -0.704278,
		-0.602012, -0.478200, 0.639458,
		-0.770593, 0.557763, -0.308361,
		38.317593, 41.331341, 49.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257065, 40.456715, 49.173492>,  <38.857006, 40.940907, 49.245739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257065, 40.456715, 49.173492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179665, 40.775299, 48.944332>,  <38.133224, 40.966450, 48.806835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179665, 40.775299, 48.944332>,  <38.257065, 40.456715, 49.173492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179665, 40.775299, 48.944332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230191, -0.604490, -0.762629,
		-0.953713, -0.015696, 0.300310,
		-0.193505, 0.796458, -0.572897,
		38.121613, 41.014236, 48.772465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619175, 40.381954, 48.867580>,  <38.257065, 40.456715, 49.173492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619175, 40.381954, 48.867580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796299, 40.618340, 48.597862>,  <37.902573, 40.760170, 48.436031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796299, 40.618340, 48.597862>,  <37.619175, 40.381954, 48.867580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796299, 40.618340, 48.597862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255359, -0.637780, -0.726656,
		-0.859481, 0.493961, -0.131511,
		0.442815, 0.590964, -0.674297,
		37.929142, 40.795628, 48.395573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246387, 40.227226, 48.217594>,  <37.619175, 40.381954, 48.867580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246387, 40.227226, 48.217594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559074, 40.452930, 48.111370>,  <37.746689, 40.588352, 48.047634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559074, 40.452930, 48.111370>,  <37.246387, 40.227226, 48.217594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559074, 40.452930, 48.111370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048468, -0.369576, -0.927936,
		-0.621744, 0.738257, -0.261556,
		0.781720, 0.564261, -0.265563,
		37.793591, 40.622208, 48.031700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053822, 40.323803, 47.558159>,  <37.246387, 40.227226, 48.217594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053822, 40.323803, 47.558159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453075, 40.345341, 47.569729>,  <37.692627, 40.358265, 47.576672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453075, 40.345341, 47.569729>,  <37.053822, 40.323803, 47.558159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453075, 40.345341, 47.569729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054946, -0.583075, -0.810558,
		-0.026781, 0.810632, -0.584944,
		0.998130, 0.053848, 0.028926,
		37.752514, 40.361496, 47.578407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242443, 40.380917, 46.784573>,  <37.053822, 40.323803, 47.558159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242443, 40.380917, 46.784573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565594, 40.272980, 46.994152>,  <37.759483, 40.208218, 47.119900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565594, 40.272980, 46.994152>,  <37.242443, 40.380917, 46.784573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565594, 40.272980, 46.994152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272021, -0.617929, -0.737677,
		0.522815, 0.738478, -0.425811,
		0.807880, -0.269839, 0.523944,
		37.807957, 40.192028, 47.151337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834530, 40.455006, 46.458595>,  <37.242443, 40.380917, 46.784573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834530, 40.455006, 46.458595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905804, 40.141148, 46.696110>,  <37.948566, 39.952835, 46.838619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905804, 40.141148, 46.696110>,  <37.834530, 40.455006, 46.458595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905804, 40.141148, 46.696110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034872, -0.598033, -0.800712,
		0.983379, 0.163380, -0.079198,
		0.178183, -0.784642, 0.593791,
		37.959259, 39.905754, 46.874249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338512, 40.182419, 46.055729>,  <37.834530, 40.455006, 46.458595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338512, 40.182419, 46.055729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246288, 39.890518, 46.313194>,  <38.190956, 39.715378, 46.467674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246288, 39.890518, 46.313194>,  <38.338512, 40.182419, 46.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246288, 39.890518, 46.313194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078903, -0.673330, -0.735120,
		0.969855, -0.118700, 0.212821,
		-0.230557, -0.729752, 0.643666,
		38.177120, 39.671593, 46.506294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801487, 39.558533, 45.938568>,  <38.338512, 40.182419, 46.055729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801487, 39.558533, 45.938568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465813, 39.429535, 46.113731>,  <38.264408, 39.352135, 46.218830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465813, 39.429535, 46.113731>,  <38.801487, 39.558533, 45.938568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465813, 39.429535, 46.113731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059173, -0.746282, -0.662995,
		0.540616, -0.582288, 0.607186,
		-0.839185, -0.322496, 0.437908,
		38.214058, 39.332787, 46.245102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896843, 38.890568, 45.806484>,  <38.801487, 39.558533, 45.938568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896843, 38.890568, 45.806484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510983, 38.940018, 45.899582>,  <38.279469, 38.969688, 45.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510983, 38.940018, 45.899582>,  <38.896843, 38.890568, 45.806484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510983, 38.940018, 45.899582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255020, -0.660663, -0.706038,
		0.066484, -0.740433, 0.668834,
		-0.964648, 0.123626, 0.232749,
		38.221588, 38.977104, 45.969406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737316, 38.247288, 45.793037>,  <38.896843, 38.890568, 45.806484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737316, 38.247288, 45.793037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383625, 38.431450, 45.761646>,  <38.171410, 38.541946, 45.742809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383625, 38.431450, 45.761646>,  <38.737316, 38.247288, 45.793037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383625, 38.431450, 45.761646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254598, -0.616031, -0.745443,
		-0.391554, -0.639163, 0.661933,
		-0.884231, 0.460408, -0.078480,
		38.118355, 38.569572, 45.738102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241482, 37.667564, 45.731941>,  <38.737316, 38.247288, 45.793037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241482, 37.667564, 45.731941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063396, 38.005188, 45.612377>,  <37.956543, 38.207764, 45.540638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063396, 38.005188, 45.612377>,  <38.241482, 37.667564, 45.731941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063396, 38.005188, 45.612377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498244, -0.510887, -0.700534,
		-0.744000, -0.162961, 0.648003,
		-0.445216, 0.844060, -0.298905,
		37.929832, 38.258408, 45.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517174, 37.585503, 45.740417>,  <38.241482, 37.667564, 45.731941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517174, 37.585503, 45.740417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556759, 37.886265, 45.479694>,  <37.580509, 38.066723, 45.323261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556759, 37.886265, 45.479694>,  <37.517174, 37.585503, 45.740417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556759, 37.886265, 45.479694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486705, -0.534749, -0.690769,
		-0.867942, 0.385599, 0.313033,
		0.098966, 0.751902, -0.651804,
		37.586449, 38.111835, 45.284153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818851, 37.645340, 45.320587>,  <37.517174, 37.585503, 45.740417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818851, 37.645340, 45.320587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100407, 37.843269, 45.116749>,  <37.269341, 37.962025, 44.994446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100407, 37.843269, 45.116749>,  <36.818851, 37.645340, 45.320587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100407, 37.843269, 45.116749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349417, -0.383406, -0.854931,
		-0.618420, 0.779841, -0.096978,
		0.703892, 0.494821, -0.509596,
		37.311573, 37.991714, 44.963871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486717, 37.851074, 44.680698>,  <36.818851, 37.645340, 45.320587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486717, 37.851074, 44.680698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881889, 37.881084, 44.626499>,  <37.118992, 37.899090, 44.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881889, 37.881084, 44.626499>,  <36.486717, 37.851074, 44.680698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881889, 37.881084, 44.626499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094995, -0.397471, -0.912684,
		-0.122334, 0.914542, -0.385547,
		0.987932, 0.075027, -0.135501,
		37.178268, 37.903591, 44.585850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560738, 38.128418, 44.110863>,  <36.486717, 37.851074, 44.680698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560738, 38.128418, 44.110863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864944, 37.883659, 44.197769>,  <37.047466, 37.736805, 44.249912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864944, 37.883659, 44.197769>,  <36.560738, 38.128418, 44.110863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864944, 37.883659, 44.197769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113482, -0.454705, -0.883382,
		0.639329, 0.647168, -0.415249,
		0.760513, -0.611896, 0.217265,
		37.093098, 37.700092, 44.262947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891872, 38.145233, 43.510098>,  <36.560738, 38.128418, 44.110863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891872, 38.145233, 43.510098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058880, 37.830917, 43.692619>,  <37.159084, 37.642326, 43.802132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058880, 37.830917, 43.692619>,  <36.891872, 38.145233, 43.510098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058880, 37.830917, 43.692619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173635, -0.423921, -0.888899,
		0.891926, 0.450358, -0.040552,
		0.417514, -0.785791, 0.456305,
		37.184135, 37.595181, 43.829510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231297, 37.965580, 43.056831>,  <36.891872, 38.145233, 43.510098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231297, 37.965580, 43.056831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268410, 37.647743, 43.296833>,  <37.290676, 37.457039, 43.440834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268410, 37.647743, 43.296833>,  <37.231297, 37.965580, 43.056831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268410, 37.647743, 43.296833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221374, -0.571063, -0.790494,
		0.970765, 0.206169, 0.122919,
		0.092780, -0.794595, 0.600008,
		37.296246, 37.409363, 43.476837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918373, 37.579346, 42.863857>,  <37.231297, 37.965580, 43.056831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918373, 37.579346, 42.863857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718388, 37.306915, 43.077839>,  <37.598396, 37.143459, 43.206230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718388, 37.306915, 43.077839>,  <37.918373, 37.579346, 42.863857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718388, 37.306915, 43.077839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256189, -0.706362, -0.659863,
		0.827288, -0.192856, 0.527637,
		-0.499961, -0.681072, 0.534958,
		37.568398, 37.102592, 43.238327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365341, 37.051987, 43.014141>,  <37.918373, 37.579346, 42.863857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365341, 37.051987, 43.014141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993065, 36.906494, 43.029766>,  <37.769699, 36.819199, 43.039139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993065, 36.906494, 43.029766>,  <38.365341, 37.051987, 43.014141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993065, 36.906494, 43.029766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221137, -0.644434, -0.731986,
		0.291414, -0.672612, 0.680200,
		-0.930686, -0.363728, 0.039058,
		37.713860, 36.797375, 43.041485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487381, 36.375278, 43.120201>,  <38.365341, 37.051987, 43.014141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487381, 36.375278, 43.120201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118496, 36.417816, 42.971489>,  <37.897167, 36.443340, 42.882263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118496, 36.417816, 42.971489>,  <38.487381, 36.375278, 43.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118496, 36.417816, 42.971489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174813, -0.742921, -0.646149,
		-0.344917, -0.660877, 0.666538,
		-0.922211, 0.106348, -0.371776,
		37.841831, 36.449722, 42.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360493, 35.748482, 42.956165>,  <38.487381, 36.375278, 43.120201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360493, 35.748482, 42.956165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062683, 35.910736, 42.744076>,  <37.883995, 36.008087, 42.616821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062683, 35.910736, 42.744076>,  <38.360493, 35.748482, 42.956165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062683, 35.910736, 42.744076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000989, -0.794909, -0.606728,
		-0.667591, -0.451202, 0.592233,
		-0.744528, 0.405632, -0.530227,
		37.839325, 36.032425, 42.585007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907898, 35.193256, 42.823254>,  <38.360493, 35.748482, 42.956165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907898, 35.193256, 42.823254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824570, 35.465515, 42.542305>,  <37.774570, 35.628868, 42.373737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824570, 35.465515, 42.542305>,  <37.907898, 35.193256, 42.823254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824570, 35.465515, 42.542305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221303, -0.666698, -0.711715,
		-0.952694, -0.303704, -0.011740,
		-0.208324, 0.680644, -0.702370,
		37.762074, 35.669708, 42.331593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508793, 34.798710, 42.296345>,  <37.907898, 35.193256, 42.823254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508793, 34.798710, 42.296345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668247, 35.124817, 42.128326>,  <37.763920, 35.320480, 42.027515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668247, 35.124817, 42.128326>,  <37.508793, 34.798710, 42.296345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668247, 35.124817, 42.128326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342321, -0.557178, -0.756551,
		-0.850828, 0.157795, -0.501190,
		0.398632, 0.815263, -0.420046,
		37.787838, 35.369396, 42.002312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429821, 34.759296, 41.496708>,  <37.508793, 34.798710, 42.296345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429821, 34.759296, 41.496708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719173, 35.030579, 41.548489>,  <37.892784, 35.193348, 41.579559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719173, 35.030579, 41.548489>,  <37.429821, 34.759296, 41.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719173, 35.030579, 41.548489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429730, -0.295495, -0.853238,
		-0.540413, 0.672850, -0.505200,
		0.723385, 0.678201, 0.129455,
		37.936188, 35.234039, 41.587326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523029, 35.048256, 40.838074>,  <37.429821, 34.759296, 41.496708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523029, 35.048256, 40.838074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864471, 35.127861, 41.030636>,  <38.069336, 35.175625, 41.146175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864471, 35.127861, 41.030636>,  <37.523029, 35.048256, 40.838074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864471, 35.127861, 41.030636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513812, -0.169507, -0.840990,
		-0.085763, 0.965227, -0.246945,
		0.853605, 0.199009, 0.481407,
		38.120552, 35.187565, 41.175056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772758, 35.649189, 40.388206>,  <37.523029, 35.048256, 40.838074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772758, 35.649189, 40.388206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063976, 35.493156, 40.613701>,  <38.238705, 35.399536, 40.748997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063976, 35.493156, 40.613701>,  <37.772758, 35.649189, 40.388206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063976, 35.493156, 40.613701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651017, 0.135760, -0.746824,
		0.214789, 0.910718, 0.352787,
		0.728040, -0.390080, 0.563733,
		38.282387, 35.376133, 40.782822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403496, 36.061729, 40.326363>,  <37.772758, 35.649189, 40.388206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403496, 36.061729, 40.326363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547573, 35.716637, 40.468327>,  <38.634018, 35.509583, 40.553505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547573, 35.716637, 40.468327>,  <38.403496, 36.061729, 40.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547573, 35.716637, 40.468327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757893, 0.048797, -0.650551,
		0.543931, 0.503307, 0.671432,
		0.360191, -0.862729, 0.354911,
		38.655632, 35.457817, 40.574799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100864, 36.169422, 40.315681>,  <38.403496, 36.061729, 40.326363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100864, 36.169422, 40.315681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073566, 35.770515, 40.326969>,  <39.057190, 35.531170, 40.333740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073566, 35.770515, 40.326969>,  <39.100864, 36.169422, 40.315681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073566, 35.770515, 40.326969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655946, -0.066162, -0.751902,
		0.751717, -0.032801, 0.658670,
		-0.068242, -0.997270, 0.028220,
		39.053093, 35.471336, 40.335434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832306, 35.793175, 40.208260>,  <39.100864, 36.169422, 40.315681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832306, 35.793175, 40.208260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 35.512291, 40.113792>,  <39.402447, 35.343761, 40.057114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563644, 35.512291, 40.113792>,  <39.832306, 35.793175, 40.208260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563644, 35.512291, 40.113792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527577, -0.229540, -0.817909,
		0.520135, -0.673950, 0.524643,
		-0.671656, -0.702213, -0.236169,
		39.362148, 35.301628, 40.042942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166203, 35.316105, 39.930923>,  <39.832306, 35.793175, 40.208260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166203, 35.316105, 39.930923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815617, 35.185539, 39.789352>,  <39.605267, 35.107201, 39.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815617, 35.185539, 39.789352>,  <40.166203, 35.316105, 39.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815617, 35.185539, 39.789352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465032, -0.383502, -0.797917,
		0.124720, -0.863933, 0.487918,
		-0.876465, -0.326414, -0.353926,
		39.552677, 35.087616, 39.683174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234657, 34.580494, 39.773815>,  <40.166203, 35.316105, 39.930923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234657, 34.580494, 39.773815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950603, 34.747257, 39.546871>,  <39.780170, 34.847313, 39.410706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950603, 34.747257, 39.546871>,  <40.234657, 34.580494, 39.773815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950603, 34.747257, 39.546871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474932, -0.311236, -0.823147,
		-0.519758, -0.854003, 0.023018,
		-0.710134, 0.416906, -0.567361,
		39.737564, 34.872330, 39.376663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082924, 34.047691, 39.217575>,  <40.234657, 34.580494, 39.773815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082924, 34.047691, 39.217575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003460, 34.425880, 39.114330>,  <39.955780, 34.652794, 39.052383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003460, 34.425880, 39.114330>,  <40.082924, 34.047691, 39.217575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003460, 34.425880, 39.114330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517730, -0.122378, -0.846746,
		-0.832160, -0.301846, -0.465187,
		-0.198658, 0.945470, -0.258112,
		39.943863, 34.709522, 39.036896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882984, 33.925106, 38.545147>,  <40.082924, 34.047691, 39.217575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882984, 33.925106, 38.545147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979507, 34.313087, 38.557533>,  <40.037422, 34.545876, 38.564964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979507, 34.313087, 38.557533>,  <39.882984, 33.925106, 38.545147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979507, 34.313087, 38.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363324, -0.060707, -0.929683,
		-0.899870, 0.235592, -0.367057,
		0.241309, 0.969954, 0.030967,
		40.051899, 34.604073, 38.566822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586346, 34.273552, 37.947491>,  <39.882984, 33.925106, 38.545147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586346, 34.273552, 37.947491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897171, 34.484581, 38.084801>,  <40.083664, 34.611198, 38.167187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897171, 34.484581, 38.084801>,  <39.586346, 34.273552, 37.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897171, 34.484581, 38.084801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441896, -0.068892, -0.894417,
		-0.448223, 0.846710, -0.286667,
		0.777061, 0.527575, 0.343279,
		40.130291, 34.642853, 38.187786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717197, 34.876724, 37.644424>,  <39.586346, 34.273552, 37.947491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717197, 34.876724, 37.644424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069939, 34.740601, 37.774982>,  <40.281582, 34.658928, 37.853317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069939, 34.740601, 37.774982>,  <39.717197, 34.876724, 37.644424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069939, 34.740601, 37.774982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316418, -0.086127, -0.944702,
		0.349599, 0.936362, 0.031728,
		0.881850, -0.340306, 0.326392,
		40.334496, 34.638508, 37.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276787, 35.215282, 37.263138>,  <39.717197, 34.876724, 37.644424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276787, 35.215282, 37.263138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462421, 34.872742, 37.353725>,  <40.573803, 34.667217, 37.408077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462421, 34.872742, 37.353725>,  <40.276787, 35.215282, 37.263138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462421, 34.872742, 37.353725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459936, 0.014456, -0.887834,
		0.757023, 0.516194, 0.400574,
		0.464086, -0.856349, 0.226473,
		40.601646, 34.615837, 37.421669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071850, 35.190281, 37.266159>,  <40.276787, 35.215282, 37.263138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071850, 35.190281, 37.266159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924030, 34.854282, 37.107246>,  <40.835339, 34.652683, 37.011898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924030, 34.854282, 37.107246>,  <41.071850, 35.190281, 37.266159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924030, 34.854282, 37.107246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456419, 0.208325, -0.865033,
		0.809390, -0.501003, 0.306404,
		-0.369552, -0.839998, -0.397284,
		40.813164, 34.602283, 36.988060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177414, 35.836941, 37.589046>,  <41.071850, 35.190281, 37.266159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177414, 35.836941, 37.589046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975071, 36.125443, 37.399773>,  <40.853664, 36.298542, 37.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975071, 36.125443, 37.399773>,  <41.177414, 35.836941, 37.589046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975071, 36.125443, 37.399773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820634, 0.571419, -0.006322,
		0.265825, -0.391507, -0.880942,
		-0.505862, 0.721251, -0.473182,
		40.823311, 36.341816, 37.257816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422485, 36.013046, 36.898746>,  <41.177414, 35.836941, 37.589046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422485, 36.013046, 36.898746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273449, 36.348454, 37.057774>,  <41.184029, 36.549698, 37.153191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273449, 36.348454, 37.057774>,  <41.422485, 36.013046, 36.898746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273449, 36.348454, 37.057774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862384, 0.471092, -0.185379,
		-0.342736, 0.273788, -0.898650,
		-0.372592, 0.838518, 0.397570,
		41.161671, 36.600010, 37.177044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305767, 36.093983, 36.881664>,  <41.422485, 36.013046, 36.898746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305767, 36.093983, 36.881664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675110, 35.947937, 36.929153>,  <42.896717, 35.860310, 36.957645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675110, 35.947937, 36.929153>,  <42.305767, 36.093983, 36.881664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675110, 35.947937, 36.929153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266983, 0.832846, 0.484859,
		-0.275906, -0.416003, 0.866497,
		0.923361, -0.365116, 0.118721,
		42.952118, 35.838402, 36.964771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433758, 36.101131, 37.566807>,  <42.305767, 36.093983, 36.881664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433758, 36.101131, 37.566807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788395, 36.087894, 37.382259>,  <43.001175, 36.079952, 37.271530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788395, 36.087894, 37.382259>,  <42.433758, 36.101131, 37.566807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788395, 36.087894, 37.382259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263215, 0.856291, 0.444391,
		0.380363, -0.515433, 0.767889,
		0.886590, -0.033090, -0.461371,
		43.054371, 36.077969, 37.243847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879333, 36.412762, 38.009209>,  <42.433758, 36.101131, 37.566807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879333, 36.412762, 38.009209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084385, 36.444172, 37.667206>,  <43.207417, 36.463020, 37.462002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084385, 36.444172, 37.667206>,  <42.879333, 36.412762, 38.009209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084385, 36.444172, 37.667206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298840, 0.917228, 0.263416,
		0.804925, -0.390547, 0.446733,
		0.512632, 0.078528, -0.855010,
		43.238174, 36.467731, 37.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617889, 36.539150, 38.237816>,  <42.879333, 36.412762, 38.009209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617889, 36.539150, 38.237816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547661, 36.672417, 37.867264>,  <43.505524, 36.752377, 37.644932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547661, 36.672417, 37.867264>,  <43.617889, 36.539150, 38.237816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547661, 36.672417, 37.867264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467792, 0.856207, 0.219271,
		0.866225, -0.394855, -0.306176,
		-0.175570, 0.333164, -0.926378,
		43.494991, 36.772366, 37.589352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235832, 36.797031, 38.072556>,  <43.617889, 36.539150, 38.237816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235832, 36.797031, 38.072556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971443, 36.961716, 37.821602>,  <43.812809, 37.060528, 37.671028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971443, 36.961716, 37.821602>,  <44.235832, 36.797031, 38.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971443, 36.961716, 37.821602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306046, 0.911260, 0.275574,
		0.685167, -0.009862, -0.728319,
		-0.660971, 0.411713, -0.627383,
		43.773151, 37.085228, 37.633389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675423, 37.297527, 37.815781>,  <44.235832, 36.797031, 38.072556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675423, 37.297527, 37.815781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307224, 37.431358, 37.735046>,  <44.086304, 37.511658, 37.686607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307224, 37.431358, 37.735046>,  <44.675423, 37.297527, 37.815781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307224, 37.431358, 37.735046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279135, 0.924519, 0.259518,
		0.273428, 0.182547, -0.944412,
		-0.920500, 0.334577, -0.201834,
		44.031075, 37.531731, 37.674496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782345, 37.841248, 37.403008>,  <44.675423, 37.297527, 37.815781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782345, 37.841248, 37.403008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410507, 37.886547, 37.543308>,  <44.187405, 37.913727, 37.627491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410507, 37.886547, 37.543308>,  <44.782345, 37.841248, 37.403008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410507, 37.886547, 37.543308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249126, 0.894388, 0.371491,
		-0.271641, 0.432718, -0.859631,
		-0.929595, 0.113245, 0.350754,
		44.131630, 37.920521, 37.648533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443169, 38.484035, 37.101372>,  <44.782345, 37.841248, 37.403008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443169, 38.484035, 37.101372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259686, 38.389870, 37.444107>,  <44.149597, 38.333370, 37.649746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259686, 38.389870, 37.444107>,  <44.443169, 38.484035, 37.101372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259686, 38.389870, 37.444107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031916, 0.959279, 0.280651,
		-0.888016, 0.156083, -0.432512,
		-0.458704, -0.235418, 0.856836,
		44.122074, 38.319244, 37.701157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882389, 38.966213, 37.136631>,  <44.443169, 38.484035, 37.101372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882389, 38.966213, 37.136631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949646, 38.851192, 37.513786>,  <43.990002, 38.782181, 37.740082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949646, 38.851192, 37.513786>,  <43.882389, 38.966213, 37.136631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949646, 38.851192, 37.513786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135367, 0.940711, 0.311029,
		-0.976424, -0.179933, 0.119246,
		0.168141, -0.287554, 0.942890,
		44.000088, 38.764927, 37.796654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183010, 39.337429, 37.521069>,  <43.882389, 38.966213, 37.136631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183010, 39.337429, 37.521069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491726, 39.222900, 37.748177>,  <43.676956, 39.154182, 37.884441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491726, 39.222900, 37.748177>,  <43.183010, 39.337429, 37.521069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491726, 39.222900, 37.748177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003729, 0.894913, 0.446225,
		-0.635869, -0.342274, 0.691751,
		0.771788, -0.286321, 0.567771,
		43.723263, 39.137005, 37.918507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000416, 39.549412, 38.240841>,  <43.183010, 39.337429, 37.521069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000416, 39.549412, 38.240841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394730, 39.482197, 38.241203>,  <43.631317, 39.441868, 38.241421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394730, 39.482197, 38.241203>,  <43.000416, 39.549412, 38.240841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394730, 39.482197, 38.241203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160328, 0.942139, 0.294396,
		-0.050323, -0.290065, 0.955683,
		0.985780, -0.168037, 0.000906,
		43.690464, 39.431786, 38.241474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253773, 39.902496, 38.847103>,  <43.000416, 39.549412, 38.240841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253773, 39.902496, 38.847103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584969, 39.854191, 38.628071>,  <43.783688, 39.825207, 38.496651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584969, 39.854191, 38.628071>,  <43.253773, 39.902496, 38.847103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584969, 39.854191, 38.628071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267459, 0.943344, 0.196385,
		0.492841, -0.309060, 0.813381,
		0.827994, -0.120760, -0.547580,
		43.833366, 39.817963, 38.463799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777630, 40.127014, 39.258312>,  <43.253773, 39.902496, 38.847103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777630, 40.127014, 39.258312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940521, 40.153027, 38.893909>,  <44.038254, 40.168633, 38.675266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940521, 40.153027, 38.893909>,  <43.777630, 40.127014, 39.258312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940521, 40.153027, 38.893909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410650, 0.877917, 0.246230,
		0.815802, -0.474377, 0.330806,
		0.407226, 0.065030, -0.911010,
		44.062691, 40.172535, 38.620605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312569, 40.471821, 39.387627>,  <43.777630, 40.127014, 39.258312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312569, 40.471821, 39.387627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281845, 40.508057, 38.990459>,  <44.263412, 40.529797, 38.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281845, 40.508057, 38.990459>,  <44.312569, 40.471821, 39.387627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281845, 40.508057, 38.990459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553555, 0.832155, 0.033100,
		0.829264, -0.547095, -0.114058,
		-0.076806, 0.090586, -0.992922,
		44.258804, 40.535233, 38.692581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955296, 40.582180, 39.232876>,  <44.312569, 40.471821, 39.387627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955296, 40.582180, 39.232876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724773, 40.722427, 38.937595>,  <44.586460, 40.806576, 38.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724773, 40.722427, 38.937595>,  <44.955296, 40.582180, 39.232876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724773, 40.722427, 38.937595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267123, 0.934492, 0.235310,
		0.772347, -0.061580, -0.632209,
		-0.576304, 0.350618, -0.738201,
		44.551884, 40.827614, 38.716133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432793, 41.104748, 38.955505>,  <44.955296, 40.582180, 39.232876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432793, 41.104748, 38.955505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078793, 41.180420, 38.785336>,  <44.866394, 41.225822, 38.683235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078793, 41.180420, 38.785336>,  <45.432793, 41.104748, 38.955505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078793, 41.180420, 38.785336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208275, 0.978069, 0.001662,
		0.416409, -0.087134, -0.904992,
		-0.885000, 0.189179, -0.425425,
		44.813293, 41.237175, 38.657707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545254, 41.486221, 38.252083>,  <45.432793, 41.104748, 38.955505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545254, 41.486221, 38.252083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165966, 41.561142, 38.354694>,  <44.938393, 41.606094, 38.416264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165966, 41.561142, 38.354694>,  <45.545254, 41.486221, 38.252083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165966, 41.561142, 38.354694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142119, 0.972465, -0.184701,
		-0.284062, -0.138678, -0.948724,
		-0.948215, 0.187298, 0.256531,
		44.881500, 41.617332, 38.431652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263401, 41.920284, 37.745960>,  <45.545254, 41.486221, 38.252083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263401, 41.920284, 37.745960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042942, 41.948502, 38.078529>,  <44.910667, 41.965431, 38.278069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042942, 41.948502, 38.078529>,  <45.263401, 41.920284, 37.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042942, 41.948502, 38.078529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082214, 0.996162, -0.030021,
		-0.830347, 0.051808, -0.554833,
		-0.551149, 0.070543, 0.831420,
		44.877598, 41.969666, 38.327957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859413, 42.446827, 37.628849>,  <45.263401, 41.920284, 37.745960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859413, 42.446827, 37.628849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840836, 42.425724, 38.027859>,  <44.829689, 42.413063, 38.267265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840836, 42.425724, 38.027859>,  <44.859413, 42.446827, 37.628849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840836, 42.425724, 38.027859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224936, 0.972405, 0.061904,
		-0.973266, 0.227255, -0.033295,
		-0.046445, -0.052760, 0.997527,
		44.826900, 42.409897, 38.327118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476410, 43.041824, 37.890213>,  <44.859413, 42.446827, 37.628849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476410, 43.041824, 37.890213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695389, 42.937206, 38.208179>,  <44.826778, 42.874435, 38.398960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695389, 42.937206, 38.208179>,  <44.476410, 43.041824, 37.890213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695389, 42.937206, 38.208179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318972, 0.943411, 0.090735,
		-0.773664, 0.203884, 0.599896,
		0.547449, -0.261549, 0.794916,
		44.859623, 42.858742, 38.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217709, 43.375160, 38.542095>,  <44.476410, 43.041824, 37.890213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217709, 43.375160, 38.542095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610645, 43.300571, 38.548176>,  <44.846409, 43.255817, 38.551823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610645, 43.300571, 38.548176>,  <44.217709, 43.375160, 38.542095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610645, 43.300571, 38.548176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175247, 0.945573, 0.274189,
		-0.065502, -0.266683, 0.961556,
		0.982343, -0.186470, 0.015202,
		44.905350, 43.244629, 38.552738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460819, 43.295113, 39.245144>,  <44.217709, 43.375160, 38.542095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460819, 43.295113, 39.245144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712933, 43.446648, 38.974079>,  <44.864201, 43.537567, 38.811440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712933, 43.446648, 38.974079>,  <44.460819, 43.295113, 39.245144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712933, 43.446648, 38.974079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246406, 0.925349, 0.288120,
		0.736224, -0.014617, 0.676580,
		0.630284, 0.378834, -0.677663,
		44.902020, 43.560299, 38.770779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014790, 43.819794, 39.426315>,  <44.460819, 43.295113, 39.245144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014790, 43.819794, 39.426315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944073, 43.879978, 39.037243>,  <44.901642, 43.916088, 38.803799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944073, 43.879978, 39.037243>,  <45.014790, 43.819794, 39.426315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944073, 43.879978, 39.037243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466349, 0.857470, 0.217405,
		0.866753, 0.492045, -0.081430,
		-0.176797, 0.150461, -0.972679,
		44.891033, 43.925117, 38.745438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294533, 44.503014, 39.133171>,  <45.014790, 43.819794, 39.426315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294533, 44.503014, 39.133171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971203, 44.370571, 38.938446>,  <44.777206, 44.291107, 38.821613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971203, 44.370571, 38.938446>,  <45.294533, 44.503014, 39.133171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971203, 44.370571, 38.938446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506068, 0.813296, 0.287131,
		0.300849, 0.478453, -0.824968,
		-0.808322, -0.331107, -0.486810,
		44.728706, 44.271240, 38.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139763, 44.892738, 38.457340>,  <45.294533, 44.503014, 39.133171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139763, 44.892738, 38.457340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814796, 44.766281, 38.653316>,  <44.619816, 44.690407, 38.770901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814796, 44.766281, 38.653316>,  <45.139763, 44.892738, 38.457340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814796, 44.766281, 38.653316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219805, 0.944315, 0.244858,
		-0.540065, 0.091235, -0.836663,
		-0.812413, -0.316142, 0.489938,
		44.571072, 44.671440, 38.800297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622658, 44.345039, 38.514183>,  <45.139763, 44.892738, 38.457340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622658, 44.345039, 38.514183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695084, 44.721870, 38.401253>,  <45.738541, 44.947968, 38.333492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695084, 44.721870, 38.401253>,  <45.622658, 44.345039, 38.514183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695084, 44.721870, 38.401253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894610, -0.038525, 0.445184,
		0.408520, -0.333181, -0.849766,
		0.181065, 0.942075, -0.282329,
		45.749405, 45.004494, 38.316555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248943, 44.331230, 38.017559>,  <45.622658, 44.345039, 38.514183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248943, 44.331230, 38.017559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183754, 44.649639, 38.250725>,  <46.144642, 44.840687, 38.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183754, 44.649639, 38.250725>,  <46.248943, 44.331230, 38.017559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183754, 44.649639, 38.250725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959534, -0.009639, 0.281429,
		0.229643, 0.605187, -0.762242,
		-0.162970, 0.796025, 0.582911,
		46.134865, 44.888447, 38.425598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953289, 44.561447, 37.972530>,  <46.248943, 44.331230, 38.017559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953289, 44.561447, 37.972530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330196, 44.545177, 37.839577>,  <47.556339, 44.535416, 37.759804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330196, 44.545177, 37.839577>,  <46.953289, 44.561447, 37.972530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330196, 44.545177, 37.839577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045920, -0.998914, -0.007941,
		-0.331702, 0.022746, -0.943110,
		0.942266, -0.040674, -0.332387,
		47.612877, 44.532974, 37.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939659, 44.109200, 37.472599>,  <46.953289, 44.561447, 37.972530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939659, 44.109200, 37.472599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310051, 44.123379, 37.622963>,  <47.532284, 44.131886, 37.713181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310051, 44.123379, 37.622963>,  <46.939659, 44.109200, 37.472599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310051, 44.123379, 37.622963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078711, -0.991833, -0.100356,
		0.369285, 0.122516, -0.921205,
		0.925977, 0.035449, 0.375913,
		47.587845, 44.134014, 37.735737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394253, 43.794262, 37.040970>,  <46.939659, 44.109200, 37.472599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394253, 43.794262, 37.040970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525795, 43.743229, 37.415257>,  <47.604721, 43.712608, 37.639828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525795, 43.743229, 37.415257>,  <47.394253, 43.794262, 37.040970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525795, 43.743229, 37.415257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106417, -0.979515, -0.170957,
		0.938364, 0.155797, -0.308545,
		0.328859, -0.127585, 0.935721,
		47.624451, 43.704952, 37.695972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933918, 43.269409, 37.042496>,  <47.394253, 43.794262, 37.040970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933918, 43.269409, 37.042496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770039, 43.209293, 37.402397>,  <47.671711, 43.173222, 37.618340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770039, 43.209293, 37.402397>,  <47.933918, 43.269409, 37.042496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770039, 43.209293, 37.402397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026265, -0.987869, -0.153050,
		0.911845, -0.039072, 0.408672,
		-0.409694, -0.150292, 0.899757,
		47.647129, 43.164207, 37.672325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.353455, 42.701492, 37.502647>,  <47.933918, 43.269409, 37.042496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.353455, 42.701492, 37.502647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962254, 42.726219, 37.582333>,  <47.727531, 42.741055, 37.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962254, 42.726219, 37.582333>,  <48.353455, 42.701492, 37.502647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.962254, 42.726219, 37.582333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090925, -0.985902, -0.140466,
		0.187719, -0.155490, 0.969837,
		-0.978005, 0.061815, 0.199211,
		47.668854, 42.744762, 37.642097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.227905, 42.112629, 37.879326>,  <48.353455, 42.701492, 37.502647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.227905, 42.112629, 37.879326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870892, 42.241016, 37.752602>,  <47.656685, 42.318050, 37.676567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870892, 42.241016, 37.752602>,  <48.227905, 42.112629, 37.879326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870892, 42.241016, 37.752602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276794, -0.944474, -0.177072,
		-0.356057, -0.070350, 0.931813,
		-0.892530, 0.320967, -0.316814,
		47.603134, 42.337307, 37.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644520, 41.710285, 38.267982>,  <48.227905, 42.112629, 37.879326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644520, 41.710285, 38.267982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518318, 41.827545, 37.906979>,  <47.442596, 41.897900, 37.690376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518318, 41.827545, 37.906979>,  <47.644520, 41.710285, 38.267982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518318, 41.827545, 37.906979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264293, -0.940598, -0.213128,
		-0.911376, 0.171285, 0.374239,
		-0.315503, 0.293149, -0.902508,
		47.423668, 41.915489, 37.636227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101757, 41.193840, 38.102947>,  <47.644520, 41.710285, 38.267982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101757, 41.193840, 38.102947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142155, 41.362026, 37.742279>,  <47.166393, 41.462936, 37.525879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142155, 41.362026, 37.742279>,  <47.101757, 41.193840, 38.102947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142155, 41.362026, 37.742279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398060, -0.813520, -0.423949,
		-0.911783, 0.401737, 0.085206,
		0.100999, 0.420467, -0.901669,
		47.172455, 41.488167, 37.471779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426125, 41.128147, 37.797436>,  <47.101757, 41.193840, 38.102947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426125, 41.128147, 37.797436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704418, 41.144627, 37.510590>,  <46.871395, 41.154514, 37.338482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704418, 41.144627, 37.510590>,  <46.426125, 41.128147, 37.797436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704418, 41.144627, 37.510590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409646, -0.797324, -0.443244,
		-0.590034, 0.602144, -0.537850,
		0.695737, 0.041201, -0.717114,
		46.913139, 41.156986, 37.295456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126820, 40.777573, 37.316391>,  <46.426125, 41.128147, 37.797436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126820, 40.777573, 37.316391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471584, 40.808353, 37.115913>,  <46.678444, 40.826820, 36.995628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.471584, 40.808353, 37.115913>,  <46.126820, 40.777573, 37.316391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471584, 40.808353, 37.115913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227062, -0.825208, -0.517179,
		-0.453385, 0.559562, -0.693781,
		0.861907, 0.076950, -0.501193,
		46.730156, 40.831440, 36.965557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959518, 40.644096, 36.554226>,  <46.126820, 40.777573, 37.316391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959518, 40.644096, 36.554226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353954, 40.593872, 36.597797>,  <46.590614, 40.563736, 36.623940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353954, 40.593872, 36.597797>,  <45.959518, 40.644096, 36.554226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353954, 40.593872, 36.597797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063500, -0.890147, -0.451228,
		0.153618, 0.438033, -0.885736,
		0.986088, -0.125561, 0.108927,
		46.649780, 40.556202, 36.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319115, 40.415539, 35.886414>,  <45.959518, 40.644096, 36.554226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319115, 40.415539, 35.886414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556606, 40.296349, 36.185398>,  <46.699100, 40.224834, 36.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556606, 40.296349, 36.185398>,  <46.319115, 40.415539, 35.886414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556606, 40.296349, 36.185398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096656, -0.948593, -0.301378,
		0.798840, 0.106690, -0.592007,
		0.593728, -0.297974, 0.747461,
		46.734726, 40.206955, 36.409637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724529, 40.010773, 35.576900>,  <46.319115, 40.415539, 35.886414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724529, 40.010773, 35.576900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765388, 39.892879, 35.956944>,  <46.789902, 39.822144, 36.184967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765388, 39.892879, 35.956944>,  <46.724529, 40.010773, 35.576900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765388, 39.892879, 35.956944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125346, -0.951301, -0.281628,
		0.986841, -0.090325, -0.134114,
		0.102144, -0.294733, 0.950105,
		46.796032, 39.804459, 36.241974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953129, 39.399105, 35.388027>,  <46.724529, 40.010773, 35.576900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953129, 39.399105, 35.388027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884048, 39.399826, 35.782017>,  <46.842602, 39.400257, 36.018410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884048, 39.399826, 35.782017>,  <46.953129, 39.399105, 35.388027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.884048, 39.399826, 35.782017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092672, -0.995592, -0.014431,
		0.980605, -0.093772, 0.172107,
		-0.172701, 0.001798, 0.984973,
		46.832237, 39.400364, 36.077507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.363506, 38.924789, 35.680958>,  <46.953129, 39.399105, 35.388027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.363506, 38.924789, 35.680958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032238, 38.980633, 35.898079>,  <46.833477, 39.014137, 36.028351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032238, 38.980633, 35.898079>,  <47.363506, 38.924789, 35.680958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032238, 38.980633, 35.898079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133873, -0.989721, 0.050297,
		0.544249, -0.031012, 0.838350,
		-0.828173, 0.139607, 0.542807,
		46.783787, 39.022514, 36.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420799, 38.440636, 36.215054>,  <47.363506, 38.924789, 35.680958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420799, 38.440636, 36.215054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028740, 38.517891, 36.232998>,  <46.793507, 38.564243, 36.243767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028740, 38.517891, 36.232998>,  <47.420799, 38.440636, 36.215054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028740, 38.517891, 36.232998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191983, -0.980977, 0.028749,
		0.049564, 0.019565, 0.998579,
		-0.980146, 0.193135, 0.044865,
		46.734695, 38.575832, 36.246456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084267, 38.044827, 36.743778>,  <47.420799, 38.440636, 36.215054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084267, 38.044827, 36.743778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771839, 38.135178, 36.510910>,  <46.584385, 38.189388, 36.371189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771839, 38.135178, 36.510910>,  <47.084267, 38.044827, 36.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771839, 38.135178, 36.510910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334744, -0.938469, 0.084985,
		-0.527148, 0.261256, 0.808616,
		-0.781064, 0.225880, -0.582166,
		46.537521, 38.202942, 36.336262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538345, 37.824352, 37.185455>,  <47.084267, 38.044827, 36.743778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538345, 37.824352, 37.185455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393436, 37.838142, 36.812881>,  <46.306492, 37.846416, 36.589336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393436, 37.838142, 36.812881>,  <46.538345, 37.824352, 37.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393436, 37.838142, 36.812881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212126, -0.976141, 0.046372,
		-0.907614, 0.214381, 0.360938,
		-0.362268, 0.034477, -0.931436,
		46.284756, 37.848484, 36.533451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702629, 37.641678, 37.237015>,  <46.538345, 37.824352, 37.185455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702629, 37.641678, 37.237015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830936, 37.563232, 36.866364>,  <45.907921, 37.516163, 36.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830936, 37.563232, 36.866364>,  <45.702629, 37.641678, 37.237015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830936, 37.563232, 36.866364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393225, -0.917606, 0.058084,
		-0.861673, 0.345743, -0.371459,
		0.320771, -0.196117, -0.926630,
		45.927166, 37.504398, 36.588375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212025, 37.259838, 36.885048>,  <45.702629, 37.641678, 37.237015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212025, 37.259838, 36.885048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505646, 37.200893, 36.619884>,  <45.681816, 37.165527, 36.460785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505646, 37.200893, 36.619884>,  <45.212025, 37.259838, 36.885048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505646, 37.200893, 36.619884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307039, -0.942718, -0.130421,
		-0.605720, 0.299276, -0.737250,
		0.734051, -0.147366, -0.662912,
		45.725861, 37.156685, 36.421009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881107, 37.091728, 36.238182>,  <45.212025, 37.259838, 36.885048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881107, 37.091728, 36.238182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257153, 36.955727, 36.247818>,  <45.482780, 36.874126, 36.253597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257153, 36.955727, 36.247818>,  <44.881107, 37.091728, 36.238182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257153, 36.955727, 36.247818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327513, -0.920642, -0.212492,
		0.094424, 0.191878, -0.976866,
		0.940117, -0.340001, 0.024088,
		45.539188, 36.853725, 36.255043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952023, 36.791214, 35.602558>,  <44.881107, 37.091728, 36.238182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952023, 36.791214, 35.602558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238556, 36.627422, 35.828548>,  <45.410477, 36.529148, 35.964142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238556, 36.627422, 35.828548>,  <44.952023, 36.791214, 35.602558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238556, 36.627422, 35.828548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198089, -0.895726, -0.398039,
		0.669054, 0.173211, -0.722748,
		0.716329, -0.409478, 0.564978,
		45.453453, 36.504578, 35.998043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163952, 36.251896, 35.247410>,  <44.952023, 36.791214, 35.602558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163952, 36.251896, 35.247410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321053, 36.143688, 35.598991>,  <45.415314, 36.078762, 35.809940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321053, 36.143688, 35.598991>,  <45.163952, 36.251896, 35.247410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321053, 36.143688, 35.598991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089348, -0.962460, -0.256296,
		0.915295, 0.022127, -0.402176,
		0.392750, -0.270520, 0.878957,
		45.438877, 36.062531, 35.862679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685352, 35.637932, 35.050304>,  <45.163952, 36.251896, 35.247410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685352, 35.637932, 35.050304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570454, 35.596539, 35.431206>,  <45.501514, 35.571701, 35.659744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570454, 35.596539, 35.431206>,  <45.685352, 35.637932, 35.050304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570454, 35.596539, 35.431206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019756, -0.994575, -0.102128,
		0.957653, -0.010523, 0.287732,
		-0.287246, -0.103488, 0.952250,
		45.484280, 35.565491, 35.716881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031170, 35.103012, 35.228371>,  <45.685352, 35.637932, 35.050304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031170, 35.103012, 35.228371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722919, 35.144360, 35.479908>,  <45.537968, 35.169167, 35.630833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722919, 35.144360, 35.479908>,  <46.031170, 35.103012, 35.228371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722919, 35.144360, 35.479908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223981, -0.967736, -0.115409,
		0.596628, -0.229787, 0.768917,
		-0.770628, 0.103366, 0.628846,
		45.491730, 35.175369, 35.668560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233971, 34.841061, 34.607800>,  <46.031170, 35.103012, 35.228371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233971, 34.841061, 34.607800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627396, 34.866779, 34.540310>,  <46.863453, 34.882210, 34.499817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627396, 34.866779, 34.540310>,  <46.233971, 34.841061, 34.607800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627396, 34.866779, 34.540310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090486, 0.633115, 0.768750,
		0.156248, -0.771383, 0.616892,
		0.983564, 0.064296, -0.168723,
		46.922466, 34.886066, 34.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606350, 34.599831, 35.255753>,  <46.233971, 34.841061, 34.607800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606350, 34.599831, 35.255753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734238, 34.908306, 35.035553>,  <46.810970, 35.093391, 34.903435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734238, 34.908306, 35.035553>,  <46.606350, 34.599831, 35.255753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734238, 34.908306, 35.035553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120456, 0.609363, 0.783688,
		0.939823, -0.184253, 0.287722,
		0.319724, 0.771186, -0.550499,
		46.830154, 35.139664, 34.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169968, 35.139118, 35.541618>,  <46.606350, 34.599831, 35.255753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169968, 35.139118, 35.541618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894211, 35.321838, 35.316738>,  <46.728756, 35.431469, 35.181808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894211, 35.321838, 35.316738>,  <47.169968, 35.139118, 35.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894211, 35.321838, 35.316738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205002, 0.621350, 0.756239,
		0.694776, 0.636598, -0.334709,
		-0.689392, 0.456801, -0.562203,
		46.687393, 35.458878, 35.148079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389000, 35.206631, 34.787605>,  <47.169968, 35.139118, 35.541618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389000, 35.206631, 34.787605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762524, 35.181030, 34.928406>,  <47.986637, 35.165668, 35.012886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762524, 35.181030, 34.928406>,  <47.389000, 35.206631, 34.787605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762524, 35.181030, 34.928406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351547, -0.018644, -0.935984,
		0.066468, 0.997776, 0.005090,
		0.933807, -0.064003, 0.352005,
		48.042667, 35.161831, 35.034008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.611649, 43.161774, 45.111622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232132, 43.149868, 44.985825>,  <36.004421, 43.142723, 44.910347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.232132, 43.149868, 44.985825>,  <36.611649, 43.161774, 45.111622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232132, 43.149868, 44.985825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305133, -0.343993, -0.888011,
		-0.081748, -0.938500, 0.335461,
		-0.948795, -0.029767, -0.314488,
		35.947495, 43.140938, 44.891479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501282, 42.490673, 44.909042>,  <36.611649, 43.161774, 45.111622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501282, 42.490673, 44.909042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208908, 42.672230, 44.705196>,  <36.033482, 42.781166, 44.582890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.208908, 42.672230, 44.705196>,  <36.501282, 42.490673, 44.909042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208908, 42.672230, 44.705196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217010, -0.553403, -0.804147,
		-0.647022, -0.698373, 0.306003,
		-0.730937, 0.453895, -0.509618,
		35.989628, 42.808399, 44.552311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186279, 41.985756, 44.626896>,  <36.501282, 42.490673, 44.909042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186279, 41.985756, 44.626896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007233, 42.275627, 44.417332>,  <35.899807, 42.449551, 44.291592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007233, 42.275627, 44.417332>,  <36.186279, 41.985756, 44.626896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007233, 42.275627, 44.417332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009484, -0.581999, -0.813134,
		-0.894177, -0.368938, 0.253637,
		-0.447613, 0.724680, -0.523910,
		35.872948, 42.493031, 44.260159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600971, 41.626713, 44.172146>,  <36.186279, 41.985756, 44.626896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600971, 41.626713, 44.172146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699604, 41.972668, 43.997253>,  <35.758781, 42.180241, 43.892319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699604, 41.972668, 43.997253>,  <35.600971, 41.626713, 44.172146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699604, 41.972668, 43.997253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138736, -0.478022, -0.867322,
		-0.959141, 0.153203, -0.237861,
		0.246579, 0.864884, -0.437235,
		35.773579, 42.232132, 43.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167240, 41.645416, 43.588303>,  <35.600971, 41.626713, 44.172146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167240, 41.645416, 43.588303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455086, 41.906521, 43.493603>,  <35.627792, 42.063183, 43.436783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455086, 41.906521, 43.493603>,  <35.167240, 41.645416, 43.588303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455086, 41.906521, 43.493603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130031, -0.461606, -0.877503,
		-0.682088, 0.600680, -0.417059,
		0.719616, 0.652765, -0.236749,
		35.670971, 42.102352, 43.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025772, 41.938625, 42.924767>,  <35.167240, 41.645416, 43.588303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025772, 41.938625, 42.924767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424225, 41.949604, 42.958149>,  <35.663296, 41.956192, 42.978176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424225, 41.949604, 42.958149>,  <35.025772, 41.938625, 42.924767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424225, 41.949604, 42.958149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086476, -0.473747, -0.876405,
		0.015484, 0.880233, -0.474289,
		0.996134, 0.027445, 0.083454,
		35.723064, 41.957836, 42.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216095, 41.911434, 42.291874>,  <35.025772, 41.938625, 42.924767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216095, 41.911434, 42.291874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547543, 41.836521, 42.502895>,  <35.746410, 41.791573, 42.629509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547543, 41.836521, 42.502895>,  <35.216095, 41.911434, 42.291874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547543, 41.836521, 42.502895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259030, -0.707164, -0.657893,
		0.496276, 0.681796, -0.537460,
		0.828621, -0.187278, 0.527555,
		35.796127, 41.780338, 42.661163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794922, 42.004135, 41.765968>,  <35.216095, 41.911434, 42.291874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794922, 42.004135, 41.765968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903797, 41.778625, 42.077885>,  <35.969124, 41.643318, 42.265034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903797, 41.778625, 42.077885>,  <35.794922, 42.004135, 41.765968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903797, 41.778625, 42.077885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231336, -0.748280, -0.621740,
		0.934022, 0.349624, -0.073251,
		0.272187, -0.563774, 0.779791,
		35.985455, 41.609493, 42.311821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311249, 41.547714, 41.455685>,  <35.794922, 42.004135, 41.765968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311249, 41.547714, 41.455685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272121, 41.362667, 41.808144>,  <36.248646, 41.251637, 42.019619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272121, 41.362667, 41.808144>,  <36.311249, 41.547714, 41.455685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272121, 41.362667, 41.808144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027956, -0.886317, -0.462234,
		0.994812, -0.020581, 0.099630,
		-0.097817, -0.462621, 0.881143,
		36.242775, 41.223881, 42.072487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895859, 41.038948, 41.574028>,  <36.311249, 41.547714, 41.455685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895859, 41.038948, 41.574028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582672, 40.929005, 41.797249>,  <36.394760, 40.863037, 41.931183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.582672, 40.929005, 41.797249>,  <36.895859, 41.038948, 41.574028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582672, 40.929005, 41.797249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148235, -0.953686, -0.261743,
		0.604148, -0.122212, 0.787445,
		-0.782963, -0.274858, 0.558051,
		36.347782, 40.846546, 41.964664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100914, 40.523659, 41.870441>,  <36.895859, 41.038948, 41.574028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100914, 40.523659, 41.870441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702118, 40.494957, 41.882202>,  <36.462841, 40.477737, 41.889259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.702118, 40.494957, 41.882202>,  <37.100914, 40.523659, 41.870441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702118, 40.494957, 41.882202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062743, -0.969271, -0.237860,
		0.045562, -0.235299, 0.970854,
		-0.996989, -0.071752, 0.029398,
		36.403023, 40.473431, 41.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010456, 39.935711, 42.116634>,  <37.100914, 40.523659, 41.870441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010456, 39.935711, 42.116634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650959, 39.993385, 41.951000>,  <36.435261, 40.027988, 41.851620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650959, 39.993385, 41.951000>,  <37.010456, 39.935711, 42.116634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650959, 39.993385, 41.951000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022953, -0.958565, -0.283947,
		-0.437869, -0.245691, 0.864816,
		-0.898746, 0.144182, -0.414087,
		36.381336, 40.036640, 41.826775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553513, 39.324665, 42.395512>,  <37.010456, 39.935711, 42.116634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553513, 39.324665, 42.395512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398777, 39.455524, 42.050644>,  <36.305935, 39.534039, 41.843723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398777, 39.455524, 42.050644>,  <36.553513, 39.324665, 42.395512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398777, 39.455524, 42.050644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186307, -0.943402, -0.274377,
		-0.903130, 0.054488, 0.425896,
		-0.386841, 0.327146, -0.862165,
		36.282726, 39.553669, 41.791992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085461, 38.841000, 42.108517>,  <36.553513, 39.324665, 42.395512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085461, 38.841000, 42.108517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103466, 39.059334, 41.773846>,  <36.114269, 39.190334, 41.573044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103466, 39.059334, 41.773846>,  <36.085461, 38.841000, 42.108517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103466, 39.059334, 41.773846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301133, -0.791160, -0.532339,
		-0.952519, 0.275915, 0.128756,
		0.045014, 0.545836, -0.836682,
		36.116970, 39.223083, 41.522842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469044, 38.702347, 41.716492>,  <36.085461, 38.841000, 42.108517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469044, 38.702347, 41.716492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719803, 38.858124, 41.446575>,  <35.870258, 38.951591, 41.284626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719803, 38.858124, 41.446575>,  <35.469044, 38.702347, 41.716492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719803, 38.858124, 41.446575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256576, -0.714596, -0.650785,
		-0.735644, 0.581108, -0.348055,
		0.626894, 0.389444, -0.674787,
		35.907871, 38.974957, 41.244141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156658, 38.704849, 40.957195>,  <35.469044, 38.702347, 41.716492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156658, 38.704849, 40.957195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553535, 38.738167, 40.920052>,  <35.791660, 38.758156, 40.897766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553535, 38.738167, 40.920052>,  <35.156658, 38.704849, 40.957195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553535, 38.738167, 40.920052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030253, -0.561496, -0.826926,
		-0.121015, 0.823277, -0.554590,
		0.992189, 0.083292, -0.092857,
		35.851192, 38.763153, 40.892193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242805, 38.633930, 40.203381>,  <35.156658, 38.704849, 40.957195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242805, 38.633930, 40.203381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601246, 38.576931, 40.371525>,  <35.816311, 38.542732, 40.472412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601246, 38.576931, 40.371525>,  <35.242805, 38.633930, 40.203381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601246, 38.576931, 40.371525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294050, -0.518836, -0.802710,
		0.332484, 0.842914, -0.423026,
		0.896097, -0.142497, 0.420364,
		35.870075, 38.534184, 40.497635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799770, 38.918259, 39.736893>,  <35.242805, 38.633930, 40.203381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799770, 38.918259, 39.736893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939465, 38.611126, 39.951733>,  <36.023281, 38.426846, 40.080635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939465, 38.611126, 39.951733>,  <35.799770, 38.918259, 39.736893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939465, 38.611126, 39.951733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267587, -0.467600, -0.842465,
		0.898016, 0.437937, 0.042160,
		0.349233, -0.767829, 0.537099,
		36.044235, 38.380775, 40.112862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340839, 38.748653, 39.452423>,  <35.799770, 38.918259, 39.736893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340839, 38.748653, 39.452423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314133, 38.416744, 39.674057>,  <36.298107, 38.217598, 39.807037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314133, 38.416744, 39.674057>,  <36.340839, 38.748653, 39.452423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314133, 38.416744, 39.674057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460903, -0.518176, -0.720459,
		0.884935, 0.207277, 0.417044,
		-0.066767, -0.829777, 0.554087,
		36.294102, 38.167812, 39.840282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030411, 38.358814, 39.292908>,  <36.340839, 38.748653, 39.452423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030411, 38.358814, 39.292908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789192, 38.094093, 39.471050>,  <36.644459, 37.935261, 39.577938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789192, 38.094093, 39.471050>,  <37.030411, 38.358814, 39.292908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789192, 38.094093, 39.471050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461556, -0.744839, -0.481852,
		0.650614, -0.085021, 0.754634,
		-0.603048, -0.661806, 0.445361,
		36.608276, 37.895550, 39.604660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537334, 37.915699, 39.679649>,  <37.030411, 38.358814, 39.292908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537334, 37.915699, 39.679649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197071, 37.721645, 39.598633>,  <36.992912, 37.605213, 39.550022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197071, 37.721645, 39.598633>,  <37.537334, 37.915699, 39.679649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197071, 37.721645, 39.598633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523229, -0.743815, -0.415896,
		0.051113, -0.459762, 0.886570,
		-0.850658, -0.485137, -0.202542,
		36.941875, 37.576103, 39.537868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590115, 37.250687, 39.931969>,  <37.537334, 37.915699, 39.679649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590115, 37.250687, 39.931969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290359, 37.218651, 39.669060>,  <37.110508, 37.199429, 39.511314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290359, 37.218651, 39.669060>,  <37.590115, 37.250687, 39.931969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290359, 37.218651, 39.669060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348171, -0.892007, -0.288271,
		-0.563202, -0.444869, 0.696344,
		-0.749387, -0.080092, -0.657270,
		37.065544, 37.194622, 39.471878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288200, 36.961216, 39.640327>,  <37.590115, 37.250687, 39.931969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288200, 36.961216, 39.640327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606022, 36.999973, 39.400562>,  <38.796715, 37.023228, 39.256702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606022, 36.999973, 39.400562>,  <38.288200, 36.961216, 39.640327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606022, 36.999973, 39.400562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399395, 0.660168, 0.636131,
		0.457350, -0.744842, 0.485840,
		0.794553, 0.096893, -0.599414,
		38.844387, 37.029041, 39.220737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874119, 36.805992, 40.053375>,  <38.288200, 36.961216, 39.640327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874119, 36.805992, 40.053375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002907, 37.023590, 39.743431>,  <39.080181, 37.154148, 39.557465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002907, 37.023590, 39.743431>,  <38.874119, 36.805992, 40.053375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002907, 37.023590, 39.743431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539787, 0.566909, 0.622290,
		0.777795, -0.618619, -0.111111,
		0.321970, 0.543990, -0.774861,
		39.099499, 37.186787, 39.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586910, 36.900810, 40.206547>,  <38.874119, 36.805992, 40.053375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586910, 36.900810, 40.206547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468712, 37.191219, 39.958168>,  <39.397793, 37.365463, 39.809143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468712, 37.191219, 39.958168>,  <39.586910, 36.900810, 40.206547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468712, 37.191219, 39.958168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529509, 0.665465, 0.526096,
		0.795175, -0.173338, -0.581077,
		-0.295494, 0.726024, -0.620945,
		39.380062, 37.409027, 39.771885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117718, 37.269722, 39.977261>,  <39.586910, 36.900810, 40.206547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117718, 37.269722, 39.977261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823349, 37.527985, 39.895729>,  <39.646729, 37.682941, 39.846809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823349, 37.527985, 39.895729>,  <40.117718, 37.269722, 39.977261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823349, 37.527985, 39.895729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511872, 0.727611, 0.456694,
		0.443172, 0.231761, -0.865960,
		-0.735925, 0.645654, -0.203824,
		39.602570, 37.721680, 39.834583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464184, 37.919067, 39.768707>,  <40.117718, 37.269722, 39.977261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464184, 37.919067, 39.768707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091473, 38.032146, 39.859806>,  <39.867847, 38.099995, 39.914467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091473, 38.032146, 39.859806>,  <40.464184, 37.919067, 39.768707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091473, 38.032146, 39.859806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362664, 0.696894, 0.618720,
		0.016196, 0.659106, -0.751876,
		-0.931779, 0.282699, 0.227746,
		39.811939, 38.116955, 39.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442417, 38.702831, 39.892742>,  <40.464184, 37.919067, 39.768707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442417, 38.702831, 39.892742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108467, 38.567631, 40.066521>,  <39.908096, 38.486511, 40.170788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108467, 38.567631, 40.066521>,  <40.442417, 38.702831, 39.892742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108467, 38.567631, 40.066521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120448, 0.657958, 0.743360,
		-0.537104, 0.672939, -0.508599,
		-0.834873, -0.338002, 0.434445,
		39.858006, 38.466228, 40.196854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111462, 39.352745, 40.203495>,  <40.442417, 38.702831, 39.892742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111462, 39.352745, 40.203495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934673, 39.035652, 40.371418>,  <39.828602, 38.845398, 40.472172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.934673, 39.035652, 40.371418>,  <40.111462, 39.352745, 40.203495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934673, 39.035652, 40.371418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170575, 0.533734, 0.828270,
		-0.880662, 0.294463, -0.371115,
		-0.441971, -0.792729, 0.419811,
		39.802082, 38.797832, 40.497360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384380, 39.589825, 40.384251>,  <40.111462, 39.352745, 40.203495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384380, 39.589825, 40.384251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507240, 39.297337, 40.627884>,  <39.580956, 39.121845, 40.774063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507240, 39.297337, 40.627884>,  <39.384380, 39.589825, 40.384251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507240, 39.297337, 40.627884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230514, 0.563796, 0.793094,
		-0.923321, -0.384001, 0.004615,
		0.307151, -0.731216, 0.609082,
		39.599384, 39.077972, 40.810608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888714, 39.635483, 40.902046>,  <39.384380, 39.589825, 40.384251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888714, 39.635483, 40.902046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192150, 39.423550, 41.053745>,  <39.374210, 39.296391, 41.144764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192150, 39.423550, 41.053745>,  <38.888714, 39.635483, 40.902046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192150, 39.423550, 41.053745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014672, 0.568009, 0.822892,
		-0.651405, -0.629800, 0.423111,
		0.758588, -0.529828, 0.379244,
		39.419727, 39.264603, 41.167519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616726, 39.297150, 41.496277>,  <38.888714, 39.635483, 40.902046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616726, 39.297150, 41.496277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012718, 39.346024, 41.524570>,  <39.250313, 39.375347, 41.541546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012718, 39.346024, 41.524570>,  <38.616726, 39.297150, 41.496277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012718, 39.346024, 41.524570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125380, 0.530559, 0.838324,
		0.064907, -0.838795, 0.540565,
		0.989983, 0.122189, 0.070731,
		39.309711, 39.382679, 41.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730457, 39.274029, 42.234535>,  <38.616726, 39.297150, 41.496277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730457, 39.274029, 42.234535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066349, 39.451229, 42.108929>,  <39.267883, 39.557549, 42.033566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066349, 39.451229, 42.108929>,  <38.730457, 39.274029, 42.234535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066349, 39.451229, 42.108929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027932, 0.542288, 0.839728,
		0.542288, -0.713914, 0.443001,
		-0.839728, -0.443001, 0.314018,
		39.318268, 39.584129, 42.014725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250431, 39.353615, 42.782745>,  <38.730457, 39.274029, 42.234535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250431, 39.353615, 42.782745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386082, 39.619324, 42.516293>,  <39.467472, 39.778751, 42.356419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386082, 39.619324, 42.516293>,  <39.250431, 39.353615, 42.782745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386082, 39.619324, 42.516293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036518, 0.698266, 0.714906,
		0.940033, -0.266766, 0.212539,
		0.339122, 0.664275, -0.666135,
		39.487820, 39.818607, 42.316452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593460, 39.725353, 43.208382>,  <39.250431, 39.353615, 42.782745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593460, 39.725353, 43.208382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558952, 39.922100, 42.861828>,  <39.538246, 40.040150, 42.653896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558952, 39.922100, 42.861828>,  <39.593460, 39.725353, 43.208382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558952, 39.922100, 42.861828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017150, 0.870231, 0.492346,
		0.996124, 0.027615, -0.083509,
		-0.086268, 0.491870, -0.866384,
		39.533073, 40.069660, 42.601913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983940, 40.271019, 43.373955>,  <39.593460, 39.725353, 43.208382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983940, 40.271019, 43.373955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775944, 40.395802, 43.055889>,  <39.651146, 40.470669, 42.865047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775944, 40.395802, 43.055889>,  <39.983940, 40.271019, 43.373955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775944, 40.395802, 43.055889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320075, 0.791933, 0.519995,
		0.791933, 0.524907, -0.311953,
		-0.519995, 0.311953, -0.795167,
		39.619946, 40.489388, 42.817341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199608, 40.931862, 43.283733>,  <39.983940, 40.271019, 43.373955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199608, 40.931862, 43.283733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829418, 40.881454, 43.140842>,  <39.607304, 40.851212, 43.055107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.829418, 40.881454, 43.140842>,  <40.199608, 40.931862, 43.283733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829418, 40.881454, 43.140842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343817, 0.675295, 0.652508,
		0.159008, 0.726702, -0.668296,
		-0.925476, -0.126017, -0.357230,
		39.551777, 40.843651, 43.033672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975868, 41.640659, 43.130222>,  <40.199608, 40.931862, 43.283733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975868, 41.640659, 43.130222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640633, 41.423210, 43.148479>,  <39.439491, 41.292740, 43.159435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640633, 41.423210, 43.148479>,  <39.975868, 41.640659, 43.130222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640633, 41.423210, 43.148479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436629, 0.718587, 0.541284,
		-0.327053, 0.433714, -0.839600,
		-0.838088, -0.543622, 0.045644,
		39.389206, 41.260124, 43.162174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614910, 42.163895, 43.005817>,  <39.975868, 41.640659, 43.130222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614910, 42.163895, 43.005817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393497, 41.886185, 43.189812>,  <39.260651, 41.719559, 43.300209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.393497, 41.886185, 43.189812>,  <39.614910, 42.163895, 43.005817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393497, 41.886185, 43.189812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348054, 0.694615, 0.629578,
		-0.756613, 0.188392, -0.626135,
		-0.553530, -0.694276, 0.459984,
		39.227440, 41.677902, 43.327808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070259, 42.537113, 43.222710>,  <39.614910, 42.163895, 43.005817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070259, 42.537113, 43.222710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993900, 42.201454, 43.426430>,  <38.948086, 42.000057, 43.548660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993900, 42.201454, 43.426430>,  <39.070259, 42.537113, 43.222710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993900, 42.201454, 43.426430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440587, 0.536887, 0.719469,
		-0.877178, -0.087043, -0.472210,
		-0.190899, -0.839152, 0.509295,
		38.936630, 41.949707, 43.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.366314, 42.494202, 43.376915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550583, 42.287998, 43.665920>,  <38.661144, 42.164276, 43.839325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550583, 42.287998, 43.665920>,  <38.366314, 42.494202, 43.376915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550583, 42.287998, 43.665920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523648, 0.499413, 0.690202,
		-0.716639, -0.696303, -0.039878,
		0.460674, -0.515508, 0.722517,
		38.688786, 42.133347, 43.882675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827198, 42.396702, 43.914684>,  <38.366314, 42.494202, 43.376915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827198, 42.396702, 43.914684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171558, 42.329285, 44.106697>,  <38.378174, 42.288834, 44.221905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171558, 42.329285, 44.106697>,  <37.827198, 42.396702, 43.914684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171558, 42.329285, 44.106697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332383, 0.528010, 0.781490,
		-0.385180, -0.832345, 0.398546,
		0.860905, -0.168545, 0.480037,
		38.429829, 42.278721, 44.250710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588943, 42.235065, 44.635448>,  <37.827198, 42.396702, 43.914684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588943, 42.235065, 44.635448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979225, 42.322701, 44.636719>,  <38.213394, 42.375282, 44.637482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979225, 42.322701, 44.636719>,  <37.588943, 42.235065, 44.635448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979225, 42.322701, 44.636719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122285, 0.532462, 0.837575,
		0.181808, -0.817611, 0.546314,
		0.975701, 0.219084, 0.003176,
		38.271935, 42.388424, 44.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743542, 41.920120, 45.230389>,  <37.588943, 42.235065, 44.635448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743542, 41.920120, 45.230389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040634, 42.177036, 45.154694>,  <38.218891, 42.331184, 45.109276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040634, 42.177036, 45.154694>,  <37.743542, 41.920120, 45.230389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040634, 42.177036, 45.154694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196099, 0.478877, 0.855700,
		0.640227, -0.598449, 0.481631,
		0.742734, 0.642290, -0.189235,
		38.263454, 42.369724, 45.097923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003868, 42.008675, 45.846279>,  <37.743542, 41.920120, 45.230389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003868, 42.008675, 45.846279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104706, 42.354774, 45.672939>,  <38.165207, 42.562435, 45.568935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104706, 42.354774, 45.672939>,  <38.003868, 42.008675, 45.846279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104706, 42.354774, 45.672939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351634, 0.499103, 0.791991,
		0.901556, -0.047274, 0.430071,
		0.252091, 0.865252, -0.433347,
		38.180332, 42.614349, 45.542934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496216, 42.316780, 46.308311>,  <38.003868, 42.008675, 45.846279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496216, 42.316780, 46.308311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336079, 42.594219, 46.068764>,  <38.239998, 42.760685, 45.925034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336079, 42.594219, 46.068764>,  <38.496216, 42.316780, 46.308311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336079, 42.594219, 46.068764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123203, 0.606853, 0.785207,
		0.908045, 0.388135, -0.157497,
		-0.400344, 0.693600, -0.598869,
		38.215977, 42.802299, 45.889103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807877, 42.837971, 46.568123>,  <38.496216, 42.316780, 46.308311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807877, 42.837971, 46.568123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508873, 43.000778, 46.358147>,  <38.329472, 43.098465, 46.232159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508873, 43.000778, 46.358147>,  <38.807877, 42.837971, 46.568123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508873, 43.000778, 46.358147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150555, 0.665894, 0.730697,
		0.646967, 0.625235, -0.436481,
		-0.747507, 0.407022, -0.524944,
		38.284622, 43.122887, 46.200665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956333, 43.517704, 46.519077>,  <38.807877, 42.837971, 46.568123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956333, 43.517704, 46.519077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561840, 43.495155, 46.456902>,  <38.325142, 43.481628, 46.419594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.561840, 43.495155, 46.456902>,  <38.956333, 43.517704, 46.519077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561840, 43.495155, 46.456902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146375, 0.734869, 0.662224,
		0.076901, 0.675862, -0.733005,
		-0.986235, -0.056368, -0.155442,
		38.265968, 43.478245, 46.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709831, 44.150139, 46.305866>,  <38.956333, 43.517704, 46.519077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709831, 44.150139, 46.305866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411598, 43.954769, 46.487221>,  <38.232658, 43.837547, 46.596031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411598, 43.954769, 46.487221>,  <38.709831, 44.150139, 46.305866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411598, 43.954769, 46.487221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051014, 0.720164, 0.691926,
		-0.664460, 0.492758, -0.561857,
		-0.745581, -0.488420, 0.453382,
		38.187923, 43.808243, 46.623234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504593, 44.809711, 46.650284>,  <38.709831, 44.150139, 46.305866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504593, 44.809711, 46.650284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291027, 44.494045, 46.771709>,  <38.162888, 44.304646, 46.844566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291027, 44.494045, 46.771709>,  <38.504593, 44.809711, 46.650284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291027, 44.494045, 46.771709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261831, 0.495685, 0.828095,
		-0.803977, 0.362650, -0.471282,
		-0.533916, -0.789165, 0.303566,
		38.130852, 44.257298, 46.862778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873550, 45.003105, 46.828537>,  <38.504593, 44.809711, 46.650284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873550, 45.003105, 46.828537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926212, 44.683620, 47.063393>,  <37.957809, 44.491928, 47.204304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926212, 44.683620, 47.063393>,  <37.873550, 45.003105, 46.828537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926212, 44.683620, 47.063393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248141, 0.546883, 0.799591,
		-0.959736, -0.250960, -0.126194,
		0.131652, -0.798710, 0.587137,
		37.965710, 44.444008, 47.239532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299839, 44.834816, 47.223000>,  <37.873550, 45.003105, 46.828537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299839, 44.834816, 47.223000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591171, 44.663902, 47.437275>,  <37.765972, 44.561352, 47.565842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.591171, 44.663902, 47.437275>,  <37.299839, 44.834816, 47.223000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591171, 44.663902, 47.437275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346851, 0.444323, 0.825997,
		-0.590956, -0.787403, 0.175409,
		0.728330, -0.427287, 0.535687,
		37.809669, 44.535717, 47.597980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929016, 44.676117, 47.931595>,  <37.299839, 44.834816, 47.223000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929016, 44.676117, 47.931595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323486, 44.644878, 47.990044>,  <37.560169, 44.626137, 48.025112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323486, 44.644878, 47.990044>,  <36.929016, 44.676117, 47.931595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323486, 44.644878, 47.990044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110858, 0.344376, 0.932264,
		-0.123127, -0.935578, 0.330959,
		0.986180, -0.078097, 0.146119,
		37.619339, 44.621449, 48.033878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955887, 44.338074, 48.605179>,  <36.929016, 44.676117, 47.931595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955887, 44.338074, 48.605179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307495, 44.514069, 48.531712>,  <37.518459, 44.619667, 48.487629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307495, 44.514069, 48.531712>,  <36.955887, 44.338074, 48.605179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307495, 44.514069, 48.531712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028222, 0.336538, 0.941247,
		0.475950, -0.832557, 0.283406,
		0.879019, 0.439989, -0.183672,
		37.571201, 44.646065, 48.476608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410381, 44.065605, 49.109409>,  <36.955887, 44.338074, 48.605179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410381, 44.065605, 49.109409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553635, 44.418362, 48.986771>,  <37.639587, 44.630016, 48.913185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553635, 44.418362, 48.986771>,  <37.410381, 44.065605, 49.109409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553635, 44.418362, 48.986771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052712, 0.308760, 0.949678,
		0.932180, -0.356277, 0.064092,
		0.358137, 0.881893, -0.306600,
		37.661076, 44.682930, 48.894791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903843, 44.205242, 49.632263>,  <37.410381, 44.065605, 49.109409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903843, 44.205242, 49.632263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815449, 44.553841, 49.457146>,  <37.762413, 44.763000, 49.352074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815449, 44.553841, 49.457146>,  <37.903843, 44.205242, 49.632263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815449, 44.553841, 49.457146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032442, 0.442073, 0.896392,
		0.974737, 0.212293, -0.069419,
		-0.220986, 0.871495, -0.437792,
		37.749153, 44.815289, 49.325809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368557, 44.718151, 49.774250>,  <37.903843, 44.205242, 49.632263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368557, 44.718151, 49.774250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053951, 44.956223, 49.708321>,  <37.865189, 45.099064, 49.668762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053951, 44.956223, 49.708321>,  <38.368557, 44.718151, 49.774250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053951, 44.956223, 49.708321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120326, 0.409449, 0.904364,
		0.605743, 0.691459, -0.393651,
		-0.786510, 0.595178, -0.164820,
		37.817997, 45.134777, 49.658875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554665, 45.379974, 49.983124>,  <38.368557, 44.718151, 49.774250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554665, 45.379974, 49.983124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155998, 45.412086, 49.977306>,  <37.916798, 45.431355, 49.973816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155998, 45.412086, 49.977306>,  <38.554665, 45.379974, 49.983124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155998, 45.412086, 49.977306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038501, 0.619982, 0.783671,
		0.071931, 0.780498, -0.621006,
		-0.996666, 0.080280, -0.014546,
		37.856998, 45.436169, 49.972942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535175, 45.994331, 50.246506>,  <38.554665, 45.379974, 49.983124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535175, 45.994331, 50.246506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156101, 45.870804, 50.278797>,  <37.928658, 45.796688, 50.298172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156101, 45.870804, 50.278797>,  <38.535175, 45.994331, 50.246506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156101, 45.870804, 50.278797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109182, 0.551277, 0.827148,
		-0.299948, 0.775063, -0.556156,
		-0.947687, -0.308823, 0.080732,
		37.871796, 45.778156, 50.303017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228027, 46.540668, 50.532536>,  <38.535175, 45.994331, 50.246506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228027, 46.540668, 50.532536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931988, 46.275814, 50.579578>,  <37.754364, 46.116901, 50.607803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931988, 46.275814, 50.579578>,  <38.228027, 46.540668, 50.532536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931988, 46.275814, 50.579578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184419, 0.368007, 0.911351,
		-0.646719, 0.652799, -0.394472,
		-0.740098, -0.662136, 0.117608,
		37.709957, 46.077175, 50.614861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613884, 46.924400, 50.746269>,  <38.228027, 46.540668, 50.532536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613884, 46.924400, 50.746269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526482, 46.548157, 50.850197>,  <37.474041, 46.322411, 50.912552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526482, 46.548157, 50.850197>,  <37.613884, 46.924400, 50.746269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526482, 46.548157, 50.850197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256509, 0.312253, 0.914714,
		-0.941520, 0.133221, -0.309503,
		-0.218503, -0.940612, 0.259820,
		37.460930, 46.265972, 50.928143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010479, 46.928455, 51.115623>,  <37.613884, 46.924400, 50.746269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010479, 46.928455, 51.115623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145058, 46.575542, 51.247307>,  <37.225807, 46.363796, 51.326317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145058, 46.575542, 51.247307>,  <37.010479, 46.928455, 51.115623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145058, 46.575542, 51.247307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244765, 0.255643, 0.935274,
		-0.909336, -0.395250, -0.129941,
		0.336449, -0.882283, 0.329209,
		37.245991, 46.310856, 51.346069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531994, 46.661526, 51.639320>,  <37.010479, 46.928455, 51.115623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531994, 46.661526, 51.639320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889606, 46.501419, 51.719826>,  <37.104172, 46.405357, 51.768127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889606, 46.501419, 51.719826>,  <36.531994, 46.661526, 51.639320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889606, 46.501419, 51.719826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221972, -0.005532, 0.975037,
		-0.389158, -0.916384, -0.093793,
		0.894027, -0.400263, 0.201259,
		37.157814, 46.381340, 51.780205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480736, 46.074074, 52.042683>,  <36.531994, 46.661526, 51.639320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480736, 46.074074, 52.042683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817314, 46.280594, 52.106438>,  <37.019260, 46.404507, 52.144691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817314, 46.280594, 52.106438>,  <36.480736, 46.074074, 52.042683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817314, 46.280594, 52.106438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105672, -0.132044, 0.985595,
		0.529910, -0.846166, -0.056549,
		0.841444, 0.516301, 0.159388,
		37.069748, 46.435486, 52.154255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827507, 45.935535, 52.409435>,  <36.480736, 46.074074, 52.042683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827507, 45.935535, 52.409435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433262, 45.975723, 52.355076>,  <35.196712, 45.999836, 52.322460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433262, 45.975723, 52.355076>,  <35.827507, 45.935535, 52.409435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433262, 45.975723, 52.355076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075523, -0.457500, -0.885997,
		-0.151189, -0.883515, 0.443331,
		-0.985615, 0.100472, -0.135895,
		35.137577, 46.005863, 52.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563934, 45.198410, 52.325542>,  <35.827507, 45.935535, 52.409435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563934, 45.198410, 52.325542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307938, 45.462101, 52.167645>,  <35.154339, 45.620316, 52.072906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307938, 45.462101, 52.167645>,  <35.563934, 45.198410, 52.325542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307938, 45.462101, 52.167645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043848, -0.481569, -0.875311,
		-0.767128, -0.577502, 0.279295,
		-0.639993, 0.659229, -0.394748,
		35.115940, 45.659870, 52.049221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241352, 44.789852, 51.942783>,  <35.563934, 45.198410, 52.325542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241352, 44.789852, 51.942783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133991, 45.143257, 51.789230>,  <35.069576, 45.355301, 51.697098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.133991, 45.143257, 51.789230>,  <35.241352, 44.789852, 51.942783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133991, 45.143257, 51.789230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041491, -0.408742, -0.911706,
		-0.962413, -0.228776, 0.146365,
		-0.268402, 0.883511, -0.383887,
		35.053471, 45.408310, 51.674065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560886, 44.754684, 51.582775>,  <35.241352, 44.789852, 51.942783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560886, 44.754684, 51.582775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733158, 45.071503, 51.409718>,  <34.836521, 45.261593, 51.305885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733158, 45.071503, 51.409718>,  <34.560886, 44.754684, 51.582775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733158, 45.071503, 51.409718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078906, -0.444494, -0.892300,
		-0.899051, 0.418430, -0.128935,
		0.430676, 0.792049, -0.432639,
		34.862362, 45.309116, 51.279926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139202, 44.940868, 50.937424>,  <34.560886, 44.754684, 51.582775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139202, 44.940868, 50.937424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.488899, 45.120560, 50.863785>,  <34.698719, 45.228374, 50.819603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.488899, 45.120560, 50.863785>,  <34.139202, 44.940868, 50.937424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488899, 45.120560, 50.863785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006397, -0.368506, -0.929603,
		-0.485439, 0.813881, -0.319292,
		0.874247, 0.449224, -0.184093,
		34.751175, 45.255325, 50.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123264, 45.566589, 50.390610>,  <34.139202, 44.940868, 50.937424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123264, 45.566589, 50.390610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481354, 45.388382, 50.394314>,  <34.696209, 45.281456, 50.396538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.481354, 45.388382, 50.394314>,  <34.123264, 45.566589, 50.390610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481354, 45.388382, 50.394314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087535, -0.196191, -0.976651,
		0.436936, 0.873510, -0.214633,
		0.895223, -0.445522, 0.009260,
		34.749920, 45.254726, 50.397091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426659, 45.779339, 49.779781>,  <34.123264, 45.566589, 50.390610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426659, 45.779339, 49.779781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675781, 45.479153, 49.868252>,  <34.825253, 45.299042, 49.921333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675781, 45.479153, 49.868252>,  <34.426659, 45.779339, 49.779781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675781, 45.479153, 49.868252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075258, -0.338849, -0.937826,
		0.778751, 0.567435, -0.267515,
		0.622803, -0.750466, 0.221175,
		34.862621, 45.254013, 49.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049805, 45.730465, 49.388813>,  <34.426659, 45.779339, 49.779781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049805, 45.730465, 49.388813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031532, 45.344807, 49.493382>,  <35.020569, 45.113411, 49.556122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031532, 45.344807, 49.493382>,  <35.049805, 45.730465, 49.388813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031532, 45.344807, 49.493382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160034, -0.265379, -0.950770,
		0.986054, -0.001594, 0.166418,
		-0.045679, -0.964143, 0.261423,
		35.017830, 45.055565, 49.571808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399639, 45.479069, 48.908108>,  <35.049805, 45.730465, 49.388813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399639, 45.479069, 48.908108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244579, 45.135212, 49.041214>,  <35.151543, 44.928898, 49.121078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244579, 45.135212, 49.041214>,  <35.399639, 45.479069, 48.908108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244579, 45.135212, 49.041214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157954, -0.417602, -0.894796,
		0.908172, -0.294308, 0.297669,
		-0.387653, -0.859646, 0.332767,
		35.128284, 44.877319, 49.141045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907349, 44.900425, 48.920231>,  <35.399639, 45.479069, 48.908108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907349, 44.900425, 48.920231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539829, 44.742928, 48.909149>,  <35.319317, 44.648430, 48.902500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539829, 44.742928, 48.909149>,  <35.907349, 44.900425, 48.920231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539829, 44.742928, 48.909149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251926, -0.530940, -0.809096,
		0.303865, -0.750380, 0.587024,
		-0.918803, -0.393743, -0.027706,
		35.264187, 44.624805, 48.900837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852825, 44.182259, 48.806923>,  <35.907349, 44.900425, 48.920231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852825, 44.182259, 48.806923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460693, 44.199268, 48.729839>,  <35.225414, 44.209473, 48.683590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460693, 44.199268, 48.729839>,  <35.852825, 44.182259, 48.806923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460693, 44.199268, 48.729839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109970, -0.693137, -0.712368,
		-0.163868, -0.719550, 0.674829,
		-0.980334, 0.042523, -0.192712,
		35.166592, 44.212025, 48.672028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714142, 43.520454, 48.626678>,  <35.852825, 44.182259, 48.806923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714142, 43.520454, 48.626678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400631, 43.717800, 48.475800>,  <35.212524, 43.836208, 48.385273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.400631, 43.717800, 48.475800>,  <35.714142, 43.520454, 48.626678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400631, 43.717800, 48.475800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146245, -0.443668, -0.884178,
		-0.603573, -0.748166, 0.275586,
		-0.783780, 0.493363, -0.377201,
		35.165497, 43.865810, 48.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266415, 42.969643, 48.349323>,  <35.714142, 43.520454, 48.626678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266415, 42.969643, 48.349323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178051, 43.307671, 48.154568>,  <35.125034, 43.510487, 48.037716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178051, 43.307671, 48.154568>,  <35.266415, 42.969643, 48.349323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178051, 43.307671, 48.154568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045413, -0.489767, -0.870669,
		-0.974236, -0.214451, 0.069818,
		-0.220910, 0.845067, -0.486888,
		35.111778, 43.561192, 48.008503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817879, 42.734962, 47.754368>,  <35.266415, 42.969643, 48.349323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817879, 42.734962, 47.754368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954735, 43.093647, 47.642056>,  <35.036850, 43.308857, 47.574669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954735, 43.093647, 47.642056>,  <34.817879, 42.734962, 47.754368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954735, 43.093647, 47.642056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143793, -0.345263, -0.927425,
		-0.928580, 0.276939, -0.247071,
		0.342144, 0.896716, -0.280782,
		35.057377, 43.362663, 47.557819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500633, 42.946030, 47.071571>,  <34.817879, 42.734962, 47.754368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500633, 42.946030, 47.071571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825077, 43.179867, 47.063992>,  <35.019741, 43.320168, 47.059444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825077, 43.179867, 47.063992>,  <34.500633, 42.946030, 47.071571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825077, 43.179867, 47.063992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119844, -0.197821, -0.972885,
		-0.572488, 0.786842, -0.230514,
		0.811107, 0.584590, -0.018951,
		35.068409, 43.355244, 47.058308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540653, 43.180031, 46.469341>,  <34.500633, 42.946030, 47.071571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540653, 43.180031, 46.469341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920261, 43.269123, 46.558559>,  <35.148026, 43.322578, 46.612091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.920261, 43.269123, 46.558559>,  <34.540653, 43.180031, 46.469341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920261, 43.269123, 46.558559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252987, -0.116090, -0.960479,
		-0.188032, 0.967944, -0.166519,
		0.949021, 0.222728, 0.223049,
		35.204967, 43.335941, 46.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746738, 43.889889, 46.241707>,  <34.540653, 43.180031, 46.469341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746738, 43.889889, 46.241707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064468, 43.648960, 46.273319>,  <35.255108, 43.504402, 46.292286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064468, 43.648960, 46.273319>,  <34.746738, 43.889889, 46.241707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064468, 43.648960, 46.273319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133030, 0.045532, -0.990066,
		0.592743, 0.796951, 0.116294,
		0.794329, -0.602325, 0.079030,
		35.302769, 43.468262, 46.297028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078838, 44.130280, 45.641384>,  <34.746738, 43.889889, 46.241707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078838, 44.130280, 45.641384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226162, 43.771259, 45.738335>,  <35.314556, 43.555847, 45.796505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226162, 43.771259, 45.738335>,  <35.078838, 44.130280, 45.641384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226162, 43.771259, 45.738335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352619, -0.106362, -0.929703,
		0.860237, 0.427886, 0.277320,
		0.368310, -0.897553, 0.242377,
		35.336655, 43.501995, 45.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774532, 44.183994, 45.435162>,  <35.078838, 44.130280, 45.641384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774532, 44.183994, 45.435162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653999, 43.803993, 45.467884>,  <35.581680, 43.575993, 45.487518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653999, 43.803993, 45.467884>,  <35.774532, 44.183994, 45.435162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653999, 43.803993, 45.467884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530532, -0.238332, -0.813470,
		0.792296, -0.201726, 0.575824,
		-0.301335, -0.950002, 0.081808,
		35.563599, 43.518993, 45.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355621, 43.807320, 45.258884>,  <35.774532, 44.183994, 45.435162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355621, 43.807320, 45.258884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.051746, 43.548138, 45.236908>,  <35.869419, 43.392628, 45.223721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.051746, 43.548138, 45.236908>,  <36.355621, 43.807320, 45.258884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051746, 43.548138, 45.236908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326766, -0.307329, -0.893741,
		0.562222, -0.696920, 0.445206,
		-0.759690, -0.647959, -0.054942,
		35.823837, 43.353748, 45.220425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.843773, 42.376587, 38.670643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651283, 42.712818, 38.770123>,  <45.535789, 42.914558, 38.829811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651283, 42.712818, 38.770123>,  <45.843773, 42.376587, 38.670643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651283, 42.712818, 38.770123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735651, -0.541535, 0.406887,
		0.476702, 0.012844, 0.878971,
		-0.481220, 0.840580, 0.248702,
		45.506916, 42.964993, 38.844734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608295, 42.445789, 39.415237>,  <45.843773, 42.376587, 38.670643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608295, 42.445789, 39.415237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381435, 42.570229, 39.110199>,  <45.245319, 42.644890, 38.927174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381435, 42.570229, 39.110199>,  <45.608295, 42.445789, 39.415237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381435, 42.570229, 39.110199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552888, -0.830090, 0.072559,
		-0.610453, 0.462785, 0.642789,
		-0.567152, 0.311096, -0.762599,
		45.211288, 42.663559, 38.881420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922222, 42.408199, 39.598133>,  <45.608295, 42.445789, 39.415237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922222, 42.408199, 39.598133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889984, 42.401150, 39.199497>,  <44.870644, 42.396919, 38.960316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889984, 42.401150, 39.199497>,  <44.922222, 42.408199, 39.598133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889984, 42.401150, 39.199497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683178, -0.727069, 0.068104,
		-0.725791, 0.686338, 0.046558,
		-0.080593, -0.017622, -0.996591,
		44.865807, 42.395863, 38.900520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328995, 42.068863, 39.505215>,  <44.922222, 42.408199, 39.598133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328995, 42.068863, 39.505215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.462814, 42.036907, 39.129620>,  <44.543106, 42.017735, 38.904263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.462814, 42.036907, 39.129620>,  <44.328995, 42.068863, 39.505215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462814, 42.036907, 39.129620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489826, -0.865968, -0.100845,
		-0.805075, 0.493677, -0.328844,
		0.334553, -0.079888, -0.938985,
		44.563179, 42.012939, 38.847923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687481, 41.863682, 38.949848>,  <44.328995, 42.068863, 39.505215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687481, 41.863682, 38.949848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046947, 41.785988, 38.792534>,  <44.262627, 41.739372, 38.698147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046947, 41.785988, 38.792534>,  <43.687481, 41.863682, 38.949848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046947, 41.785988, 38.792534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297953, -0.928322, -0.222357,
		-0.321908, 0.317005, -0.892123,
		0.898665, -0.194232, -0.393287,
		44.316547, 41.727718, 38.674549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633148, 41.611202, 38.335934>,  <43.687481, 41.863682, 38.949848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633148, 41.611202, 38.335934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995056, 41.471302, 38.433147>,  <44.212200, 41.387363, 38.491474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995056, 41.471302, 38.433147>,  <43.633148, 41.611202, 38.335934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995056, 41.471302, 38.433147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331732, -0.936596, -0.112877,
		0.267105, 0.021505, -0.963427,
		0.904770, -0.349750, 0.243036,
		44.266487, 41.366379, 38.506058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820873, 41.262657, 37.762295>,  <43.633148, 41.611202, 38.335934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820873, 41.262657, 37.762295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046474, 41.133621, 38.066357>,  <44.181835, 41.056202, 38.248795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046474, 41.133621, 38.066357>,  <43.820873, 41.262657, 37.762295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046474, 41.133621, 38.066357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179166, -0.946415, -0.268697,
		0.806103, 0.015351, -0.591576,
		0.564001, -0.322588, 0.760158,
		44.215675, 41.036846, 38.294403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189255, 40.774685, 37.402824>,  <43.820873, 41.262657, 37.762295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189255, 40.774685, 37.402824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205177, 40.698532, 37.795185>,  <44.214729, 40.652840, 38.030602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205177, 40.698532, 37.795185>,  <44.189255, 40.774685, 37.402824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205177, 40.698532, 37.795185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156876, -0.970697, -0.182037,
		0.986816, -0.146634, -0.068505,
		0.039805, -0.190384, 0.980902,
		44.217117, 40.641418, 38.089455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562996, 40.113312, 37.450611>,  <44.189255, 40.774685, 37.402824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562996, 40.113312, 37.450611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428947, 40.135681, 37.826817>,  <44.348518, 40.149105, 38.052540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428947, 40.135681, 37.826817>,  <44.562996, 40.113312, 37.450611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428947, 40.135681, 37.826817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131172, -0.991284, 0.012205,
		0.932998, -0.119279, 0.339539,
		-0.335124, 0.055925, 0.940513,
		44.328411, 40.152458, 38.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012047, 39.692268, 37.875301>,  <44.562996, 40.113312, 37.450611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012047, 39.692268, 37.875301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647457, 39.716873, 38.037998>,  <44.428703, 39.731636, 38.135616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647457, 39.716873, 38.037998>,  <45.012047, 39.692268, 37.875301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647457, 39.716873, 38.037998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073182, -0.997231, -0.013177,
		0.404805, -0.041777, 0.913448,
		-0.911470, 0.061514, 0.406742,
		44.374016, 39.735329, 38.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991718, 39.159470, 38.290829>,  <45.012047, 39.692268, 37.875301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991718, 39.159470, 38.290829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610191, 39.275845, 38.260914>,  <44.381275, 39.345669, 38.242966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610191, 39.275845, 38.260914>,  <44.991718, 39.159470, 38.290829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610191, 39.275845, 38.260914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297470, -0.949453, 0.100251,
		-0.041838, 0.117868, 0.992148,
		-0.953814, 0.290939, -0.074786,
		44.324047, 39.363125, 38.238480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642269, 38.757530, 38.803047>,  <44.991718, 39.159470, 38.290829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642269, 38.757530, 38.803047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384968, 38.871609, 38.518826>,  <44.230587, 38.940056, 38.348293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384968, 38.871609, 38.518826>,  <44.642269, 38.757530, 38.803047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384968, 38.871609, 38.518826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463616, -0.883646, 0.065034,
		-0.609327, 0.371256, 0.700635,
		-0.643258, 0.285199, -0.710550,
		44.191990, 38.957169, 38.305660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999126, 38.495228, 39.057377>,  <44.642269, 38.757530, 38.803047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999126, 38.495228, 39.057377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998405, 38.545040, 38.660492>,  <43.997974, 38.574928, 38.422359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.998405, 38.545040, 38.660492>,  <43.999126, 38.495228, 39.057377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998405, 38.545040, 38.660492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327582, -0.937541, -0.117079,
		-0.944821, 0.324820, 0.042482,
		-0.001798, 0.124535, -0.992214,
		43.997868, 38.582401, 38.362827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531891, 38.032169, 38.853195>,  <43.999126, 38.495228, 39.057377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531891, 38.032169, 38.853195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702686, 38.113491, 38.500751>,  <43.805164, 38.162285, 38.289288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.702686, 38.113491, 38.500751>,  <43.531891, 38.032169, 38.853195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702686, 38.113491, 38.500751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371669, -0.848829, -0.375967,
		-0.824344, 0.488014, -0.286880,
		0.426989, 0.203301, -0.881106,
		43.830784, 38.174480, 38.236420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033051, 37.912975, 38.300587>,  <43.531891, 38.032169, 38.853195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033051, 37.912975, 38.300587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354206, 37.945389, 38.064350>,  <43.546898, 37.964836, 37.922607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354206, 37.945389, 38.064350>,  <43.033051, 37.912975, 38.300587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354206, 37.945389, 38.064350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363055, -0.719319, -0.592259,
		-0.472820, 0.689937, -0.548113,
		0.802890, 0.081036, -0.590594,
		43.595074, 37.969700, 37.887173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790142, 37.860207, 37.480854>,  <43.033051, 37.912975, 38.300587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790142, 37.860207, 37.480854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172817, 37.758408, 37.537403>,  <43.402420, 37.697327, 37.571331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172817, 37.758408, 37.537403>,  <42.790142, 37.860207, 37.480854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172817, 37.758408, 37.537403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128224, -0.804304, -0.580218,
		0.261371, 0.536958, -0.802098,
		0.956684, -0.254500, 0.141371,
		43.459824, 37.682056, 37.579815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058681, 37.647278, 36.718513>,  <42.790142, 37.860207, 37.480854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058681, 37.647278, 36.718513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265903, 37.473568, 37.013271>,  <43.390236, 37.369343, 37.190128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265903, 37.473568, 37.013271>,  <43.058681, 37.647278, 36.718513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265903, 37.473568, 37.013271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114053, -0.888900, -0.443677,
		0.847708, 0.145805, -0.510032,
		0.518057, -0.434279, 0.736898,
		43.421322, 37.343285, 37.234341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561535, 37.242104, 36.382061>,  <43.058681, 37.647278, 36.718513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561535, 37.242104, 36.382061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513176, 37.095383, 36.751026>,  <43.484161, 37.007351, 36.972404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513176, 37.095383, 36.751026>,  <43.561535, 37.242104, 36.382061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513176, 37.095383, 36.751026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008272, -0.928821, -0.370437,
		0.992631, -0.052415, 0.109257,
		-0.120897, -0.366804, 0.922409,
		43.476906, 36.985340, 37.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785629, 36.648628, 36.280025>,  <43.561535, 37.242104, 36.382061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785629, 36.648628, 36.280025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618401, 36.584396, 36.637669>,  <43.518063, 36.545856, 36.852257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618401, 36.584396, 36.637669>,  <43.785629, 36.648628, 36.280025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618401, 36.584396, 36.637669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135403, -0.962243, -0.236123,
		0.898267, -0.219781, 0.380542,
		-0.418070, -0.160575, 0.894110,
		43.492981, 36.536224, 36.905903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250099, 36.136497, 36.697151>,  <43.785629, 36.648628, 36.280025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250099, 36.136497, 36.697151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876144, 36.130688, 36.839005>,  <43.651772, 36.127201, 36.924118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876144, 36.130688, 36.839005>,  <44.250099, 36.136497, 36.697151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876144, 36.130688, 36.839005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009500, -0.997780, -0.065914,
		0.354806, -0.064992, 0.932678,
		-0.934892, -0.014527, 0.354636,
		43.595676, 36.126331, 36.945396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281334, 35.519997, 36.941753>,  <44.250099, 36.136497, 36.697151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281334, 35.519997, 36.941753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889450, 35.599197, 36.954132>,  <43.654320, 35.646717, 36.961559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889450, 35.599197, 36.954132>,  <44.281334, 35.519997, 36.941753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889450, 35.599197, 36.954132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200287, -0.972768, -0.116647,
		0.007008, -0.120479, 0.992691,
		-0.979712, 0.198006, 0.030947,
		43.595535, 35.658600, 36.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771923, 35.029167, 36.648815>,  <44.281334, 35.519997, 36.941753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771923, 35.029167, 36.648815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097176, 35.044037, 36.416458>,  <45.292328, 35.052959, 36.277046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097176, 35.044037, 36.416458>,  <44.771923, 35.029167, 36.648815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097176, 35.044037, 36.416458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057084, 0.988055, 0.143141,
		0.579272, -0.149552, 0.801298,
		0.813133, 0.037176, -0.580890,
		45.341114, 35.055191, 36.242191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159821, 35.522923, 36.984299>,  <44.771923, 35.029167, 36.648815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159821, 35.522923, 36.984299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286514, 35.514488, 36.604988>,  <45.362530, 35.509426, 36.377399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286514, 35.514488, 36.604988>,  <45.159821, 35.522923, 36.984299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286514, 35.514488, 36.604988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352109, 0.930928, 0.096909,
		0.880737, -0.364593, 0.302282,
		0.316735, -0.021084, -0.948280,
		45.381535, 35.508163, 36.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936131, 35.653732, 36.967636>,  <45.159821, 35.522923, 36.984299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936131, 35.653732, 36.967636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762203, 35.785488, 36.632389>,  <45.657845, 35.864540, 36.431240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762203, 35.785488, 36.632389>,  <45.936131, 35.653732, 36.967636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762203, 35.785488, 36.632389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460485, 0.881147, 0.107396,
		0.773876, -0.339241, -0.534819,
		-0.434821, 0.329388, -0.838114,
		45.631756, 35.884304, 36.380955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471710, 36.004463, 36.644836>,  <45.936131, 35.653732, 36.967636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471710, 36.004463, 36.644836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.157120, 36.159779, 36.452713>,  <45.968365, 36.252968, 36.337440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.157120, 36.159779, 36.452713>,  <46.471710, 36.004463, 36.644836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157120, 36.159779, 36.452713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517240, 0.839060, -0.168644,
		0.337526, -0.381069, -0.860734,
		-0.786473, 0.388284, -0.480308,
		45.921177, 36.276264, 36.308620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825199, 36.400200, 36.164825>,  <46.471710, 36.004463, 36.644836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825199, 36.400200, 36.164825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453407, 36.535152, 36.224491>,  <46.230331, 36.616123, 36.260288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453407, 36.535152, 36.224491>,  <46.825199, 36.400200, 36.164825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453407, 36.535152, 36.224491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337806, 0.940929, -0.023245,
		-0.148193, 0.028782, -0.988539,
		-0.929476, 0.337379, 0.149162,
		46.174564, 36.636368, 36.269241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902454, 37.031677, 35.942478>,  <46.825199, 36.400200, 36.164825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902454, 37.031677, 35.942478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525520, 37.028584, 36.076313>,  <46.299358, 37.026726, 36.156612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525520, 37.028584, 36.076313>,  <46.902454, 37.031677, 35.942478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525520, 37.028584, 36.076313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043700, 0.994018, -0.100095,
		-0.331808, -0.108944, -0.937035,
		-0.942334, -0.007736, 0.334584,
		46.242821, 37.026264, 36.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370743, 37.350220, 35.365078>,  <46.902454, 37.031677, 35.942478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370743, 37.350220, 35.365078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251442, 37.390259, 35.744766>,  <46.179863, 37.414284, 35.972580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.251442, 37.390259, 35.744766>,  <46.370743, 37.350220, 35.365078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251442, 37.390259, 35.744766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136947, 0.979709, -0.146342,
		-0.944612, -0.173641, -0.278491,
		-0.298251, 0.100098, 0.949224,
		46.161968, 37.420288, 36.029533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954052, 37.966248, 35.228210>,  <46.370743, 37.350220, 35.365078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954052, 37.966248, 35.228210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021011, 37.922657, 35.620148>,  <46.061188, 37.896503, 35.855312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021011, 37.922657, 35.620148>,  <45.954052, 37.966248, 35.228210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021011, 37.922657, 35.620148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074404, 0.989641, 0.122780,
		-0.983078, -0.093458, 0.157557,
		0.167399, -0.108980, 0.979847,
		46.071232, 37.889961, 35.914101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412319, 38.402271, 35.699516>,  <45.954052, 37.966248, 35.228210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412319, 38.402271, 35.699516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777355, 38.348518, 35.853977>,  <45.996376, 38.316265, 35.946655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.777355, 38.348518, 35.853977>,  <45.412319, 38.402271, 35.699516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777355, 38.348518, 35.853977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096251, 0.988512, 0.116536,
		-0.397377, -0.069183, 0.915044,
		0.912594, -0.134383, 0.386153,
		46.051132, 38.308205, 35.969822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496689, 38.941696, 36.114574>,  <45.412319, 38.402271, 35.699516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496689, 38.941696, 36.114574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.870617, 38.807068, 36.159866>,  <46.094975, 38.726292, 36.187042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.870617, 38.807068, 36.159866>,  <45.496689, 38.941696, 36.114574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870617, 38.807068, 36.159866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270715, 0.881812, 0.386163,
		-0.229818, -0.330342, 0.915455,
		0.934825, -0.336574, 0.113228,
		46.151066, 38.706097, 36.193836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699589, 39.087418, 36.844028>,  <45.496689, 38.941696, 36.114574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699589, 39.087418, 36.844028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033726, 39.061565, 36.625660>,  <46.234207, 39.046055, 36.494637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033726, 39.061565, 36.625660>,  <45.699589, 39.087418, 36.844028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033726, 39.061565, 36.625660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347804, 0.831183, 0.433783,
		0.425726, -0.552230, 0.716798,
		0.835339, -0.064632, -0.545923,
		46.284328, 39.042175, 36.461884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336533, 39.246647, 37.316010>,  <45.699589, 39.087418, 36.844028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336533, 39.246647, 37.316010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.454910, 39.295521, 36.937065>,  <46.525936, 39.324844, 36.709698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.454910, 39.295521, 36.937065>,  <46.336533, 39.246647, 37.316010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454910, 39.295521, 36.937065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631939, 0.718676, 0.290101,
		0.716286, -0.684528, 0.135485,
		0.295952, 0.122177, -0.947357,
		46.543694, 39.332176, 36.652859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995106, 39.447968, 37.428009>,  <46.336533, 39.246647, 37.316010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995106, 39.447968, 37.428009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950729, 39.549976, 37.043789>,  <46.924103, 39.611183, 36.813255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950729, 39.549976, 37.043789>,  <46.995106, 39.447968, 37.428009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950729, 39.549976, 37.043789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505741, 0.846499, 0.166330,
		0.855522, -0.467335, -0.222891,
		-0.110945, 0.255024, -0.960549,
		46.917446, 39.626484, 36.755623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638462, 39.758064, 37.221424>,  <46.995106, 39.447968, 37.428009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638462, 39.758064, 37.221424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.356106, 39.908710, 36.981464>,  <47.186691, 39.999100, 36.837490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.356106, 39.908710, 36.981464>,  <47.638462, 39.758064, 37.221424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.356106, 39.908710, 36.981464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388684, 0.913983, 0.116448,
		0.592155, -0.150973, -0.791555,
		-0.705887, 0.376620, -0.599900,
		47.144341, 40.021698, 36.801495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.903809, 40.242691, 36.866020>,  <47.638462, 39.758064, 37.221424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.903809, 40.242691, 36.866020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.517368, 40.327881, 36.807663>,  <47.285503, 40.378994, 36.772648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.517368, 40.327881, 36.807663>,  <47.903809, 40.242691, 36.866020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.517368, 40.327881, 36.807663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206896, 0.976769, 0.055819,
		0.154396, 0.023741, -0.987724,
		-0.966103, 0.212974, -0.145897,
		47.227539, 40.391773, 36.763893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.915985, 40.791733, 36.444622>,  <47.903809, 40.242691, 36.866020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.915985, 40.791733, 36.444622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.552013, 40.810184, 36.609497>,  <47.333630, 40.821255, 36.708424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.552013, 40.810184, 36.609497>,  <47.915985, 40.791733, 36.444622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552013, 40.810184, 36.609497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160371, 0.955635, 0.247067,
		-0.382506, 0.290917, -0.876959,
		-0.909929, 0.046134, 0.412191,
		47.279034, 40.824024, 36.733154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.782211, 41.419773, 36.354431>,  <47.915985, 40.791733, 36.444622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.782211, 41.419773, 36.354431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.492344, 41.332706, 36.615955>,  <47.318424, 41.280464, 36.772869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.492344, 41.332706, 36.615955>,  <47.782211, 41.419773, 36.354431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492344, 41.332706, 36.615955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025535, 0.939667, 0.341138,
		-0.688622, 0.263908, -0.675391,
		-0.724671, -0.217669, 0.653814,
		47.274944, 41.267406, 36.812099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389275, 42.034946, 36.347179>,  <47.782211, 41.419773, 36.354431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389275, 42.034946, 36.347179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.303223, 41.874207, 36.703209>,  <47.251591, 41.777763, 36.916828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.303223, 41.874207, 36.703209>,  <47.389275, 42.034946, 36.347179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303223, 41.874207, 36.703209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005461, 0.911896, 0.410384,
		-0.976571, 0.083424, -0.198368,
		-0.215126, -0.401852, 0.890076,
		47.238686, 41.753651, 36.970230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747334, 42.422710, 36.647057>,  <47.389275, 42.034946, 36.347179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747334, 42.422710, 36.647057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.952328, 42.254051, 36.946274>,  <47.075325, 42.152855, 37.125805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.952328, 42.254051, 36.946274>,  <46.747334, 42.422710, 36.647057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952328, 42.254051, 36.946274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184772, 0.904884, 0.383464,
		-0.838580, -0.058303, 0.541650,
		0.512488, -0.421647, 0.748044,
		47.106075, 42.127556, 37.170689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461716, 42.720440, 37.202587>,  <46.747334, 42.422710, 36.647057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461716, 42.720440, 37.202587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819595, 42.598522, 37.333195>,  <47.034325, 42.525372, 37.411560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819595, 42.598522, 37.333195>,  <46.461716, 42.720440, 37.202587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819595, 42.598522, 37.333195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153454, 0.896258, 0.416140,
		-0.419482, -0.322214, 0.848653,
		0.894699, -0.304793, 0.326519,
		47.088005, 42.507084, 37.431152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450996, 43.074123, 37.881542>,  <46.461716, 42.720440, 37.202587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450996, 43.074123, 37.881542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826210, 42.956573, 37.808086>,  <47.051338, 42.886044, 37.764011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826210, 42.956573, 37.808086>,  <46.450996, 43.074123, 37.881542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826210, 42.956573, 37.808086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346445, 0.807619, 0.477208,
		0.008072, -0.511260, 0.859388,
		0.938036, -0.293878, -0.183643,
		47.107620, 42.868408, 37.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.017509, 40.633049, 41.467537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858681, 40.382343, 41.735714>,  <39.763382, 40.231918, 41.896622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858681, 40.382343, 41.735714>,  <40.017509, 40.633049, 41.467537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858681, 40.382343, 41.735714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232323, -0.775350, -0.587247,
		0.887896, -0.077420, 0.453483,
		-0.397073, -0.626769, 0.670443,
		39.739559, 40.194313, 41.936848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485874, 40.032551, 41.600277>,  <40.017509, 40.633049, 41.467537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485874, 40.032551, 41.600277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130859, 39.892582, 41.720158>,  <39.917850, 39.808601, 41.792088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130859, 39.892582, 41.720158>,  <40.485874, 40.032551, 41.600277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130859, 39.892582, 41.720158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136297, -0.820801, -0.554716,
		0.440106, -0.451484, 0.776188,
		-0.887541, -0.349926, 0.299704,
		39.864597, 39.787605, 41.810070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599182, 39.349220, 41.679436>,  <40.485874, 40.032551, 41.600277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599182, 39.349220, 41.679436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200401, 39.346893, 41.648327>,  <39.961132, 39.345497, 41.629662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200401, 39.346893, 41.648327>,  <40.599182, 39.349220, 41.679436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200401, 39.346893, 41.648327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051757, -0.795315, -0.603982,
		-0.058339, -0.606168, 0.793194,
		-0.996954, -0.005818, -0.077771,
		39.901314, 39.345146, 41.624996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507549, 38.661041, 41.526665>,  <40.599182, 39.349220, 41.679436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507549, 38.661041, 41.526665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162785, 38.844467, 41.440113>,  <39.955925, 38.954525, 41.388180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162785, 38.844467, 41.440113>,  <40.507549, 38.661041, 41.526665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162785, 38.844467, 41.440113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180968, -0.676836, -0.713543,
		-0.473663, -0.575854, 0.666360,
		-0.861913, 0.458569, -0.216381,
		39.904209, 38.982037, 41.375198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035522, 38.081924, 41.545738>,  <40.507549, 38.661041, 41.526665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035522, 38.081924, 41.545738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896698, 38.377014, 41.314114>,  <39.813404, 38.554066, 41.175137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896698, 38.377014, 41.314114>,  <40.035522, 38.081924, 41.545738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896698, 38.377014, 41.314114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111374, -0.645494, -0.755601,
		-0.931208, -0.197743, 0.306186,
		-0.347056, 0.737723, -0.579066,
		39.792580, 38.598331, 41.140392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370239, 37.822239, 41.201374>,  <40.035522, 38.081924, 41.545738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370239, 37.822239, 41.201374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479889, 38.137054, 40.980312>,  <39.545677, 38.325943, 40.847675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479889, 38.137054, 40.980312>,  <39.370239, 37.822239, 41.201374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479889, 38.137054, 40.980312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305054, -0.473827, -0.826093,
		-0.912031, 0.395038, 0.110203,
		0.274121, 0.787041, -0.552652,
		39.562126, 38.373165, 40.814518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786751, 38.112061, 40.778118>,  <39.370239, 37.822239, 41.201374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786751, 38.112061, 40.778118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127357, 38.218403, 40.597343>,  <39.331722, 38.282207, 40.488880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127357, 38.218403, 40.597343>,  <38.786751, 38.112061, 40.778118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127357, 38.218403, 40.597343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296132, -0.467449, -0.832945,
		-0.432703, 0.843095, -0.319309,
		0.851513, 0.265860, -0.451935,
		39.382812, 38.298161, 40.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557274, 38.446960, 40.155708>,  <38.786751, 38.112061, 40.778118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557274, 38.446960, 40.155708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937775, 38.339516, 40.095097>,  <39.166077, 38.275047, 40.058731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937775, 38.339516, 40.095097>,  <38.557274, 38.446960, 40.155708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937775, 38.339516, 40.095097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277144, -0.528973, -0.802109,
		0.135303, 0.805005, -0.577633,
		0.951254, -0.268616, -0.151530,
		39.223152, 38.258930, 40.049637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659470, 38.473194, 39.438046>,  <38.557274, 38.446960, 40.155708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659470, 38.473194, 39.438046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962669, 38.247555, 39.569027>,  <39.144588, 38.112171, 39.647614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962669, 38.247555, 39.569027>,  <38.659470, 38.473194, 39.438046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962669, 38.247555, 39.569027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144288, -0.634612, -0.759242,
		0.636093, 0.528260, -0.562430,
		0.758002, -0.564100, 0.327451,
		39.190071, 38.078323, 39.667263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036491, 38.287548, 38.884686>,  <38.659470, 38.473194, 39.438046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036491, 38.287548, 38.884686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164917, 38.017933, 39.150795>,  <39.241974, 37.856163, 39.310463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164917, 38.017933, 39.150795>,  <39.036491, 38.287548, 38.884686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164917, 38.017933, 39.150795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147248, -0.729454, -0.667994,
		0.935540, 0.116509, -0.333453,
		0.321066, -0.674035, 0.665277,
		39.261238, 37.815723, 39.350380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425144, 37.932461, 38.534328>,  <39.036491, 38.287548, 38.884686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425144, 37.932461, 38.534328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354107, 37.698681, 38.851032>,  <39.311485, 37.558414, 39.041054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354107, 37.698681, 38.851032>,  <39.425144, 37.932461, 38.534328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354107, 37.698681, 38.851032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158427, -0.777075, -0.609143,
		0.971269, -0.233614, 0.045407,
		-0.177589, -0.584448, 0.791759,
		39.300831, 37.523346, 39.088558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855186, 37.336407, 38.409302>,  <39.425144, 37.932461, 38.534328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855186, 37.336407, 38.409302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543522, 37.253868, 38.646057>,  <39.356525, 37.204346, 38.788113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543522, 37.253868, 38.646057>,  <39.855186, 37.336407, 38.409302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543522, 37.253868, 38.646057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142778, -0.861017, -0.488123,
		0.610351, -0.464834, 0.641406,
		-0.779157, -0.206348, 0.591891,
		39.309776, 37.191963, 38.823624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827454, 36.534809, 38.688381>,  <39.855186, 37.336407, 38.409302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827454, 36.534809, 38.688381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470901, 36.709312, 38.639198>,  <39.256969, 36.814014, 38.609688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470901, 36.709312, 38.639198>,  <39.827454, 36.534809, 38.688381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470901, 36.709312, 38.639198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289072, -0.756112, -0.587138,
		-0.349112, -0.487821, 0.800095,
		-0.891380, 0.436262, -0.122952,
		39.203487, 36.840191, 38.602314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124691, 35.806366, 38.780296>,  <39.827454, 36.534809, 38.688381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124691, 35.806366, 38.780296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010578, 35.458210, 38.619781>,  <39.942112, 35.249317, 38.523472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010578, 35.458210, 38.619781>,  <40.124691, 35.806366, 38.780296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010578, 35.458210, 38.619781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776334, -0.035684, 0.629311,
		-0.562068, 0.491063, -0.665535,
		-0.285282, -0.870393, -0.401285,
		39.924995, 35.197090, 38.499397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346352, 35.821598, 38.617229>,  <40.124691, 35.806366, 38.780296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346352, 35.821598, 38.617229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481533, 35.452854, 38.693085>,  <39.562641, 35.231609, 38.738598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481533, 35.452854, 38.693085>,  <39.346352, 35.821598, 38.617229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481533, 35.452854, 38.693085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645381, -0.080329, 0.759625,
		-0.685035, -0.379105, -0.622098,
		0.337951, -0.921860, 0.189639,
		39.582920, 35.176296, 38.749977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777279, 35.368214, 38.689690>,  <39.346352, 35.821598, 38.617229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777279, 35.368214, 38.689690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082649, 35.209492, 38.893543>,  <39.265873, 35.114258, 39.015854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082649, 35.209492, 38.893543>,  <38.777279, 35.368214, 38.689690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082649, 35.209492, 38.893543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562443, -0.020501, 0.826582,
		-0.317541, -0.917675, -0.238830,
		0.763430, -0.396802, 0.509630,
		39.311680, 35.090450, 39.046432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428497, 34.793446, 39.176743>,  <38.777279, 35.368214, 38.689690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428497, 34.793446, 39.176743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775539, 34.903301, 39.342552>,  <38.983765, 34.969215, 39.442039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775539, 34.903301, 39.342552>,  <38.428497, 34.793446, 39.176743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775539, 34.903301, 39.342552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427638, -0.013282, 0.903853,
		0.253742, -0.961455, 0.105923,
		0.867607, 0.274642, 0.414525,
		39.035820, 34.985695, 39.466911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498486, 34.395359, 39.819138>,  <38.428497, 34.793446, 39.176743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498486, 34.395359, 39.819138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762985, 34.691734, 39.866055>,  <38.921684, 34.869560, 39.894207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762985, 34.691734, 39.866055>,  <38.498486, 34.395359, 39.819138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762985, 34.691734, 39.866055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178823, 0.003836, 0.983874,
		0.728541, -0.671560, 0.135034,
		0.661249, 0.740940, 0.117295,
		38.961361, 34.914017, 39.901241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018635, 34.175957, 40.442650>,  <38.498486, 34.395359, 39.819138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018635, 34.175957, 40.442650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 34.574081, 40.404186>,  <39.025154, 34.812958, 40.381107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 34.574081, 40.404186>,  <39.018635, 34.175957, 40.442650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022709, 34.574081, 40.404186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317532, 0.094402, 0.943537,
		0.948193, 0.020924, 0.317005,
		0.010183, 0.995314, -0.096155,
		39.025764, 34.872677, 40.375340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130314, 34.371403, 41.024765>,  <39.018635, 34.175957, 40.442650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130314, 34.371403, 41.024765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978107, 34.714478, 40.886444>,  <38.886784, 34.920322, 40.803452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978107, 34.714478, 40.886444>,  <39.130314, 34.371403, 41.024765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978107, 34.714478, 40.886444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275533, 0.251802, 0.927727,
		0.882773, 0.448297, 0.140506,
		-0.380518, 0.857686, -0.345805,
		38.863953, 34.971783, 40.782703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161831, 34.746708, 41.666214>,  <39.130314, 34.371403, 41.024765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161831, 34.746708, 41.666214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963593, 34.946793, 41.382195>,  <38.844650, 35.066845, 41.211784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963593, 34.946793, 41.382195>,  <39.161831, 34.746708, 41.666214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963593, 34.946793, 41.382195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481749, 0.521920, 0.703930,
		0.722703, 0.690933, -0.017687,
		-0.495599, 0.500211, -0.710050,
		38.814915, 35.096855, 41.169178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201752, 35.464996, 41.844284>,  <39.161831, 34.746708, 41.666214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201752, 35.464996, 41.844284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882172, 35.393925, 41.614468>,  <38.690422, 35.351280, 41.476578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882172, 35.393925, 41.614468>,  <39.201752, 35.464996, 41.844284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882172, 35.393925, 41.614468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578636, 0.487429, 0.653906,
		0.163863, 0.854893, -0.492246,
		-0.798955, -0.177680, -0.574544,
		38.642487, 35.340622, 41.442104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889450, 36.059490, 41.686089>,  <39.201752, 35.464996, 41.844284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889450, 36.059490, 41.686089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598324, 35.786530, 41.658916>,  <38.423649, 35.622753, 41.642612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598324, 35.786530, 41.658916>,  <38.889450, 36.059490, 41.686089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598324, 35.786530, 41.658916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596513, 0.581102, 0.553617,
		-0.338313, 0.443453, -0.829996,
		-0.727816, -0.682400, -0.067931,
		38.379978, 35.581810, 41.638538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297943, 36.417469, 41.423183>,  <38.889450, 36.059490, 41.686089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297943, 36.417469, 41.423183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123783, 36.102108, 41.597012>,  <38.019287, 35.912891, 41.701309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123783, 36.102108, 41.597012>,  <38.297943, 36.417469, 41.423183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123783, 36.102108, 41.597012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558357, 0.615157, 0.556614,
		-0.706163, -0.000295, -0.708049,
		-0.435397, -0.788405, 0.434566,
		37.993164, 35.865585, 41.727383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658100, 36.643921, 41.410267>,  <38.297943, 36.417469, 41.423183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658100, 36.643921, 41.410267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706291, 36.362247, 41.690159>,  <37.735207, 36.193245, 41.858093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706291, 36.362247, 41.690159>,  <37.658100, 36.643921, 41.410267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706291, 36.362247, 41.690159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407487, 0.607664, 0.681688,
		-0.905229, -0.367255, -0.213737,
		0.120473, -0.704179, 0.699727,
		37.742432, 36.150993, 41.900078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009892, 36.603615, 41.749599>,  <37.658100, 36.643921, 41.410267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009892, 36.603615, 41.749599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269653, 36.440155, 42.006123>,  <37.425510, 36.342079, 42.160038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269653, 36.440155, 42.006123>,  <37.009892, 36.603615, 41.749599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269653, 36.440155, 42.006123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401266, 0.532222, 0.745470,
		-0.645958, -0.741446, 0.181648,
		0.649403, -0.408653, 0.641310,
		37.464474, 36.317558, 42.198517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665783, 36.455132, 42.368885>,  <37.009892, 36.603615, 41.749599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665783, 36.455132, 42.368885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038971, 36.458908, 42.512817>,  <37.262882, 36.461174, 42.599178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038971, 36.458908, 42.512817>,  <36.665783, 36.455132, 42.368885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038971, 36.458908, 42.512817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307359, 0.541205, 0.782706,
		-0.187354, -0.840838, 0.507829,
		0.932968, 0.009443, 0.359836,
		37.318863, 36.461742, 42.620770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447380, 36.327320, 43.003117>,  <36.665783, 36.455132, 42.368885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447380, 36.327320, 43.003117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823273, 36.463753, 42.993557>,  <37.048809, 36.545612, 42.987823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823273, 36.463753, 42.993557>,  <36.447380, 36.327320, 43.003117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823273, 36.463753, 42.993557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178463, 0.548903, 0.816613,
		0.291649, -0.763131, 0.576691,
		0.939730, 0.341082, -0.023896,
		37.105190, 36.566078, 42.986389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339203, 35.727833, 43.458599>,  <36.447380, 36.327320, 43.003117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339203, 35.727833, 43.458599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952984, 35.625172, 43.475811>,  <35.721252, 35.563576, 43.486137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952984, 35.625172, 43.475811>,  <36.339203, 35.727833, 43.458599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952984, 35.625172, 43.475811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051929, -0.352059, -0.934536,
		0.255000, -0.900102, 0.353257,
		-0.965546, -0.256651, 0.043033,
		35.663319, 35.548176, 43.488720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362743, 35.060482, 43.210049>,  <36.339203, 35.727833, 43.458599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362743, 35.060482, 43.210049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988033, 35.197384, 43.180882>,  <35.763206, 35.279526, 43.163380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988033, 35.197384, 43.180882>,  <36.362743, 35.060482, 43.210049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988033, 35.197384, 43.180882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038224, -0.307214, -0.950872,
		-0.347846, -0.887963, 0.300872,
		-0.936772, 0.342258, -0.072922,
		35.707001, 35.300060, 43.159004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009377, 34.575596, 42.825920>,  <36.362743, 35.060482, 43.210049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009377, 34.575596, 42.825920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785610, 34.903275, 42.775379>,  <35.651352, 35.099884, 42.745052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785610, 34.903275, 42.775379>,  <36.009377, 34.575596, 42.825920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785610, 34.903275, 42.775379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297914, -0.340966, -0.891622,
		-0.773500, -0.461144, 0.434793,
		-0.559415, 0.819200, -0.126356,
		35.617786, 35.149036, 42.737473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349880, 34.353516, 42.593563>,  <36.009377, 34.575596, 42.825920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349880, 34.353516, 42.593563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380440, 34.738224, 42.488377>,  <35.398777, 34.969051, 42.425262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380440, 34.738224, 42.488377>,  <35.349880, 34.353516, 42.593563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380440, 34.738224, 42.488377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238509, -0.238456, -0.941410,
		-0.968130, 0.134644, 0.211174,
		0.076399, 0.961774, -0.262970,
		35.403358, 35.026756, 42.409485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896538, 34.259949, 42.090187>,  <35.349880, 34.353516, 42.593563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896538, 34.259949, 42.090187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078575, 34.607994, 42.014507>,  <35.187798, 34.816822, 41.969101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078575, 34.607994, 42.014507>,  <34.896538, 34.259949, 42.090187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078575, 34.607994, 42.014507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282021, -0.060694, -0.957486,
		-0.844603, 0.489104, 0.217768,
		0.455093, 0.870111, -0.189200,
		35.215103, 34.869026, 41.957748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454510, 34.596272, 41.630482>,  <34.896538, 34.259949, 42.090187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454510, 34.596272, 41.630482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793018, 34.796043, 41.556297>,  <34.996124, 34.915905, 41.511787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793018, 34.796043, 41.556297>,  <34.454510, 34.596272, 41.630482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793018, 34.796043, 41.556297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398670, 0.362757, -0.842300,
		-0.353393, 0.786752, 0.506099,
		0.846272, 0.499429, -0.185458,
		35.046902, 34.945873, 41.500660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333668, 35.194374, 41.601238>,  <34.454510, 34.596272, 41.630482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333668, 35.194374, 41.601238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675652, 35.177471, 41.394447>,  <34.880840, 35.167328, 41.270374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675652, 35.177471, 41.394447>,  <34.333668, 35.194374, 41.601238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675652, 35.177471, 41.394447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484886, 0.288854, -0.825499,
		0.184216, 0.956440, 0.226466,
		0.854956, -0.042260, -0.516976,
		34.932137, 35.164795, 41.239353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431156, 35.839985, 41.339729>,  <34.333668, 35.194374, 41.601238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431156, 35.839985, 41.339729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625179, 35.582348, 41.103130>,  <34.741592, 35.427765, 40.961170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625179, 35.582348, 41.103130>,  <34.431156, 35.839985, 41.339729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625179, 35.582348, 41.103130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275358, 0.529490, -0.802383,
		0.829998, 0.552075, 0.079478,
		0.485058, -0.644091, -0.591494,
		34.770699, 35.389122, 40.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424904, 36.206310, 40.801208>,  <34.431156, 35.839985, 41.339729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424904, 36.206310, 40.801208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553936, 35.858120, 40.652496>,  <34.631355, 35.649204, 40.563271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553936, 35.858120, 40.652496>,  <34.424904, 36.206310, 40.801208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553936, 35.858120, 40.652496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025120, 0.384763, -0.922673,
		0.946210, 0.306971, 0.102250,
		0.322576, -0.870475, -0.371778,
		34.650707, 35.596977, 40.540962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938229, 36.408142, 40.235943>,  <34.424904, 36.206310, 40.801208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938229, 36.408142, 40.235943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790745, 36.043716, 40.162170>,  <34.702255, 35.825062, 40.117908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790745, 36.043716, 40.162170>,  <34.938229, 36.408142, 40.235943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790745, 36.043716, 40.162170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109950, 0.239762, -0.964585,
		0.923018, -0.335377, -0.188575,
		-0.368713, -0.911063, -0.184430,
		34.680130, 35.770397, 40.106842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288422, 36.261169, 39.645069>,  <34.938229, 36.408142, 40.235943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288422, 36.261169, 39.645069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983929, 36.001896, 39.637218>,  <34.801231, 35.846333, 39.632507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983929, 36.001896, 39.637218>,  <35.288422, 36.261169, 39.645069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983929, 36.001896, 39.637218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102218, 0.149818, -0.983415,
		0.640373, -0.746602, -0.180302,
		-0.761232, -0.648182, -0.019624,
		34.755558, 35.807442, 39.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325642, 36.191795, 38.952305>,  <35.288422, 36.261169, 39.645069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325642, 36.191795, 38.952305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004707, 35.983227, 39.068489>,  <34.812145, 35.858086, 39.138199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004707, 35.983227, 39.068489>,  <35.325642, 36.191795, 38.952305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004707, 35.983227, 39.068489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272171, -0.113479, -0.955534,
		0.531200, -0.845718, -0.050868,
		-0.802340, -0.521424, 0.290460,
		34.764004, 35.826801, 39.155628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.603104, 36.487663, 47.061043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244972, 36.663960, 47.035297>,  <36.030094, 36.769737, 47.019848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244972, 36.663960, 47.035297>,  <36.603104, 36.487663, 47.061043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244972, 36.663960, 47.035297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186610, -0.502383, -0.844268,
		-0.404434, -0.743884, 0.532042,
		-0.895327, 0.440735, -0.064365,
		35.976376, 36.796181, 47.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095406, 35.957119, 46.983150>,  <36.603104, 36.487663, 47.061043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095406, 35.957119, 46.983150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905136, 36.264572, 46.812065>,  <35.790974, 36.449043, 46.709415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905136, 36.264572, 46.812065>,  <36.095406, 35.957119, 46.983150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905136, 36.264572, 46.812065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086505, -0.524768, -0.846838,
		-0.875358, -0.365820, 0.316109,
		-0.475674, 0.768632, -0.427715,
		35.762432, 36.495163, 46.683750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534218, 35.656006, 46.627827>,  <36.095406, 35.957119, 46.983150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534218, 35.656006, 46.627827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565121, 36.015484, 46.455139>,  <35.583664, 36.231171, 46.351524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565121, 36.015484, 46.455139>,  <35.534218, 35.656006, 46.627827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565121, 36.015484, 46.455139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134102, -0.419714, -0.897695,
		-0.987951, 0.127249, 0.088090,
		0.077258, 0.898692, -0.431722,
		35.588299, 36.285091, 46.325623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957443, 35.715069, 46.210224>,  <35.534218, 35.656006, 46.627827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957443, 35.715069, 46.210224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220932, 35.975266, 46.058987>,  <35.379025, 36.131382, 45.968246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220932, 35.975266, 46.058987>,  <34.957443, 35.715069, 46.210224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220932, 35.975266, 46.058987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131983, -0.394827, -0.909226,
		-0.740724, 0.648825, -0.174226,
		0.658717, 0.650491, -0.378091,
		35.418549, 36.170414, 45.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676270, 35.854713, 45.510723>,  <34.957443, 35.715069, 46.210224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676270, 35.854713, 45.510723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046326, 36.004063, 45.483292>,  <35.268360, 36.093674, 45.466835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046326, 36.004063, 45.483292>,  <34.676270, 35.854713, 45.510723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046326, 36.004063, 45.483292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030605, -0.106695, -0.993821,
		-0.378382, 0.921525, -0.087281,
		0.925143, 0.373373, -0.068574,
		35.323868, 36.116074, 45.462719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554390, 36.302223, 45.047192>,  <34.676270, 35.854713, 45.510723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554390, 36.302223, 45.047192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943359, 36.208954, 45.048801>,  <35.176743, 36.152992, 45.049767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943359, 36.208954, 45.048801>,  <34.554390, 36.302223, 45.047192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943359, 36.208954, 45.048801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005161, 0.004274, -0.999978,
		0.233148, 0.972426, 0.005359,
		0.972428, -0.233171, 0.004022,
		35.235088, 36.139004, 45.050007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869823, 36.722164, 44.526112>,  <34.554390, 36.302223, 45.047192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869823, 36.722164, 44.526112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084408, 36.393547, 44.603336>,  <35.213158, 36.196377, 44.649670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084408, 36.393547, 44.603336>,  <34.869823, 36.722164, 44.526112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084408, 36.393547, 44.603336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003171, -0.230727, -0.973013,
		0.843916, 0.521376, -0.126382,
		0.536465, -0.821543, 0.193061,
		35.245346, 36.147083, 44.661255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472111, 36.743427, 44.116844>,  <34.869823, 36.722164, 44.526112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472111, 36.743427, 44.116844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444645, 36.354546, 44.206379>,  <35.428165, 36.121216, 44.260101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444645, 36.354546, 44.206379>,  <35.472111, 36.743427, 44.116844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444645, 36.354546, 44.206379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282441, -0.234133, -0.930273,
		0.956824, -0.000656, 0.290667,
		-0.068665, -0.972204, 0.223839,
		35.424046, 36.062885, 44.273529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010693, 36.379955, 43.633762>,  <35.472111, 36.743427, 44.116844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010693, 36.379955, 43.633762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742226, 36.104794, 43.744263>,  <35.581146, 35.939697, 43.810562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742226, 36.104794, 43.744263>,  <36.010693, 36.379955, 43.633762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742226, 36.104794, 43.744263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014951, -0.385144, -0.922735,
		0.741152, -0.615183, 0.268783,
		-0.671171, -0.687905, 0.276253,
		35.540874, 35.898422, 43.827137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742500, 36.258022, 43.741196>,  <36.010693, 36.379955, 43.633762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742500, 36.258022, 43.741196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015575, 36.512760, 43.597881>,  <37.179420, 36.665604, 43.511894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015575, 36.512760, 43.597881>,  <36.742500, 36.258022, 43.741196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015575, 36.512760, 43.597881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054340, 0.533208, 0.844237,
		0.728688, -0.556880, 0.398620,
		0.682687, 0.636846, -0.358282,
		37.220383, 36.703815, 43.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234814, 36.293819, 44.237747>,  <36.742500, 36.258022, 43.741196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234814, 36.293819, 44.237747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236244, 36.628284, 44.018360>,  <37.237103, 36.828964, 43.886730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236244, 36.628284, 44.018360>,  <37.234814, 36.293819, 44.237747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236244, 36.628284, 44.018360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198220, 0.536993, 0.819968,
		0.980151, -0.111648, -0.163825,
		0.003575, 0.836166, -0.548465,
		37.237316, 36.879135, 43.853821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841713, 36.605659, 44.401680>,  <37.234814, 36.293819, 44.237747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841713, 36.605659, 44.401680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645229, 36.906487, 44.225903>,  <37.527340, 37.086983, 44.120434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645229, 36.906487, 44.225903>,  <37.841713, 36.605659, 44.401680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645229, 36.906487, 44.225903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136604, 0.564776, 0.813860,
		0.860265, 0.339742, -0.380157,
		-0.491206, 0.752066, -0.439447,
		37.497868, 37.132107, 44.094067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240261, 37.139507, 44.274158>,  <37.841713, 36.605659, 44.401680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240261, 37.139507, 44.274158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.882317, 37.314819, 44.307930>,  <37.667549, 37.420006, 44.328194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.882317, 37.314819, 44.307930>,  <38.240261, 37.139507, 44.274158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882317, 37.314819, 44.307930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334606, 0.533554, 0.776762,
		0.295389, 0.723348, -0.624109,
		-0.894865, 0.438278, 0.084431,
		37.613857, 37.446304, 44.333260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389507, 37.912819, 44.181179>,  <38.240261, 37.139507, 44.274158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389507, 37.912819, 44.181179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013634, 37.950081, 44.312828>,  <37.788109, 37.972439, 44.391819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013634, 37.950081, 44.312828>,  <38.389507, 37.912819, 44.181179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013634, 37.950081, 44.312828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289643, 0.728547, 0.620746,
		-0.181958, 0.678632, -0.711583,
		-0.939680, 0.093155, 0.329126,
		37.731731, 37.978027, 44.411568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171001, 38.611183, 44.226200>,  <38.389507, 37.912819, 44.181179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171001, 38.611183, 44.226200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926388, 38.426796, 44.483425>,  <37.779621, 38.316162, 44.637760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926388, 38.426796, 44.483425>,  <38.171001, 38.611183, 44.226200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926388, 38.426796, 44.483425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072628, 0.776618, 0.625772,
		-0.787877, 0.429386, -0.441450,
		-0.611535, -0.460969, 0.643064,
		37.742928, 38.288506, 44.676346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763554, 39.160572, 44.516064>,  <38.171001, 38.611183, 44.226200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763554, 39.160572, 44.516064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710846, 38.831604, 44.737431>,  <37.679222, 38.634224, 44.870251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710846, 38.831604, 44.737431>,  <37.763554, 39.160572, 44.516064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710846, 38.831604, 44.737431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056014, 0.551214, 0.832482,
		-0.989697, 0.140693, -0.026566,
		-0.131767, -0.822416, 0.553415,
		37.671314, 38.584881, 44.903454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297318, 39.286324, 45.036335>,  <37.763554, 39.160572, 44.516064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297318, 39.286324, 45.036335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495907, 38.971275, 45.182308>,  <37.615059, 38.782246, 45.269894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495907, 38.971275, 45.182308>,  <37.297318, 39.286324, 45.036335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495907, 38.971275, 45.182308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098467, 0.468789, 0.877805,
		-0.862450, -0.399871, 0.310295,
		0.496471, -0.787617, 0.364933,
		37.644848, 38.734989, 45.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990257, 39.234974, 45.664272>,  <37.297318, 39.286324, 45.036335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990257, 39.234974, 45.664272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335888, 39.034817, 45.686131>,  <37.543266, 38.914722, 45.699245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335888, 39.034817, 45.686131>,  <36.990257, 39.234974, 45.664272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335888, 39.034817, 45.686131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170875, 0.393707, 0.903214,
		-0.473473, -0.771107, 0.425696,
		0.864074, -0.500389, 0.054647,
		37.595112, 38.884701, 45.702526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951946, 38.926086, 46.345131>,  <36.990257, 39.234974, 45.664272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951946, 38.926086, 46.345131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332005, 38.941757, 46.221397>,  <37.560040, 38.951160, 46.147156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332005, 38.941757, 46.221397>,  <36.951946, 38.926086, 46.345131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332005, 38.941757, 46.221397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281898, 0.316065, 0.905890,
		0.133260, -0.947929, 0.289264,
		0.950145, 0.039176, -0.309338,
		37.617046, 38.953510, 46.128597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370537, 38.676701, 46.964424>,  <36.951946, 38.926086, 46.345131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370537, 38.676701, 46.964424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610470, 38.910080, 46.745415>,  <37.754429, 39.050110, 46.614010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610470, 38.910080, 46.745415>,  <37.370537, 38.676701, 46.964424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610470, 38.910080, 46.745415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207447, 0.547492, 0.810690,
		0.772763, -0.599863, 0.207370,
		0.599836, 0.583453, -0.547522,
		37.790421, 39.085117, 46.581158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034222, 38.703255, 47.290562>,  <37.370537, 38.676701, 46.964424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034222, 38.703255, 47.290562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051941, 39.022453, 47.050148>,  <38.062572, 39.213974, 46.905899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051941, 39.022453, 47.050148>,  <38.034222, 38.703255, 47.290562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051941, 39.022453, 47.050148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062570, 0.598224, 0.798882,
		0.997057, -0.072994, -0.023432,
		0.044296, 0.797997, -0.601031,
		38.065231, 39.261852, 46.869839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480808, 39.138985, 47.659363>,  <38.034222, 38.703255, 47.290562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480808, 39.138985, 47.659363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.338264, 39.389133, 47.381683>,  <38.252739, 39.539223, 47.215076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.338264, 39.389133, 47.381683>,  <38.480808, 39.138985, 47.659363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338264, 39.389133, 47.381683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030051, 0.734923, 0.677484,
		0.933865, 0.262291, -0.243105,
		-0.356362, 0.625373, -0.694201,
		38.231358, 39.576744, 47.173424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864002, 39.758270, 47.736221>,  <38.480808, 39.138985, 47.659363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864002, 39.758270, 47.736221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545269, 39.900673, 47.540947>,  <38.354031, 39.986115, 47.423782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.545269, 39.900673, 47.540947>,  <38.864002, 39.758270, 47.736221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545269, 39.900673, 47.540947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012467, 0.817492, 0.575804,
		0.604076, 0.452731, -0.655841,
		-0.796829, 0.356006, -0.488183,
		38.306221, 40.007473, 47.394493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.326126, 43.399937, 46.485897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496918, 43.068493, 46.630722>,  <32.599392, 42.869625, 46.717617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496918, 43.068493, 46.630722>,  <32.326126, 43.399937, 46.485897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496918, 43.068493, 46.630722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131791, -0.339094, -0.931475,
		0.894604, 0.445441, -0.035584,
		0.426984, -0.828612, 0.362060,
		32.625011, 42.819908, 46.739342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887493, 43.379044, 46.131626>,  <32.326126, 43.399937, 46.485897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887493, 43.379044, 46.131626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874779, 43.005745, 46.274761>,  <32.867149, 42.781765, 46.360641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874779, 43.005745, 46.274761>,  <32.887493, 43.379044, 46.131626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874779, 43.005745, 46.274761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148875, -0.358441, -0.921605,
		0.988345, 0.023976, 0.150331,
		-0.031789, -0.933244, 0.357833,
		32.865242, 42.725773, 46.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422081, 42.962345, 45.869186>,  <32.887493, 43.379044, 46.131626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422081, 42.962345, 45.869186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162773, 42.671036, 45.958057>,  <33.007187, 42.496250, 46.011379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162773, 42.671036, 45.958057>,  <33.422081, 42.962345, 45.869186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162773, 42.671036, 45.958057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024221, -0.311371, -0.949980,
		0.761025, -0.610462, 0.219493,
		-0.648270, -0.728274, 0.222175,
		32.968292, 42.452553, 46.024712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763458, 42.412437, 45.569511>,  <33.422081, 42.962345, 45.869186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763458, 42.412437, 45.569511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381443, 42.313320, 45.634617>,  <33.152233, 42.253849, 45.673679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381443, 42.313320, 45.634617>,  <33.763458, 42.412437, 45.569511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381443, 42.313320, 45.634617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047180, -0.414979, -0.908607,
		0.292695, -0.875436, 0.384631,
		-0.955041, -0.247798, 0.162765,
		33.094929, 42.238979, 45.683445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743366, 41.662457, 45.343487>,  <33.763458, 42.412437, 45.569511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743366, 41.662457, 45.343487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369457, 41.804550, 45.342480>,  <33.145111, 41.889805, 45.341877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369457, 41.804550, 45.342480>,  <33.743366, 41.662457, 45.343487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369457, 41.804550, 45.342480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179873, -0.479409, -0.858960,
		-0.306335, -0.802482, 0.512036,
		-0.934776, 0.355231, -0.002515,
		33.089024, 41.911121, 45.341724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321148, 41.181187, 45.040306>,  <33.743366, 41.662457, 45.343487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321148, 41.181187, 45.040306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.136776, 41.531586, 44.983494>,  <33.026154, 41.741825, 44.949406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.136776, 41.531586, 44.983494>,  <33.321148, 41.181187, 45.040306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136776, 41.531586, 44.983494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181567, -0.249751, -0.951135,
		-0.868667, -0.412613, 0.274169,
		-0.460925, 0.876000, -0.142034,
		32.998497, 41.794384, 44.940884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889011, 41.068897, 44.594688>,  <33.321148, 41.181187, 45.040306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889011, 41.068897, 44.594688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895134, 41.468296, 44.573647>,  <32.898808, 41.707935, 44.561020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895134, 41.468296, 44.573647>,  <32.889011, 41.068897, 44.594688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895134, 41.468296, 44.573647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222673, -0.047885, -0.973716,
		-0.974773, 0.026614, 0.221606,
		0.015303, 0.998498, -0.052603,
		32.899723, 41.767845, 44.557865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267487, 41.217628, 44.202965>,  <32.889011, 41.068897, 44.594688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267487, 41.217628, 44.202965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550369, 41.500351, 44.209705>,  <32.720100, 41.669983, 44.213749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550369, 41.500351, 44.209705>,  <32.267487, 41.217628, 44.202965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550369, 41.500351, 44.209705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008431, 0.015396, -0.999846,
		-0.706957, 0.707239, 0.004929,
		0.707206, 0.706807, 0.016847,
		32.762531, 41.712395, 44.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168365, 41.647507, 43.656139>,  <32.267487, 41.217628, 44.202965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168365, 41.647507, 43.656139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558769, 41.685726, 43.734394>,  <32.793011, 41.708656, 43.781345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.558769, 41.685726, 43.734394>,  <32.168365, 41.647507, 43.656139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558769, 41.685726, 43.734394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209978, -0.175556, -0.961816,
		-0.057555, 0.979822, -0.191408,
		0.976011, 0.095549, 0.195637,
		32.851574, 41.714390, 43.793087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400753, 41.889320, 43.013947>,  <32.168365, 41.647507, 43.656139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400753, 41.889320, 43.013947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757523, 41.810970, 43.176975>,  <32.971584, 41.763962, 43.274792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757523, 41.810970, 43.176975>,  <32.400753, 41.889320, 43.013947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757523, 41.810970, 43.176975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351986, -0.265086, -0.897683,
		0.283870, 0.944121, -0.167492,
		0.891921, -0.195871, 0.407567,
		33.025101, 41.752209, 43.299244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954948, 42.188950, 42.680084>,  <32.400753, 41.889320, 43.013947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954948, 42.188950, 42.680084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140106, 41.896873, 42.881100>,  <33.251202, 41.721626, 43.001709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140106, 41.896873, 42.881100>,  <32.954948, 42.188950, 42.680084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140106, 41.896873, 42.881100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489628, -0.261964, -0.831649,
		0.738911, 0.631024, 0.236261,
		0.462899, -0.730194, 0.502535,
		33.278976, 41.677814, 43.031860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767174, 42.222179, 42.509956>,  <32.954948, 42.188950, 42.680084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767174, 42.222179, 42.509956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645748, 41.859100, 42.625843>,  <33.572891, 41.641254, 42.695374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645748, 41.859100, 42.625843>,  <33.767174, 42.222179, 42.509956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645748, 41.859100, 42.625843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505452, -0.411168, -0.758590,
		0.807691, -0.083846, 0.583614,
		-0.303568, -0.907695, 0.289716,
		33.554676, 41.586792, 42.712757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325230, 41.795635, 42.381454>,  <33.767174, 42.222179, 42.509956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325230, 41.795635, 42.381454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033791, 41.525383, 42.426460>,  <33.858925, 41.363232, 42.453465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033791, 41.525383, 42.426460>,  <34.325230, 41.795635, 42.381454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033791, 41.525383, 42.426460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321570, -0.482463, -0.814753,
		0.604758, -0.557448, 0.568787,
		-0.728601, -0.675634, 0.112515,
		33.815208, 41.322693, 42.460217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610107, 41.123154, 42.386482>,  <34.325230, 41.795635, 42.381454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610107, 41.123154, 42.386482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228008, 41.084755, 42.274567>,  <33.998749, 41.061714, 42.207417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228008, 41.084755, 42.274567>,  <34.610107, 41.123154, 42.386482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228008, 41.084755, 42.274567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281640, -0.584336, -0.761072,
		-0.090430, -0.805814, 0.585223,
		-0.955249, -0.095999, -0.279791,
		33.941433, 41.055954, 42.190628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210754, 40.639561, 42.547009>,  <34.610107, 41.123154, 42.386482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210754, 40.639561, 42.547009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553402, 40.679501, 42.344528>,  <35.758991, 40.703465, 42.223038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553402, 40.679501, 42.344528>,  <35.210754, 40.639561, 42.547009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553402, 40.679501, 42.344528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289013, 0.719872, 0.631075,
		0.427414, -0.686887, 0.587795,
		0.856615, 0.099850, -0.506203,
		35.810387, 40.709457, 42.192669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652039, 40.675098, 43.155144>,  <35.210754, 40.639561, 42.547009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652039, 40.675098, 43.155144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824471, 40.843632, 42.835983>,  <35.927929, 40.944752, 42.644485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.824471, 40.843632, 42.835983>,  <35.652039, 40.675098, 43.155144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824471, 40.843632, 42.835983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199580, 0.817859, 0.539698,
		0.879967, -0.391897, 0.268469,
		0.431076, 0.421335, -0.797904,
		35.953793, 40.970032, 42.596611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469383, 40.890522, 43.233749>,  <35.652039, 40.675098, 43.155144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469383, 40.890522, 43.233749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312908, 41.112877, 42.940365>,  <36.219021, 41.246288, 42.764336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.312908, 41.112877, 42.940365>,  <36.469383, 40.890522, 43.233749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312908, 41.112877, 42.940365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145521, 0.824306, 0.547123,
		0.908732, 0.107296, -0.403354,
		-0.391191, 0.555884, -0.733459,
		36.195549, 41.279640, 42.720325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967411, 41.482723, 43.088116>,  <36.469383, 40.890522, 43.233749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967411, 41.482723, 43.088116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600208, 41.582649, 42.964920>,  <36.379887, 41.642605, 42.891003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600208, 41.582649, 42.964920>,  <36.967411, 41.482723, 43.088116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600208, 41.582649, 42.964920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055965, 0.850476, 0.523029,
		0.392604, 0.462906, -0.794720,
		-0.918003, 0.249819, -0.307994,
		36.324806, 41.657597, 42.872520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938335, 42.216747, 43.051895>,  <36.967411, 41.482723, 43.088116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938335, 42.216747, 43.051895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.549576, 42.122780, 43.057781>,  <36.316319, 42.066399, 43.061314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.549576, 42.122780, 43.057781>,  <36.938335, 42.216747, 43.051895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549576, 42.122780, 43.057781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159685, 0.704007, 0.692008,
		-0.172928, 0.670214, -0.721740,
		-0.971904, -0.234918, 0.014719,
		36.258003, 42.052303, 43.062199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684132, 42.841370, 43.110584>,  <36.938335, 42.216747, 43.051895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684132, 42.841370, 43.110584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362942, 42.622498, 43.205101>,  <36.170227, 42.491173, 43.261810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362942, 42.622498, 43.205101>,  <36.684132, 42.841370, 43.110584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362942, 42.622498, 43.205101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215335, 0.635999, 0.741037,
		-0.555761, 0.544150, -0.628515,
		-0.802970, -0.547181, 0.236289,
		36.122051, 42.458344, 43.275986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016655, 43.333126, 43.227501>,  <36.684132, 42.841370, 43.110584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016655, 43.333126, 43.227501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934799, 43.002563, 43.437328>,  <35.885685, 42.804226, 43.563225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934799, 43.002563, 43.437328>,  <36.016655, 43.333126, 43.227501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934799, 43.002563, 43.437328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496006, 0.549557, 0.672284,
		-0.843860, -0.122608, -0.522367,
		-0.204643, -0.826410, 0.524564,
		35.873405, 42.754639, 43.594696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385975, 43.420540, 43.497448>,  <36.016655, 43.333126, 43.227501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385975, 43.420540, 43.497448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525978, 43.133797, 43.738647>,  <35.609982, 42.961750, 43.883366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.525978, 43.133797, 43.738647>,  <35.385975, 43.420540, 43.497448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525978, 43.133797, 43.738647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462967, 0.427223, 0.776622,
		-0.814345, -0.550991, -0.182352,
		0.350007, -0.716861, 0.602997,
		35.630981, 42.918739, 43.919548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936512, 43.378311, 44.089314>,  <35.385975, 43.420540, 43.497448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936512, 43.378311, 44.089314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265331, 43.197609, 44.227962>,  <35.462624, 43.089188, 44.311153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265331, 43.197609, 44.227962>,  <34.936512, 43.378311, 44.089314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265331, 43.197609, 44.227962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318725, 0.139381, 0.937543,
		-0.471853, -0.881187, -0.029407,
		0.822052, -0.451756, 0.346623,
		35.511948, 43.062080, 44.331951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689022, 43.024857, 44.587341>,  <34.936512, 43.378311, 44.089314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689022, 43.024857, 44.587341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078011, 43.023914, 44.680538>,  <35.311405, 43.023350, 44.736458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.078011, 43.023914, 44.680538>,  <34.689022, 43.024857, 44.587341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078011, 43.023914, 44.680538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231654, 0.097833, 0.967866,
		-0.025080, -0.995200, 0.094593,
		0.972475, -0.002361, 0.232995,
		35.369755, 43.023205, 44.750435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859718, 42.462894, 45.081242>,  <34.689022, 43.024857, 44.587341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859718, 42.462894, 45.081242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147785, 42.733807, 45.141438>,  <35.320625, 42.896355, 45.177555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147785, 42.733807, 45.141438>,  <34.859718, 42.462894, 45.081242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147785, 42.733807, 45.141438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258599, 0.060765, 0.964071,
		0.643803, -0.733210, 0.218906,
		0.720169, 0.677281, 0.150487,
		35.363834, 42.936993, 45.186584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216518, 42.220413, 45.616798>,  <34.859718, 42.462894, 45.081242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216518, 42.220413, 45.616798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353699, 42.595409, 45.593143>,  <35.436008, 42.820408, 45.578949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353699, 42.595409, 45.593143>,  <35.216518, 42.220413, 45.616798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353699, 42.595409, 45.593143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000783, 0.062671, 0.998034,
		0.939352, -0.342327, 0.020759,
		0.342955, 0.937489, -0.059138,
		35.456585, 42.876656, 45.575401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776867, 42.354942, 46.172115>,  <35.216518, 42.220413, 45.616798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776867, 42.354942, 46.172115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665066, 42.722401, 46.060429>,  <35.597984, 42.942875, 45.993416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665066, 42.722401, 46.060429>,  <35.776867, 42.354942, 46.172115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665066, 42.722401, 46.060429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043554, 0.302641, 0.952109,
		0.959155, 0.253960, -0.124601,
		-0.279507, 0.918647, -0.279219,
		35.581215, 42.997993, 45.976662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355438, 42.698570, 46.403698>,  <35.776867, 42.354942, 46.172115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355438, 42.698570, 46.403698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013283, 42.903255, 46.371555>,  <35.807987, 43.026066, 46.352268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013283, 42.903255, 46.371555>,  <36.355438, 42.698570, 46.403698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013283, 42.903255, 46.371555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063698, 0.257881, 0.964075,
		0.514052, 0.819542, -0.253184,
		-0.855391, 0.511712, -0.080361,
		35.756664, 43.056770, 46.347446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012554, 43.115921, 46.265236>,  <36.355438, 42.698570, 46.403698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012554, 43.115921, 46.265236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381821, 43.263412, 46.308701>,  <37.603382, 43.351906, 46.334778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381821, 43.263412, 46.308701>,  <37.012554, 43.115921, 46.265236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381821, 43.263412, 46.308701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260905, -0.393431, -0.881556,
		-0.282302, 0.842172, -0.459404,
		0.923165, 0.368726, 0.108660,
		37.658772, 43.374031, 46.341297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208950, 43.530346, 45.573685>,  <37.012554, 43.115921, 46.265236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208950, 43.530346, 45.573685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.535305, 43.402489, 45.766411>,  <37.731117, 43.325775, 45.882046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.535305, 43.402489, 45.766411>,  <37.208950, 43.530346, 45.573685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535305, 43.402489, 45.766411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440702, -0.195654, -0.876071,
		0.374303, 0.927117, -0.018763,
		0.815891, -0.319647, 0.481817,
		37.780071, 43.306595, 45.910957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808197, 43.775734, 45.149174>,  <37.208950, 43.530346, 45.573685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808197, 43.775734, 45.149174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960464, 43.489014, 45.382854>,  <38.051823, 43.316982, 45.523064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960464, 43.489014, 45.382854>,  <37.808197, 43.775734, 45.149174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960464, 43.489014, 45.382854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459028, -0.401955, -0.792291,
		0.802737, 0.569763, 0.176021,
		0.380665, -0.716800, 0.584202,
		38.074665, 43.273975, 45.558113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559250, 43.727924, 44.988140>,  <37.808197, 43.775734, 45.149174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559250, 43.727924, 44.988140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447102, 43.378185, 45.146591>,  <38.379810, 43.168343, 45.241661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447102, 43.378185, 45.146591>,  <38.559250, 43.727924, 44.988140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447102, 43.378185, 45.146591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496687, -0.485282, -0.719586,
		0.821397, -0.005003, 0.570335,
		-0.280373, -0.874344, 0.396124,
		38.362991, 43.115883, 45.265427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152184, 43.279636, 45.087982>,  <38.559250, 43.727924, 44.988140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152184, 43.279636, 45.087982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869335, 42.997311, 45.071007>,  <38.699627, 42.827915, 45.060822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.869335, 42.997311, 45.071007>,  <39.152184, 43.279636, 45.087982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869335, 42.997311, 45.071007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509250, -0.466720, -0.723074,
		0.490551, -0.532914, 0.689466,
		-0.707124, -0.705815, -0.042437,
		38.657200, 42.785564, 45.058277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515984, 42.681583, 44.876579>,  <39.152184, 43.279636, 45.087982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515984, 42.681583, 44.876579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138924, 42.577972, 44.792370>,  <38.912689, 42.515804, 44.741844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138924, 42.577972, 44.792370>,  <39.515984, 42.681583, 44.876579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138924, 42.577972, 44.792370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333406, -0.700305, -0.631200,
		0.016066, -0.665190, 0.746501,
		-0.942647, -0.259029, -0.210527,
		38.856129, 42.500263, 44.729210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482426, 42.016148, 44.953049>,  <39.515984, 42.681583, 44.876579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482426, 42.016148, 44.953049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156071, 42.064373, 44.726849>,  <38.960258, 42.093307, 44.591129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156071, 42.064373, 44.726849>,  <39.482426, 42.016148, 44.953049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156071, 42.064373, 44.726849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366070, -0.649344, -0.666593,
		-0.447570, -0.750878, 0.485658,
		-0.815889, 0.120562, -0.565500,
		38.911304, 42.100540, 44.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401192, 41.443920, 44.682339>,  <39.482426, 42.016148, 44.953049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401192, 41.443920, 44.682339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158821, 41.645943, 44.436485>,  <39.013397, 41.767155, 44.288975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.158821, 41.645943, 44.436485>,  <39.401192, 41.443920, 44.682339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158821, 41.645943, 44.436485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281671, -0.586359, -0.759503,
		-0.743987, -0.633326, 0.213030,
		-0.605925, 0.505056, -0.614633,
		38.977043, 41.797459, 44.252094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965343, 40.925938, 44.347366>,  <39.401192, 41.443920, 44.682339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965343, 40.925938, 44.347366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956413, 41.249531, 44.112404>,  <38.951054, 41.443687, 43.971424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956413, 41.249531, 44.112404>,  <38.965343, 40.925938, 44.347366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956413, 41.249531, 44.112404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279150, -0.559144, -0.780662,
		-0.959988, -0.181405, -0.213343,
		-0.022327, 0.808981, -0.587411,
		38.949715, 41.492226, 43.936180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378174, 40.869003, 43.856468>,  <38.965343, 40.925938, 44.347366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378174, 40.869003, 43.856468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661648, 41.111778, 43.712582>,  <38.831730, 41.257442, 43.626251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661648, 41.111778, 43.712582>,  <38.378174, 40.869003, 43.856468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661648, 41.111778, 43.712582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182491, -0.650195, -0.737525,
		-0.681518, 0.457025, -0.571542,
		0.708682, 0.606938, -0.359717,
		38.874252, 41.293861, 43.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256405, 40.654167, 43.223026>,  <38.378174, 40.869003, 43.856468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256405, 40.654167, 43.223026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609600, 40.840954, 43.203957>,  <38.821518, 40.953026, 43.192516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.609600, 40.840954, 43.203957>,  <38.256405, 40.654167, 43.223026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609600, 40.840954, 43.203957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295153, -0.631327, -0.717155,
		-0.364982, 0.619171, -0.695281,
		0.882991, 0.466963, -0.047673,
		38.874496, 40.981041, 43.189655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413700, 40.582088, 42.469784>,  <38.256405, 40.654167, 43.223026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413700, 40.582088, 42.469784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.751820, 40.700123, 42.647953>,  <38.954689, 40.770943, 42.754852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.751820, 40.700123, 42.647953>,  <38.413700, 40.582088, 42.469784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751820, 40.700123, 42.647953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533281, -0.414562, -0.737394,
		-0.032941, 0.860850, -0.507791,
		0.845296, 0.295086, 0.445419,
		39.005409, 40.788651, 42.781578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760479, 40.837719, 41.934486>,  <38.413700, 40.582088, 42.469784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760479, 40.837719, 41.934486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038246, 40.732254, 42.202297>,  <39.204906, 40.668976, 42.362984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.038246, 40.732254, 42.202297>,  <38.760479, 40.837719, 41.934486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038246, 40.732254, 42.202297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456836, -0.557349, -0.693299,
		0.555959, 0.787302, -0.266580,
		0.694413, -0.263662, 0.669531,
		39.246571, 40.653156, 42.403156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391476, 40.928337, 41.534538>,  <38.760479, 40.837719, 41.934486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391476, 40.928337, 41.534538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453114, 40.682129, 41.843704>,  <39.490097, 40.534405, 42.029205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453114, 40.682129, 41.843704>,  <39.391476, 40.928337, 41.534538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453114, 40.682129, 41.843704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509808, -0.620557, -0.595823,
		0.846375, 0.485849, 0.218173,
		0.154091, -0.615516, 0.772914,
		39.499340, 40.497475, 42.075577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.386782, 28.383104, 37.318771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234194, 28.063606, 37.132656>,  <29.142641, 27.871908, 37.020988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.234194, 28.063606, 37.132656>,  <29.386782, 28.383104, 37.318771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234194, 28.063606, 37.132656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603497, 0.596471, -0.529163,
		0.700196, 0.078940, -0.709574,
		-0.381468, -0.798743, -0.465286,
		29.119753, 27.823984, 36.993069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401911, 28.551477, 36.617443>,  <29.386782, 28.383104, 37.318771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401911, 28.551477, 36.617443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116783, 28.278671, 36.682858>,  <28.945707, 28.114988, 36.722107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116783, 28.278671, 36.682858>,  <29.401911, 28.551477, 36.617443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116783, 28.278671, 36.682858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608886, 0.486064, -0.626897,
		0.348063, -0.546441, -0.761745,
		-0.712818, -0.682015, 0.163539,
		28.902937, 28.074066, 36.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143280, 28.340166, 35.996582>,  <29.401911, 28.551477, 36.617443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143280, 28.340166, 35.996582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846544, 28.205828, 36.228748>,  <28.668503, 28.125225, 36.368050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846544, 28.205828, 36.228748>,  <29.143280, 28.340166, 35.996582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846544, 28.205828, 36.228748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667919, 0.447056, -0.595000,
		-0.059651, -0.829065, -0.555961,
		-0.741839, -0.335845, 0.580416,
		28.623993, 28.105074, 36.402874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702744, 28.069967, 35.508427>,  <29.143280, 28.340166, 35.996582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702744, 28.069967, 35.508427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505827, 28.154268, 35.846237>,  <28.387676, 28.204849, 36.048923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505827, 28.154268, 35.846237>,  <28.702744, 28.069967, 35.508427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505827, 28.154268, 35.846237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672036, 0.524595, -0.522655,
		-0.553188, -0.824853, -0.116620,
		-0.492292, 0.210754, 0.844530,
		28.358139, 28.217495, 36.099598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985073, 28.001488, 35.376747>,  <28.702744, 28.069967, 35.508427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985073, 28.001488, 35.376747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974007, 28.254488, 35.686375>,  <27.967367, 28.406288, 35.872150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974007, 28.254488, 35.686375>,  <27.985073, 28.001488, 35.376747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974007, 28.254488, 35.686375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627122, 0.592036, -0.506174,
		-0.778430, -0.499437, 0.380275,
		-0.027666, 0.632500, 0.774066,
		27.965708, 28.444239, 35.918594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378080, 28.245398, 35.337440>,  <27.985073, 28.001488, 35.376747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378080, 28.245398, 35.337440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527718, 28.501579, 35.605732>,  <27.617500, 28.655289, 35.766705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527718, 28.501579, 35.605732>,  <27.378080, 28.245398, 35.337440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527718, 28.501579, 35.605732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463822, 0.755496, -0.462704,
		-0.803072, -0.138003, 0.579682,
		0.374093, 0.640453, 0.670727,
		27.639946, 28.693716, 35.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875254, 28.749243, 35.556725>,  <27.378080, 28.245398, 35.337440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875254, 28.749243, 35.556725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208862, 28.944746, 35.659111>,  <27.409027, 29.062048, 35.720543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208862, 28.944746, 35.659111>,  <26.875254, 28.749243, 35.556725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208862, 28.944746, 35.659111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423854, 0.864594, -0.269862,
		-0.353204, 0.116580, 0.928254,
		0.834024, 0.488760, 0.255965,
		27.459070, 29.091373, 35.735901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715456, 29.311394, 35.935547>,  <26.875254, 28.749243, 35.556725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715456, 29.311394, 35.935547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059669, 29.409670, 35.757057>,  <27.266197, 29.468636, 35.649963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059669, 29.409670, 35.757057>,  <26.715456, 29.311394, 35.935547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059669, 29.409670, 35.757057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350481, 0.921260, -0.168650,
		0.369652, 0.301522, 0.878886,
		0.860535, 0.245691, -0.446224,
		27.317829, 29.483377, 35.623192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909351, 29.948494, 36.284397>,  <26.715456, 29.311394, 35.935547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909351, 29.948494, 36.284397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111708, 29.943058, 35.939400>,  <27.233122, 29.939796, 35.732403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111708, 29.943058, 35.939400>,  <26.909351, 29.948494, 36.284397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111708, 29.943058, 35.939400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237292, 0.959107, -0.154294,
		0.829318, 0.282719, 0.481978,
		0.505890, -0.013589, -0.862491,
		27.263475, 29.938982, 35.680653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061262, 30.669182, 36.215107>,  <26.909351, 29.948494, 36.284397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061262, 30.669182, 36.215107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140224, 30.520012, 35.852459>,  <27.187601, 30.430510, 35.634869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140224, 30.520012, 35.852459>,  <27.061262, 30.669182, 36.215107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140224, 30.520012, 35.852459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195962, 0.891142, -0.409225,
		0.960537, 0.258446, 0.102836,
		0.197404, -0.372923, -0.906620,
		27.199446, 30.408134, 35.580471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495705, 31.153521, 36.008263>,  <27.061262, 30.669182, 36.215107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495705, 31.153521, 36.008263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371717, 30.969534, 35.675434>,  <27.297325, 30.859142, 35.475735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371717, 30.969534, 35.675434>,  <27.495705, 31.153521, 36.008263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371717, 30.969534, 35.675434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140663, 0.887737, -0.438334,
		0.940283, -0.018828, -0.339872,
		-0.309970, -0.459966, -0.832076,
		27.278727, 30.831545, 35.425812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779783, 31.560156, 35.391376>,  <27.495705, 31.153521, 36.008263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779783, 31.560156, 35.391376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491138, 31.333975, 35.231606>,  <27.317951, 31.198267, 35.135742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491138, 31.333975, 35.231606>,  <27.779783, 31.560156, 35.391376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491138, 31.333975, 35.231606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229499, 0.739718, -0.632573,
		0.653151, -0.364805, -0.663560,
		-0.721612, -0.565452, -0.399425,
		27.274654, 31.164339, 35.111778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843557, 31.601048, 34.635628>,  <27.779783, 31.560156, 35.391376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843557, 31.601048, 34.635628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466274, 31.498695, 34.720371>,  <27.239904, 31.437284, 34.771217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466274, 31.498695, 34.720371>,  <27.843557, 31.601048, 34.635628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466274, 31.498695, 34.720371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326049, 0.835241, -0.442792,
		-0.063652, -0.486722, -0.871235,
		-0.943208, -0.255880, 0.211860,
		27.183311, 31.421930, 34.783928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534348, 31.535971, 33.988964>,  <27.843557, 31.601048, 34.635628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534348, 31.535971, 33.988964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282747, 31.614594, 34.289822>,  <27.131788, 31.661768, 34.470337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282747, 31.614594, 34.289822>,  <27.534348, 31.535971, 33.988964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282747, 31.614594, 34.289822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299112, 0.831840, -0.467520,
		-0.717561, -0.519046, -0.464433,
		-0.628998, 0.196556, 0.752148,
		27.094048, 31.673561, 34.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012287, 31.781372, 33.639591>,  <27.534348, 31.535971, 33.988964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012287, 31.781372, 33.639591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960571, 31.872431, 34.025639>,  <26.929543, 31.927067, 34.257267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960571, 31.872431, 34.025639>,  <27.012287, 31.781372, 33.639591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960571, 31.872431, 34.025639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342847, 0.903003, -0.258924,
		-0.930452, -0.364365, -0.038700,
		-0.129290, 0.227648, 0.965122,
		26.921785, 31.940725, 34.315174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528280, 32.311062, 33.581364>,  <27.012287, 31.781372, 33.639591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528280, 32.311062, 33.581364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665751, 32.357521, 33.954113>,  <26.748234, 32.385395, 34.177765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665751, 32.357521, 33.954113>,  <26.528280, 32.311062, 33.581364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665751, 32.357521, 33.954113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337376, 0.941343, 0.007095,
		-0.876392, -0.316832, 0.362704,
		0.343677, 0.116149, 0.931877,
		26.768854, 32.392365, 34.233677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884611, 32.534252, 34.058323>,  <26.528280, 32.311062, 33.581364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884611, 32.534252, 34.058323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242371, 32.665733, 34.179653>,  <26.457026, 32.744621, 34.252453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.242371, 32.665733, 34.179653>,  <25.884611, 32.534252, 34.058323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242371, 32.665733, 34.179653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282197, 0.940859, -0.187481,
		-0.347013, 0.082085, 0.934261,
		0.894398, 0.328703, 0.303326,
		26.510691, 32.764343, 34.270653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779537, 33.043976, 34.462692>,  <25.884611, 32.534252, 34.058323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779537, 33.043976, 34.462692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.165684, 33.114899, 34.386135>,  <26.397371, 33.157452, 34.340202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.165684, 33.114899, 34.386135>,  <25.779537, 33.043976, 34.462692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165684, 33.114899, 34.386135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164761, 0.983108, 0.079701,
		0.202288, -0.045407, 0.978273,
		0.965367, 0.177304, -0.191389,
		26.455294, 33.168091, 34.328720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930603, 33.445683, 35.031837>,  <25.779537, 33.043976, 34.462692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930603, 33.445683, 35.031837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219896, 33.514454, 34.764294>,  <26.393473, 33.555717, 34.603767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219896, 33.514454, 34.764294>,  <25.930603, 33.445683, 35.031837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219896, 33.514454, 34.764294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161143, 0.983793, 0.078642,
		0.671542, 0.050906, 0.739216,
		0.723232, 0.171930, -0.668861,
		26.436867, 33.566032, 34.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214317, 34.024876, 35.329727>,  <25.930603, 33.445683, 35.031837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214317, 34.024876, 35.329727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.345617, 34.000214, 34.952698>,  <26.424397, 33.985416, 34.726479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.345617, 34.000214, 34.952698>,  <26.214317, 34.024876, 35.329727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345617, 34.000214, 34.952698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359009, 0.914842, -0.184869,
		0.873708, 0.399076, 0.278159,
		0.328248, -0.061660, -0.942577,
		26.444092, 33.981716, 34.669926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556841, 34.631733, 35.311863>,  <26.214317, 34.024876, 35.329727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556841, 34.631733, 35.311863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488319, 34.534412, 34.929981>,  <26.447206, 34.476021, 34.700851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488319, 34.534412, 34.929981>,  <26.556841, 34.631733, 35.311863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488319, 34.534412, 34.929981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121655, 0.966835, -0.224567,
		0.977679, 0.077676, -0.195219,
		-0.171301, -0.243304, -0.954704,
		26.436928, 34.461422, 34.643570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000975, 35.022068, 34.857491>,  <26.556841, 34.631733, 35.311863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000975, 35.022068, 34.857491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661680, 34.924492, 34.669453>,  <26.458103, 34.865948, 34.556629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661680, 34.924492, 34.669453>,  <27.000975, 35.022068, 34.857491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661680, 34.924492, 34.669453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209982, 0.969766, -0.124340,
		0.486213, -0.006758, -0.873814,
		-0.848236, -0.243941, -0.470094,
		26.407209, 34.851311, 34.528423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306767, 35.560978, 35.436855>,  <27.000975, 35.022068, 34.857491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306767, 35.560978, 35.436855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914507, 35.638817, 35.445404>,  <26.679152, 35.685520, 35.450531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914507, 35.638817, 35.445404>,  <27.306767, 35.560978, 35.436855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914507, 35.638817, 35.445404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126455, 0.546335, 0.827965,
		0.149445, 0.814647, -0.560372,
		-0.980650, 0.194597, 0.021370,
		26.620312, 35.697197, 35.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879562, 35.307640, 34.954868>,  <27.306767, 35.560978, 35.436855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879562, 35.307640, 34.954868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151836, 35.600655, 34.958080>,  <28.315201, 35.776463, 34.960007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151836, 35.600655, 34.958080>,  <27.879562, 35.307640, 34.954868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151836, 35.600655, 34.958080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729224, -0.678577, 0.088121,
		0.070002, -0.054125, -0.996078,
		0.680685, 0.732533, 0.008032,
		28.356041, 35.820415, 34.960491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402952, 35.219769, 34.508015>,  <27.879562, 35.307640, 34.954868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402952, 35.219769, 34.508015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617189, 35.455776, 34.749680>,  <28.745731, 35.597382, 34.894680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617189, 35.455776, 34.749680>,  <28.402952, 35.219769, 34.508015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617189, 35.455776, 34.749680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480344, -0.801275, 0.356691,
		0.694557, 0.099166, -0.712570,
		0.535592, 0.590021, 0.604165,
		28.777866, 35.632782, 34.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070431, 35.084209, 34.303726>,  <28.402952, 35.219769, 34.508015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070431, 35.084209, 34.303726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065678, 35.214447, 34.681900>,  <29.062826, 35.292587, 34.908806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.065678, 35.214447, 34.681900>,  <29.070431, 35.084209, 34.303726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065678, 35.214447, 34.681900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427884, -0.852909, 0.299103,
		0.903756, 0.408090, -0.129182,
		-0.011881, 0.325590, 0.945436,
		29.062113, 35.312122, 34.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581297, 34.799850, 34.491890>,  <29.070431, 35.084209, 34.303726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581297, 34.799850, 34.491890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427467, 34.893070, 34.849167>,  <29.335169, 34.949001, 35.063534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.427467, 34.893070, 34.849167>,  <29.581297, 34.799850, 34.491890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427467, 34.893070, 34.849167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379351, -0.842224, 0.383081,
		0.841543, 0.486157, 0.235493,
		-0.384576, 0.233045, 0.893192,
		29.312094, 34.962982, 35.117123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095409, 34.584045, 35.118595>,  <29.581297, 34.799850, 34.491890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095409, 34.584045, 35.118595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730919, 34.631142, 35.276482>,  <29.512224, 34.659401, 35.371216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730919, 34.631142, 35.276482>,  <30.095409, 34.584045, 35.118595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730919, 34.631142, 35.276482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142470, -0.809042, 0.570222,
		0.386482, 0.575837, 0.720446,
		-0.911226, 0.117739, 0.394720,
		29.457550, 34.666462, 35.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232702, 34.457619, 35.747437>,  <30.095409, 34.584045, 35.118595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232702, 34.457619, 35.747437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833853, 34.427429, 35.744614>,  <29.594543, 34.409317, 35.742920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833853, 34.427429, 35.744614>,  <30.232702, 34.457619, 35.747437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833853, 34.427429, 35.744614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060959, -0.853750, 0.517103,
		-0.045052, 0.515185, 0.855894,
		-0.997123, -0.075470, -0.007058,
		29.534716, 34.404789, 35.742496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002443, 34.378246, 36.491096>,  <30.232702, 34.457619, 35.747437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002443, 34.378246, 36.491096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693745, 34.260914, 36.265400>,  <29.508526, 34.190514, 36.129982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693745, 34.260914, 36.265400>,  <30.002443, 34.378246, 36.491096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693745, 34.260914, 36.265400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080176, -0.835300, 0.543916,
		-0.630858, 0.465003, 0.621120,
		-0.771744, -0.293335, -0.564238,
		29.462221, 34.172913, 36.096127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509447, 34.175671, 37.000942>,  <30.002443, 34.378246, 36.491096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509447, 34.175671, 37.000942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454504, 33.995632, 36.648003>,  <29.421537, 33.887608, 36.436237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454504, 33.995632, 36.648003>,  <29.509447, 34.175671, 37.000942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454504, 33.995632, 36.648003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070130, -0.892980, 0.444599,
		-0.988036, -0.000810, 0.154223,
		-0.137358, -0.450095, -0.882353,
		29.413296, 33.860603, 36.383297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088175, 33.586037, 37.132515>,  <29.509447, 34.175671, 37.000942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088175, 33.586037, 37.132515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238737, 33.537331, 36.765148>,  <29.329075, 33.508106, 36.544727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238737, 33.537331, 36.765148>,  <29.088175, 33.586037, 37.132515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238737, 33.537331, 36.765148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180826, -0.962604, 0.201732,
		-0.908636, -0.242007, -0.340313,
		0.376407, -0.121763, -0.918418,
		29.351660, 33.500801, 36.489624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862480, 32.956356, 37.007729>,  <29.088175, 33.586037, 37.132515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862480, 32.956356, 37.007729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173409, 33.033520, 36.768211>,  <29.359966, 33.079819, 36.624500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173409, 33.033520, 36.768211>,  <28.862480, 32.956356, 37.007729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173409, 33.033520, 36.768211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301738, -0.949522, 0.085802,
		-0.552020, -0.247376, -0.796291,
		0.777321, 0.192907, -0.598798,
		29.406605, 33.091393, 36.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857500, 32.475609, 36.524406>,  <28.862480, 32.956356, 37.007729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857500, 32.475609, 36.524406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228935, 32.623554, 36.536556>,  <29.451797, 32.712322, 36.543846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228935, 32.623554, 36.536556>,  <28.857500, 32.475609, 36.524406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228935, 32.623554, 36.536556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365299, -0.925409, 0.100876,
		0.065415, -0.082578, -0.994435,
		0.928589, 0.369865, 0.030370,
		29.507511, 32.734512, 36.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305244, 32.004898, 36.110710>,  <28.857500, 32.475609, 36.524406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305244, 32.004898, 36.110710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564939, 32.215603, 36.330170>,  <29.720757, 32.342026, 36.461845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.564939, 32.215603, 36.330170>,  <29.305244, 32.004898, 36.110710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564939, 32.215603, 36.330170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457634, -0.846709, 0.271393,
		0.607507, 0.074883, -0.790777,
		0.649235, 0.526760, 0.548651,
		29.759710, 32.373631, 36.494766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962376, 32.002937, 35.883110>,  <29.305244, 32.004898, 36.110710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962376, 32.002937, 35.883110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997509, 32.078613, 36.274311>,  <30.018589, 32.124020, 36.509033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997509, 32.078613, 36.274311>,  <29.962376, 32.002937, 35.883110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997509, 32.078613, 36.274311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536062, -0.836490, 0.113673,
		0.839597, 0.514286, -0.174889,
		0.087832, 0.189191, 0.978004,
		30.023859, 32.135372, 36.567711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506287, 31.654911, 35.996365>,  <29.962376, 32.002937, 35.883110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506287, 31.654911, 35.996365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376556, 31.772936, 36.355865>,  <30.298719, 31.843750, 36.571564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376556, 31.772936, 36.355865>,  <30.506287, 31.654911, 35.996365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376556, 31.772936, 36.355865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497814, -0.754660, 0.427398,
		0.804360, 0.586026, 0.097869,
		-0.324324, 0.295061, 0.898751,
		30.279259, 31.861454, 36.625492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096272, 31.609972, 36.407028>,  <30.506287, 31.654911, 35.996365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096272, 31.609972, 36.407028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.787613, 31.610991, 36.661446>,  <30.602419, 31.611603, 36.814098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.787613, 31.610991, 36.661446>,  <31.096272, 31.609972, 36.407028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787613, 31.610991, 36.661446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382485, -0.797127, 0.467219,
		0.508202, 0.603806, 0.614125,
		-0.771645, 0.002548, 0.636048,
		30.556120, 31.611755, 36.852261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429586, 31.380329, 37.002258>,  <31.096272, 31.609972, 36.407028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429586, 31.380329, 37.002258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037062, 31.313156, 37.039829>,  <30.801546, 31.272852, 37.062370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037062, 31.313156, 37.039829>,  <31.429586, 31.380329, 37.002258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037062, 31.313156, 37.039829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191688, -0.810774, 0.553084,
		-0.016730, 0.560753, 0.827814,
		-0.981313, -0.167935, 0.093926,
		30.742668, 31.262775, 37.068008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299633, 31.324522, 37.695328>,  <31.429586, 31.380329, 37.002258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299633, 31.324522, 37.695328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995581, 31.138779, 37.513527>,  <30.813148, 31.027332, 37.404446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.995581, 31.138779, 37.513527>,  <31.299633, 31.324522, 37.695328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995581, 31.138779, 37.513527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113601, -0.783679, 0.610690,
		-0.639762, 0.412573, 0.648451,
		-0.760131, -0.464361, -0.454499,
		30.767542, 30.999470, 37.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805201, 30.995111, 38.267288>,  <31.299633, 31.324522, 37.695328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805201, 30.995111, 38.267288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725849, 30.794044, 37.930725>,  <30.678238, 30.673405, 37.728786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725849, 30.794044, 37.930725>,  <30.805201, 30.995111, 38.267288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725849, 30.794044, 37.930725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235339, -0.857786, 0.456967,
		-0.951452, -0.107363, 0.288466,
		-0.198381, -0.502669, -0.841409,
		30.666334, 30.643244, 37.678303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888365, 30.196331, 38.434097>,  <30.805201, 30.995111, 38.267288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888365, 30.196331, 38.434097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673517, 30.078655, 38.117882>,  <30.544609, 30.008051, 37.928150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673517, 30.078655, 38.117882>,  <30.888365, 30.196331, 38.434097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673517, 30.078655, 38.117882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051685, -0.946927, 0.317268,
		-0.841921, 0.129551, 0.523818,
		-0.537120, -0.294188, -0.790541,
		30.512381, 29.990398, 37.880718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.052628, 40.434910, 47.598606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653095, 40.433022, 47.579361>,  <38.413376, 40.431889, 47.567814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653095, 40.433022, 47.579361>,  <39.052628, 40.434910, 47.598606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653095, 40.433022, 47.579361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033533, 0.784543, 0.619167,
		0.034818, 0.620057, -0.783784,
		-0.998831, -0.004724, -0.048108,
		38.353447, 40.431602, 47.564930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800045, 41.210068, 47.450562>,  <39.052628, 40.434910, 47.598606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800045, 41.210068, 47.450562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490234, 41.043045, 47.640614>,  <38.304348, 40.942829, 47.754642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.490234, 41.043045, 47.640614>,  <38.800045, 41.210068, 47.450562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490234, 41.043045, 47.640614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029545, 0.726443, 0.686591,
		-0.631846, 0.545823, -0.550316,
		-0.774530, -0.417561, 0.475127,
		38.257874, 40.917778, 47.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398655, 41.784157, 47.608803>,  <38.800045, 41.210068, 47.450562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398655, 41.784157, 47.608803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266151, 41.489044, 47.844070>,  <38.186649, 41.311977, 47.985233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266151, 41.489044, 47.844070>,  <38.398655, 41.784157, 47.608803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266151, 41.489044, 47.844070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109797, 0.588992, 0.800646,
		-0.937130, 0.329800, -0.114102,
		-0.331258, -0.737781, 0.588173,
		38.166775, 41.267712, 48.020523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840248, 42.073051, 48.074596>,  <38.398655, 41.784157, 47.608803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840248, 42.073051, 48.074596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914040, 41.736248, 48.277374>,  <37.958313, 41.534168, 48.399040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914040, 41.736248, 48.277374>,  <37.840248, 42.073051, 48.074596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914040, 41.736248, 48.277374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018943, 0.512657, 0.858384,
		-0.982654, -0.167956, 0.078623,
		0.184478, -0.842005, 0.506946,
		37.969383, 41.483646, 48.429459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401386, 42.134941, 48.589008>,  <37.840248, 42.073051, 48.074596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401386, 42.134941, 48.589008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695698, 41.888039, 48.700455>,  <37.872284, 41.739899, 48.767323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695698, 41.888039, 48.700455>,  <37.401386, 42.134941, 48.589008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695698, 41.888039, 48.700455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012091, 0.423316, 0.905902,
		-0.677115, -0.663173, 0.318930,
		0.735778, -0.617256, 0.278615,
		37.916431, 41.702862, 48.784039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186630, 41.845131, 49.236542>,  <37.401386, 42.134941, 48.589008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186630, 41.845131, 49.236542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584682, 41.806145, 49.242455>,  <37.823513, 41.782753, 49.246002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584682, 41.806145, 49.242455>,  <37.186630, 41.845131, 49.236542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584682, 41.806145, 49.242455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029828, 0.440620, 0.897198,
		-0.093958, -0.892387, 0.441381,
		0.995129, -0.097465, 0.014781,
		37.883221, 41.776905, 49.246887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349831, 41.621555, 49.910057>,  <37.186630, 41.845131, 49.236542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349831, 41.621555, 49.910057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672073, 41.805660, 49.760845>,  <37.865421, 41.916122, 49.671318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672073, 41.805660, 49.760845>,  <37.349831, 41.621555, 49.910057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672073, 41.805660, 49.760845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156198, 0.442365, 0.883128,
		0.571485, -0.769724, 0.284482,
		0.805609, 0.460259, -0.373035,
		37.913757, 41.943737, 49.648933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800091, 41.402393, 50.444305>,  <37.349831, 41.621555, 49.910057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800091, 41.402393, 50.444305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948643, 41.708088, 50.233395>,  <38.037773, 41.891506, 50.106850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948643, 41.708088, 50.233395>,  <37.800091, 41.402393, 50.444305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948643, 41.708088, 50.233395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237146, 0.470976, 0.849673,
		0.897684, -0.440594, -0.006325,
		0.371382, 0.764238, -0.527273,
		38.060059, 41.937359, 50.075214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405846, 41.705948, 50.811001>,  <37.800091, 41.402393, 50.444305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405846, 41.705948, 50.811001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316078, 42.013496, 50.571507>,  <38.262218, 42.198025, 50.427811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316078, 42.013496, 50.571507>,  <38.405846, 41.705948, 50.811001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316078, 42.013496, 50.571507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085979, 0.627630, 0.773749,
		0.970693, 0.122164, -0.206957,
		-0.224417, 0.768867, -0.598732,
		38.248753, 42.244156, 50.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837482, 42.143764, 51.072815>,  <38.405846, 41.705948, 50.811001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837482, 42.143764, 51.072815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.532223, 42.332672, 50.896381>,  <38.349068, 42.446018, 50.790520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.532223, 42.332672, 50.896381>,  <38.837482, 42.143764, 51.072815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532223, 42.332672, 50.896381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023999, 0.661378, 0.749669,
		0.645771, 0.582698, -0.493399,
		-0.763154, 0.472273, -0.441083,
		38.303276, 42.474354, 50.764057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008804, 42.779266, 51.159569>,  <38.837482, 42.143764, 51.072815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008804, 42.779266, 51.159569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611935, 42.768002, 51.110924>,  <38.373814, 42.761242, 51.081738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611935, 42.768002, 51.110924>,  <39.008804, 42.779266, 51.159569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611935, 42.768002, 51.110924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120383, 0.473507, 0.872524,
		0.033010, 0.880340, -0.473194,
		-0.992179, -0.028163, -0.121608,
		38.314281, 42.759552, 51.074440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735443, 43.416496, 51.494514>,  <39.008804, 42.779266, 51.159569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735443, 43.416496, 51.494514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407742, 43.197395, 51.426636>,  <38.211121, 43.065937, 51.385910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407742, 43.197395, 51.426636>,  <38.735443, 43.416496, 51.494514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407742, 43.197395, 51.426636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323572, 0.197260, 0.925413,
		-0.473420, 0.813056, -0.338842,
		-0.819253, -0.547749, -0.169695,
		38.161964, 43.033070, 51.375729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095078, 43.892834, 51.690590>,  <38.735443, 43.416496, 51.494514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095078, 43.892834, 51.690590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051235, 43.496063, 51.716114>,  <38.024929, 43.257999, 51.731426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051235, 43.496063, 51.716114>,  <38.095078, 43.892834, 51.690590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051235, 43.496063, 51.716114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383685, 0.101440, 0.917876,
		-0.916937, 0.076123, -0.391705,
		-0.109607, -0.991925, 0.063807,
		38.018353, 43.198486, 51.735256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272762, 44.686272, 51.603275>,  <38.095078, 43.892834, 51.690590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272762, 44.686272, 51.603275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372051, 44.575592, 51.974613>,  <38.431625, 44.509186, 52.197414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372051, 44.575592, 51.974613>,  <38.272762, 44.686272, 51.603275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372051, 44.575592, 51.974613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129349, 0.940288, 0.314844,
		-0.960028, -0.198232, 0.197613,
		0.248225, -0.276698, 0.928344,
		38.446518, 44.492584, 52.253117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889122, 45.345310, 51.788219>,  <38.272762, 44.686272, 51.603275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889122, 45.345310, 51.788219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644573, 45.624790, 51.639603>,  <37.497845, 45.792477, 51.550430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644573, 45.624790, 51.639603>,  <37.889122, 45.345310, 51.788219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644573, 45.624790, 51.639603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175653, -0.337980, -0.924616,
		-0.771604, -0.630545, 0.083902,
		-0.611370, 0.698700, -0.371544,
		37.461163, 45.834400, 51.528141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275517, 45.057796, 51.350395>,  <37.889122, 45.345310, 51.788219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275517, 45.057796, 51.350395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325668, 45.432377, 51.219349>,  <37.355759, 45.657127, 51.140720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325668, 45.432377, 51.219349>,  <37.275517, 45.057796, 51.350395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325668, 45.432377, 51.219349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045857, -0.335337, -0.940982,
		-0.991048, 0.102960, -0.084988,
		0.125383, 0.936455, -0.327613,
		37.363281, 45.713314, 51.121063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809807, 45.197609, 50.961201>,  <37.275517, 45.057796, 51.350395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809807, 45.197609, 50.961201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101131, 45.440449, 50.834084>,  <37.275925, 45.586151, 50.757812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101131, 45.440449, 50.834084>,  <36.809807, 45.197609, 50.961201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101131, 45.440449, 50.834084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122848, -0.340573, -0.932158,
		-0.674145, 0.717941, -0.173462,
		0.728311, 0.607100, -0.317793,
		37.319626, 45.622578, 50.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589127, 45.388767, 50.278397>,  <36.809807, 45.197609, 50.961201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589127, 45.388767, 50.278397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970993, 45.506779, 50.294220>,  <37.200115, 45.577583, 50.303715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970993, 45.506779, 50.294220>,  <36.589127, 45.388767, 50.278397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970993, 45.506779, 50.294220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087925, -0.152537, -0.984379,
		-0.284383, 0.943235, -0.171562,
		0.954670, 0.295025, 0.039555,
		37.257393, 45.595287, 50.306087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718716, 45.865986, 49.710464>,  <36.589127, 45.388767, 50.278397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718716, 45.865986, 49.710464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088146, 45.729527, 49.780460>,  <37.309807, 45.647652, 49.822456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088146, 45.729527, 49.780460>,  <36.718716, 45.865986, 49.710464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088146, 45.729527, 49.780460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060287, -0.321516, -0.944983,
		0.378640, 0.883316, -0.276378,
		0.923578, -0.341147, 0.174991,
		37.365219, 45.627182, 49.832958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053303, 46.016525, 49.176105>,  <36.718716, 45.865986, 49.710464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053303, 46.016525, 49.176105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287304, 45.736526, 49.339947>,  <37.427704, 45.568527, 49.438251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287304, 45.736526, 49.339947>,  <37.053303, 46.016525, 49.176105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287304, 45.736526, 49.339947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153121, -0.400631, -0.903354,
		0.796449, 0.591180, -0.127184,
		0.584998, -0.700001, 0.409604,
		37.462803, 45.526527, 49.462830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577408, 45.932053, 48.662846>,  <37.053303, 46.016525, 49.176105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577408, 45.932053, 48.662846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612419, 45.598869, 48.881393>,  <37.633427, 45.398960, 49.012524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612419, 45.598869, 48.881393>,  <37.577408, 45.932053, 48.662846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612419, 45.598869, 48.881393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241238, -0.514426, -0.822903,
		0.966511, 0.203833, 0.155914,
		0.087528, -0.832957, 0.546371,
		37.638676, 45.348984, 49.045303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308891, 45.738316, 48.496807>,  <37.577408, 45.932053, 48.662846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308891, 45.738316, 48.496807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093636, 45.428051, 48.628723>,  <37.964481, 45.241894, 48.707870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093636, 45.428051, 48.628723>,  <38.308891, 45.738316, 48.496807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093636, 45.428051, 48.628723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264254, -0.526816, -0.807858,
		0.800359, -0.347593, 0.488472,
		-0.538141, -0.775657, 0.329788,
		37.932194, 45.195354, 48.727661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699493, 45.284836, 48.216633>,  <38.308891, 45.738316, 48.496807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699493, 45.284836, 48.216633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369839, 45.091747, 48.335140>,  <38.172047, 44.975895, 48.406246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369839, 45.091747, 48.335140>,  <38.699493, 45.284836, 48.216633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369839, 45.091747, 48.335140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183527, -0.722459, -0.666611,
		0.535834, -0.495005, 0.683997,
		-0.824136, -0.482725, 0.296271,
		38.122597, 44.946930, 48.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881481, 44.588032, 48.259907>,  <38.699493, 45.284836, 48.216633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881481, 44.588032, 48.259907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486977, 44.584343, 48.193939>,  <38.250275, 44.582130, 48.154358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486977, 44.584343, 48.193939>,  <38.881481, 44.588032, 48.259907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486977, 44.584343, 48.193939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116561, -0.746266, -0.655363,
		-0.117027, -0.665584, 0.737091,
		-0.986265, -0.009221, -0.164915,
		38.191097, 44.581577, 48.144466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681713, 43.847546, 48.244690>,  <38.881481, 44.588032, 48.259907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681713, 43.847546, 48.244690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.420349, 44.061504, 48.030422>,  <38.263531, 44.189880, 47.901863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.420349, 44.061504, 48.030422>,  <38.681713, 43.847546, 48.244690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420349, 44.061504, 48.030422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010928, -0.714206, -0.699850,
		-0.756928, -0.451433, 0.472513,
		-0.653407, 0.534900, -0.535669,
		38.224327, 44.221973, 47.869720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179436, 43.362019, 47.906895>,  <38.681713, 43.847546, 48.244690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179436, 43.362019, 47.906895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128147, 43.696873, 47.694195>,  <38.097374, 43.897785, 47.566574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128147, 43.696873, 47.694195>,  <38.179436, 43.362019, 47.906895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128147, 43.696873, 47.694195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058477, -0.541626, -0.838584,
		-0.990020, -0.076430, 0.118402,
		-0.128223, 0.837138, -0.531751,
		38.089680, 43.948013, 47.534668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612206, 43.242214, 47.502823>,  <38.179436, 43.362019, 47.906895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612206, 43.242214, 47.502823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770744, 43.538692, 47.286106>,  <37.865868, 43.716579, 47.156075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770744, 43.538692, 47.286106>,  <37.612206, 43.242214, 47.502823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770744, 43.538692, 47.286106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222300, -0.495091, -0.839921,
		-0.890783, 0.453339, -0.031458,
		0.396344, 0.741195, -0.541796,
		37.889648, 43.761051, 47.123566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094265, 43.165119, 46.962337>,  <37.612206, 43.242214, 47.502823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094265, 43.165119, 46.962337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409214, 43.384403, 46.849545>,  <37.598183, 43.515976, 46.781868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.409214, 43.384403, 46.849545>,  <37.094265, 43.165119, 46.962337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409214, 43.384403, 46.849545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009336, -0.467950, -0.883706,
		-0.616412, 0.693169, -0.373567,
		0.787368, 0.548214, -0.281979,
		37.645424, 43.548866, 46.764950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452583, 43.502365, 46.899529>,  <37.094265, 43.165119, 46.962337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452583, 43.502365, 46.899529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065174, 43.441143, 46.820999>,  <35.832729, 43.404411, 46.773880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065174, 43.441143, 46.820999>,  <36.452583, 43.502365, 46.899529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065174, 43.441143, 46.820999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242674, 0.404718, 0.881653,
		-0.055483, 0.901542, -0.429120,
		-0.968520, -0.153053, -0.196325,
		35.774616, 43.395226, 46.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086517, 44.117123, 47.208546>,  <36.452583, 43.502365, 46.899529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086517, 44.117123, 47.208546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794182, 43.846352, 47.173573>,  <35.618778, 43.683891, 47.152588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794182, 43.846352, 47.173573>,  <36.086517, 44.117123, 47.208546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794182, 43.846352, 47.173573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412154, 0.335574, 0.847065,
		-0.544059, 0.655106, -0.524248,
		-0.730841, -0.676924, -0.087433,
		35.574928, 43.643276, 47.147343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456303, 44.525402, 47.287468>,  <36.086517, 44.117123, 47.208546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456303, 44.525402, 47.287468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332848, 44.154694, 47.373100>,  <35.258774, 43.932266, 47.424480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332848, 44.154694, 47.373100>,  <35.456303, 44.525402, 47.287468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332848, 44.154694, 47.373100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446408, 0.339877, 0.827770,
		-0.839918, 0.159913, -0.518619,
		-0.308638, -0.926775, 0.214082,
		35.240257, 43.876659, 47.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853565, 44.693497, 47.533047>,  <35.456303, 44.525402, 47.287468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853565, 44.693497, 47.533047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946774, 44.331139, 47.674500>,  <35.002701, 44.113724, 47.759373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946774, 44.331139, 47.674500>,  <34.853565, 44.693497, 47.533047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946774, 44.331139, 47.674500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317261, 0.272929, 0.908215,
		-0.919264, -0.323828, -0.223807,
		0.233022, -0.905895, 0.353632,
		35.016682, 44.059372, 47.780590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209290, 44.502445, 47.834335>,  <34.853565, 44.693497, 47.533047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209290, 44.502445, 47.834335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507458, 44.297718, 48.005169>,  <34.686359, 44.174881, 48.107670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507458, 44.297718, 48.005169>,  <34.209290, 44.502445, 47.834335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507458, 44.297718, 48.005169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277916, 0.343732, 0.897001,
		-0.605901, -0.787332, 0.113982,
		0.745417, -0.511817, 0.427079,
		34.731083, 44.144173, 48.133293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864021, 44.275024, 48.432831>,  <34.209290, 44.502445, 47.834335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864021, 44.275024, 48.432831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255981, 44.236065, 48.502472>,  <34.491158, 44.212688, 48.544258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255981, 44.236065, 48.502472>,  <33.864021, 44.275024, 48.432831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255981, 44.236065, 48.502472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126074, 0.373998, 0.918820,
		-0.154610, -0.922300, 0.354200,
		0.979898, -0.097403, 0.174102,
		34.549950, 44.206844, 48.554703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069397, 44.187698, 49.122185>,  <33.864021, 44.275024, 48.432831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069397, 44.187698, 49.122185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443497, 44.295532, 49.030415>,  <34.667957, 44.360233, 48.975353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443497, 44.295532, 49.030415>,  <34.069397, 44.187698, 49.122185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443497, 44.295532, 49.030415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036013, 0.572277, 0.819269,
		0.352159, -0.774482, 0.525512,
		0.935247, 0.269587, -0.229424,
		34.724072, 44.376408, 48.961586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116150, 43.511131, 49.361805>,  <34.069397, 44.187698, 49.122185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116150, 43.511131, 49.361805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720528, 43.505028, 49.420498>,  <33.483154, 43.501366, 49.455711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720528, 43.505028, 49.420498>,  <34.116150, 43.511131, 49.361805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720528, 43.505028, 49.420498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136863, -0.276272, -0.951285,
		0.055058, -0.960958, 0.271160,
		-0.989058, -0.015264, 0.146730,
		33.423809, 43.500450, 49.464516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814075, 42.821617, 49.180786>,  <34.116150, 43.511131, 49.361805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814075, 42.821617, 49.180786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513992, 43.083183, 49.141640>,  <33.333942, 43.240124, 49.118153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513992, 43.083183, 49.141640>,  <33.814075, 42.821617, 49.180786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513992, 43.083183, 49.141640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203293, -0.368964, -0.906938,
		-0.629170, -0.660500, 0.409738,
		-0.750211, 0.653915, -0.097866,
		33.288929, 43.279358, 49.112278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202724, 42.485176, 48.945702>,  <33.814075, 42.821617, 49.180786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202724, 42.485176, 48.945702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111092, 42.858883, 48.836407>,  <33.056110, 43.083107, 48.770828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111092, 42.858883, 48.836407>,  <33.202724, 42.485176, 48.945702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111092, 42.858883, 48.836407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268039, -0.330397, -0.904983,
		-0.935776, -0.134078, 0.326109,
		-0.229084, 0.934270, -0.273239,
		33.042366, 43.139164, 48.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479496, 42.497719, 48.861168>,  <33.202724, 42.485176, 48.945702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479496, 42.497719, 48.861168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663582, 42.778656, 48.643944>,  <32.774033, 42.947220, 48.513611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663582, 42.778656, 48.643944>,  <32.479496, 42.497719, 48.861168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663582, 42.778656, 48.643944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291658, -0.458128, -0.839675,
		-0.838531, 0.544821, -0.005995,
		0.460219, 0.702345, -0.543056,
		32.801647, 42.989361, 48.481026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042763, 42.527676, 48.298157>,  <32.479496, 42.497719, 48.861168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042763, 42.527676, 48.298157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362457, 42.727783, 48.164917>,  <32.554276, 42.847847, 48.084972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362457, 42.727783, 48.164917>,  <32.042763, 42.527676, 48.298157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362457, 42.727783, 48.164917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204509, -0.294786, -0.933422,
		-0.565152, 0.814147, -0.133295,
		0.799237, 0.500266, -0.333099,
		32.602230, 42.877861, 48.064987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817276, 42.820671, 47.720097>,  <32.042763, 42.527676, 48.298157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817276, 42.820671, 47.720097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212978, 42.854736, 47.672569>,  <32.450401, 42.875175, 47.644054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212978, 42.854736, 47.672569>,  <31.817276, 42.820671, 47.720097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212978, 42.854736, 47.672569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090230, -0.283776, -0.954636,
		-0.115021, 0.955101, -0.273043,
		0.989257, 0.085166, -0.118819,
		32.509754, 42.880287, 47.636925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930387, 43.207428, 47.110794>,  <31.817276, 42.820671, 47.720097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930387, 43.207428, 47.110794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283211, 43.023006, 47.149578>,  <32.494904, 42.912354, 47.172848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283211, 43.023006, 47.149578>,  <31.930387, 43.207428, 47.110794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283211, 43.023006, 47.149578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007047, -0.192857, -0.981202,
		0.471085, 0.866161, -0.166863,
		0.882060, -0.461054, 0.096956,
		32.547829, 42.884689, 47.178665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.887028, 40.836124, 52.236088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183681, 41.066658, 52.098793>,  <36.361675, 41.204979, 52.016415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183681, 41.066658, 52.098793>,  <35.887028, 40.836124, 52.236088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183681, 41.066658, 52.098793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125402, -0.621784, -0.773084,
		-0.658978, 0.530303, -0.533410,
		0.741635, 0.576336, -0.343241,
		36.406174, 41.239559, 51.995819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652508, 41.129642, 51.608391>,  <35.887028, 40.836124, 52.236088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652508, 41.129642, 51.608391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.051037, 41.096050, 51.615120>,  <36.290154, 41.075893, 51.619156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.051037, 41.096050, 51.615120>,  <35.652508, 41.129642, 51.608391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051037, 41.096050, 51.615120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028527, -0.510569, -0.859363,
		0.080759, 0.855725, -0.511089,
		0.996325, -0.083981, 0.016822,
		36.349934, 41.070854, 51.620167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885353, 41.201588, 50.933228>,  <35.652508, 41.129642, 51.608391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885353, 41.201588, 50.933228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.201637, 41.027729, 51.105679>,  <36.391407, 40.923416, 51.209148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.201637, 41.027729, 51.105679>,  <35.885353, 41.201588, 50.933228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201637, 41.027729, 51.105679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045981, -0.660072, -0.749794,
		0.610465, 0.612691, -0.501938,
		0.790707, -0.434644, 0.431123,
		36.438850, 40.897335, 51.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408718, 41.243050, 50.394417>,  <35.885353, 41.201588, 50.933228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408718, 41.243050, 50.394417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.494431, 40.935432, 50.635300>,  <36.545856, 40.750862, 50.779831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.494431, 40.935432, 50.635300>,  <36.408718, 41.243050, 50.394417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494431, 40.935432, 50.635300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140558, -0.585832, -0.798151,
		0.966606, 0.255674, -0.017438,
		0.214282, -0.769046, 0.602206,
		36.558716, 40.704720, 50.815960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969780, 40.714043, 50.071289>,  <36.408718, 41.243050, 50.394417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969780, 40.714043, 50.071289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814667, 40.522705, 50.386456>,  <36.721600, 40.407902, 50.575554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814667, 40.522705, 50.386456>,  <36.969780, 40.714043, 50.071289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814667, 40.522705, 50.386456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046769, -0.863911, -0.501468,
		0.920562, -0.157613, 0.357386,
		-0.387788, -0.478347, 0.787912,
		36.698330, 40.379200, 50.622829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388962, 40.125767, 50.204304>,  <36.969780, 40.714043, 50.071289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388962, 40.125767, 50.204304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043770, 40.019257, 50.376053>,  <36.836655, 39.955353, 50.479103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043770, 40.019257, 50.376053>,  <37.388962, 40.125767, 50.204304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043770, 40.019257, 50.376053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047373, -0.888752, -0.455935,
		0.503011, -0.373122, 0.779590,
		-0.862981, -0.266271, 0.429376,
		36.784874, 39.939377, 50.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486588, 39.338390, 50.356602>,  <37.388962, 40.125767, 50.204304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486588, 39.338390, 50.356602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096901, 39.428631, 50.356865>,  <36.863087, 39.482777, 50.357025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096901, 39.428631, 50.356865>,  <37.486588, 39.338390, 50.356602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096901, 39.428631, 50.356865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175833, -0.757469, -0.628748,
		-0.141346, -0.612654, 0.777609,
		-0.974220, 0.225600, 0.000660,
		36.804634, 39.496311, 50.357063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156239, 38.761536, 50.263306>,  <37.486588, 39.338390, 50.356602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156239, 38.761536, 50.263306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840961, 38.994160, 50.182766>,  <36.651794, 39.133732, 50.134441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840961, 38.994160, 50.182766>,  <37.156239, 38.761536, 50.263306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840961, 38.994160, 50.182766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359925, -0.700980, -0.615696,
		-0.499206, -0.412816, 0.761825,
		-0.788193, 0.581558, -0.201350,
		36.604504, 39.168629, 50.122360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619278, 38.381248, 50.393459>,  <37.156239, 38.761536, 50.263306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619278, 38.381248, 50.393459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488911, 38.657715, 50.135448>,  <36.410690, 38.823593, 49.980640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488911, 38.657715, 50.135448>,  <36.619278, 38.381248, 50.393459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488911, 38.657715, 50.135448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462434, -0.711643, -0.528884,
		-0.824579, 0.125909, 0.551559,
		-0.325922, 0.691166, -0.645031,
		36.391132, 38.865067, 49.941940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002792, 38.072540, 50.217983>,  <36.619278, 38.381248, 50.393459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002792, 38.072540, 50.217983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.082764, 38.350739, 49.941921>,  <36.130749, 38.517658, 49.776283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.082764, 38.350739, 49.941921>,  <36.002792, 38.072540, 50.217983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082764, 38.350739, 49.941921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447597, -0.561753, -0.695767,
		-0.871599, 0.448017, 0.198990,
		0.199932, 0.695496, -0.690154,
		36.142742, 38.559387, 49.734875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419724, 38.115425, 49.863762>,  <36.002792, 38.072540, 50.217983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419724, 38.115425, 49.863762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.685051, 38.280182, 49.613850>,  <35.844246, 38.379036, 49.463902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.685051, 38.280182, 49.613850>,  <35.419724, 38.115425, 49.863762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685051, 38.280182, 49.613850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418467, -0.487997, -0.765993,
		-0.620396, 0.769549, -0.151335,
		0.663320, 0.411890, -0.624782,
		35.884048, 38.403748, 49.426414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072742, 38.442101, 49.261032>,  <35.419724, 38.115425, 49.863762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072742, 38.442101, 49.261032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.437019, 38.345394, 49.127056>,  <35.655586, 38.287373, 49.046669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.437019, 38.345394, 49.127056>,  <35.072742, 38.442101, 49.261032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437019, 38.345394, 49.127056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410180, -0.625187, -0.663998,
		-0.048872, 0.742086, -0.668520,
		0.910694, -0.241763, -0.334943,
		35.710228, 38.272865, 49.026573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639214, 38.932285, 49.055119>,  <35.072742, 38.442101, 49.261032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639214, 38.932285, 49.055119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278004, 39.049030, 48.929028>,  <34.061279, 39.119076, 48.853374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278004, 39.049030, 48.929028>,  <34.639214, 38.932285, 49.055119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278004, 39.049030, 48.929028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174117, 0.422141, 0.889651,
		0.392724, 0.858261, -0.330385,
		-0.903023, 0.291862, -0.315223,
		34.007095, 39.136589, 48.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537189, 39.675720, 49.253002>,  <34.639214, 38.932285, 49.055119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537189, 39.675720, 49.253002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157757, 39.585922, 49.163738>,  <33.930099, 39.532043, 49.110180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157757, 39.585922, 49.163738>,  <34.537189, 39.675720, 49.253002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157757, 39.585922, 49.163738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304598, 0.455566, 0.836468,
		-0.086121, 0.861430, -0.500522,
		-0.948580, -0.224496, -0.223155,
		33.873184, 39.518574, 49.096790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122581, 40.223888, 49.231808>,  <34.537189, 39.675720, 49.253002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122581, 40.223888, 49.231808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884129, 39.915783, 49.322426>,  <33.741055, 39.730919, 49.376797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884129, 39.915783, 49.322426>,  <34.122581, 40.223888, 49.231808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884129, 39.915783, 49.322426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328919, 0.491696, 0.806255,
		-0.732417, 0.406123, -0.546471,
		-0.596136, -0.770259, 0.226545,
		33.705288, 39.684704, 49.390388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445347, 40.564762, 49.448475>,  <34.122581, 40.223888, 49.231808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445347, 40.564762, 49.448475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387199, 40.196560, 49.593548>,  <33.352310, 39.975639, 49.680592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.387199, 40.196560, 49.593548>,  <33.445347, 40.564762, 49.448475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387199, 40.196560, 49.593548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435158, 0.388702, 0.812126,
		-0.888542, -0.039770, -0.457069,
		-0.145365, -0.920505, 0.362684,
		33.343590, 39.920410, 49.702354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779434, 40.576756, 49.676388>,  <33.445347, 40.564762, 49.448475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779434, 40.576756, 49.676388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952923, 40.272636, 49.869816>,  <33.057014, 40.090164, 49.985874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952923, 40.272636, 49.869816>,  <32.779434, 40.576756, 49.676388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952923, 40.272636, 49.869816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377039, 0.334293, 0.863765,
		-0.818371, -0.556954, -0.141672,
		0.433717, -0.760296, 0.483569,
		33.083038, 40.044548, 50.014885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259445, 40.278812, 50.075737>,  <32.779434, 40.576756, 49.676388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259445, 40.278812, 50.075737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618526, 40.180710, 50.222153>,  <32.833973, 40.121849, 50.310001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618526, 40.180710, 50.222153>,  <32.259445, 40.278812, 50.075737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618526, 40.180710, 50.222153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289678, 0.297458, 0.909728,
		-0.331997, -0.922696, 0.195983,
		0.897699, -0.245255, 0.366040,
		32.887836, 40.107132, 50.331966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092171, 39.868149, 50.699558>,  <32.259445, 40.278812, 50.075737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092171, 39.868149, 50.699558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470592, 39.995850, 50.721672>,  <32.697647, 40.072472, 50.734940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470592, 39.995850, 50.721672>,  <32.092171, 39.868149, 50.699558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470592, 39.995850, 50.721672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187691, 0.400925, 0.896678,
		0.264105, -0.858683, 0.439218,
		0.946055, 0.319254, 0.055281,
		32.754410, 40.091625, 50.738255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269638, 39.709446, 51.350735>,  <32.092171, 39.868149, 50.699558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269638, 39.709446, 51.350735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524250, 39.989891, 51.222195>,  <32.677017, 40.158157, 51.145069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524250, 39.989891, 51.222195>,  <32.269638, 39.709446, 51.350735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524250, 39.989891, 51.222195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130492, 0.508562, 0.851080,
		0.760131, -0.499805, 0.415205,
		0.636532, 0.701113, -0.321353,
		32.715210, 40.200226, 51.125790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676102, 39.857758, 51.911644>,  <32.269638, 39.709446, 51.350735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676102, 39.857758, 51.911644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731663, 40.178951, 51.679806>,  <32.764999, 40.371666, 51.540703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.731663, 40.178951, 51.679806>,  <32.676102, 39.857758, 51.911644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731663, 40.178951, 51.679806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073241, 0.591993, 0.802608,
		0.987594, -0.069035, 0.141041,
		0.138903, 0.802981, -0.579592,
		32.773335, 40.419846, 51.505928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182281, 40.198601, 52.222721>,  <32.676102, 39.857758, 51.911644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182281, 40.198601, 52.222721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.005775, 40.476643, 51.995697>,  <32.899872, 40.643467, 51.859482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.005775, 40.476643, 51.995697>,  <33.182281, 40.198601, 52.222721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005775, 40.476643, 51.995697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000299, 0.632576, 0.774498,
		0.897377, 0.341588, -0.279341,
		-0.441264, 0.695101, -0.567557,
		32.873398, 40.685173, 51.825428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461185, 40.777748, 52.407902>,  <33.182281, 40.198601, 52.222721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461185, 40.777748, 52.407902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.147362, 40.931538, 52.213318>,  <32.959068, 41.023811, 52.096569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.147362, 40.931538, 52.213318>,  <33.461185, 40.777748, 52.407902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147362, 40.931538, 52.213318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067694, 0.726748, 0.683560,
		0.616345, 0.569226, -0.544152,
		-0.784561, 0.384473, -0.486461,
		32.911995, 41.046879, 52.067379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625439, 41.457245, 52.402893>,  <33.461185, 40.777748, 52.407902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625439, 41.457245, 52.402893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231174, 41.448322, 52.335999>,  <32.994614, 41.442970, 52.295864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231174, 41.448322, 52.335999>,  <33.625439, 41.457245, 52.402893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231174, 41.448322, 52.335999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136991, 0.684379, 0.716142,
		0.098475, 0.728785, -0.677624,
		-0.985665, -0.022307, -0.167232,
		32.935474, 41.441631, 52.285828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471096, 42.151024, 52.358856>,  <33.625439, 41.457245, 52.402893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471096, 42.151024, 52.358856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131512, 41.956982, 52.442692>,  <32.927761, 41.840557, 52.492992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131512, 41.956982, 52.442692>,  <33.471096, 42.151024, 52.358856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131512, 41.956982, 52.442692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223538, 0.689050, 0.689377,
		-0.478842, 0.538405, -0.693419,
		-0.848965, -0.485108, 0.209592,
		32.876823, 41.811451, 52.505569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937393, 42.627777, 52.366249>,  <33.471096, 42.151024, 52.358856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937393, 42.627777, 52.366249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821060, 42.316956, 52.589535>,  <32.751259, 42.130463, 52.723507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821060, 42.316956, 52.589535>,  <32.937393, 42.627777, 52.366249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821060, 42.316956, 52.589535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254039, 0.625209, 0.737955,
		-0.922432, 0.072813, -0.379232,
		-0.290832, -0.777053, 0.558215,
		32.733810, 42.083839, 52.757000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541199, 42.422604, 51.919670>,  <32.937393, 42.627777, 52.366249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541199, 42.422604, 51.919670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550640, 42.810757, 52.015835>,  <32.556305, 43.043648, 52.073536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.550640, 42.810757, 52.015835>,  <32.541199, 42.422604, 51.919670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550640, 42.810757, 52.015835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000756, 0.240499, -0.970649,
		-0.999721, 0.022726, 0.006409,
		0.023600, 0.970383, 0.240415,
		32.557720, 43.101871, 52.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930624, 42.802830, 51.564007>,  <32.541199, 42.422604, 51.919670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930624, 42.802830, 51.564007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272469, 42.992733, 51.648148>,  <32.477573, 43.106674, 51.698631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272469, 42.992733, 51.648148>,  <31.930624, 42.802830, 51.564007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272469, 42.992733, 51.648148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099969, 0.247081, -0.963824,
		-0.509558, 0.844721, 0.163697,
		0.854609, 0.474759, 0.210348,
		32.528851, 43.135162, 51.711250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875410, 43.526947, 51.366497>,  <31.930624, 42.802830, 51.564007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875410, 43.526947, 51.366497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271320, 43.470371, 51.373863>,  <32.508865, 43.436428, 51.378281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271320, 43.470371, 51.373863>,  <31.875410, 43.526947, 51.366497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271320, 43.470371, 51.373863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055677, 0.264279, -0.962838,
		0.131313, 0.954019, 0.269452,
		0.989776, -0.141435, 0.018414,
		32.568253, 43.427940, 51.379387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191525, 43.979359, 50.910282>,  <31.875410, 43.526947, 51.366497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191525, 43.979359, 50.910282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.497868, 43.727596, 50.962906>,  <32.681675, 43.576538, 50.994480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.497868, 43.727596, 50.962906>,  <32.191525, 43.979359, 50.910282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497868, 43.727596, 50.962906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287651, 0.152384, -0.945535,
		0.575078, 0.761989, 0.297754,
		0.765860, -0.629406, 0.131555,
		32.727627, 43.538776, 51.002373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840221, 44.386353, 50.786228>,  <32.191525, 43.979359, 50.910282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840221, 44.386353, 50.786228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880093, 43.991196, 50.738659>,  <32.904015, 43.754101, 50.710117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880093, 43.991196, 50.738659>,  <32.840221, 44.386353, 50.786228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880093, 43.991196, 50.738659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268652, 0.141796, -0.952744,
		0.958066, 0.063019, 0.279532,
		0.099678, -0.987888, -0.118919,
		32.909996, 43.694828, 50.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515900, 44.215199, 50.492188>,  <32.840221, 44.386353, 50.786228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515900, 44.215199, 50.492188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.288925, 43.904263, 50.383553>,  <33.152740, 43.717701, 50.318371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.288925, 43.904263, 50.383553>,  <33.515900, 44.215199, 50.492188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288925, 43.904263, 50.383553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223325, 0.172183, -0.959416,
		0.792553, -0.605062, 0.075896,
		-0.567438, -0.777337, -0.271590,
		33.118694, 43.671062, 50.302074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963528, 43.808525, 50.005718>,  <33.515900, 44.215199, 50.492188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963528, 43.808525, 50.005718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581860, 43.702534, 49.950073>,  <33.352859, 43.638939, 49.916687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581860, 43.702534, 49.950073>,  <33.963528, 43.808525, 50.005718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581860, 43.702534, 49.950073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141080, 0.011702, -0.989929,
		0.263935, -0.964184, 0.026217,
		-0.954167, -0.264975, -0.139115,
		33.295609, 43.623043, 49.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625633, 43.864754, 49.767185>,  <33.963528, 43.808525, 50.005718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625633, 43.864754, 49.767185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806530, 44.159103, 49.565605>,  <34.915070, 44.335712, 49.444656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.806530, 44.159103, 49.565605>,  <34.625633, 43.864754, 49.767185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806530, 44.159103, 49.565605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001295, 0.565576, 0.824695,
		0.891892, -0.372313, 0.256733,
		0.452246, 0.735872, -0.503951,
		34.942204, 44.379864, 49.414421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327652, 43.926273, 50.054058>,  <34.625633, 43.864754, 49.767185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327652, 43.926273, 50.054058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.236980, 44.290764, 49.916485>,  <35.182575, 44.509457, 49.833942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.236980, 44.290764, 49.916485>,  <35.327652, 43.926273, 50.054058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236980, 44.290764, 49.916485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222782, 0.392271, 0.892464,
		0.948147, 0.125684, -0.291925,
		-0.226682, 0.911223, -0.343930,
		35.168976, 44.564129, 49.813305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660458, 44.357933, 50.536381>,  <35.327652, 43.926273, 50.054058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660458, 44.357933, 50.536381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435345, 44.615444, 50.328983>,  <35.300278, 44.769951, 50.204544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.435345, 44.615444, 50.328983>,  <35.660458, 44.357933, 50.536381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435345, 44.615444, 50.328983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070211, 0.662216, 0.746016,
		0.823620, 0.383439, -0.417882,
		-0.562780, 0.643773, -0.518492,
		35.266510, 44.808575, 50.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021442, 44.974007, 50.427670>,  <35.660458, 44.357933, 50.536381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021442, 44.974007, 50.427670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.633945, 45.071404, 50.408661>,  <35.401447, 45.129841, 50.397255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.633945, 45.071404, 50.408661>,  <36.021442, 44.974007, 50.427670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633945, 45.071404, 50.408661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102982, 0.568956, 0.815894,
		0.225701, 0.785494, -0.576245,
		-0.968738, 0.243491, -0.047522,
		35.343323, 45.144451, 50.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962128, 45.732136, 50.655823>,  <36.021442, 44.974007, 50.427670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962128, 45.732136, 50.655823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588291, 45.593731, 50.688828>,  <35.363987, 45.510689, 50.708630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588291, 45.593731, 50.688828>,  <35.962128, 45.732136, 50.655823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588291, 45.593731, 50.688828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075065, 0.418588, 0.905069,
		-0.347707, 0.839677, -0.417183,
		-0.934594, -0.346014, 0.082515,
		35.307915, 45.489925, 50.713581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365753, 46.285603, 50.667809>,  <35.962128, 45.732136, 50.655823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365753, 46.285603, 50.667809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228172, 45.970863, 50.872772>,  <35.145626, 45.782021, 50.995750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228172, 45.970863, 50.872772>,  <35.365753, 46.285603, 50.667809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228172, 45.970863, 50.872772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373984, 0.615350, 0.693888,
		-0.861298, 0.047029, -0.505919,
		-0.343950, -0.786850, 0.512412,
		35.124989, 45.734810, 51.026497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814892, 46.530960, 51.028141>,  <35.365753, 46.285603, 50.667809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814892, 46.530960, 51.028141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.846943, 46.186604, 51.229118>,  <34.866173, 45.979988, 51.349705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.846943, 46.186604, 51.229118>,  <34.814892, 46.530960, 51.028141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846943, 46.186604, 51.229118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172738, 0.484441, 0.857600,
		-0.981703, -0.155509, -0.109891,
		0.080129, -0.860891, 0.502440,
		34.870983, 45.928337, 51.379848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197422, 46.375546, 51.480427>,  <34.814892, 46.530960, 51.028141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197422, 46.375546, 51.480427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487537, 46.166084, 51.659203>,  <34.661606, 46.040409, 51.766468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.487537, 46.166084, 51.659203>,  <34.197422, 46.375546, 51.480427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487537, 46.166084, 51.659203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193989, 0.467438, 0.862479,
		-0.660554, -0.712243, 0.237442,
		0.725284, -0.523653, 0.446935,
		34.705124, 46.008987, 51.793282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892029, 46.313103, 52.130669>,  <34.197422, 46.375546, 51.480427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892029, 46.313103, 52.130669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276546, 46.214119, 52.179119>,  <34.507259, 46.154728, 52.208191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276546, 46.214119, 52.179119>,  <33.892029, 46.313103, 52.130669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276546, 46.214119, 52.179119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042572, 0.567772, 0.822084,
		-0.272209, -0.785109, 0.556332,
		0.961296, -0.247463, 0.121129,
		34.564934, 46.139881, 52.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.012547, 37.117611, 38.605919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307922, 37.127426, 38.875465>,  <36.485149, 37.133316, 39.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307922, 37.127426, 38.875465>,  <36.012547, 37.117611, 38.605919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307922, 37.127426, 38.875465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563620, 0.571066, 0.596839,
		-0.370181, -0.820538, 0.435527,
		0.738443, 0.024533, 0.673869,
		36.529457, 37.134785, 39.077625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793449, 36.869774, 39.286835>,  <36.012547, 37.117611, 38.605919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793449, 36.869774, 39.286835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126820, 37.073177, 39.373398>,  <36.326839, 37.195217, 39.425335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126820, 37.073177, 39.373398>,  <35.793449, 36.869774, 39.286835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126820, 37.073177, 39.373398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508969, 0.553706, 0.659060,
		0.215309, -0.659419, 0.720283,
		0.833422, 0.508504, 0.216406,
		36.376846, 37.225727, 39.438320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835320, 36.965450, 40.019104>,  <35.793449, 36.869774, 39.286835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835320, 36.965450, 40.019104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088921, 37.248066, 39.893345>,  <36.241081, 37.417637, 39.817890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088921, 37.248066, 39.893345>,  <35.835320, 36.965450, 40.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088921, 37.248066, 39.893345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277117, 0.587114, 0.760594,
		0.721975, -0.395093, 0.568026,
		0.634001, 0.706539, -0.314395,
		36.279121, 37.460030, 39.799026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218903, 37.159687, 40.632122>,  <35.835320, 36.965450, 40.019104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218903, 37.159687, 40.632122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255863, 37.462662, 40.373589>,  <36.278038, 37.644447, 40.218468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255863, 37.462662, 40.373589>,  <36.218903, 37.159687, 40.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255863, 37.462662, 40.373589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082195, 0.652698, 0.753147,
		0.992324, -0.016463, 0.122565,
		0.092397, 0.757440, -0.646335,
		36.283581, 37.689892, 40.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633595, 37.596790, 40.955864>,  <36.218903, 37.159687, 40.632122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633595, 37.596790, 40.955864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448875, 37.832603, 40.690777>,  <36.338043, 37.974091, 40.531723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448875, 37.832603, 40.690777>,  <36.633595, 37.596790, 40.955864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448875, 37.832603, 40.690777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068124, 0.721378, 0.689183,
		0.884367, 0.363409, -0.292968,
		-0.461796, 0.589532, -0.662719,
		36.310337, 38.009464, 40.491962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033344, 38.252403, 40.943035>,  <36.633595, 37.596790, 40.955864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033344, 38.252403, 40.943035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670849, 38.356979, 40.810135>,  <36.453354, 38.419724, 40.730396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670849, 38.356979, 40.810135>,  <37.033344, 38.252403, 40.943035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670849, 38.356979, 40.810135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017855, 0.808840, 0.587757,
		0.422395, 0.526714, -0.737668,
		-0.906236, 0.261437, -0.332246,
		36.398979, 38.435410, 40.710461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103027, 38.832958, 40.608200>,  <37.033344, 38.252403, 40.943035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103027, 38.832958, 40.608200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717968, 38.812180, 40.714489>,  <36.486931, 38.799713, 40.778263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717968, 38.812180, 40.714489>,  <37.103027, 38.832958, 40.608200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717968, 38.812180, 40.714489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055208, 0.923135, 0.380492,
		-0.265061, 0.380950, -0.885788,
		-0.962650, -0.051951, 0.265718,
		36.429173, 38.796593, 40.794205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822308, 39.543827, 40.453094>,  <37.103027, 38.832958, 40.608200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822308, 39.543827, 40.453094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552750, 39.363873, 40.687519>,  <36.391014, 39.255898, 40.828175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552750, 39.363873, 40.687519>,  <36.822308, 39.543827, 40.453094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552750, 39.363873, 40.687519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183316, 0.870240, 0.457249,
		-0.715723, 0.200705, -0.668924,
		-0.673896, -0.449888, 0.586058,
		36.350582, 39.228905, 40.863338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268440, 39.994530, 40.431564>,  <36.822308, 39.543827, 40.453094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268440, 39.994530, 40.431564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230713, 39.751114, 40.746723>,  <36.208076, 39.605064, 40.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230713, 39.751114, 40.746723>,  <36.268440, 39.994530, 40.431564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230713, 39.751114, 40.746723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252057, 0.780239, 0.572446,
		-0.963105, -0.144604, -0.226976,
		-0.094318, -0.608537, 0.787900,
		36.202419, 39.568554, 40.983093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620228, 40.102303, 40.722076>,  <36.268440, 39.994530, 40.431564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620228, 40.102303, 40.722076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821823, 39.944416, 41.029373>,  <35.942780, 39.849682, 41.213749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821823, 39.944416, 41.029373>,  <35.620228, 40.102303, 40.722076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821823, 39.944416, 41.029373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323317, 0.738574, 0.591587,
		-0.800911, -0.546539, 0.244615,
		0.503991, -0.394721, 0.768237,
		35.973019, 39.826000, 41.259846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363430, 40.496498, 41.202896>,  <35.620228, 40.102303, 40.722076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363430, 40.496498, 41.202896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648735, 40.309101, 41.411423>,  <35.819920, 40.196663, 41.536537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648735, 40.309101, 41.411423>,  <35.363430, 40.496498, 41.202896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648735, 40.309101, 41.411423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056102, 0.703232, 0.708743,
		-0.698647, -0.534767, 0.475307,
		0.713264, -0.468496, 0.521312,
		35.862713, 40.168552, 41.567818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106030, 40.305740, 41.905056>,  <35.363430, 40.496498, 41.202896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106030, 40.305740, 41.905056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500851, 40.363411, 41.876945>,  <35.737743, 40.398014, 41.860081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500851, 40.363411, 41.876945>,  <35.106030, 40.305740, 41.905056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500851, 40.363411, 41.876945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011307, 0.499616, 0.866173,
		0.159990, -0.854165, 0.494778,
		0.987054, 0.144173, -0.070276,
		35.796967, 40.406662, 41.855862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519989, 40.410751, 42.260708>,  <35.106030, 40.305740, 41.905056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519989, 40.410751, 42.260708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234974, 40.596886, 42.050659>,  <34.063965, 40.708569, 41.924629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234974, 40.596886, 42.050659>,  <34.519989, 40.410751, 42.260708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234974, 40.596886, 42.050659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167967, -0.613534, -0.771598,
		-0.681238, -0.637992, 0.359000,
		-0.712532, 0.465342, -0.525125,
		34.021214, 40.736488, 41.893124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091679, 39.871067, 42.056320>,  <34.519989, 40.410751, 42.260708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091679, 39.871067, 42.056320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014698, 40.167477, 41.798996>,  <33.968510, 40.345322, 41.644604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014698, 40.167477, 41.798996>,  <34.091679, 39.871067, 42.056320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014698, 40.167477, 41.798996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029635, -0.659650, -0.750989,
		-0.980859, -0.125463, 0.148910,
		-0.192450, 0.741027, -0.643306,
		33.956963, 40.389786, 41.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504982, 39.541168, 41.626129>,  <34.091679, 39.871067, 42.056320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504982, 39.541168, 41.626129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659977, 39.845791, 41.418327>,  <33.752975, 40.028564, 41.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659977, 39.845791, 41.418327>,  <33.504982, 39.541168, 41.626129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659977, 39.845791, 41.418327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235899, -0.462854, -0.854470,
		-0.891182, 0.453647, 0.000301,
		0.387488, 0.761558, -0.519502,
		33.776222, 40.074257, 41.262478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894703, 39.725826, 41.136589>,  <33.504982, 39.541168, 41.626129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894703, 39.725826, 41.136589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251755, 39.851574, 41.007355>,  <33.465984, 39.927021, 40.929813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251755, 39.851574, 41.007355>,  <32.894703, 39.725826, 41.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251755, 39.851574, 41.007355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219362, -0.323210, -0.920552,
		-0.393819, 0.892584, -0.219545,
		0.892629, 0.314371, -0.323085,
		33.519543, 39.945885, 40.910431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824234, 39.749622, 40.465191>,  <32.894703, 39.725826, 41.136589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824234, 39.749622, 40.465191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222435, 39.769344, 40.497547>,  <33.461357, 39.781178, 40.516960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222435, 39.769344, 40.497547>,  <32.824234, 39.749622, 40.465191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222435, 39.769344, 40.497547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094626, -0.477429, -0.873560,
		-0.004449, 0.877286, -0.479947,
		0.995503, 0.049302, 0.080890,
		33.521088, 39.784134, 40.521812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022755, 40.084194, 39.848656>,  <32.824234, 39.749622, 40.465191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022755, 40.084194, 39.848656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322559, 39.863708, 39.995293>,  <33.502441, 39.731419, 40.083275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322559, 39.863708, 39.995293>,  <33.022755, 40.084194, 39.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322559, 39.863708, 39.995293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041688, -0.513376, -0.857151,
		0.660674, 0.657730, -0.361803,
		0.749514, -0.551214, 0.366594,
		33.547413, 39.698345, 40.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430183, 40.133438, 39.240917>,  <33.022755, 40.084194, 39.848656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430183, 40.133438, 39.240917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548145, 39.830513, 39.473988>,  <33.618923, 39.648758, 39.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548145, 39.830513, 39.473988>,  <33.430183, 40.133438, 39.240917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548145, 39.830513, 39.473988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196252, -0.548790, -0.812598,
		0.935156, 0.353990, -0.013217,
		0.294905, -0.757311, 0.582675,
		33.636616, 39.603321, 39.648788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081726, 39.862316, 38.810623>,  <33.430183, 40.133438, 39.240917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081726, 39.862316, 38.810623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980511, 39.572491, 39.067055>,  <33.919781, 39.398598, 39.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980511, 39.572491, 39.067055>,  <34.081726, 39.862316, 38.810623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980511, 39.572491, 39.067055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024451, -0.657645, -0.752931,
		0.967148, -0.206192, 0.148691,
		-0.253034, -0.724560, 0.641082,
		33.904602, 39.355122, 39.259380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570328, 39.368099, 38.896149>,  <34.081726, 39.862316, 38.810623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570328, 39.368099, 38.896149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213329, 39.204632, 38.972504>,  <33.999130, 39.106552, 39.018318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213329, 39.204632, 38.972504>,  <34.570328, 39.368099, 38.896149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213329, 39.204632, 38.972504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149441, -0.667222, -0.729714,
		0.425575, -0.622741, 0.656566,
		-0.892498, -0.408666, 0.190890,
		33.945580, 39.082031, 39.029770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684570, 38.676380, 38.829159>,  <34.570328, 39.368099, 38.896149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684570, 38.676380, 38.829159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284882, 38.691330, 38.834175>,  <34.045067, 38.700298, 38.837185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284882, 38.691330, 38.834175>,  <34.684570, 38.676380, 38.829159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284882, 38.691330, 38.834175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036040, -0.737145, -0.674773,
		-0.015972, -0.674700, 0.737919,
		-0.999223, 0.037371, 0.012542,
		33.985115, 38.702541, 38.837936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486340, 37.976650, 38.742832>,  <34.684570, 38.676380, 38.829159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486340, 37.976650, 38.742832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155468, 38.194687, 38.688202>,  <33.956944, 38.325508, 38.655426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155468, 38.194687, 38.688202>,  <34.486340, 37.976650, 38.742832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155468, 38.194687, 38.688202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365533, -0.706528, -0.605973,
		-0.426801, -0.451328, 0.783673,
		-0.827180, 0.545088, -0.136572,
		33.907314, 38.358215, 38.647232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962303, 37.521465, 38.944885>,  <34.486340, 37.976650, 38.742832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962303, 37.521465, 38.944885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812794, 37.792049, 38.691051>,  <33.723087, 37.954399, 38.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812794, 37.792049, 38.691051>,  <33.962303, 37.521465, 38.944885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812794, 37.792049, 38.691051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617686, -0.691925, -0.373770,
		-0.691925, 0.252270, 0.676461,
		0.373770, -0.676461, 0.634584,
		33.700665, 37.994987, 38.500675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227196, 37.521378, 38.925156>,  <33.962303, 37.521465, 38.944885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227196, 37.521378, 38.925156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316689, 37.668026, 38.563927>,  <33.370384, 37.756016, 38.347191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316689, 37.668026, 38.563927>,  <33.227196, 37.521378, 38.925156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316689, 37.668026, 38.563927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561403, -0.708935, -0.426894,
		-0.796725, 0.602495, 0.047210,
		0.223733, 0.366621, -0.903068,
		33.383808, 37.778011, 38.293007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397373, 36.674549, 38.756454>,  <33.227196, 37.521378, 38.925156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397373, 36.674549, 38.756454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461922, 36.284885, 38.819675>,  <33.500652, 36.051086, 38.857609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461922, 36.284885, 38.819675>,  <33.397373, 36.674549, 38.756454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461922, 36.284885, 38.819675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975763, 0.133508, -0.173384,
		0.147802, 0.182199, 0.972090,
		0.161372, -0.974156, 0.158050,
		33.510334, 35.992638, 38.867092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919548, 36.102016, 38.575039>,  <33.397373, 36.674549, 38.756454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919548, 36.102016, 38.575039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614685, 35.857803, 38.661167>,  <32.431767, 35.711273, 38.712845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614685, 35.857803, 38.661167>,  <32.919548, 36.102016, 38.575039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614685, 35.857803, 38.661167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009704, 0.343329, 0.939165,
		-0.647319, 0.713702, -0.267595,
		-0.762157, -0.610537, 0.215317,
		32.386040, 35.674641, 38.725761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254047, 36.392975, 38.740196>,  <32.919548, 36.102016, 38.575039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254047, 36.392975, 38.740196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238331, 36.049126, 38.943962>,  <32.228901, 35.842815, 39.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238331, 36.049126, 38.943962>,  <32.254047, 36.392975, 38.740196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238331, 36.049126, 38.943962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000304, 0.509815, 0.860284,
		-0.999228, 0.033647, -0.020293,
		-0.039292, -0.859626, 0.509411,
		32.226543, 35.791237, 39.096786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720675, 36.367313, 39.364414>,  <32.254047, 36.392975, 38.740196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720675, 36.367313, 39.364414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021435, 36.117462, 39.448780>,  <32.201889, 35.967552, 39.499401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021435, 36.117462, 39.448780>,  <31.720675, 36.367313, 39.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021435, 36.117462, 39.448780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061796, 0.385288, 0.920725,
		-0.656374, -0.679259, 0.328298,
		0.751900, -0.624628, 0.210918,
		32.247005, 35.930073, 39.512054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394085, 35.992878, 39.872791>,  <31.720675, 36.367313, 39.364414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394085, 35.992878, 39.872791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790812, 35.949390, 39.899559>,  <32.028847, 35.923298, 39.915619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790812, 35.949390, 39.899559>,  <31.394085, 35.992878, 39.872791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790812, 35.949390, 39.899559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027221, 0.332024, 0.942878,
		-0.124732, -0.936984, 0.326348,
		0.991817, -0.108723, 0.066920,
		32.088356, 35.916775, 39.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488192, 35.734444, 40.577152>,  <31.394085, 35.992878, 39.872791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488192, 35.734444, 40.577152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841261, 35.887085, 40.467415>,  <32.053104, 35.978672, 40.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841261, 35.887085, 40.467415>,  <31.488192, 35.734444, 40.577152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841261, 35.887085, 40.467415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107692, 0.403966, 0.908413,
		0.457481, -0.831376, 0.315474,
		0.882674, 0.381608, -0.274340,
		32.106064, 36.001568, 40.385113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831511, 35.649254, 41.152470>,  <31.488192, 35.734444, 40.577152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831511, 35.649254, 41.152470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 35.919735, 40.951645>,  <32.176571, 36.082024, 40.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047173, 35.919735, 40.951645>,  <31.831511, 35.649254, 41.152470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047173, 35.919735, 40.951645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062595, 0.562306, 0.824557,
		0.839879, -0.475989, 0.260842,
		0.539153, 0.676201, -0.502063,
		32.208920, 36.122597, 40.801025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496956, 35.783031, 41.532681>,  <31.831511, 35.649254, 41.152470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496956, 35.783031, 41.532681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490391, 36.093864, 41.281006>,  <32.486450, 36.280365, 41.130001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490391, 36.093864, 41.281006>,  <32.496956, 35.783031, 41.532681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490391, 36.093864, 41.281006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195353, 0.619639, 0.760188,
		0.980596, -0.110435, -0.161976,
		-0.016415, 0.777079, -0.629189,
		32.485466, 36.326988, 41.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052105, 36.265610, 41.720913>,  <32.496956, 35.783031, 41.532681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052105, 36.265610, 41.720913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793739, 36.495007, 41.519360>,  <32.638718, 36.632645, 41.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793739, 36.495007, 41.519360>,  <33.052105, 36.265610, 41.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793739, 36.495007, 41.519360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191377, 0.760610, 0.620361,
		0.739030, 0.304269, -0.601044,
		-0.645917, 0.573492, -0.503883,
		32.599964, 36.667053, 41.368195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348328, 36.909431, 41.600506>,  <33.052105, 36.265610, 41.720913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348328, 36.909431, 41.600506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950844, 36.952957, 41.589859>,  <32.712353, 36.979073, 41.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950844, 36.952957, 41.589859>,  <33.348328, 36.909431, 41.600506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950844, 36.952957, 41.589859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081213, 0.863395, 0.497949,
		0.077164, 0.492653, -0.866798,
		-0.993705, 0.108819, -0.026613,
		32.652733, 36.985603, 41.581875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260143, 37.651592, 41.510239>,  <33.348328, 36.909431, 41.600506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260143, 37.651592, 41.510239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909515, 37.517494, 41.648365>,  <32.699139, 37.437035, 41.731239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909515, 37.517494, 41.648365>,  <33.260143, 37.651592, 41.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909515, 37.517494, 41.648365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074523, 0.803388, 0.590775,
		-0.475474, 0.492120, -0.729207,
		-0.876567, -0.335241, 0.345316,
		32.646545, 37.416924, 41.751961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915405, 38.250420, 41.826157>,  <33.260143, 37.651592, 41.510239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915405, 38.250420, 41.826157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730568, 37.949486, 42.013973>,  <32.619667, 37.768925, 42.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730568, 37.949486, 42.013973>,  <32.915405, 38.250420, 41.826157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730568, 37.949486, 42.013973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141267, 0.585138, 0.798534,
		-0.875510, 0.302664, -0.376666,
		-0.462090, -0.752335, 0.469538,
		32.591942, 37.723785, 42.154835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387211, 38.486153, 42.247276>,  <32.915405, 38.250420, 41.826157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387211, 38.486153, 42.247276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480343, 38.126106, 42.394566>,  <32.536224, 37.910080, 42.482941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480343, 38.126106, 42.394566>,  <32.387211, 38.486153, 42.247276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480343, 38.126106, 42.394566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226148, 0.418361, 0.879677,
		-0.945858, -0.121544, 0.300967,
		0.232832, -0.900112, 0.368223,
		32.550194, 37.856071, 42.505032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291828, 38.566383, 42.890625>,  <32.387211, 38.486153, 42.247276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291828, 38.566383, 42.890625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478085, 38.212479, 42.898335>,  <32.589836, 38.000134, 42.902958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478085, 38.212479, 42.898335>,  <32.291828, 38.566383, 42.890625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478085, 38.212479, 42.898335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230668, 0.142362, 0.962562,
		-0.854385, -0.443760, 0.270376,
		0.465637, -0.884766, 0.019270,
		32.617775, 37.947048, 42.904114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013123, 38.087940, 43.455952>,  <32.291828, 38.566383, 42.890625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013123, 38.087940, 43.455952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365814, 37.924755, 43.361198>,  <32.577431, 37.826843, 43.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365814, 37.924755, 43.361198>,  <32.013123, 38.087940, 43.455952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365814, 37.924755, 43.361198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291106, 0.075383, 0.953716,
		-0.371228, -0.909879, 0.185229,
		0.881729, -0.407968, -0.236886,
		32.630333, 37.802364, 43.290131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248055, 37.594273, 44.013279>,  <32.013123, 38.087940, 43.455952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248055, 37.594273, 44.013279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576515, 37.702530, 43.812294>,  <32.773590, 37.767483, 43.691704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576515, 37.702530, 43.812294>,  <32.248055, 37.594273, 44.013279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576515, 37.702530, 43.812294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487047, 0.126616, 0.864149,
		0.297495, -0.954317, -0.027845,
		0.821147, 0.270642, -0.502465,
		32.822861, 37.783722, 43.661556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751255, 37.308765, 44.366913>,  <32.248055, 37.594273, 44.013279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751255, 37.308765, 44.366913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944050, 37.595844, 44.165874>,  <33.059727, 37.768089, 44.045250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944050, 37.595844, 44.165874>,  <32.751255, 37.308765, 44.366913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944050, 37.595844, 44.165874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546902, 0.201727, 0.812530,
		0.684536, -0.666499, -0.295279,
		0.481985, 0.717694, -0.502599,
		33.088646, 37.811153, 44.015095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341583, 37.222446, 44.633240>,  <32.751255, 37.308765, 44.366913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341583, 37.222446, 44.633240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345402, 37.583450, 44.461014>,  <33.347694, 37.800053, 44.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345402, 37.583450, 44.461014>,  <33.341583, 37.222446, 44.633240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345402, 37.583450, 44.461014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386534, 0.393788, 0.833980,
		0.922226, -0.174391, -0.345090,
		0.009547, 0.902507, -0.430569,
		33.348267, 37.854202, 44.331844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990849, 37.497677, 44.756443>,  <33.341583, 37.222446, 44.633240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990849, 37.497677, 44.756443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768890, 37.825413, 44.698792>,  <33.635715, 38.022053, 44.664200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768890, 37.825413, 44.698792>,  <33.990849, 37.497677, 44.756443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768890, 37.825413, 44.698792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250815, 0.329957, 0.910066,
		0.793209, 0.468843, -0.388594,
		-0.554897, 0.819338, -0.144132,
		33.602421, 38.071213, 44.655552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416821, 38.023396, 44.888588>,  <33.990849, 37.497677, 44.756443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416821, 38.023396, 44.888588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052528, 38.185905, 44.918282>,  <33.833954, 38.283413, 44.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052528, 38.185905, 44.918282>,  <34.416821, 38.023396, 44.888588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052528, 38.185905, 44.918282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218928, 0.322493, 0.920906,
		0.350204, 0.854948, -0.382650,
		-0.910729, 0.406278, 0.074234,
		33.779308, 38.307789, 44.940552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475613, 38.808571, 45.052071>,  <34.416821, 38.023396, 44.888588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475613, 38.808571, 45.052071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112183, 38.700275, 45.179306>,  <33.894123, 38.635300, 45.255650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112183, 38.700275, 45.179306>,  <34.475613, 38.808571, 45.052071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112183, 38.700275, 45.179306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241454, 0.280996, 0.928839,
		-0.340856, 0.920729, -0.189936,
		-0.908580, -0.270739, 0.318093,
		33.839607, 38.619053, 45.274734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197155, 39.391140, 45.358234>,  <34.475613, 38.808571, 45.052071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197155, 39.391140, 45.358234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027912, 39.074528, 45.534626>,  <33.926365, 38.884560, 45.640461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027912, 39.074528, 45.534626>,  <34.197155, 39.391140, 45.358234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027912, 39.074528, 45.534626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200649, 0.392752, 0.897488,
		-0.883582, 0.468219, -0.007358,
		-0.423111, -0.791528, 0.440977,
		33.900978, 38.837070, 45.666920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791309, 39.696804, 45.855221>,  <34.197155, 39.391140, 45.358234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791309, 39.696804, 45.855221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849178, 39.314690, 45.958366>,  <33.883900, 39.085419, 46.020252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849178, 39.314690, 45.958366>,  <33.791309, 39.696804, 45.855221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849178, 39.314690, 45.958366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101164, 0.273521, 0.956531,
		-0.984295, -0.112297, 0.136212,
		0.144672, -0.955288, 0.257864,
		33.892582, 39.028103, 46.035725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415993, 39.555641, 46.510643>,  <33.791309, 39.696804, 45.855221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415993, 39.555641, 46.510643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628571, 39.217319, 46.529362>,  <33.756115, 39.014328, 46.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628571, 39.217319, 46.529362>,  <33.415993, 39.555641, 46.510643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628571, 39.217319, 46.529362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056598, 0.019672, 0.998203,
		-0.845202, -0.533135, -0.037416,
		0.531441, -0.845801, 0.046801,
		33.788002, 38.963577, 46.543404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059471, 39.198940, 46.944313>,  <33.415993, 39.555641, 46.510643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059471, 39.198940, 46.944313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425549, 39.037735, 46.944775>,  <33.645195, 38.941013, 46.945053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425549, 39.037735, 46.944775>,  <33.059471, 39.198940, 46.944313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425549, 39.037735, 46.944775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018627, -0.039430, 0.999049,
		-0.402585, -0.914344, -0.043592,
		0.915193, -0.403014, 0.001157,
		33.700108, 38.916832, 46.945122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014435, 38.468487, 47.179657>,  <33.059471, 39.198940, 46.944313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014435, 38.468487, 47.179657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387589, 38.595047, 47.248489>,  <33.611481, 38.670982, 47.289791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387589, 38.595047, 47.248489>,  <33.014435, 38.468487, 47.179657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387589, 38.595047, 47.248489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186873, 0.016761, 0.982241,
		0.307896, -0.948478, 0.074762,
		0.932887, 0.316399, 0.172085,
		33.667454, 38.689968, 47.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263309, 38.001347, 47.760002>,  <33.014435, 38.468487, 47.179657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263309, 38.001347, 47.760002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519176, 38.307827, 47.735458>,  <33.672695, 38.491714, 47.720730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519176, 38.307827, 47.735458>,  <33.263309, 38.001347, 47.760002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519176, 38.307827, 47.735458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096390, 0.159161, 0.982536,
		0.762586, -0.622579, 0.175664,
		0.639666, 0.766200, -0.061364,
		33.711075, 38.537685, 47.717049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703423, 37.946087, 48.372372>,  <33.263309, 38.001347, 47.760002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703423, 37.946087, 48.372372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786491, 38.316242, 48.245552>,  <33.836334, 38.538338, 48.169460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786491, 38.316242, 48.245552>,  <33.703423, 37.946087, 48.372372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786491, 38.316242, 48.245552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092772, 0.304024, 0.948136,
		0.973790, -0.226314, -0.022714,
		0.207671, 0.925393, -0.317051,
		33.848793, 38.593861, 48.150436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396893, 38.257999, 48.707367>,  <33.703423, 37.946087, 48.372372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396893, 38.257999, 48.707367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159248, 38.550308, 48.572899>,  <34.016663, 38.725693, 48.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159248, 38.550308, 48.572899>,  <34.396893, 38.257999, 48.707367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159248, 38.550308, 48.572899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001298, 0.418791, 0.908082,
		0.804383, 0.539064, -0.249757,
		-0.594110, 0.730770, -0.336169,
		33.981014, 38.769539, 48.472050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020763, 38.376305, 48.524067>,  <34.396893, 38.257999, 48.707367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020763, 38.376305, 48.524067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383450, 38.216793, 48.578979>,  <35.601063, 38.121086, 48.611927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383450, 38.216793, 48.578979>,  <35.020763, 38.376305, 48.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383450, 38.216793, 48.578979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148443, -0.606433, -0.781155,
		0.394758, 0.687907, -0.609057,
		0.906714, -0.398777, 0.137279,
		35.655464, 38.097160, 48.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432735, 38.565842, 47.921162>,  <35.020763, 38.376305, 48.524067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432735, 38.565842, 47.921162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605904, 38.244213, 48.084160>,  <35.709805, 38.051235, 48.181957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605904, 38.244213, 48.084160>,  <35.432735, 38.565842, 47.921162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605904, 38.244213, 48.084160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025240, -0.441063, -0.897121,
		0.901081, 0.398664, -0.170649,
		0.432916, -0.804071, 0.407496,
		35.735779, 38.002991, 48.206409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885864, 38.366714, 47.383827>,  <35.432735, 38.565842, 47.921162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885864, 38.366714, 47.383827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870888, 38.049030, 47.626423>,  <35.861900, 37.858421, 47.771980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870888, 38.049030, 47.626423>,  <35.885864, 38.366714, 47.383827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870888, 38.049030, 47.626423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014555, -0.606416, -0.795015,
		0.999193, -0.038593, 0.011145,
		-0.037441, -0.794211, 0.606488,
		35.859657, 37.810768, 47.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421040, 37.862442, 47.223293>,  <35.885864, 38.366714, 47.383827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421040, 37.862442, 47.223293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152996, 37.637302, 47.416855>,  <35.992172, 37.502216, 47.532990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152996, 37.637302, 47.416855>,  <36.421040, 37.862442, 47.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152996, 37.637302, 47.416855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056849, -0.611090, -0.789517,
		0.740086, -0.556569, 0.377496,
		-0.670105, -0.562851, 0.483899,
		35.951965, 37.468449, 47.562023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719597, 37.235687, 47.241009>,  <36.421040, 37.862442, 47.223293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719597, 37.235687, 47.241009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325382, 37.179344, 47.278683>,  <36.088852, 37.145538, 47.301289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325382, 37.179344, 47.278683>,  <36.719597, 37.235687, 47.241009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325382, 37.179344, 47.278683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016528, -0.473305, -0.880743,
		0.168638, -0.869564, 0.464133,
		-0.985539, -0.140856, 0.094190,
		36.029720, 37.137089, 47.306938>
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
