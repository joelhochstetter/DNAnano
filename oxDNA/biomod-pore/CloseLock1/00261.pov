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
	<24.382910, 34.507950, 34.867840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186954, 34.795269, 35.065449>,  <24.069382, 34.967659, 35.184013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186954, 34.795269, 35.065449>,  <24.382910, 34.507950, 34.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186954, 34.795269, 35.065449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431412, -0.692171, 0.578604,
		0.757557, 0.070326, 0.648970,
		-0.489890, 0.718299, 0.494019,
		24.039988, 35.010757, 35.213654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937449, 34.791183, 34.420540>,  <24.382910, 34.507950, 34.867840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937449, 34.791183, 34.420540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897385, 34.410160, 34.305576>,  <24.873346, 34.181545, 34.236599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897385, 34.410160, 34.305576>,  <24.937449, 34.791183, 34.420540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897385, 34.410160, 34.305576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775224, 0.106363, -0.622667,
		0.623695, -0.285176, 0.727791,
		-0.100160, -0.952555, -0.287413,
		24.867336, 34.124393, 34.219353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604412, 34.567692, 34.303017>,  <24.937449, 34.791183, 34.420540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604412, 34.567692, 34.303017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394732, 34.305325, 34.085766>,  <25.268923, 34.147903, 33.955418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394732, 34.305325, 34.085766>,  <25.604412, 34.567692, 34.303017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394732, 34.305325, 34.085766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666096, 0.081563, -0.741393,
		0.530593, -0.750411, 0.394150,
		-0.524201, -0.655920, -0.543122,
		25.237471, 34.108547, 33.922829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011168, 33.997543, 33.930237>,  <25.604412, 34.567692, 34.303017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011168, 33.997543, 33.930237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690550, 34.079636, 33.705593>,  <25.498178, 34.128891, 33.570808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690550, 34.079636, 33.705593>,  <26.011168, 33.997543, 33.930237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690550, 34.079636, 33.705593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596105, 0.200904, -0.777365,
		-0.046711, -0.957871, -0.283373,
		-0.801546, 0.205232, -0.561608,
		25.450087, 34.141205, 33.537109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462875, 33.862804, 34.407600>,  <26.011168, 33.997543, 33.930237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462875, 33.862804, 34.407600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844332, 33.805260, 34.301865>,  <27.073206, 33.770733, 34.238422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844332, 33.805260, 34.301865>,  <26.462875, 33.862804, 34.407600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844332, 33.805260, 34.301865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286783, 0.168052, 0.943141,
		-0.091262, -0.975224, 0.201519,
		0.953639, -0.143865, -0.264341,
		27.130423, 33.762100, 34.222561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669657, 33.204929, 34.761261>,  <26.462875, 33.862804, 34.407600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669657, 33.204929, 34.761261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967939, 33.459721, 34.683102>,  <27.146910, 33.612595, 34.636208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967939, 33.459721, 34.683102>,  <26.669657, 33.204929, 34.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967939, 33.459721, 34.683102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333762, -0.103315, 0.936978,
		0.576647, -0.763928, -0.289642,
		0.745708, 0.636978, -0.195394,
		27.191652, 33.650814, 34.624485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246107, 32.979023, 35.171448>,  <26.669657, 33.204929, 34.761261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246107, 32.979023, 35.171448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281561, 33.371758, 35.104351>,  <27.302834, 33.607399, 35.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281561, 33.371758, 35.104351>,  <27.246107, 32.979023, 35.171448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281561, 33.371758, 35.104351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408417, 0.117776, 0.905165,
		0.908482, -0.148737, -0.390560,
		0.088633, 0.981838, -0.167744,
		27.308151, 33.666309, 35.054028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982183, 33.225029, 35.348145>,  <27.246107, 32.979023, 35.171448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982183, 33.225029, 35.348145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796743, 33.578598, 35.323601>,  <27.685480, 33.790737, 35.308876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796743, 33.578598, 35.323601>,  <27.982183, 33.225029, 35.348145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796743, 33.578598, 35.323601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545319, 0.339218, 0.766523,
		0.698357, 0.321901, -0.639279,
		-0.463599, 0.883918, -0.061357,
		27.657663, 33.843773, 35.305195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424990, 33.752472, 35.340977>,  <27.982183, 33.225029, 35.348145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424990, 33.752472, 35.340977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080351, 33.911354, 35.467392>,  <27.873568, 34.006683, 35.543240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080351, 33.911354, 35.467392>,  <28.424990, 33.752472, 35.340977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080351, 33.911354, 35.467392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483373, 0.452026, 0.749682,
		0.154918, 0.798688, -0.581461,
		-0.861597, 0.397202, 0.316038,
		27.821871, 34.030514, 35.562202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571369, 34.432110, 35.537544>,  <28.424990, 33.752472, 35.340977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571369, 34.432110, 35.537544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214022, 34.379673, 35.709454>,  <27.999613, 34.348209, 35.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214022, 34.379673, 35.709454>,  <28.571369, 34.432110, 35.537544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214022, 34.379673, 35.709454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245864, 0.657974, 0.711774,
		-0.376088, 0.741543, -0.555583,
		-0.893369, -0.131092, 0.429775,
		27.946011, 34.340343, 35.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277018, 35.051304, 35.531937>,  <28.571369, 34.432110, 35.537544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277018, 35.051304, 35.531937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124723, 34.849792, 35.842098>,  <28.033346, 34.728886, 36.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124723, 34.849792, 35.842098>,  <28.277018, 35.051304, 35.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124723, 34.849792, 35.842098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321654, 0.714036, 0.621845,
		-0.866937, 0.486170, -0.109817,
		-0.380735, -0.503778, 0.775402,
		28.010502, 34.698658, 36.074718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024143, 35.497028, 35.965488>,  <28.277018, 35.051304, 35.531937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024143, 35.497028, 35.965488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045626, 35.185532, 36.215508>,  <28.058516, 34.998634, 36.365517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045626, 35.185532, 36.215508>,  <28.024143, 35.497028, 35.965488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045626, 35.185532, 36.215508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197730, 0.621848, 0.757765,
		-0.978784, 0.082895, 0.187376,
		0.053704, -0.778739, 0.625046,
		28.061737, 34.951912, 36.403023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776127, 35.782997, 36.595200>,  <28.024143, 35.497028, 35.965488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776127, 35.782997, 36.595200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987627, 35.459244, 36.697433>,  <28.114527, 35.264992, 36.758774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987627, 35.459244, 36.697433>,  <27.776127, 35.782997, 36.595200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987627, 35.459244, 36.697433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271664, 0.446660, 0.852463,
		-0.804127, -0.381309, 0.456052,
		0.528753, -0.809381, 0.255583,
		28.146254, 35.216431, 36.774109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841932, 35.802147, 37.378033>,  <27.776127, 35.782997, 36.595200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841932, 35.802147, 37.378033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135406, 35.557690, 37.259235>,  <28.311491, 35.411015, 37.187958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135406, 35.557690, 37.259235>,  <27.841932, 35.802147, 37.378033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135406, 35.557690, 37.259235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571357, 0.318312, 0.756457,
		-0.367771, -0.724690, 0.582725,
		0.733686, -0.611148, -0.296991,
		28.355513, 35.374344, 37.170139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049824, 35.269302, 37.907047>,  <27.841932, 35.802147, 37.378033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049824, 35.269302, 37.907047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372080, 35.301510, 37.672283>,  <28.565434, 35.320835, 37.531425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372080, 35.301510, 37.672283>,  <28.049824, 35.269302, 37.907047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372080, 35.301510, 37.672283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421607, 0.618044, 0.663528,
		0.416162, -0.782009, 0.463974,
		0.805641, 0.080521, -0.586907,
		28.613771, 35.325665, 37.496212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688702, 35.142300, 38.342350>,  <28.049824, 35.269302, 37.907047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688702, 35.142300, 38.342350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815981, 35.333420, 38.014824>,  <28.892349, 35.448093, 37.818310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815981, 35.333420, 38.014824>,  <28.688702, 35.142300, 38.342350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815981, 35.333420, 38.014824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617516, 0.550880, 0.561431,
		0.719321, -0.684276, -0.119762,
		0.318199, 0.477804, -0.818811,
		28.911440, 35.476761, 37.769180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387590, 35.295753, 38.575069>,  <28.688702, 35.142300, 38.342350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387590, 35.295753, 38.575069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328270, 35.532940, 38.258488>,  <29.292677, 35.675251, 38.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328270, 35.532940, 38.258488>,  <29.387590, 35.295753, 38.575069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328270, 35.532940, 38.258488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560478, 0.709762, 0.426735,
		0.814783, -0.380307, -0.437602,
		-0.148303, 0.592962, -0.791455,
		29.283779, 35.710827, 38.021049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983301, 35.498837, 38.313698>,  <29.387590, 35.295753, 38.575069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983301, 35.498837, 38.313698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744173, 35.799091, 38.201160>,  <29.600697, 35.979244, 38.133640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744173, 35.799091, 38.201160>,  <29.983301, 35.498837, 38.313698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744173, 35.799091, 38.201160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586879, 0.648900, 0.484253,
		0.546061, 0.124384, -0.828460,
		-0.597821, 0.750638, -0.281340,
		29.564827, 36.024284, 38.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382940, 36.040222, 38.371284>,  <29.983301, 35.498837, 38.313698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382940, 36.040222, 38.371284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042337, 36.243202, 38.318474>,  <29.837976, 36.364990, 38.286785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042337, 36.243202, 38.318474>,  <30.382940, 36.040222, 38.371284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042337, 36.243202, 38.318474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419624, 0.810478, 0.408706,
		0.314404, 0.292613, -0.903066,
		-0.851508, 0.507447, -0.132030,
		29.786884, 36.395435, 38.278866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493473, 36.722561, 37.936012>,  <30.382940, 36.040222, 38.371284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493473, 36.722561, 37.936012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177841, 36.751244, 38.180050>,  <29.988462, 36.768456, 38.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177841, 36.751244, 38.180050>,  <30.493473, 36.722561, 37.936012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177841, 36.751244, 38.180050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368121, 0.850280, 0.376180,
		-0.491771, 0.521423, -0.697337,
		-0.789081, 0.071710, 0.610090,
		29.941116, 36.772755, 38.363075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272209, 37.383976, 37.995243>,  <30.493473, 36.722561, 37.936012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272209, 37.383976, 37.995243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102749, 37.247463, 38.330875>,  <30.001072, 37.165558, 38.532253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102749, 37.247463, 38.330875>,  <30.272209, 37.383976, 37.995243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102749, 37.247463, 38.330875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408035, 0.755110, 0.513144,
		-0.808720, 0.559767, -0.180649,
		-0.423651, -0.341278, 0.839076,
		29.975655, 37.145081, 38.582600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909933, 37.962605, 38.285583>,  <30.272209, 37.383976, 37.995243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909933, 37.962605, 38.285583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974960, 37.692303, 38.573174>,  <30.013977, 37.530121, 38.745728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974960, 37.692303, 38.573174>,  <29.909933, 37.962605, 38.285583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974960, 37.692303, 38.573174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389230, 0.713500, 0.582595,
		-0.906681, 0.185135, 0.379017,
		0.162571, -0.675753, 0.718977,
		30.023731, 37.489578, 38.788868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726616, 38.278740, 38.869335>,  <29.909933, 37.962605, 38.285583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726616, 38.278740, 38.869335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983419, 37.998928, 38.994865>,  <30.137501, 37.831043, 39.070183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983419, 37.998928, 38.994865>,  <29.726616, 38.278740, 38.869335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983419, 37.998928, 38.994865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388830, 0.649847, 0.653077,
		-0.660785, -0.297256, 0.689204,
		0.642008, -0.699527, 0.313828,
		30.176022, 37.789070, 39.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733150, 38.385124, 39.624195>,  <29.726616, 38.278740, 38.869335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733150, 38.385124, 39.624195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082478, 38.204063, 39.552162>,  <30.292074, 38.095428, 39.508942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082478, 38.204063, 39.552162>,  <29.733150, 38.385124, 39.624195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082478, 38.204063, 39.552162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414858, 0.497267, 0.761983,
		-0.255363, -0.740160, 0.622056,
		0.873317, -0.452647, -0.180078,
		30.344473, 38.068268, 39.498138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020052, 38.230686, 40.296490>,  <29.733150, 38.385124, 39.624195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020052, 38.230686, 40.296490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326153, 38.208481, 40.039955>,  <30.509813, 38.195156, 39.886036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326153, 38.208481, 40.039955>,  <30.020052, 38.230686, 40.296490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326153, 38.208481, 40.039955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560635, 0.547085, 0.621600,
		0.316355, -0.835234, 0.449783,
		0.765250, -0.055518, -0.641334,
		30.555727, 38.191826, 39.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620005, 38.102604, 40.676888>,  <30.020052, 38.230686, 40.296490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620005, 38.102604, 40.676888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737213, 38.293728, 40.345627>,  <30.807539, 38.408401, 40.146870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737213, 38.293728, 40.345627>,  <30.620005, 38.102604, 40.676888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737213, 38.293728, 40.345627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481969, 0.674252, 0.559545,
		0.825739, -0.563103, -0.032719,
		0.293021, 0.477807, -0.828154,
		30.825119, 38.437069, 40.097179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410656, 38.136524, 40.563015>,  <30.620005, 38.102604, 40.676888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410656, 38.136524, 40.563015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179090, 38.440407, 40.444557>,  <31.040152, 38.622738, 40.373482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179090, 38.440407, 40.444557>,  <31.410656, 38.136524, 40.563015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179090, 38.440407, 40.444557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447025, 0.599456, 0.663943,
		0.681929, 0.251982, -0.686642,
		-0.578914, 0.759709, -0.296144,
		31.005417, 38.668320, 40.355713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791264, 38.709579, 40.264122>,  <31.410656, 38.136524, 40.563015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791264, 38.709579, 40.264122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455387, 38.845745, 40.433372>,  <31.253860, 38.927444, 40.534924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455387, 38.845745, 40.433372>,  <31.791264, 38.709579, 40.264122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455387, 38.845745, 40.433372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542687, 0.555009, 0.630441,
		-0.020231, 0.759003, -0.650773,
		-0.839691, 0.340412, 0.423129,
		31.203480, 38.947868, 40.560310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801888, 39.453655, 40.427479>,  <31.791264, 38.709579, 40.264122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801888, 39.453655, 40.427479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555822, 39.284718, 40.693771>,  <31.408182, 39.183357, 40.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555822, 39.284718, 40.693771>,  <31.801888, 39.453655, 40.427479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555822, 39.284718, 40.693771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456778, 0.497323, 0.737580,
		-0.642594, 0.757825, -0.113020,
		-0.615164, -0.422340, 0.665735,
		31.371273, 39.158016, 40.893494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690140, 39.985313, 40.920097>,  <31.801888, 39.453655, 40.427479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690140, 39.985313, 40.920097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599710, 39.653194, 41.123856>,  <31.545452, 39.453922, 41.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599710, 39.653194, 41.123856>,  <31.690140, 39.985313, 40.920097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599710, 39.653194, 41.123856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457244, 0.371296, 0.808126,
		-0.860127, 0.415617, 0.295710,
		-0.226075, -0.830302, 0.509400,
		31.531887, 39.404102, 41.276676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394699, 40.064922, 40.885864>,  <31.690140, 39.985313, 40.920097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394699, 40.064922, 40.885864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469398, 39.825066, 40.574593>,  <32.514217, 39.681152, 40.387829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469398, 39.825066, 40.574593>,  <32.394699, 40.064922, 40.885864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469398, 39.825066, 40.574593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531930, 0.604233, -0.593256,
		0.825940, 0.524723, -0.206130,
		0.186745, -0.599641, -0.778176,
		32.525421, 39.645172, 40.341141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677532, 40.490383, 40.278160>,  <32.394699, 40.064922, 40.885864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677532, 40.490383, 40.278160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481331, 40.166107, 40.150299>,  <32.363609, 39.971542, 40.073582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481331, 40.166107, 40.150299>,  <32.677532, 40.490383, 40.278160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481331, 40.166107, 40.150299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595553, 0.579638, -0.556180,
		0.636176, -0.082438, -0.767127,
		-0.490506, -0.810693, -0.319656,
		32.334179, 39.922897, 40.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628254, 40.599728, 39.564312>,  <32.677532, 40.490383, 40.278160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628254, 40.599728, 39.564312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329258, 40.352364, 39.661331>,  <32.149860, 40.203945, 39.719543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329258, 40.352364, 39.661331>,  <32.628254, 40.599728, 39.564312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329258, 40.352364, 39.661331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628543, 0.540323, -0.559450,
		0.214916, -0.570634, -0.792583,
		-0.747492, -0.618408, 0.242544,
		32.105011, 40.166840, 39.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196037, 40.155872, 39.444626>,  <32.628254, 40.599728, 39.564312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196037, 40.155872, 39.444626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509251, 39.914928, 39.382637>,  <33.697178, 39.770363, 39.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509251, 39.914928, 39.382637>,  <33.196037, 40.155872, 39.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509251, 39.914928, 39.382637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346370, -0.215355, -0.913044,
		0.516605, 0.768626, -0.377270,
		0.783037, -0.602358, -0.154975,
		33.744164, 39.734222, 39.336143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369598, 40.230022, 38.746849>,  <33.196037, 40.155872, 39.444626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369598, 40.230022, 38.746849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500809, 39.871861, 38.867283>,  <33.579536, 39.656963, 38.939545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500809, 39.871861, 38.867283>,  <33.369598, 40.230022, 38.746849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500809, 39.871861, 38.867283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364284, -0.413966, -0.834224,
		0.871604, 0.163969, -0.461974,
		0.328029, -0.895403, 0.301083,
		33.599216, 39.603241, 38.957607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482128, 39.938442, 38.131882>,  <33.369598, 40.230022, 38.746849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482128, 39.938442, 38.131882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420204, 39.645248, 38.396839>,  <33.383049, 39.469334, 38.555813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420204, 39.645248, 38.396839>,  <33.482128, 39.938442, 38.131882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420204, 39.645248, 38.396839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535632, -0.501113, -0.679694,
		0.830140, -0.460024, -0.315033,
		-0.154808, -0.732983, 0.662398,
		33.373760, 39.425354, 38.595558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594788, 39.314587, 37.764538>,  <33.482128, 39.938442, 38.131882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594788, 39.314587, 37.764538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328407, 39.239059, 38.053219>,  <33.168579, 39.193741, 38.226429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328407, 39.239059, 38.053219>,  <33.594788, 39.314587, 37.764538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328407, 39.239059, 38.053219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557687, -0.516539, -0.649748,
		0.495475, -0.835185, 0.238685,
		-0.665950, -0.188822, 0.721704,
		33.128624, 39.182411, 38.269730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503250, 38.701908, 37.617325>,  <33.594788, 39.314587, 37.764538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503250, 38.701908, 37.617325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187721, 38.811390, 37.837452>,  <32.998405, 38.877079, 37.969528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187721, 38.811390, 37.837452>,  <33.503250, 38.701908, 37.617325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187721, 38.811390, 37.837452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604051, -0.510584, -0.611903,
		0.113503, -0.815101, 0.568090,
		-0.788821, 0.273703, 0.550316,
		32.951077, 38.893501, 38.002548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143433, 38.135536, 37.628479>,  <33.503250, 38.701908, 37.617325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143433, 38.135536, 37.628479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869297, 38.412827, 37.717701>,  <32.704815, 38.579201, 37.771233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869297, 38.412827, 37.717701>,  <33.143433, 38.135536, 37.628479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869297, 38.412827, 37.717701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687503, -0.514917, -0.512055,
		-0.240116, -0.504279, 0.829486,
		-0.685335, 0.693226, 0.223054,
		32.663696, 38.620796, 37.784618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641357, 37.783661, 38.036568>,  <33.143433, 38.135536, 37.628479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641357, 37.783661, 38.036568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467487, 38.116653, 37.899143>,  <32.363167, 38.316448, 37.816689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467487, 38.116653, 37.899143>,  <32.641357, 37.783661, 38.036568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467487, 38.116653, 37.899143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702082, -0.552165, -0.449661,
		-0.564041, 0.045761, 0.824478,
		-0.434671, 0.832478, -0.343572,
		32.337086, 38.366398, 37.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987068, 37.725208, 38.101219>,  <32.641357, 37.783661, 38.036568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987068, 37.725208, 38.101219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003189, 38.019989, 37.831322>,  <32.012863, 38.196857, 37.669384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003189, 38.019989, 37.831322>,  <31.987068, 37.725208, 38.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003189, 38.019989, 37.831322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755081, -0.419801, -0.503607,
		-0.654392, 0.529779, 0.539541,
		0.040301, 0.736954, -0.674740,
		32.015278, 38.241074, 37.628899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335464, 37.971054, 37.929668>,  <31.987068, 37.725208, 38.101219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335464, 37.971054, 37.929668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554962, 38.043118, 37.603130>,  <31.686661, 38.086357, 37.407207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554962, 38.043118, 37.603130>,  <31.335464, 37.971054, 37.929668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554962, 38.043118, 37.603130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709884, -0.415319, -0.568837,
		-0.441525, 0.891657, -0.100013,
		0.548745, 0.180158, -0.816347,
		31.719585, 38.097164, 37.358227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794180, 38.002872, 37.461704>,  <31.335464, 37.971054, 37.929668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794180, 38.002872, 37.461704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125259, 37.954521, 37.242504>,  <31.323908, 37.925510, 37.110985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125259, 37.954521, 37.242504>,  <30.794180, 38.002872, 37.461704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125259, 37.954521, 37.242504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539072, -0.442615, -0.716585,
		-0.155929, 0.888527, -0.431517,
		0.827700, -0.120882, -0.547996,
		31.373569, 37.918255, 37.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719366, 38.468380, 36.861351>,  <30.794180, 38.002872, 37.461704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719366, 38.468380, 36.861351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971653, 38.173359, 36.764843>,  <31.123026, 37.996346, 36.706940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971653, 38.173359, 36.764843>,  <30.719366, 38.468380, 36.861351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971653, 38.173359, 36.764843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624973, -0.298483, -0.721330,
		0.460003, 0.605743, -0.649209,
		0.630718, -0.737552, -0.241270,
		31.160868, 37.952095, 36.692463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660439, 38.442070, 36.140438>,  <30.719366, 38.468380, 36.861351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660439, 38.442070, 36.140438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833746, 38.082973, 36.172298>,  <30.937731, 37.867516, 36.191414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833746, 38.082973, 36.172298>,  <30.660439, 38.442070, 36.140438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833746, 38.082973, 36.172298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534048, -0.326920, -0.779689,
		0.725996, 0.295279, -0.621080,
		0.433269, -0.897738, 0.079650,
		30.963726, 37.813652, 36.196194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950102, 38.287876, 35.461540>,  <30.660439, 38.442070, 36.140438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950102, 38.287876, 35.461540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885172, 37.955353, 35.674171>,  <30.846214, 37.755840, 35.801750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885172, 37.955353, 35.674171>,  <30.950102, 38.287876, 35.461540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885172, 37.955353, 35.674171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441367, -0.420653, -0.792620,
		0.882522, -0.363284, -0.298629,
		-0.162327, -0.831309, 0.531578,
		30.836473, 37.705959, 35.833645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010462, 37.819111, 34.944691>,  <30.950102, 38.287876, 35.461540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010462, 37.819111, 34.944691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826300, 37.638447, 35.250378>,  <30.715803, 37.530048, 35.433788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826300, 37.638447, 35.250378>,  <31.010462, 37.819111, 34.944691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826300, 37.638447, 35.250378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524353, -0.556288, -0.644669,
		0.716297, -0.697529, 0.019288,
		-0.460405, -0.451661, 0.764219,
		30.688179, 37.502949, 35.479645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753954, 37.185818, 34.633938>,  <31.010462, 37.819111, 34.944691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753954, 37.185818, 34.633938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532169, 37.188076, 34.966816>,  <30.399099, 37.189430, 35.166542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532169, 37.188076, 34.966816>,  <30.753954, 37.185818, 34.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532169, 37.188076, 34.966816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676907, -0.584774, -0.447031,
		0.484119, -0.811177, 0.328056,
		-0.554460, 0.005647, 0.832191,
		30.365831, 37.189770, 35.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585028, 36.455681, 34.799820>,  <30.753954, 37.185818, 34.633938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585028, 36.455681, 34.799820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321327, 36.692738, 34.984932>,  <30.163107, 36.834972, 35.095997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321327, 36.692738, 34.984932>,  <30.585028, 36.455681, 34.799820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321327, 36.692738, 34.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751922, -0.518842, -0.406715,
		-0.000929, -0.616099, 0.787668,
		-0.659252, 0.592643, 0.462776,
		30.123552, 36.870529, 35.123764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182772, 36.035038, 35.195187>,  <30.585028, 36.455681, 34.799820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182772, 36.035038, 35.195187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964891, 36.362110, 35.120667>,  <29.834164, 36.558353, 35.075954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964891, 36.362110, 35.120667>,  <30.182772, 36.035038, 35.195187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964891, 36.362110, 35.120667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702733, -0.566263, -0.430712,
		-0.457675, -0.103693, 0.883052,
		-0.544701, 0.817676, -0.186296,
		29.801481, 36.607414, 35.064777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462530, 35.790001, 35.177273>,  <30.182772, 36.035038, 35.195187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462530, 35.790001, 35.177273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433788, 36.153675, 35.013214>,  <29.416542, 36.371880, 34.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433788, 36.153675, 35.013214>,  <29.462530, 35.790001, 35.177273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433788, 36.153675, 35.013214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669503, -0.348771, -0.655839,
		-0.739326, 0.227467, 0.633763,
		-0.071856, 0.909185, -0.410146,
		29.412231, 36.426430, 34.890171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718275, 35.848625, 35.104633>,  <29.462530, 35.790001, 35.177273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718275, 35.848625, 35.104633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940634, 36.086407, 34.872219>,  <29.074049, 36.229076, 34.732769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940634, 36.086407, 34.872219>,  <28.718275, 35.848625, 35.104633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940634, 36.086407, 34.872219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325448, -0.487550, -0.810172,
		-0.764893, 0.639470, -0.077564,
		0.555897, 0.594452, -0.581038,
		29.107403, 36.264744, 34.697906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246923, 36.153954, 34.610054>,  <28.718275, 35.848625, 35.104633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246923, 36.153954, 34.610054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628090, 36.138031, 34.489811>,  <28.856791, 36.128479, 34.417664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628090, 36.138031, 34.489811>,  <28.246923, 36.153954, 34.610054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628090, 36.138031, 34.489811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273623, -0.540149, -0.795845,
		-0.130697, 0.840628, -0.525608,
		0.952916, -0.039803, -0.300611,
		28.913965, 36.126091, 34.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136103, 36.329048, 33.846611>,  <28.246923, 36.153954, 34.610054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136103, 36.329048, 33.846611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493921, 36.161259, 33.908363>,  <28.708612, 36.060585, 33.945415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493921, 36.161259, 33.908363>,  <28.136103, 36.329048, 33.846611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493921, 36.161259, 33.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080619, -0.491136, -0.867344,
		0.439647, 0.763433, -0.473160,
		0.894545, -0.419471, 0.154379,
		28.762285, 36.035416, 33.954678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474306, 36.339195, 33.188511>,  <28.136103, 36.329048, 33.846611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474306, 36.339195, 33.188511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682104, 36.065643, 33.393425>,  <28.806784, 35.901512, 33.516373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682104, 36.065643, 33.393425>,  <28.474306, 36.339195, 33.188511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682104, 36.065643, 33.393425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036670, -0.616821, -0.786249,
		0.853686, 0.389667, -0.345513,
		0.519495, -0.683880, 0.512282,
		28.837952, 35.860477, 33.547112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067928, 36.149593, 32.698772>,  <28.474306, 36.339195, 33.188511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067928, 36.149593, 32.698772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002796, 35.859932, 32.966827>,  <28.963717, 35.686134, 33.127659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002796, 35.859932, 32.966827>,  <29.067928, 36.149593, 32.698772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002796, 35.859932, 32.966827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075719, -0.686372, -0.723298,
		0.983744, -0.067034, 0.166596,
		-0.162832, -0.724155, 0.670138,
		28.953947, 35.642685, 33.167870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491402, 35.604679, 32.432346>,  <29.067928, 36.149593, 32.698772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491402, 35.604679, 32.432346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252943, 35.409664, 32.687508>,  <29.109869, 35.292656, 32.840603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252943, 35.409664, 32.687508>,  <29.491402, 35.604679, 32.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252943, 35.409664, 32.687508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157050, -0.708363, -0.688155,
		0.787366, -0.510423, 0.345720,
		-0.596145, -0.487535, 0.637903,
		29.074099, 35.263405, 32.878880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820229, 34.874859, 32.575317>,  <29.491402, 35.604679, 32.432346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820229, 34.874859, 32.575317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425705, 34.925167, 32.617992>,  <29.188992, 34.955353, 32.643597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425705, 34.925167, 32.617992>,  <29.820229, 34.874859, 32.575317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425705, 34.925167, 32.617992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162212, -0.856566, -0.489880,
		0.029770, -0.500477, 0.865238,
		-0.986307, 0.125768, 0.106683,
		29.129812, 34.962898, 32.649998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519274, 35.001099, 32.219059>,  <29.820229, 34.874859, 32.575317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519274, 35.001099, 32.219059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796211, 35.272419, 32.120617>,  <30.962374, 35.435211, 32.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796211, 35.272419, 32.120617>,  <30.519274, 35.001099, 32.219059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796211, 35.272419, 32.120617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589195, -0.334537, 0.735483,
		0.416549, -0.654210, -0.631266,
		0.692341, 0.678303, -0.246106,
		31.003914, 35.475910, 32.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127651, 34.676849, 32.237152>,  <30.519274, 35.001099, 32.219059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127651, 34.676849, 32.237152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196815, 35.069454, 32.270004>,  <31.238314, 35.305016, 32.289715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196815, 35.069454, 32.270004>,  <31.127651, 34.676849, 32.237152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196815, 35.069454, 32.270004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782146, -0.187509, 0.594211,
		0.598622, -0.038511, -0.800105,
		0.172911, 0.981507, 0.082126,
		31.248690, 35.363907, 32.294643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813509, 34.839195, 32.124035>,  <31.127651, 34.676849, 32.237152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813509, 34.839195, 32.124035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691776, 35.153919, 32.338814>,  <31.618736, 35.342754, 32.467682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691776, 35.153919, 32.338814>,  <31.813509, 34.839195, 32.124035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691776, 35.153919, 32.338814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736453, -0.163173, 0.656515,
		0.604169, 0.595231, -0.529792,
		-0.304330, 0.786813, 0.536944,
		31.600477, 35.389961, 32.499897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393894, 35.261887, 32.381134>,  <31.813509, 34.839195, 32.124035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393894, 35.261887, 32.381134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100052, 35.420567, 32.601307>,  <31.923746, 35.515774, 32.733410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100052, 35.420567, 32.601307>,  <32.393894, 35.261887, 32.381134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100052, 35.420567, 32.601307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647264, 0.166459, 0.743869,
		0.203467, 0.902730, -0.379052,
		-0.734609, 0.396699, 0.550435,
		31.879669, 35.539577, 32.766438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692520, 35.834648, 32.748234>,  <32.393894, 35.261887, 32.381134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692520, 35.834648, 32.748234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361641, 35.723427, 32.943550>,  <32.163113, 35.656693, 33.060738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361641, 35.723427, 32.943550>,  <32.692520, 35.834648, 32.748234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361641, 35.723427, 32.943550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404023, 0.309612, 0.860759,
		-0.390519, 0.909299, -0.143769,
		-0.827200, -0.278057, 0.488287,
		32.113480, 35.640011, 33.090034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381859, 36.444752, 33.220615>,  <32.692520, 35.834648, 32.748234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381859, 36.444752, 33.220615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292133, 36.078266, 33.353416>,  <32.238300, 35.858376, 33.433098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292133, 36.078266, 33.353416>,  <32.381859, 36.444752, 33.220615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292133, 36.078266, 33.353416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285697, 0.263893, 0.921270,
		-0.931699, 0.301503, 0.202567,
		-0.224309, -0.916219, 0.332007,
		32.224842, 35.803402, 33.453018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945269, 36.452065, 33.882092>,  <32.381859, 36.444752, 33.220615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945269, 36.452065, 33.882092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156620, 36.113895, 33.850910>,  <32.283432, 35.910995, 33.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156620, 36.113895, 33.850910>,  <31.945269, 36.452065, 33.882092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156620, 36.113895, 33.850910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172987, 0.017312, 0.984772,
		-0.831200, -0.533816, 0.155395,
		0.528377, -0.845423, -0.077954,
		32.315132, 35.860268, 33.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644728, 35.789227, 34.198166>,  <31.945269, 36.452065, 33.882092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644728, 35.789227, 34.198166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038269, 35.717789, 34.193443>,  <32.274395, 35.674927, 34.190609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038269, 35.717789, 34.193443>,  <31.644728, 35.789227, 34.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038269, 35.717789, 34.193443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007758, -0.108460, 0.994071,
		-0.178817, -0.977927, -0.108094,
		0.983852, -0.178596, -0.011808,
		32.333424, 35.664211, 34.189899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819809, 35.139839, 34.606300>,  <31.644728, 35.789227, 34.198166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819809, 35.139839, 34.606300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157257, 35.354473, 34.598488>,  <32.359726, 35.483253, 34.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157257, 35.354473, 34.598488>,  <31.819809, 35.139839, 34.606300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157257, 35.354473, 34.598488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046185, -0.036282, 0.998274,
		0.534951, -0.843065, -0.055390,
		0.843620, 0.536586, -0.019528,
		32.410343, 35.515450, 34.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154678, 34.871716, 35.055611>,  <31.819809, 35.139839, 34.606300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154678, 34.871716, 35.055611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357204, 35.215714, 35.030151>,  <32.478718, 35.422112, 35.014877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357204, 35.215714, 35.030151>,  <32.154678, 34.871716, 35.055611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357204, 35.215714, 35.030151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047107, 0.046114, 0.997825,
		0.861063, -0.508209, -0.017164,
		0.506312, 0.859998, -0.063647,
		32.509098, 35.473713, 35.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651306, 34.748196, 35.489075>,  <32.154678, 34.871716, 35.055611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651306, 34.748196, 35.489075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619034, 35.143806, 35.439560>,  <32.599670, 35.381172, 35.409851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619034, 35.143806, 35.439560>,  <32.651306, 34.748196, 35.489075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619034, 35.143806, 35.439560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047714, 0.120213, 0.991601,
		0.995598, 0.085908, 0.037491,
		-0.080680, 0.989024, -0.123783,
		32.594830, 35.440514, 35.402424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122105, 34.933144, 35.959225>,  <32.651306, 34.748196, 35.489075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122105, 34.933144, 35.959225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904118, 35.259510, 35.881989>,  <32.773323, 35.455330, 35.835648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904118, 35.259510, 35.881989>,  <33.122105, 34.933144, 35.959225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904118, 35.259510, 35.881989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090748, 0.286336, 0.953822,
		0.833530, 0.502282, -0.230087,
		-0.544970, 0.815920, -0.193088,
		32.740627, 35.504288, 35.824062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437725, 35.531525, 36.319843>,  <33.122105, 34.933144, 35.959225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437725, 35.531525, 36.319843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050591, 35.614914, 36.263508>,  <32.818310, 35.664948, 36.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050591, 35.614914, 36.263508>,  <33.437725, 35.531525, 36.319843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050591, 35.614914, 36.263508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083573, 0.261623, 0.961545,
		0.237301, 0.942387, -0.235785,
		-0.967835, 0.208470, -0.140842,
		32.760239, 35.677456, 36.221256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265682, 36.181023, 36.672237>,  <33.437725, 35.531525, 36.319843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265682, 36.181023, 36.672237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930771, 35.971939, 36.608070>,  <32.729824, 35.846489, 36.569569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930771, 35.971939, 36.608070>,  <33.265682, 36.181023, 36.672237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930771, 35.971939, 36.608070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207901, 0.032991, 0.977593,
		-0.505708, 0.851871, -0.136295,
		-0.837279, -0.522712, -0.160421,
		32.679588, 35.815125, 36.559944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734928, 36.543041, 37.204422>,  <33.265682, 36.181023, 36.672237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734928, 36.543041, 37.204422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570717, 36.194324, 37.097507>,  <32.472191, 35.985096, 37.033360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570717, 36.194324, 37.097507>,  <32.734928, 36.543041, 37.204422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570717, 36.194324, 37.097507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361522, -0.113491, 0.925431,
		-0.837118, 0.476547, -0.268581,
		-0.410529, -0.871793, -0.267287,
		32.447559, 35.932785, 37.017323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093857, 36.544666, 37.536991>,  <32.734928, 36.543041, 37.204422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093857, 36.544666, 37.536991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147060, 36.154678, 37.465729>,  <32.178982, 35.920685, 37.422970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147060, 36.154678, 37.465729>,  <32.093857, 36.544666, 37.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147060, 36.154678, 37.465729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416453, -0.218092, 0.882612,
		-0.899375, -0.043201, -0.435037,
		0.133008, -0.974971, -0.178155,
		32.186962, 35.862186, 37.412281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505568, 36.226147, 37.820515>,  <32.093857, 36.544666, 37.536991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505568, 36.226147, 37.820515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788475, 35.944569, 37.794506>,  <31.958220, 35.775620, 37.778900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788475, 35.944569, 37.794506>,  <31.505568, 36.226147, 37.820515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788475, 35.944569, 37.794506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169600, -0.258244, 0.951076,
		-0.686298, -0.661641, -0.302038,
		0.707270, -0.703947, -0.065017,
		32.000656, 35.733383, 37.775002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296001, 35.736404, 38.220329>,  <31.505568, 36.226147, 37.820515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296001, 35.736404, 38.220329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680222, 35.636852, 38.170685>,  <31.910753, 35.577122, 38.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680222, 35.636852, 38.170685>,  <31.296001, 35.736404, 38.220329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680222, 35.636852, 38.170685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036607, -0.329240, 0.943537,
		-0.275691, -0.910856, -0.307140,
		0.960549, -0.248881, -0.124112,
		31.968386, 35.562187, 38.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310823, 35.080135, 38.419014>,  <31.296001, 35.736404, 38.220329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310823, 35.080135, 38.419014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697159, 35.178257, 38.452446>,  <31.928959, 35.237129, 38.472507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697159, 35.178257, 38.452446>,  <31.310823, 35.080135, 38.419014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697159, 35.178257, 38.452446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048891, -0.489210, 0.870795,
		0.254495, -0.836960, -0.484490,
		0.965837, 0.245300, 0.083582,
		31.986910, 35.251846, 38.477520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773504, 34.457218, 38.524807>,  <31.310823, 35.080135, 38.419014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773504, 34.457218, 38.524807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964220, 34.776157, 38.672806>,  <32.078651, 34.967522, 38.761604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964220, 34.776157, 38.672806>,  <31.773504, 34.457218, 38.524807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964220, 34.776157, 38.672806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092158, -0.463950, 0.881055,
		0.874173, -0.385979, -0.294689,
		0.476790, 0.797352, 0.370002,
		32.107258, 35.015362, 38.783806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385326, 34.298603, 38.865971>,  <31.773504, 34.457218, 38.524807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385326, 34.298603, 38.865971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275574, 34.645920, 39.031273>,  <32.209721, 34.854309, 39.130455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275574, 34.645920, 39.031273>,  <32.385326, 34.298603, 38.865971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275574, 34.645920, 39.031273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009231, -0.427349, 0.904040,
		0.961577, 0.251866, 0.109241,
		-0.274380, 0.868295, 0.413254,
		32.193260, 34.906410, 39.155251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832104, 34.269817, 39.378548>,  <32.385326, 34.298603, 38.865971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832104, 34.269817, 39.378548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545574, 34.532558, 39.472717>,  <32.373657, 34.690205, 39.529217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545574, 34.532558, 39.472717>,  <32.832104, 34.269817, 39.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545574, 34.532558, 39.472717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043597, -0.294600, 0.954626,
		0.696408, 0.694082, 0.182391,
		-0.716321, 0.656857, 0.235421,
		32.330677, 34.729614, 39.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127216, 34.527699, 39.976986>,  <32.832104, 34.269817, 39.378548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127216, 34.527699, 39.976986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739948, 34.626900, 39.990513>,  <32.507587, 34.686420, 39.998631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739948, 34.626900, 39.990513>,  <33.127216, 34.527699, 39.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739948, 34.626900, 39.990513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036487, 0.006170, 0.999315,
		0.247625, 0.968740, -0.015023,
		-0.968169, 0.248003, 0.033819,
		32.449497, 34.701302, 40.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006138, 35.015297, 40.542355>,  <33.127216, 34.527699, 39.976986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006138, 35.015297, 40.542355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637157, 34.867565, 40.497307>,  <32.415771, 34.778927, 40.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637157, 34.867565, 40.497307>,  <33.006138, 35.015297, 40.542355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637157, 34.867565, 40.497307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102971, -0.045810, 0.993629,
		-0.372135, 0.928169, 0.004227,
		-0.922449, -0.369329, -0.112622,
		32.360424, 34.756767, 40.463520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653286, 35.274475, 41.069820>,  <33.006138, 35.015297, 40.542355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653286, 35.274475, 41.069820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433350, 34.962643, 40.949871>,  <32.301388, 34.775543, 40.877903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433350, 34.962643, 40.949871>,  <32.653286, 35.274475, 41.069820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433350, 34.962643, 40.949871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335011, -0.123043, 0.934146,
		-0.765141, 0.614094, -0.193514,
		-0.549842, -0.779583, -0.299873,
		32.268398, 34.728767, 40.859909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957207, 35.405544, 41.338242>,  <32.653286, 35.274475, 41.069820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957207, 35.405544, 41.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967142, 35.012547, 41.264393>,  <31.973103, 34.776749, 41.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967142, 35.012547, 41.264393>,  <31.957207, 35.405544, 41.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967142, 35.012547, 41.264393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477024, -0.173948, 0.861504,
		-0.878539, 0.066672, -0.472995,
		0.024839, -0.982496, -0.184624,
		31.974594, 34.717796, 41.209007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222265, 35.226643, 41.473148>,  <31.957207, 35.405544, 41.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222265, 35.226643, 41.473148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373022, 34.856510, 41.456558>,  <31.463476, 34.634430, 41.446606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373022, 34.856510, 41.456558>,  <31.222265, 35.226643, 41.473148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373022, 34.856510, 41.456558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470999, -0.230014, 0.851619,
		-0.797566, -0.301434, -0.522519,
		0.376893, -0.925328, -0.041476,
		31.486090, 34.578911, 41.444115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639486, 34.715801, 41.554382>,  <31.222265, 35.226643, 41.473148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639486, 34.715801, 41.554382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990105, 34.555893, 41.661598>,  <31.200476, 34.459946, 41.725929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990105, 34.555893, 41.661598>,  <30.639486, 34.715801, 41.554382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990105, 34.555893, 41.661598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448001, -0.474061, 0.757998,
		-0.175959, -0.784504, -0.594636,
		0.876546, -0.399775, 0.268043,
		31.253069, 34.435959, 41.742012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530939, 33.985104, 41.698071>,  <30.639486, 34.715801, 41.554382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530939, 33.985104, 41.698071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865097, 34.078503, 41.897106>,  <31.065592, 34.134541, 42.016529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865097, 34.078503, 41.897106>,  <30.530939, 33.985104, 41.698071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865097, 34.078503, 41.897106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326562, -0.517340, 0.791022,
		0.442121, -0.823311, -0.355933,
		0.835396, 0.233493, 0.497589,
		31.115715, 34.148552, 42.046383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729422, 33.426323, 42.073265>,  <30.530939, 33.985104, 41.698071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729422, 33.426323, 42.073265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923233, 33.703300, 42.287086>,  <31.039520, 33.869488, 42.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923233, 33.703300, 42.287086>,  <30.729422, 33.426323, 42.073265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923233, 33.703300, 42.287086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347404, -0.408505, 0.844058,
		0.802834, -0.594677, 0.042626,
		0.484529, 0.692446, 0.534555,
		31.068592, 33.911034, 42.447453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892467, 33.093090, 42.691383>,  <30.729422, 33.426323, 42.073265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892467, 33.093090, 42.691383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974533, 33.470455, 42.795597>,  <31.023773, 33.696873, 42.858128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974533, 33.470455, 42.795597>,  <30.892467, 33.093090, 42.691383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974533, 33.470455, 42.795597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116167, -0.240846, 0.963586,
		0.971809, -0.227960, 0.060181,
		0.205165, 0.943413, 0.260538,
		31.036083, 33.753479, 42.873760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458401, 33.095299, 43.215218>,  <30.892467, 33.093090, 42.691383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458401, 33.095299, 43.215218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280647, 33.449692, 43.268223>,  <31.173996, 33.662327, 43.300026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280647, 33.449692, 43.268223>,  <31.458401, 33.095299, 43.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280647, 33.449692, 43.268223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107095, -0.199397, 0.974049,
		0.889413, 0.418659, 0.183493,
		-0.444382, 0.885983, 0.132510,
		31.147333, 33.715488, 43.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757265, 33.387699, 43.946743>,  <31.458401, 33.095299, 43.215218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757265, 33.387699, 43.946743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420929, 33.588047, 43.864655>,  <31.219128, 33.708256, 43.815403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420929, 33.588047, 43.864655>,  <31.757265, 33.387699, 43.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420929, 33.588047, 43.864655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288689, -0.094260, 0.952772,
		0.457869, 0.860375, 0.223853,
		-0.840842, 0.500868, -0.205222,
		31.168676, 33.738308, 43.803089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550228, 33.855801, 44.463287>,  <31.757265, 33.387699, 43.946743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550228, 33.855801, 44.463287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183226, 33.858891, 44.304226>,  <30.963024, 33.860744, 44.208790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183226, 33.858891, 44.304226>,  <31.550228, 33.855801, 44.463287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183226, 33.858891, 44.304226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384300, 0.240355, 0.891371,
		0.102466, 0.970654, -0.217556,
		-0.917504, 0.007728, -0.397651,
		30.907974, 33.861210, 44.184929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224892, 34.558331, 44.709286>,  <31.550228, 33.855801, 44.463287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224892, 34.558331, 44.709286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956289, 34.269924, 44.640911>,  <30.795128, 34.096882, 44.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956289, 34.269924, 44.640911>,  <31.224892, 34.558331, 44.709286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956289, 34.269924, 44.640911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344403, 0.099432, 0.933542,
		-0.656097, 0.685752, -0.315088,
		-0.671508, -0.721011, -0.170938,
		30.754837, 34.053619, 44.589630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602388, 34.746292, 45.224411>,  <31.224892, 34.558331, 44.709286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602388, 34.746292, 45.224411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532270, 34.374084, 45.095783>,  <30.490200, 34.150761, 45.018608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532270, 34.374084, 45.095783>,  <30.602388, 34.746292, 45.224411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532270, 34.374084, 45.095783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306979, -0.258684, 0.915886,
		-0.935434, 0.259264, -0.240304,
		-0.175294, -0.930519, -0.321570,
		30.479683, 34.094929, 44.999313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899769, 34.586384, 45.445217>,  <30.602388, 34.746292, 45.224411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899769, 34.586384, 45.445217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075508, 34.236530, 45.363251>,  <30.180952, 34.026619, 45.314072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075508, 34.236530, 45.363251>,  <29.899769, 34.586384, 45.445217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075508, 34.236530, 45.363251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319140, -0.365195, 0.874519,
		-0.839717, -0.318820, -0.439578,
		0.439346, -0.874635, -0.204912,
		30.207312, 33.974140, 45.301777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465925, 34.046040, 45.694302>,  <29.899769, 34.586384, 45.445217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465925, 34.046040, 45.694302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843628, 33.914509, 45.700722>,  <30.070250, 33.835590, 45.704575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843628, 33.914509, 45.700722>,  <29.465925, 34.046040, 45.694302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843628, 33.914509, 45.700722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119338, -0.296435, 0.947568,
		-0.306854, -0.896651, -0.319152,
		0.944245, -0.328852, 0.016042,
		30.126904, 33.815861, 45.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440845, 33.380508, 46.006069>,  <29.465925, 34.046040, 45.694302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440845, 33.380508, 46.006069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829985, 33.461155, 46.051529>,  <30.063469, 33.509544, 46.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829985, 33.461155, 46.051529>,  <29.440845, 33.380508, 46.006069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829985, 33.461155, 46.051529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060910, -0.250711, 0.966144,
		0.223287, -0.946833, -0.231623,
		0.972848, 0.201619, 0.113653,
		30.121840, 33.521641, 46.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789696, 32.798409, 46.255375>,  <29.440845, 33.380508, 46.006069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789696, 32.798409, 46.255375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020391, 33.103874, 46.371437>,  <30.158810, 33.287151, 46.441074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020391, 33.103874, 46.371437>,  <29.789696, 32.798409, 46.255375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020391, 33.103874, 46.371437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014962, -0.345245, 0.938393,
		0.816790, -0.545551, -0.187691,
		0.576741, 0.763662, 0.290155,
		30.193415, 33.332973, 46.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342630, 32.547688, 46.595108>,  <29.789696, 32.798409, 46.255375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342630, 32.547688, 46.595108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306850, 32.922348, 46.730572>,  <30.285381, 33.147144, 46.811852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306850, 32.922348, 46.730572>,  <30.342630, 32.547688, 46.595108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306850, 32.922348, 46.730572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113978, -0.328162, 0.937720,
		0.989448, 0.122480, -0.077403,
		-0.089452, 0.936648, 0.338659,
		30.280014, 33.203342, 46.832169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800402, 32.531479, 47.132687>,  <30.342630, 32.547688, 46.595108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800402, 32.531479, 47.132687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582066, 32.862450, 47.185490>,  <30.451063, 33.061031, 47.217171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582066, 32.862450, 47.185490>,  <30.800402, 32.531479, 47.132687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582066, 32.862450, 47.185490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037775, -0.133085, 0.990385,
		0.837037, 0.545578, 0.041388,
		-0.545840, 0.827425, 0.132006,
		30.418314, 33.110676, 47.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154221, 32.953178, 47.545509>,  <30.800402, 32.531479, 47.132687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154221, 32.953178, 47.545509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782318, 33.095005, 47.585190>,  <30.559177, 33.180099, 47.608997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782318, 33.095005, 47.585190>,  <31.154221, 32.953178, 47.545509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782318, 33.095005, 47.585190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043392, -0.162032, 0.985831,
		0.365614, 0.920885, 0.135265,
		-0.929754, 0.354564, 0.099200,
		30.503391, 33.201374, 47.614948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120461, 33.151463, 48.250401>,  <31.154221, 32.953178, 47.545509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120461, 33.151463, 48.250401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732889, 33.138206, 48.152351>,  <30.500347, 33.130253, 48.093521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732889, 33.138206, 48.152351>,  <31.120461, 33.151463, 48.250401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732889, 33.138206, 48.152351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229031, -0.254081, 0.939674,
		-0.093420, 0.966615, 0.238596,
		-0.968926, -0.033138, -0.245121,
		30.442211, 33.128265, 48.078815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680676, 33.518692, 48.726440>,  <31.120461, 33.151463, 48.250401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680676, 33.518692, 48.726440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434916, 33.256439, 48.550869>,  <30.287458, 33.099087, 48.445526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434916, 33.256439, 48.550869>,  <30.680676, 33.518692, 48.726440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434916, 33.256439, 48.550869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314686, -0.306524, 0.898341,
		-0.723521, 0.690068, -0.017988,
		-0.614402, -0.655629, -0.438931,
		30.250595, 33.059750, 48.419189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983887, 33.625076, 48.959515>,  <30.680676, 33.518692, 48.726440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983887, 33.625076, 48.959515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981340, 33.245193, 48.834286>,  <29.979813, 33.017265, 48.759148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981340, 33.245193, 48.834286>,  <29.983887, 33.625076, 48.959515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981340, 33.245193, 48.834286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419565, -0.281650, 0.862924,
		-0.907703, 0.136849, -0.396671,
		-0.006368, -0.949708, -0.313071,
		29.979429, 32.960281, 48.740364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307587, 33.435368, 49.271755>,  <29.983887, 33.625076, 48.959515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307587, 33.435368, 49.271755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533121, 33.122932, 49.164425>,  <29.668442, 32.935471, 49.100029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533121, 33.122932, 49.164425>,  <29.307587, 33.435368, 49.271755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533121, 33.122932, 49.164425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277955, -0.485405, 0.828929,
		-0.777709, -0.392796, -0.490794,
		0.563834, -0.781084, -0.268324,
		29.702272, 32.888607, 49.083927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882610, 32.768673, 49.442924>,  <29.307587, 33.435368, 49.271755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882610, 32.768673, 49.442924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279749, 32.721428, 49.435921>,  <29.518032, 32.693081, 49.431717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279749, 32.721428, 49.435921>,  <28.882610, 32.768673, 49.442924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279749, 32.721428, 49.435921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037598, -0.448455, 0.893014,
		-0.113326, -0.885967, -0.449688,
		0.992846, -0.118109, -0.017511,
		29.577602, 32.685993, 49.430668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045965, 32.037724, 49.658886>,  <28.882610, 32.768673, 49.442924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045965, 32.037724, 49.658886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361055, 32.268822, 49.744400>,  <29.550110, 32.407478, 49.795708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361055, 32.268822, 49.744400>,  <29.045965, 32.037724, 49.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361055, 32.268822, 49.744400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141918, -0.507894, 0.849649,
		0.599458, -0.638950, -0.482073,
		0.787725, 0.577743, 0.213783,
		29.597372, 32.442146, 49.808537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601200, 31.490126, 49.832886>,  <29.045965, 32.037724, 49.658886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601200, 31.490126, 49.832886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687479, 31.853544, 49.976002>,  <29.739246, 32.071594, 50.061871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687479, 31.853544, 49.976002>,  <29.601200, 31.490126, 49.832886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687479, 31.853544, 49.976002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415888, -0.417000, 0.808175,
		0.883466, -0.025517, -0.467799,
		0.215695, 0.908548, 0.357794,
		29.752188, 32.126110, 50.083340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372564, 31.739363, 50.059448>,  <29.601200, 31.490126, 49.832886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372564, 31.739363, 50.059448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060884, 31.841557, 50.288387>,  <29.873877, 31.902872, 50.425751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060884, 31.841557, 50.288387>,  <30.372564, 31.739363, 50.059448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060884, 31.841557, 50.288387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391566, -0.514611, 0.762792,
		0.489416, 0.818477, 0.300946,
		-0.779198, 0.255482, 0.572346,
		29.827126, 31.918201, 50.460091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477133, 32.216320, 50.750961>,  <30.372564, 31.739363, 50.059448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477133, 32.216320, 50.750961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236925, 31.902969, 50.686836>,  <30.092800, 31.714960, 50.648361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236925, 31.902969, 50.686836>,  <30.477133, 32.216320, 50.750961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236925, 31.902969, 50.686836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495104, -0.521715, 0.694756,
		-0.627892, 0.337843, 0.701152,
		-0.600520, -0.783375, -0.160313,
		30.056768, 31.667957, 50.638741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009035, 31.919909, 51.313061>,  <30.477133, 32.216320, 50.750961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009035, 31.919909, 51.313061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309347, 31.914938, 51.048885>,  <31.489534, 31.911955, 50.890381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309347, 31.914938, 51.048885>,  <31.009035, 31.919909, 51.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309347, 31.914938, 51.048885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158563, 0.967199, -0.198453,
		0.641237, 0.253715, 0.724184,
		0.750781, -0.012426, -0.660434,
		31.534582, 31.911209, 50.850754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705925, 31.385231, 50.873032>,  <31.009035, 31.919909, 51.313061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705925, 31.385231, 50.873032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812504, 30.999693, 50.871933>,  <30.876451, 30.768370, 50.871273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812504, 30.999693, 50.871933>,  <30.705925, 31.385231, 50.873032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812504, 30.999693, 50.871933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382868, 0.108457, -0.917414,
		0.884544, 0.243390, 0.397924,
		0.266447, -0.963846, -0.002749,
		30.892439, 30.710539, 50.871109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403881, 31.385462, 50.887196>,  <30.705925, 31.385231, 50.873032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403881, 31.385462, 50.887196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168720, 31.115940, 50.708153>,  <31.027624, 30.954227, 50.600727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168720, 31.115940, 50.708153>,  <31.403881, 31.385462, 50.887196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168720, 31.115940, 50.708153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374041, 0.264200, -0.888983,
		0.717262, -0.690060, 0.096708,
		-0.587902, -0.673807, -0.447611,
		30.992350, 30.913797, 50.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840422, 31.059517, 50.370098>,  <31.403881, 31.385462, 50.887196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840422, 31.059517, 50.370098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471813, 30.974182, 50.240303>,  <31.250648, 30.922981, 50.162426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471813, 30.974182, 50.240303>,  <31.840422, 31.059517, 50.370098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471813, 30.974182, 50.240303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320941, 0.052031, -0.945669,
		0.218630, -0.975592, 0.020521,
		-0.921519, -0.213337, -0.324483,
		31.195358, 30.910181, 50.142960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870712, 30.556210, 49.910030>,  <31.840422, 31.059517, 50.370098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870712, 30.556210, 49.910030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541483, 30.766079, 49.823067>,  <31.343945, 30.892000, 49.770889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541483, 30.766079, 49.823067>,  <31.870712, 30.556210, 49.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541483, 30.766079, 49.823067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199638, -0.091092, -0.975626,
		-0.531688, -0.846417, -0.029769,
		-0.823075, 0.524671, -0.217410,
		31.294559, 30.923481, 49.757843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627321, 30.320799, 49.275719>,  <31.870712, 30.556210, 49.910030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627321, 30.320799, 49.275719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444477, 30.674776, 49.311333>,  <31.334770, 30.887163, 49.332703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444477, 30.674776, 49.311333>,  <31.627321, 30.320799, 49.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444477, 30.674776, 49.311333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068339, 0.134759, -0.988519,
		-0.886782, -0.445775, -0.122075,
		-0.457108, 0.884943, 0.089038,
		31.307344, 30.940260, 49.338043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030970, 30.309435, 48.834446>,  <31.627321, 30.320799, 49.275719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030970, 30.309435, 48.834446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117453, 30.696678, 48.885067>,  <31.169342, 30.929024, 48.915440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117453, 30.696678, 48.885067>,  <31.030970, 30.309435, 48.834446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117453, 30.696678, 48.885067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, 0.108210, -0.989605,
		-0.971741, 0.225950, -0.068312,
		0.216209, 0.968110, 0.126556,
		31.182316, 30.987112, 48.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758072, 30.686169, 48.185932>,  <31.030970, 30.309435, 48.834446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758072, 30.686169, 48.185932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013432, 30.967936, 48.310024>,  <31.166647, 31.136995, 48.384480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013432, 30.967936, 48.310024>,  <30.758072, 30.686169, 48.185932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013432, 30.967936, 48.310024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387579, 0.054030, -0.920252,
		-0.665004, 0.707725, -0.238525,
		0.638398, 0.704419, 0.310229,
		31.204950, 31.179262, 48.403091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719778, 31.316992, 47.718002>,  <30.758072, 30.686169, 48.185932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719778, 31.316992, 47.718002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077652, 31.350922, 47.893433>,  <31.292376, 31.371279, 47.998692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077652, 31.350922, 47.893433>,  <30.719778, 31.316992, 47.718002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077652, 31.350922, 47.893433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414801, 0.206596, -0.886148,
		-0.165773, 0.974742, 0.149654,
		0.894684, 0.084823, 0.438572,
		31.346058, 31.376368, 48.025005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954891, 31.885439, 47.463585>,  <30.719778, 31.316992, 47.718002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954891, 31.885439, 47.463585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283152, 31.713518, 47.614212>,  <31.480108, 31.610367, 47.704590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283152, 31.713518, 47.614212>,  <30.954891, 31.885439, 47.463585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283152, 31.713518, 47.614212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541634, 0.375056, -0.752307,
		0.182107, 0.821344, 0.540585,
		0.820652, -0.429800, 0.376567,
		31.529346, 31.584578, 47.727180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491751, 32.371414, 47.296520>,  <30.954891, 31.885439, 47.463585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491751, 32.371414, 47.296520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669834, 32.018696, 47.358776>,  <31.776684, 31.807064, 47.396130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669834, 32.018696, 47.358776>,  <31.491751, 32.371414, 47.296520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669834, 32.018696, 47.358776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552426, 0.133690, -0.822772,
		0.704708, 0.452288, 0.546646,
		0.445210, -0.881795, 0.155643,
		31.803398, 31.754158, 47.405468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208050, 32.530941, 47.258282>,  <31.491751, 32.371414, 47.296520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208050, 32.530941, 47.258282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125252, 32.151573, 47.162235>,  <32.075573, 31.923952, 47.104607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125252, 32.151573, 47.162235>,  <32.208050, 32.530941, 47.258282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125252, 32.151573, 47.162235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583850, 0.077181, -0.808185,
		0.785030, -0.307481, 0.537758,
		-0.206996, -0.948419, -0.240112,
		32.063152, 31.867048, 47.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891129, 32.238560, 47.308941>,  <32.208050, 32.530941, 47.258282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891129, 32.238560, 47.308941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686565, 31.968658, 47.096085>,  <32.563828, 31.806719, 46.968369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686565, 31.968658, 47.096085>,  <32.891129, 32.238560, 47.308941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686565, 31.968658, 47.096085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713311, 0.012013, -0.700745,
		0.479220, -0.737948, 0.475163,
		-0.511405, -0.674751, -0.532144,
		32.533142, 31.766233, 46.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331329, 31.630898, 47.062366>,  <32.891129, 32.238560, 47.308941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331329, 31.630898, 47.062366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016018, 31.649027, 46.816906>,  <32.826832, 31.659904, 46.669632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016018, 31.649027, 46.816906>,  <33.331329, 31.630898, 47.062366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016018, 31.649027, 46.816906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579470, -0.280757, -0.765108,
		-0.206961, -0.958708, 0.195053,
		-0.788278, 0.045320, -0.613648,
		32.779533, 31.662622, 46.632812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236530, 31.011978, 46.628479>,  <33.331329, 31.630898, 47.062366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236530, 31.011978, 46.628479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073936, 31.331623, 46.451309>,  <32.976379, 31.523411, 46.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073936, 31.331623, 46.451309>,  <33.236530, 31.011978, 46.628479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073936, 31.331623, 46.451309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444452, -0.250615, -0.860032,
		-0.798269, -0.546450, -0.253297,
		-0.406484, 0.799115, -0.442929,
		32.951992, 31.571358, 46.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646072, 31.048969, 46.075287>,  <33.236530, 31.011978, 46.628479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646072, 31.048969, 46.075287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374054, 31.321815, 45.967762>,  <33.210842, 31.485523, 45.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374054, 31.321815, 45.967762>,  <33.646072, 31.048969, 46.075287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374054, 31.321815, 45.967762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410582, 0.050548, -0.910422,
		-0.607425, -0.729495, -0.314439,
		-0.680042, 0.682116, -0.268813,
		33.170040, 31.526451, 45.887119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259754, 30.764282, 45.558155>,  <33.646072, 31.048969, 46.075287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259754, 30.764282, 45.558155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216618, 31.160137, 45.520233>,  <33.190735, 31.397650, 45.497478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216618, 31.160137, 45.520233>,  <33.259754, 30.764282, 45.558155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216618, 31.160137, 45.520233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362578, -0.049647, -0.930630,
		-0.925693, -0.134734, -0.353467,
		-0.107839, 0.989637, -0.094809,
		33.184265, 31.457027, 45.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944618, 30.811756, 44.921978>,  <33.259754, 30.764282, 45.558155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944618, 30.811756, 44.921978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087448, 31.176195, 45.004337>,  <33.173145, 31.394859, 45.053753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087448, 31.176195, 45.004337>,  <32.944618, 30.811756, 44.921978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087448, 31.176195, 45.004337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252425, 0.118104, -0.960382,
		-0.899321, 0.394904, -0.187812,
		0.357077, 0.911100, 0.205897,
		33.194572, 31.449526, 45.066105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675079, 31.172316, 44.351097>,  <32.944618, 30.811756, 44.921978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675079, 31.172316, 44.351097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970531, 31.381689, 44.521008>,  <33.147804, 31.507313, 44.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970531, 31.381689, 44.521008>,  <32.675079, 31.172316, 44.351097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970531, 31.381689, 44.521008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351499, 0.238635, -0.905263,
		-0.575213, 0.817967, -0.007723,
		0.738633, 0.523434, 0.424781,
		33.192120, 31.538719, 44.648441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625599, 31.877335, 44.029251>,  <32.675079, 31.172316, 44.351097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625599, 31.877335, 44.029251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001621, 31.835228, 44.159000>,  <33.227234, 31.809963, 44.236851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001621, 31.835228, 44.159000>,  <32.625599, 31.877335, 44.029251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001621, 31.835228, 44.159000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340100, 0.219267, -0.914469,
		0.025140, 0.969970, 0.241924,
		0.940053, -0.105268, 0.324374,
		33.283638, 31.803648, 44.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961655, 32.548389, 43.876598>,  <32.625599, 31.877335, 44.029251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961655, 32.548389, 43.876598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240128, 32.261425, 43.886845>,  <33.407211, 32.089249, 43.892994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240128, 32.261425, 43.886845>,  <32.961655, 32.548389, 43.876598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240128, 32.261425, 43.886845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426820, 0.384973, -0.818304,
		0.577197, 0.580621, 0.574215,
		0.696181, -0.717409, 0.025615,
		33.448982, 32.046204, 43.894527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663486, 32.805286, 43.530548>,  <32.961655, 32.548389, 43.876598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663486, 32.805286, 43.530548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688908, 32.406292, 43.543106>,  <33.704159, 32.166897, 43.550640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688908, 32.406292, 43.543106>,  <33.663486, 32.805286, 43.530548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688908, 32.406292, 43.543106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536341, 0.007612, -0.843967,
		0.841605, 0.070471, 0.535475,
		0.063551, -0.997485, 0.031390,
		33.707973, 32.107048, 43.552525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406898, 32.686253, 43.497616>,  <33.663486, 32.805286, 43.530548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406898, 32.686253, 43.497616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218124, 32.357998, 43.368721>,  <34.104858, 32.161045, 43.291386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218124, 32.357998, 43.368721>,  <34.406898, 32.686253, 43.497616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218124, 32.357998, 43.368721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487924, 0.061307, -0.870730,
		0.734308, -0.568154, 0.371475,
		-0.471935, -0.820636, -0.322234,
		34.076546, 32.111809, 43.272049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875263, 32.330498, 43.056999>,  <34.406898, 32.686253, 43.497616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875263, 32.330498, 43.056999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514957, 32.186028, 42.960514>,  <34.298775, 32.099346, 42.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514957, 32.186028, 42.960514>,  <34.875263, 32.330498, 43.056999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514957, 32.186028, 42.960514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310798, -0.148085, -0.938869,
		0.303374, -0.920665, 0.245640,
		-0.900760, -0.361173, -0.241216,
		34.244728, 32.077675, 42.888149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041222, 31.868795, 42.572617>,  <34.875263, 32.330498, 43.056999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041222, 31.868795, 42.572617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653034, 31.946890, 42.515945>,  <34.420120, 31.993748, 42.481945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653034, 31.946890, 42.515945>,  <35.041222, 31.868795, 42.572617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653034, 31.946890, 42.515945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167855, 0.124761, -0.977885,
		-0.173245, -0.972788, -0.153848,
		-0.970469, 0.195238, -0.141673,
		34.361893, 32.005463, 42.473442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750912, 31.330984, 42.093853>,  <35.041222, 31.868795, 42.572617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750912, 31.330984, 42.093853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536896, 31.668697, 42.081741>,  <34.408485, 31.871325, 42.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536896, 31.668697, 42.081741>,  <34.750912, 31.330984, 42.093853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536896, 31.668697, 42.081741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281902, 0.144632, -0.948479,
		-0.796404, -0.516013, -0.315389,
		-0.535043, 0.844282, -0.030279,
		34.376381, 31.921982, 42.072659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363239, 31.281281, 41.477158>,  <34.750912, 31.330984, 42.093853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363239, 31.281281, 41.477158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372738, 31.668325, 41.577690>,  <34.378437, 31.900553, 41.638008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372738, 31.668325, 41.577690>,  <34.363239, 31.281281, 41.477158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372738, 31.668325, 41.577690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060038, 0.249564, -0.966495,
		-0.997914, 0.038036, -0.052168,
		0.023742, 0.967611, 0.251327,
		34.379860, 31.958609, 41.653088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890045, 31.620222, 40.959229>,  <34.363239, 31.281281, 41.477158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890045, 31.620222, 40.959229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110615, 31.905996, 41.131516>,  <34.242958, 32.077461, 41.234886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110615, 31.905996, 41.131516>,  <33.890045, 31.620222, 40.959229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110615, 31.905996, 41.131516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027665, 0.500361, -0.865375,
		-0.833766, 0.489104, 0.256147,
		0.551424, 0.714434, 0.430715,
		34.276043, 32.120327, 41.260731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456337, 32.240108, 40.930573>,  <33.890045, 31.620222, 40.959229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456337, 32.240108, 40.930573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843609, 32.338879, 40.946819>,  <34.075974, 32.398140, 40.956570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843609, 32.338879, 40.946819>,  <33.456337, 32.240108, 40.930573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843609, 32.338879, 40.946819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061684, 0.392793, -0.917556,
		-0.242527, 0.885855, 0.395526,
		0.968182, 0.246930, 0.040620,
		34.134064, 32.412956, 40.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473991, 32.890854, 40.608257>,  <33.456337, 32.240108, 40.930573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473991, 32.890854, 40.608257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862305, 32.797386, 40.630119>,  <34.095291, 32.741306, 40.643238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862305, 32.797386, 40.630119>,  <33.473991, 32.890854, 40.608257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862305, 32.797386, 40.630119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118527, 0.268835, -0.955866,
		0.208658, 0.934413, 0.288676,
		0.970780, -0.233665, 0.054658,
		34.153538, 32.727287, 40.646519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682144, 33.417271, 40.275723>,  <33.473991, 32.890854, 40.608257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682144, 33.417271, 40.275723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998993, 33.173340, 40.265549>,  <34.189102, 33.026981, 40.259445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998993, 33.173340, 40.265549>,  <33.682144, 33.417271, 40.275723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998993, 33.173340, 40.265549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159691, 0.247285, -0.955693,
		0.589097, 0.752967, 0.293265,
		0.792126, -0.609828, -0.025433,
		34.236629, 32.990391, 40.257919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256702, 33.802418, 40.036469>,  <33.682144, 33.417271, 40.275723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256702, 33.802418, 40.036469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300179, 33.418766, 39.931957>,  <34.326263, 33.188576, 39.869251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300179, 33.418766, 39.931957>,  <34.256702, 33.802418, 40.036469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300179, 33.418766, 39.931957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286761, 0.281912, -0.915584,
		0.951817, 0.024588, 0.305680,
		0.108688, -0.959125, -0.261278,
		34.332787, 33.131027, 39.853573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718109, 33.770134, 39.502819>,  <34.256702, 33.802418, 40.036469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718109, 33.770134, 39.502819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605076, 33.388344, 39.464615>,  <34.537254, 33.159271, 39.441692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605076, 33.388344, 39.464615>,  <34.718109, 33.770134, 39.502819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605076, 33.388344, 39.464615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332948, -0.004213, -0.942936,
		0.899607, -0.298258, 0.318981,
		-0.282582, -0.954476, -0.095514,
		34.520302, 33.102001, 39.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206047, 33.358189, 39.197777>,  <34.718109, 33.770134, 39.502819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206047, 33.358189, 39.197777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870056, 33.159740, 39.109863>,  <34.668461, 33.040672, 39.057117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870056, 33.159740, 39.109863>,  <35.206047, 33.358189, 39.197777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870056, 33.159740, 39.109863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248704, 0.007989, -0.968547,
		0.482270, -0.868218, 0.116676,
		-0.839977, -0.496119, -0.219782,
		34.618061, 33.010906, 39.043930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397785, 32.831455, 38.771381>,  <35.206047, 33.358189, 39.197777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397785, 32.831455, 38.771381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011356, 32.894138, 38.689270>,  <34.779499, 32.931747, 38.640003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011356, 32.894138, 38.689270>,  <35.397785, 32.831455, 38.771381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011356, 32.894138, 38.689270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227619, 0.141124, -0.963470,
		-0.122015, -0.977510, -0.172006,
		-0.966076, 0.156709, -0.205281,
		34.721535, 32.941151, 38.627686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324764, 32.581783, 38.039913>,  <35.397785, 32.831455, 38.771381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324764, 32.581783, 38.039913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989819, 32.788750, 38.110462>,  <34.788853, 32.912930, 38.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989819, 32.788750, 38.110462>,  <35.324764, 32.581783, 38.039913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989819, 32.788750, 38.110462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037491, 0.267517, -0.962824,
		-0.545363, -0.812843, -0.204610,
		-0.837361, 0.517418, 0.176368,
		34.738609, 32.943974, 38.163372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803734, 32.354420, 37.478474>,  <35.324764, 32.581783, 38.039913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803734, 32.354420, 37.478474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701576, 32.703999, 37.643879>,  <34.640282, 32.913746, 37.743122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701576, 32.703999, 37.643879>,  <34.803734, 32.354420, 37.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701576, 32.703999, 37.643879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036947, 0.418562, -0.907436,
		-0.966131, -0.247032, -0.074609,
		-0.255394, 0.873945, 0.413513,
		34.624958, 32.966183, 37.767933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535069, 32.595699, 36.929169>,  <34.803734, 32.354420, 37.478474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535069, 32.595699, 36.929169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583977, 32.925701, 37.149868>,  <34.613319, 33.123703, 37.282288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583977, 32.925701, 37.149868>,  <34.535069, 32.595699, 36.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583977, 32.925701, 37.149868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115794, 0.540264, -0.833490,
		-0.985719, 0.165797, -0.029474,
		0.122266, 0.825000, 0.551747,
		34.620655, 33.173203, 37.315392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087402, 33.155163, 36.671124>,  <34.535069, 32.595699, 36.929169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087402, 33.155163, 36.671124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356190, 33.347645, 36.896297>,  <34.517464, 33.463135, 37.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356190, 33.347645, 36.896297>,  <34.087402, 33.155163, 36.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356190, 33.347645, 36.896297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063320, 0.794681, -0.603716,
		-0.737865, 0.370035, 0.564473,
		0.671972, 0.481203, 0.562936,
		34.557781, 33.492004, 37.065178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816746, 33.864922, 36.697590>,  <34.087402, 33.155163, 36.671124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816746, 33.864922, 36.697590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208099, 33.880283, 36.778877>,  <34.442909, 33.889500, 36.827652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208099, 33.880283, 36.778877>,  <33.816746, 33.864922, 36.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208099, 33.880283, 36.778877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121877, 0.686804, -0.716552,
		-0.167091, 0.725827, 0.667275,
		0.978379, 0.038404, 0.203220,
		34.501614, 33.891804, 36.839844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924873, 34.541714, 36.465160>,  <33.816746, 33.864922, 36.697590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924873, 34.541714, 36.465160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296188, 34.393513, 36.477882>,  <34.518978, 34.304592, 36.485516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296188, 34.393513, 36.477882>,  <33.924873, 34.541714, 36.465160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296188, 34.393513, 36.477882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311860, 0.729043, -0.609294,
		0.202559, 0.575518, 0.792306,
		0.928285, -0.370507, 0.031807,
		34.574673, 34.282360, 36.487423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502003, 35.158035, 36.491932>,  <33.924873, 34.541714, 36.465160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502003, 35.158035, 36.491932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685398, 34.821724, 36.376778>,  <34.795437, 34.619938, 36.307686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685398, 34.821724, 36.376778>,  <34.502003, 35.158035, 36.491932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685398, 34.821724, 36.376778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546327, 0.522159, -0.654887,
		0.700939, 0.142976, 0.698744,
		0.458488, -0.840778, -0.287889,
		34.822945, 34.569489, 36.290409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153191, 35.378277, 36.338001>,  <34.502003, 35.158035, 36.491932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153191, 35.378277, 36.338001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144432, 35.012611, 36.176105>,  <35.139175, 34.793213, 36.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144432, 35.012611, 36.176105>,  <35.153191, 35.378277, 36.338001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144432, 35.012611, 36.176105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561095, 0.323832, -0.761778,
		0.827462, -0.243781, 0.505844,
		-0.021899, -0.914168, -0.404743,
		35.137863, 34.738361, 36.054684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857967, 35.100353, 36.249176>,  <35.153191, 35.378277, 36.338001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857967, 35.100353, 36.249176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603664, 34.971245, 35.968708>,  <35.451084, 34.893780, 35.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603664, 34.971245, 35.968708>,  <35.857967, 35.100353, 36.249176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603664, 34.971245, 35.968708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604281, 0.357071, -0.712282,
		0.480273, -0.876536, -0.031962,
		-0.635753, -0.322776, -0.701166,
		35.412937, 34.874413, 35.758358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282158, 34.806976, 35.703796>,  <35.857967, 35.100353, 36.249176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282158, 34.806976, 35.703796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930019, 34.924706, 35.555008>,  <35.718735, 34.995342, 35.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930019, 34.924706, 35.555008>,  <36.282158, 34.806976, 35.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930019, 34.924706, 35.555008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445777, 0.245405, -0.860848,
		-0.162084, -0.923661, -0.347245,
		-0.880347, 0.294324, -0.371970,
		35.665916, 35.013004, 35.443417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871891, 34.208370, 35.965931>,  <36.282158, 34.806976, 35.703796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871891, 34.208370, 35.965931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242672, 34.060425, 35.991093>,  <37.465141, 33.971657, 36.006191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242672, 34.060425, 35.991093>,  <36.871891, 34.208370, 35.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242672, 34.060425, 35.991093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269522, -0.539839, 0.797453,
		-0.260994, -0.756155, -0.600093,
		0.926952, -0.369868, 0.062905,
		37.520756, 33.949463, 36.009964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877384, 33.459171, 36.186649>,  <36.871891, 34.208370, 35.965931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877384, 33.459171, 36.186649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228153, 33.614017, 36.300594>,  <37.438614, 33.706924, 36.368961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228153, 33.614017, 36.300594>,  <36.877384, 33.459171, 36.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228153, 33.614017, 36.300594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154778, -0.333659, 0.929901,
		0.455025, -0.859543, -0.232676,
		0.876924, 0.387114, 0.284861,
		37.491230, 33.730152, 36.386051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287205, 33.039936, 36.532501>,  <36.877384, 33.459171, 36.186649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287205, 33.039936, 36.532501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442703, 33.383648, 36.665478>,  <37.536003, 33.589874, 36.745262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442703, 33.383648, 36.665478>,  <37.287205, 33.039936, 36.532501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442703, 33.383648, 36.665478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041651, -0.344058, 0.938024,
		0.920402, -0.378501, -0.097962,
		0.388748, 0.859279, 0.332437,
		37.559326, 33.641430, 36.765209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883289, 32.798546, 36.910690>,  <37.287205, 33.039936, 36.532501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883289, 32.798546, 36.910690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795097, 33.162758, 37.050591>,  <37.742184, 33.381287, 37.134529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795097, 33.162758, 37.050591>,  <37.883289, 32.798546, 36.910690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795097, 33.162758, 37.050591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045278, -0.348631, 0.936166,
		0.974340, 0.222242, 0.035639,
		-0.220481, 0.910530, 0.349748,
		37.728954, 33.435917, 37.155514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233871, 32.773460, 37.640606>,  <37.883289, 32.798546, 36.910690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233871, 32.773460, 37.640606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999878, 33.097790, 37.648151>,  <37.859482, 33.292389, 37.652679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999878, 33.097790, 37.648151>,  <38.233871, 32.773460, 37.640606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999878, 33.097790, 37.648151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043217, 0.007943, 0.999034,
		0.809895, 0.585230, -0.039688,
		-0.584980, 0.810828, 0.018859,
		37.824383, 33.341038, 37.653809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450596, 33.309349, 38.119038>,  <38.233871, 32.773460, 37.640606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450596, 33.309349, 38.119038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072586, 33.437546, 38.093086>,  <37.845779, 33.514462, 38.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072586, 33.437546, 38.093086>,  <38.450596, 33.309349, 38.119038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072586, 33.437546, 38.093086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092029, -0.070281, 0.993273,
		0.313773, 0.944642, 0.095911,
		-0.945028, 0.320489, -0.064882,
		37.789078, 33.533691, 38.073620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345665, 33.836826, 38.673161>,  <38.450596, 33.309349, 38.119038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345665, 33.836826, 38.673161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986267, 33.693035, 38.572380>,  <37.770626, 33.606762, 38.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986267, 33.693035, 38.572380>,  <38.345665, 33.836826, 38.673161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986267, 33.693035, 38.572380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205508, -0.162718, 0.965033,
		-0.387903, 0.918858, 0.072326,
		-0.898498, -0.359476, -0.251951,
		37.716717, 33.585194, 38.496796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898441, 34.194439, 39.156620>,  <38.345665, 33.836826, 38.673161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898441, 34.194439, 39.156620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720776, 33.857327, 39.035004>,  <37.614178, 33.655060, 38.962036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720776, 33.857327, 39.035004>,  <37.898441, 34.194439, 39.156620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720776, 33.857327, 39.035004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253983, -0.206988, 0.944801,
		-0.859191, 0.496868, -0.122115,
		-0.444165, -0.842780, -0.304039,
		37.587524, 33.604492, 38.943790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277153, 34.117043, 39.509075>,  <37.898441, 34.194439, 39.156620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277153, 34.117043, 39.509075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328159, 33.745731, 39.369339>,  <37.358765, 33.522945, 39.285496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328159, 33.745731, 39.369339>,  <37.277153, 34.117043, 39.509075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328159, 33.745731, 39.369339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176889, -0.367855, 0.912904,
		-0.975935, -0.054615, -0.211110,
		0.127516, -0.928278, -0.349342,
		37.366413, 33.467247, 39.264538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936317, 33.812130, 39.977032>,  <37.277153, 34.117043, 39.509075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936317, 33.812130, 39.977032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103619, 33.504192, 39.784199>,  <37.203999, 33.319431, 39.668499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103619, 33.504192, 39.784199>,  <36.936317, 33.812130, 39.977032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103619, 33.504192, 39.784199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113860, -0.570988, 0.813024,
		-0.901165, -0.285162, -0.326473,
		0.418256, -0.769841, -0.482086,
		37.229095, 33.273239, 39.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481159, 33.125477, 40.142559>,  <36.936317, 33.812130, 39.977032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481159, 33.125477, 40.142559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858253, 33.026642, 40.052944>,  <37.084511, 32.967342, 39.999176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858253, 33.026642, 40.052944>,  <36.481159, 33.125477, 40.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858253, 33.026642, 40.052944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081482, -0.480747, 0.873066,
		-0.323428, -0.841328, -0.433085,
		0.942738, -0.247085, -0.224040,
		37.141075, 32.952515, 39.985733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556557, 32.411877, 40.289616>,  <36.481159, 33.125477, 40.142559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556557, 32.411877, 40.289616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938404, 32.530163, 40.303837>,  <37.167511, 32.601135, 40.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938404, 32.530163, 40.303837>,  <36.556557, 32.411877, 40.289616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938404, 32.530163, 40.303837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163083, -0.618833, 0.768407,
		0.249229, -0.727735, -0.638973,
		0.954614, 0.295715, 0.035550,
		37.224789, 32.618877, 40.314503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976639, 31.749687, 40.348644>,  <36.556557, 32.411877, 40.289616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976639, 31.749687, 40.348644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205124, 32.046131, 40.489765>,  <37.342216, 32.223999, 40.574436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205124, 32.046131, 40.489765>,  <36.976639, 31.749687, 40.348644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205124, 32.046131, 40.489765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004139, -0.432423, 0.901661,
		0.820789, -0.513584, -0.250075,
		0.571217, 0.741109, 0.352802,
		37.376488, 32.268463, 40.595604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463589, 31.498676, 40.693810>,  <36.976639, 31.749687, 40.348644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463589, 31.498676, 40.693810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428516, 31.866549, 40.846909>,  <37.407475, 32.087273, 40.938770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428516, 31.866549, 40.846909>,  <37.463589, 31.498676, 40.693810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428516, 31.866549, 40.846909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073870, -0.377170, 0.923193,
		0.993406, 0.109219, -0.034867,
		-0.087680, 0.919682, 0.382751,
		37.402214, 32.142452, 40.961735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859386, 31.484978, 41.251202>,  <37.463589, 31.498676, 40.693810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859386, 31.484978, 41.251202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681107, 31.837017, 41.316654>,  <37.574139, 32.048241, 41.355927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681107, 31.837017, 41.316654>,  <37.859386, 31.484978, 41.251202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681107, 31.837017, 41.316654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023082, -0.171427, 0.984926,
		0.894884, 0.442761, 0.056091,
		-0.445702, 0.880100, 0.163627,
		37.547398, 32.101048, 41.365742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188999, 31.780142, 41.917313>,  <37.859386, 31.484978, 41.251202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188999, 31.780142, 41.917313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848129, 31.974434, 41.839470>,  <37.643608, 32.091011, 41.792767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848129, 31.974434, 41.839470>,  <38.188999, 31.780142, 41.917313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848129, 31.974434, 41.839470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304458, -0.157796, 0.939365,
		0.425572, 0.859747, 0.282354,
		-0.852170, 0.485732, -0.194603,
		37.592480, 32.120155, 41.781090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188206, 32.332539, 42.403393>,  <38.188999, 31.780142, 41.917313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188206, 32.332539, 42.403393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817799, 32.243862, 42.281181>,  <37.595554, 32.190655, 42.207855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817799, 32.243862, 42.281181>,  <38.188206, 32.332539, 42.403393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817799, 32.243862, 42.281181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266325, -0.189893, 0.944993,
		-0.267513, 0.956449, 0.116802,
		-0.926017, -0.221691, -0.305525,
		37.539993, 32.177357, 42.189526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708549, 32.670147, 42.842659>,  <38.188206, 32.332539, 42.403393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708549, 32.670147, 42.842659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482620, 32.380131, 42.685032>,  <37.347061, 32.206120, 42.590454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482620, 32.380131, 42.685032>,  <37.708549, 32.670147, 42.842659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482620, 32.380131, 42.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513247, -0.065280, 0.855755,
		-0.646182, 0.685604, -0.335254,
		-0.564824, -0.725042, -0.394067,
		37.313171, 32.162617, 42.566811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095673, 32.785534, 43.120327>,  <37.708549, 32.670147, 42.842659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095673, 32.785534, 43.120327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046635, 32.412868, 42.983517>,  <37.017212, 32.189270, 42.901432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046635, 32.412868, 42.983517>,  <37.095673, 32.785534, 43.120327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046635, 32.412868, 42.983517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594383, -0.207054, 0.777070,
		-0.794782, 0.298558, -0.528379,
		-0.122597, -0.931660, -0.342021,
		37.009857, 32.133369, 42.880909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416328, 32.678455, 43.250008>,  <37.095673, 32.785534, 43.120327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416328, 32.678455, 43.250008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593700, 32.320488, 43.230030>,  <36.700123, 32.105709, 43.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593700, 32.320488, 43.230030>,  <36.416328, 32.678455, 43.250008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593700, 32.320488, 43.230030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492662, -0.289904, 0.820512,
		-0.748771, -0.339228, -0.569443,
		0.443425, -0.894918, -0.049947,
		36.726727, 32.052013, 43.215046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887257, 32.177895, 43.221672>,  <36.416328, 32.678455, 43.250008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887257, 32.177895, 43.221672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225975, 32.001041, 43.339966>,  <36.429207, 31.894930, 43.410942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225975, 32.001041, 43.339966>,  <35.887257, 32.177895, 43.221672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225975, 32.001041, 43.339966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476242, -0.382532, 0.791746,
		-0.236930, -0.811286, -0.534489,
		0.846793, -0.442135, 0.295736,
		36.480011, 31.868401, 43.428688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603142, 31.490437, 43.259468>,  <35.887257, 32.177895, 43.221672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603142, 31.490437, 43.259468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929424, 31.537773, 43.485962>,  <36.125195, 31.566175, 43.621857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929424, 31.537773, 43.485962>,  <35.603142, 31.490437, 43.259468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929424, 31.537773, 43.485962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528510, -0.245453, 0.812668,
		0.235156, -0.962158, -0.137673,
		0.815707, 0.118342, 0.566230,
		36.174137, 31.573277, 43.655830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588726, 30.924168, 43.690296>,  <35.603142, 31.490437, 43.259468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588726, 30.924168, 43.690296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830418, 31.195349, 43.857765>,  <35.975433, 31.358057, 43.958248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830418, 31.195349, 43.857765>,  <35.588726, 30.924168, 43.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830418, 31.195349, 43.857765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397597, -0.198819, 0.895761,
		0.690525, -0.707707, 0.149420,
		0.604228, 0.677954, 0.418672,
		36.011688, 31.398735, 43.983368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723583, 30.673037, 44.419361>,  <35.588726, 30.924168, 43.690296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723583, 30.673037, 44.419361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897125, 31.032656, 44.442986>,  <36.001251, 31.248426, 44.457161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897125, 31.032656, 44.442986>,  <35.723583, 30.673037, 44.419361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897125, 31.032656, 44.442986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182579, 0.023534, 0.982909,
		0.882292, -0.437220, 0.174358,
		0.433851, 0.899047, 0.059063,
		36.027279, 31.302370, 44.460705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984028, 30.713438, 45.120033>,  <35.723583, 30.673037, 44.419361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984028, 30.713438, 45.120033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954845, 31.096050, 45.007088>,  <35.937336, 31.325617, 44.939320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954845, 31.096050, 45.007088>,  <35.984028, 30.713438, 45.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954845, 31.096050, 45.007088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176986, 0.266209, 0.947528,
		0.981506, 0.119102, 0.149871,
		-0.072956, 0.956529, -0.282365,
		35.932961, 31.383009, 44.922379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390244, 31.195183, 45.634640>,  <35.984028, 30.713438, 45.120033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390244, 31.195183, 45.634640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100788, 31.398554, 45.447941>,  <35.927116, 31.520576, 45.335922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100788, 31.398554, 45.447941>,  <36.390244, 31.195183, 45.634640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100788, 31.398554, 45.447941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315055, 0.358367, 0.878814,
		0.614080, 0.782992, -0.099144,
		-0.723634, 0.508426, -0.466751,
		35.883698, 31.551083, 45.307915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482380, 31.750237, 45.904388>,  <36.390244, 31.195183, 45.634640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482380, 31.750237, 45.904388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104256, 31.779240, 45.777180>,  <35.877380, 31.796640, 45.700855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104256, 31.779240, 45.777180>,  <36.482380, 31.750237, 45.904388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104256, 31.779240, 45.777180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245136, 0.485261, 0.839304,
		0.215177, 0.871358, -0.440947,
		-0.945308, 0.072507, -0.318018,
		35.820663, 31.800991, 45.681774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297424, 32.427441, 46.005650>,  <36.482380, 31.750237, 45.904388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297424, 32.427441, 46.005650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954586, 32.222813, 45.981365>,  <35.748882, 32.100037, 45.966793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954586, 32.222813, 45.981365>,  <36.297424, 32.427441, 46.005650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954586, 32.222813, 45.981365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254419, 0.317865, 0.913363,
		-0.447947, 0.798287, -0.402593,
		-0.857097, -0.511565, -0.060713,
		35.697456, 32.069344, 45.963150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803288, 32.986115, 46.095364>,  <36.297424, 32.427441, 46.005650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803288, 32.986115, 46.095364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644260, 32.629009, 46.180145>,  <35.548843, 32.414745, 46.231014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644260, 32.629009, 46.180145>,  <35.803288, 32.986115, 46.095364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644260, 32.629009, 46.180145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384312, 0.371769, 0.845040,
		-0.833215, 0.254500, -0.490900,
		-0.397564, -0.892758, 0.211956,
		35.524990, 32.361183, 46.243732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124046, 33.120018, 46.338745>,  <35.803288, 32.986115, 46.095364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124046, 33.120018, 46.338745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216145, 32.766106, 46.500805>,  <35.271404, 32.553757, 46.598042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216145, 32.766106, 46.500805>,  <35.124046, 33.120018, 46.338745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216145, 32.766106, 46.500805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438330, 0.277413, 0.854932,
		-0.868823, -0.374434, -0.323954,
		0.230247, -0.884783, 0.405149,
		35.285217, 32.500671, 46.622349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483967, 32.907017, 46.547363>,  <35.124046, 33.120018, 46.338745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483967, 32.907017, 46.547363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731201, 32.653763, 46.733746>,  <34.879539, 32.501812, 46.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731201, 32.653763, 46.733746>,  <34.483967, 32.907017, 46.547363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731201, 32.653763, 46.733746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476094, 0.170187, 0.862769,
		-0.625548, -0.755102, -0.196241,
		0.618081, -0.633133, 0.465960,
		34.916626, 32.463821, 46.873535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085392, 32.462963, 47.059254>,  <34.483967, 32.907017, 46.547363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085392, 32.462963, 47.059254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465073, 32.417049, 47.176453>,  <34.692879, 32.389500, 47.246773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465073, 32.417049, 47.176453>,  <34.085392, 32.462963, 47.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465073, 32.417049, 47.176453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303814, -0.091705, 0.948308,
		-0.081971, -0.989150, -0.121916,
		0.949199, -0.114773, 0.293000,
		34.749832, 32.382614, 47.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037628, 31.822975, 47.470398>,  <34.085392, 32.462963, 47.059254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037628, 31.822975, 47.470398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341850, 32.040417, 47.612408>,  <34.524384, 32.170883, 47.697613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341850, 32.040417, 47.612408>,  <34.037628, 31.822975, 47.470398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341850, 32.040417, 47.612408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408330, -0.024652, 0.912501,
		0.504793, -0.838979, 0.203221,
		0.760559, 0.543606, 0.355024,
		34.570019, 32.203499, 47.718914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141682, 31.585505, 48.145943>,  <34.037628, 31.822975, 47.470398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141682, 31.585505, 48.145943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364937, 31.916958, 48.128719>,  <34.498890, 32.115829, 48.118385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364937, 31.916958, 48.128719>,  <34.141682, 31.585505, 48.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364937, 31.916958, 48.128719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271727, 0.231567, 0.934099,
		0.783998, -0.509650, 0.354407,
		0.558133, 0.828633, -0.043063,
		34.532375, 32.165546, 48.115799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423496, 31.562004, 48.707226>,  <34.141682, 31.585505, 48.145943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423496, 31.562004, 48.707226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470913, 31.948584, 48.616074>,  <34.499363, 32.180531, 48.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470913, 31.948584, 48.616074>,  <34.423496, 31.562004, 48.707226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470913, 31.948584, 48.616074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174116, 0.246170, 0.953459,
		0.977564, -0.073346, 0.197455,
		0.118540, 0.966448, -0.227876,
		34.506474, 32.238518, 48.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898216, 31.765772, 49.124062>,  <34.423496, 31.562004, 48.707226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898216, 31.765772, 49.124062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687695, 32.086929, 49.012081>,  <34.561382, 32.279625, 48.944893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687695, 32.086929, 49.012081>,  <34.898216, 31.765772, 49.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687695, 32.086929, 49.012081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298334, 0.133945, 0.945016,
		0.796243, 0.580882, 0.169034,
		-0.526302, 0.802891, -0.279950,
		34.529804, 32.327797, 48.928097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043102, 32.183075, 49.592506>,  <34.898216, 31.765772, 49.124062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043102, 32.183075, 49.592506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699852, 32.322960, 49.442131>,  <34.493904, 32.406891, 49.351906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699852, 32.322960, 49.442131>,  <35.043102, 32.183075, 49.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699852, 32.322960, 49.442131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277792, 0.299541, 0.912747,
		0.431806, 0.887681, -0.159896,
		-0.858123, 0.349711, -0.375934,
		34.442413, 32.427872, 49.329350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965813, 32.774044, 50.003521>,  <35.043102, 32.183075, 49.592506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965813, 32.774044, 50.003521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601654, 32.703480, 49.853825>,  <34.383160, 32.661140, 49.764008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601654, 32.703480, 49.853825>,  <34.965813, 32.774044, 50.003521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601654, 32.703480, 49.853825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390501, 0.067514, 0.918124,
		-0.136703, 0.981998, -0.130354,
		-0.910396, -0.176413, -0.374242,
		34.328537, 32.650555, 49.741550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685635, 33.496948, 49.845787>,  <34.965813, 32.774044, 50.003521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685635, 33.496948, 49.845787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789188, 33.859657, 49.978901>,  <34.851322, 34.077282, 50.058769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789188, 33.859657, 49.978901>,  <34.685635, 33.496948, 49.845787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789188, 33.859657, 49.978901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746645, 0.030708, -0.664514,
		-0.612780, 0.420508, -0.669084,
		0.258887, 0.906769, 0.332787,
		34.866856, 34.131687, 50.078735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748337, 33.927574, 49.333218>,  <34.685635, 33.496948, 49.845787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748337, 33.927574, 49.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951694, 34.178669, 49.569004>,  <35.073711, 34.329327, 49.710476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951694, 34.178669, 49.569004>,  <34.748337, 33.927574, 49.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951694, 34.178669, 49.569004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556899, 0.282438, -0.781084,
		-0.656807, 0.725375, -0.205998,
		0.508397, 0.627741, 0.589468,
		35.104214, 34.366993, 49.745846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786175, 34.606171, 48.987892>,  <34.748337, 33.927574, 49.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786175, 34.606171, 48.987892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107204, 34.559162, 49.221836>,  <35.299824, 34.530956, 49.362202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107204, 34.559162, 49.221836>,  <34.786175, 34.606171, 48.987892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107204, 34.559162, 49.221836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586739, 0.332589, -0.738324,
		-0.107748, 0.935720, 0.335883,
		0.802576, -0.117523, 0.584859,
		35.347977, 34.523907, 49.397293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243938, 35.185524, 48.865715>,  <34.786175, 34.606171, 48.987892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243938, 35.185524, 48.865715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492836, 34.924507, 49.038689>,  <35.642174, 34.767895, 49.142471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492836, 34.924507, 49.038689>,  <35.243938, 35.185524, 48.865715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492836, 34.924507, 49.038689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690144, 0.196563, -0.696465,
		0.369476, 0.731811, 0.572661,
		0.622245, -0.652546, 0.432430,
		35.679508, 34.728745, 49.168419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878944, 35.435925, 48.842113>,  <35.243938, 35.185524, 48.865715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878944, 35.435925, 48.842113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985706, 35.054775, 48.899788>,  <36.049763, 34.826084, 48.934391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985706, 35.054775, 48.899788>,  <35.878944, 35.435925, 48.842113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985706, 35.054775, 48.899788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812664, 0.142117, -0.565138,
		0.518015, 0.268010, 0.812300,
		0.266904, -0.952876, 0.144184,
		36.065777, 34.768913, 48.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527149, 35.517506, 48.668369>,  <35.878944, 35.435925, 48.842113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527149, 35.517506, 48.668369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476791, 35.120831, 48.657772>,  <36.446579, 34.882824, 48.651413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476791, 35.120831, 48.657772>,  <36.527149, 35.517506, 48.668369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476791, 35.120831, 48.657772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765901, -0.080188, -0.637939,
		0.630513, -0.100599, 0.769632,
		-0.125892, -0.991690, -0.026490,
		36.439022, 34.823322, 48.649826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140373, 35.229958, 48.765842>,  <36.527149, 35.517506, 48.668369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140373, 35.229958, 48.765842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917282, 34.966534, 48.563755>,  <36.783428, 34.808479, 48.442505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917282, 34.966534, 48.563755>,  <37.140373, 35.229958, 48.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917282, 34.966534, 48.563755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619419, 0.074935, -0.781476,
		0.552506, -0.748789, 0.366131,
		-0.557725, -0.658559, -0.505216,
		36.749966, 34.768967, 48.412189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554401, 34.728985, 48.397896>,  <37.140373, 35.229958, 48.765842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554401, 34.728985, 48.397896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225410, 34.643608, 48.187004>,  <37.028015, 34.592384, 48.060467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225410, 34.643608, 48.187004>,  <37.554401, 34.728985, 48.397896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225410, 34.643608, 48.187004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559270, -0.134517, -0.817999,
		0.103672, -0.967651, 0.230007,
		-0.822477, -0.213439, -0.527233,
		36.978668, 34.579575, 48.028835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725533, 34.083973, 48.002907>,  <37.554401, 34.728985, 48.397896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725533, 34.083973, 48.002907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423092, 34.273029, 47.821835>,  <37.241627, 34.386463, 47.713192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423092, 34.273029, 47.821835>,  <37.725533, 34.083973, 48.002907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423092, 34.273029, 47.821835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454472, -0.118527, -0.882840,
		-0.470924, -0.873246, -0.125186,
		-0.756099, 0.472644, -0.452683,
		37.196262, 34.414822, 47.686031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592495, 33.638111, 47.415150>,  <37.725533, 34.083973, 48.002907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592495, 33.638111, 47.415150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403400, 33.974480, 47.309788>,  <37.289944, 34.176300, 47.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403400, 33.974480, 47.309788>,  <37.592495, 33.638111, 47.415150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403400, 33.974480, 47.309788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236160, -0.167077, -0.957243,
		-0.848970, -0.514726, -0.119608,
		-0.472735, 0.840918, -0.263401,
		37.261581, 34.226753, 47.230766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213009, 33.425789, 46.894333>,  <37.592495, 33.638111, 47.415150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213009, 33.425789, 46.894333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216099, 33.821335, 46.834892>,  <37.217953, 34.058662, 46.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216099, 33.821335, 46.834892>,  <37.213009, 33.425789, 46.894333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216099, 33.821335, 46.834892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298593, -0.144105, -0.943438,
		-0.954349, -0.037080, -0.296383,
		0.007728, 0.988867, -0.148598,
		37.218418, 34.117996, 46.790314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798164, 33.508766, 46.331486>,  <37.213009, 33.425789, 46.894333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798164, 33.508766, 46.331486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990707, 33.857506, 46.367649>,  <37.106236, 34.066750, 46.389347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990707, 33.857506, 46.367649>,  <36.798164, 33.508766, 46.331486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990707, 33.857506, 46.367649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139944, 0.025374, -0.989834,
		-0.865280, 0.489118, -0.109796,
		0.481360, 0.871849, 0.090405,
		37.135117, 34.119061, 46.394772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585533, 34.017742, 45.831440>,  <36.798164, 33.508766, 46.331486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585533, 34.017742, 45.831440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961552, 34.122459, 45.918861>,  <37.187164, 34.185291, 45.971313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961552, 34.122459, 45.918861>,  <36.585533, 34.017742, 45.831440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961552, 34.122459, 45.918861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254496, -0.111909, -0.960577,
		-0.227016, 0.958613, -0.171827,
		0.940051, 0.261796, 0.218558,
		37.243568, 34.200996, 45.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740467, 34.473438, 45.350822>,  <36.585533, 34.017742, 45.831440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740467, 34.473438, 45.350822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091553, 34.351696, 45.498875>,  <37.302204, 34.278652, 45.587704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091553, 34.351696, 45.498875>,  <36.740467, 34.473438, 45.350822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091553, 34.351696, 45.498875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359436, -0.092665, -0.928557,
		0.316907, 0.948041, 0.028063,
		0.877710, -0.304353, 0.370126,
		37.354866, 34.260391, 45.609913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237621, 34.899689, 45.029942>,  <36.740467, 34.473438, 45.350822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237621, 34.899689, 45.029942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416950, 34.556831, 45.131374>,  <37.524548, 34.351116, 45.192234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416950, 34.556831, 45.131374>,  <37.237621, 34.899689, 45.029942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416950, 34.556831, 45.131374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662920, 0.128524, -0.737577,
		0.599619, 0.498781, 0.625839,
		0.448325, -0.857146, 0.253586,
		37.551449, 34.299686, 45.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896606, 34.895672, 44.789383>,  <37.237621, 34.899689, 45.029942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896606, 34.895672, 44.789383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899269, 34.505466, 44.877316>,  <37.900867, 34.271343, 44.930073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899269, 34.505466, 44.877316>,  <37.896606, 34.895672, 44.789383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899269, 34.505466, 44.877316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565369, -0.177653, -0.805479,
		0.824811, 0.129645, 0.550345,
		0.006656, -0.975516, 0.219827,
		37.901264, 34.212811, 44.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652962, 34.615738, 44.748882>,  <37.896606, 34.895672, 44.789383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652962, 34.615738, 44.748882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391155, 34.323261, 44.671963>,  <38.234074, 34.147778, 44.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391155, 34.323261, 44.671963>,  <38.652962, 34.615738, 44.748882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391155, 34.323261, 44.671963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530586, -0.263034, -0.805787,
		0.538601, -0.629427, 0.560117,
		-0.654514, -0.731187, -0.192295,
		38.194801, 34.103905, 44.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094852, 34.255886, 44.346691>,  <38.652962, 34.615738, 44.748882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094852, 34.255886, 44.346691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741005, 34.080215, 44.283985>,  <38.528698, 33.974812, 44.246361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741005, 34.080215, 44.283985>,  <39.094852, 34.255886, 44.346691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741005, 34.080215, 44.283985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262866, -0.191979, -0.945540,
		0.385165, -0.877649, 0.285273,
		-0.884618, -0.439178, -0.156760,
		38.475620, 33.948463, 44.236958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251060, 33.617050, 43.943195>,  <39.094852, 34.255886, 44.346691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251060, 33.617050, 43.943195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869896, 33.714939, 43.871559>,  <38.641197, 33.773674, 43.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869896, 33.714939, 43.871559>,  <39.251060, 33.617050, 43.943195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869896, 33.714939, 43.871559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180847, -0.015475, -0.983389,
		-0.243432, -0.969469, -0.029512,
		-0.952909, 0.244726, -0.179092,
		38.584023, 33.788357, 43.817833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862667, 33.102470, 43.502045>,  <39.251060, 33.617050, 43.943195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862667, 33.102470, 43.502045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651482, 33.436672, 43.441143>,  <38.524769, 33.637196, 43.404602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651482, 33.436672, 43.441143>,  <38.862667, 33.102470, 43.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651482, 33.436672, 43.441143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020669, -0.166579, -0.985812,
		-0.849014, -0.523622, 0.070679,
		-0.527966, 0.835507, -0.152251,
		38.493092, 33.687325, 43.395470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336182, 33.046177, 42.898350>,  <38.862667, 33.102470, 43.502045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336182, 33.046177, 42.898350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411983, 33.438011, 42.925201>,  <38.457462, 33.673111, 42.941311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411983, 33.438011, 42.925201>,  <38.336182, 33.046177, 42.898350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411983, 33.438011, 42.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139654, 0.094561, -0.985675,
		-0.971898, 0.177411, 0.154722,
		0.189501, 0.979583, 0.067128,
		38.468834, 33.731888, 42.945339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845734, 33.293575, 42.321369>,  <38.336182, 33.046177, 42.898350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845734, 33.293575, 42.321369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131599, 33.562214, 42.399567>,  <38.303120, 33.723396, 42.446484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131599, 33.562214, 42.399567>,  <37.845734, 33.293575, 42.321369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131599, 33.562214, 42.399567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034831, 0.244973, -0.968904,
		-0.698602, 0.699248, 0.151681,
		0.714662, 0.671595, 0.195494,
		38.345997, 33.763691, 42.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705021, 33.955437, 41.999981>,  <37.845734, 33.293575, 42.321369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705021, 33.955437, 41.999981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095245, 34.001236, 42.074997>,  <38.329380, 34.028717, 42.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095245, 34.001236, 42.074997>,  <37.705021, 33.955437, 41.999981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095245, 34.001236, 42.074997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172316, 0.130957, -0.976298,
		-0.136348, 0.984754, 0.108025,
		0.975560, 0.114502, 0.187544,
		38.387913, 34.035587, 42.131260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934093, 34.540009, 41.635998>,  <37.705021, 33.955437, 41.999981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934093, 34.540009, 41.635998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283592, 34.356522, 41.700680>,  <38.493290, 34.246429, 41.739491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283592, 34.356522, 41.700680>,  <37.934093, 34.540009, 41.635998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283592, 34.356522, 41.700680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287322, 0.218537, -0.932570,
		0.392443, 0.861292, 0.322744,
		0.873747, -0.458713, 0.161705,
		38.545715, 34.218906, 41.749191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444778, 35.009796, 41.315903>,  <37.934093, 34.540009, 41.635998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444778, 35.009796, 41.315903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646385, 34.671612, 41.386520>,  <38.767349, 34.468700, 41.428890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646385, 34.671612, 41.386520>,  <38.444778, 35.009796, 41.315903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646385, 34.671612, 41.386520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431873, 0.069679, -0.899239,
		0.747968, 0.529475, 0.400250,
		0.504013, -0.845459, 0.176549,
		38.797588, 34.417973, 41.439484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072132, 35.172874, 41.138786>,  <38.444778, 35.009796, 41.315903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072132, 35.172874, 41.138786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077991, 34.773758, 41.112858>,  <39.081505, 34.534290, 41.097301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077991, 34.773758, 41.112858>,  <39.072132, 35.172874, 41.138786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077991, 34.773758, 41.112858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424263, 0.064904, -0.903210,
		0.905421, -0.014275, 0.424275,
		0.014644, -0.997789, -0.064821,
		39.082386, 34.474422, 41.093410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683647, 35.025616, 41.092308>,  <39.072132, 35.172874, 41.138786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683647, 35.025616, 41.092308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472462, 34.730076, 40.924805>,  <39.345749, 34.552753, 40.824303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472462, 34.730076, 40.924805>,  <39.683647, 35.025616, 41.092308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472462, 34.730076, 40.924805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581165, 0.045224, -0.812528,
		0.619272, -0.672354, 0.405515,
		-0.527967, -0.738847, -0.418754,
		39.314072, 34.508423, 40.799179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226509, 34.594967, 40.794174>,  <39.683647, 35.025616, 41.092308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226509, 34.594967, 40.794174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876167, 34.496727, 40.628014>,  <39.665962, 34.437782, 40.528316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876167, 34.496727, 40.628014>,  <40.226509, 34.594967, 40.794174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876167, 34.496727, 40.628014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430496, -0.008662, -0.902551,
		0.218065, -0.969334, 0.113316,
		-0.875854, -0.245597, -0.415405,
		39.613411, 34.423050, 40.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451378, 34.069710, 40.294983>,  <40.226509, 34.594967, 40.794174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451378, 34.069710, 40.294983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096897, 34.211697, 40.175892>,  <39.884209, 34.296890, 40.104439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096897, 34.211697, 40.175892>,  <40.451378, 34.069710, 40.294983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096897, 34.211697, 40.175892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358913, 0.119648, -0.925670,
		-0.292962, -0.927190, -0.233435,
		-0.886203, 0.354969, -0.297728,
		39.831036, 34.318188, 40.086575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206242, 33.828434, 39.631443>,  <40.451378, 34.069710, 40.294983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206242, 33.828434, 39.631443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949547, 34.134544, 39.651569>,  <39.795528, 34.318211, 39.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949547, 34.134544, 39.651569>,  <40.206242, 33.828434, 39.631443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949547, 34.134544, 39.651569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198249, 0.228904, -0.953047,
		-0.740859, -0.601630, -0.298611,
		-0.641735, 0.765273, 0.050313,
		39.757027, 34.364128, 39.666664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808807, 33.780064, 38.984909>,  <40.206242, 33.828434, 39.631443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808807, 33.780064, 38.984909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792953, 34.159260, 39.111237>,  <39.783440, 34.386780, 39.187031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792953, 34.159260, 39.111237>,  <39.808807, 33.780064, 38.984909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792953, 34.159260, 39.111237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192073, 0.317398, -0.928637,
		-0.980580, 0.023850, -0.194665,
		-0.039638, 0.947993, 0.315815,
		39.781063, 34.443657, 39.205982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498512, 34.191944, 38.421154>,  <39.808807, 33.780064, 38.984909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498512, 34.191944, 38.421154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672489, 34.476944, 38.641396>,  <39.776875, 34.647945, 38.773540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672489, 34.476944, 38.641396>,  <39.498512, 34.191944, 38.421154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672489, 34.476944, 38.641396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269659, 0.480344, -0.834598,
		-0.859130, 0.511481, 0.016792,
		0.434947, 0.712500, 0.550604,
		39.802975, 34.690693, 38.806576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130795, 34.848106, 38.287029>,  <39.498512, 34.191944, 38.421154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130795, 34.848106, 38.287029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510681, 34.925148, 38.385773>,  <39.738613, 34.971371, 38.445019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510681, 34.925148, 38.385773>,  <39.130795, 34.848106, 38.287029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510681, 34.925148, 38.385773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084195, 0.602288, -0.793827,
		-0.301572, 0.774696, 0.555788,
		0.949719, 0.192602, 0.246858,
		39.795597, 34.982929, 38.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191513, 35.511032, 38.020004>,  <39.130795, 34.848106, 38.287029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191513, 35.511032, 38.020004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566402, 35.395042, 38.097500>,  <39.791336, 35.325447, 38.143997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566402, 35.395042, 38.097500>,  <39.191513, 35.511032, 38.020004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566402, 35.395042, 38.097500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333012, 0.579198, -0.744064,
		0.103551, 0.761868, 0.639402,
		0.937219, -0.289977, 0.193735,
		39.847569, 35.308048, 38.155621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593006, 36.144020, 38.029449>,  <39.191513, 35.511032, 38.020004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593006, 36.144020, 38.029449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849239, 35.847275, 37.950157>,  <40.002979, 35.669228, 37.902580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849239, 35.847275, 37.950157>,  <39.593006, 36.144020, 38.029449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849239, 35.847275, 37.950157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273727, 0.461801, -0.843690,
		0.717447, 0.486189, 0.498889,
		0.640580, -0.741863, -0.198234,
		40.041412, 35.624718, 37.890686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257584, 36.410889, 37.799122>,  <39.593006, 36.144020, 38.029449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257584, 36.410889, 37.799122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253750, 36.052635, 37.621243>,  <40.251450, 35.837685, 37.514515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253750, 36.052635, 37.621243>,  <40.257584, 36.410889, 37.799122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253750, 36.052635, 37.621243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389266, 0.406293, -0.826679,
		0.921075, -0.181032, 0.344743,
		-0.009589, -0.895630, -0.444696,
		40.250874, 35.783947, 37.487835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671116, 36.500519, 37.181793>,  <40.257584, 36.410889, 37.799122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671116, 36.500519, 37.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514191, 36.138298, 37.117207>,  <40.420036, 35.920967, 37.078457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514191, 36.138298, 37.117207>,  <40.671116, 36.500519, 37.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514191, 36.138298, 37.117207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140187, 0.114622, -0.983468,
		0.909088, -0.408458, 0.081980,
		-0.392309, -0.905552, -0.161462,
		40.396500, 35.866634, 37.068768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035580, 36.145927, 36.614758>,  <40.671116, 36.500519, 37.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035580, 36.145927, 36.614758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689362, 35.945694, 36.621044>,  <40.481632, 35.825554, 36.624817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689362, 35.945694, 36.621044>,  <41.035580, 36.145927, 36.614758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689362, 35.945694, 36.621044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020990, 0.004905, -0.999768,
		0.500394, -0.865672, -0.014752,
		-0.865543, -0.500587, 0.015716,
		40.429699, 35.795517, 36.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133652, 35.647930, 36.114731>,  <41.035580, 36.145927, 36.614758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133652, 35.647930, 36.114731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741665, 35.706631, 36.168575>,  <40.506474, 35.741852, 36.200882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741665, 35.706631, 36.168575>,  <41.133652, 35.647930, 36.114731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741665, 35.706631, 36.168575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116212, 0.127482, -0.985009,
		-0.161710, -0.980924, -0.107875,
		-0.979972, 0.146750, 0.134610,
		40.447674, 35.750656, 36.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532440, 35.211296, 35.708626>,  <41.133652, 35.647930, 36.114731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532440, 35.211296, 35.708626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420685, 35.592789, 35.753067>,  <40.353630, 35.821682, 35.779732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420685, 35.592789, 35.753067>,  <40.532440, 35.211296, 35.708626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420685, 35.592789, 35.753067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245322, 0.040971, -0.968575,
		-0.928310, -0.297867, 0.222524,
		-0.279389, 0.953728, 0.111107,
		40.336868, 35.878906, 35.786400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684662, 34.798187, 35.020496>,  <40.532440, 35.211296, 35.708626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684662, 34.798187, 35.020496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908394, 34.557381, 34.792561>,  <41.042633, 34.412895, 34.655800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908394, 34.557381, 34.792561>,  <40.684662, 34.798187, 35.020496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908394, 34.557381, 34.792561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723607, 0.019232, 0.689944,
		-0.404400, -0.798251, 0.446381,
		0.559333, -0.602018, -0.569842,
		41.076195, 34.376774, 34.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865932, 34.163483, 35.419556>,  <40.684662, 34.798187, 35.020496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865932, 34.163483, 35.419556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120052, 34.314068, 35.149841>,  <41.272526, 34.404419, 34.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120052, 34.314068, 35.149841>,  <40.865932, 34.163483, 35.419556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120052, 34.314068, 35.149841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634029, 0.244232, 0.733729,
		0.440908, -0.893657, -0.083529,
		0.635302, 0.376467, -0.674288,
		41.310642, 34.427010, 34.947556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441517, 33.894363, 35.804470>,  <40.865932, 34.163483, 35.419556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441517, 33.894363, 35.804470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571480, 34.171471, 35.546940>,  <41.649460, 34.337734, 35.392422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571480, 34.171471, 35.546940>,  <41.441517, 33.894363, 35.804470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571480, 34.171471, 35.546940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732385, 0.246405, 0.634742,
		0.598369, -0.677760, -0.427312,
		0.324911, 0.692767, -0.643822,
		41.668953, 34.379299, 35.353794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692566, 34.522373, 36.212891>,  <41.441517, 33.894363, 35.804470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692566, 34.522373, 36.212891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916901, 34.713940, 36.483032>,  <42.051502, 34.828880, 36.645119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916901, 34.713940, 36.483032>,  <41.692566, 34.522373, 36.212891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916901, 34.713940, 36.483032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156793, -0.862395, 0.481342,
		0.812941, -0.164066, -0.558756,
		0.560841, 0.478912, 0.675353,
		42.085152, 34.857613, 36.685638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412189, 34.194901, 36.248043>,  <41.692566, 34.522373, 36.212891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412189, 34.194901, 36.248043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251457, 34.372581, 36.568348>,  <42.155018, 34.479191, 36.760532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251457, 34.372581, 36.568348>,  <42.412189, 34.194901, 36.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251457, 34.372581, 36.568348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039969, -0.882142, 0.469285,
		0.914842, 0.156567, 0.372224,
		-0.401829, 0.444200, 0.800762,
		42.130909, 34.505840, 36.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320427, 33.835251, 35.688862>,  <42.412189, 34.194901, 36.248043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320427, 33.835251, 35.688862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178761, 34.209305, 35.692783>,  <42.093761, 34.433735, 35.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178761, 34.209305, 35.692783>,  <42.320427, 33.835251, 35.688862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178761, 34.209305, 35.692783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926664, 0.349507, 0.138342,
		0.125941, 0.058083, -0.990336,
		-0.354165, 0.935131, 0.009806,
		42.072510, 34.489845, 35.695724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869602, 34.380245, 35.491646>,  <42.320427, 33.835251, 35.688862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869602, 34.380245, 35.491646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608444, 34.613865, 35.684563>,  <42.451748, 34.754036, 35.800312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608444, 34.613865, 35.684563>,  <42.869602, 34.380245, 35.491646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608444, 34.613865, 35.684563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756781, 0.529665, 0.383064,
		-0.031724, 0.615092, -0.787817,
		-0.652899, 0.584053, 0.482293,
		42.412575, 34.789082, 35.829250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067585, 33.743317, 35.729984>,  <42.869602, 34.380245, 35.491646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067585, 33.743317, 35.729984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458290, 33.799423, 35.665173>,  <43.692715, 33.833088, 35.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458290, 33.799423, 35.665173>,  <43.067585, 33.743317, 35.729984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458290, 33.799423, 35.665173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089346, -0.953749, -0.287021,
		-0.194792, 0.265876, -0.944122,
		0.976767, 0.140263, -0.162027,
		43.751320, 33.841503, 35.616566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214546, 33.461998, 35.131687>,  <43.067585, 33.743317, 35.729984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214546, 33.461998, 35.131687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566055, 33.479759, 35.321754>,  <43.776962, 33.490417, 35.435795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566055, 33.479759, 35.321754>,  <43.214546, 33.461998, 35.131687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566055, 33.479759, 35.321754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216152, -0.924713, -0.313342,
		0.425481, 0.378066, -0.822212,
		0.878774, 0.044402, 0.475168,
		43.829689, 33.493080, 35.464306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719116, 33.425484, 34.628872>,  <43.214546, 33.461998, 35.131687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719116, 33.425484, 34.628872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870365, 33.297314, 34.976288>,  <43.961113, 33.220413, 35.184738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870365, 33.297314, 34.976288>,  <43.719116, 33.425484, 34.628872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870365, 33.297314, 34.976288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055655, -0.928625, -0.366821,
		0.924081, 0.187041, -0.333301,
		0.378122, -0.320423, 0.868535,
		43.983803, 33.201187, 35.236847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384243, 33.039417, 34.505264>,  <43.719116, 33.425484, 34.628872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384243, 33.039417, 34.505264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257008, 32.911247, 34.862171>,  <44.180668, 32.834343, 35.076317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257008, 32.911247, 34.862171>,  <44.384243, 33.039417, 34.505264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257008, 32.911247, 34.862171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049920, -0.945508, -0.321751,
		0.946747, -0.057802, 0.316749,
		-0.318086, -0.320429, 0.892271,
		44.161583, 32.815117, 35.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888748, 32.459602, 34.549282>,  <44.384243, 33.039417, 34.505264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888748, 32.459602, 34.549282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597698, 32.406090, 34.818405>,  <44.423069, 32.373981, 34.979877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597698, 32.406090, 34.818405>,  <44.888748, 32.459602, 34.549282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597698, 32.406090, 34.818405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060478, -0.964470, -0.257176,
		0.683305, -0.227817, 0.693682,
		-0.727624, -0.133777, 0.672805,
		44.379410, 32.365955, 35.020248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948612, 31.785545, 34.923485>,  <44.888748, 32.459602, 34.549282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948612, 31.785545, 34.923485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568592, 31.871626, 35.013897>,  <44.340580, 31.923275, 35.068146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568592, 31.871626, 35.013897>,  <44.948612, 31.785545, 34.923485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568592, 31.871626, 35.013897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238997, -0.967426, -0.083474,
		0.200704, -0.133326, 0.970537,
		-0.950052, 0.215202, 0.226031,
		44.283577, 31.936186, 35.081707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795986, 31.263674, 35.494671>,  <44.948612, 31.785545, 34.923485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795986, 31.263674, 35.494671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458385, 31.407421, 35.335411>,  <44.255825, 31.493670, 35.239857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458385, 31.407421, 35.335411>,  <44.795986, 31.263674, 35.494671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458385, 31.407421, 35.335411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370531, -0.927385, -0.051609,
		-0.387782, 0.103968, 0.915869,
		-0.843997, 0.359370, -0.398147,
		44.205185, 31.515232, 35.215965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293186, 30.916307, 35.792019>,  <44.795986, 31.263674, 35.494671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293186, 30.916307, 35.792019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135201, 31.062204, 35.454742>,  <44.040409, 31.149742, 35.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135201, 31.062204, 35.454742>,  <44.293186, 30.916307, 35.792019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135201, 31.062204, 35.454742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399747, -0.894599, -0.199735,
		-0.827169, 0.258176, 0.499136,
		-0.394960, 0.364743, -0.843190,
		44.016712, 31.171627, 35.201786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571419, 30.824120, 35.840733>,  <44.293186, 30.916307, 35.792019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571419, 30.824120, 35.840733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637371, 30.877028, 35.449772>,  <43.676941, 30.908773, 35.215195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637371, 30.877028, 35.449772>,  <43.571419, 30.824120, 35.840733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637371, 30.877028, 35.449772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612685, -0.762849, -0.206588,
		-0.772938, 0.632902, -0.044736,
		0.164877, 0.132271, -0.977405,
		43.686832, 30.916708, 35.156551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922050, 30.718424, 35.510975>,  <43.571419, 30.824120, 35.840733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922050, 30.718424, 35.510975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172478, 30.681923, 35.201210>,  <43.322735, 30.660023, 35.015350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172478, 30.681923, 35.201210>,  <42.922050, 30.718424, 35.510975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172478, 30.681923, 35.201210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621739, -0.657805, -0.425127,
		-0.470618, 0.747640, -0.468565,
		0.626066, -0.091253, -0.774412,
		43.360298, 30.654547, 34.968887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516457, 30.777731, 34.887894>,  <42.922050, 30.718424, 35.510975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516457, 30.777731, 34.887894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856846, 30.575548, 34.830826>,  <43.061081, 30.454239, 34.796585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856846, 30.575548, 34.830826>,  <42.516457, 30.777731, 34.887894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856846, 30.575548, 34.830826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512987, -0.741653, -0.432199,
		0.112645, 0.440979, -0.890420,
		0.850973, -0.505459, -0.142673,
		43.112137, 30.423910, 34.788025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290684, 30.300821, 34.384747>,  <42.516457, 30.777731, 34.887894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290684, 30.300821, 34.384747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632721, 30.124691, 34.494244>,  <42.837944, 30.019012, 34.559940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632721, 30.124691, 34.494244>,  <42.290684, 30.300821, 34.384747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632721, 30.124691, 34.494244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282278, -0.838231, -0.466571,
		0.434900, 0.321689, -0.841057,
		0.855091, -0.440324, 0.273741,
		42.889248, 29.992594, 34.576366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546928, 30.011555, 33.730370>,  <42.290684, 30.300821, 34.384747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546928, 30.011555, 33.730370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754482, 29.835770, 34.023663>,  <42.879013, 29.730299, 34.199638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754482, 29.835770, 34.023663>,  <42.546928, 30.011555, 33.730370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754482, 29.835770, 34.023663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027946, -0.866002, -0.499259,
		0.854389, 0.238566, -0.461635,
		0.518883, -0.439463, 0.733235,
		42.910149, 29.703932, 34.243633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118664, 29.588514, 33.409679>,  <42.546928, 30.011555, 33.730370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118664, 29.588514, 33.409679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055344, 29.440702, 33.775932>,  <43.017349, 29.352016, 33.995686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055344, 29.440702, 33.775932>,  <43.118664, 29.588514, 33.409679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055344, 29.440702, 33.775932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108952, -0.928204, -0.355763,
		0.981361, 0.043442, 0.187200,
		-0.158305, -0.369528, 0.915636,
		43.007851, 29.329844, 34.050625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626133, 29.000509, 33.425220>,  <43.118664, 29.588514, 33.409679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626133, 29.000509, 33.425220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366570, 28.967567, 33.727779>,  <43.210831, 28.947802, 33.909313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366570, 28.967567, 33.727779>,  <43.626133, 29.000509, 33.425220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366570, 28.967567, 33.727779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040078, -0.996445, -0.074107,
		0.759807, -0.017775, 0.649906,
		-0.648913, -0.082354, 0.756393,
		43.171894, 28.942862, 33.954697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927013, 28.614491, 33.934605>,  <43.626133, 29.000509, 33.425220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927013, 28.614491, 33.934605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528275, 28.592318, 33.911892>,  <43.289032, 28.579014, 33.898266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528275, 28.592318, 33.911892>,  <43.927013, 28.614491, 33.934605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528275, 28.592318, 33.911892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059704, -0.995281, -0.076488,
		-0.052274, -0.079637, 0.995452,
		-0.996846, -0.055435, -0.056782,
		43.229221, 28.575687, 33.894855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901676, 27.935957, 34.161564>,  <43.927013, 28.614491, 33.934605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901676, 27.935957, 34.161564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549355, 28.059835, 34.018299>,  <43.337963, 28.134163, 33.932343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549355, 28.059835, 34.018299>,  <43.901676, 27.935957, 34.161564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549355, 28.059835, 34.018299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245945, -0.945627, -0.212839,
		-0.404601, -0.099382, 0.909077,
		-0.880800, 0.309698, -0.358159,
		43.285114, 28.152744, 33.910851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423714, 27.477867, 34.527348>,  <43.901676, 27.935957, 34.161564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423714, 27.477867, 34.527348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247608, 27.614595, 34.195244>,  <43.141945, 27.696632, 33.995983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247608, 27.614595, 34.195244>,  <43.423714, 27.477867, 34.527348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247608, 27.614595, 34.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193320, -0.939097, -0.284121,
		-0.876810, 0.035417, 0.479531,
		-0.440264, 0.341823, -0.830256,
		43.115528, 27.717142, 33.946167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689438, 27.183832, 34.489876>,  <43.423714, 27.477867, 34.527348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689438, 27.183832, 34.489876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772331, 27.304560, 34.117649>,  <42.822067, 27.376995, 33.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772331, 27.304560, 34.117649>,  <42.689438, 27.183832, 34.489876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772331, 27.304560, 34.117649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145893, -0.931047, -0.334463,
		-0.967351, 0.205076, -0.148913,
		0.207236, 0.301817, -0.930569,
		42.834503, 27.395105, 33.838478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113686, 26.874792, 34.074242>,  <42.689438, 27.183832, 34.489876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113686, 26.874792, 34.074242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400772, 26.962816, 33.809982>,  <42.573025, 27.015631, 33.651428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400772, 26.962816, 33.809982>,  <42.113686, 26.874792, 34.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400772, 26.962816, 33.809982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064278, -0.923764, -0.377530,
		-0.693363, 0.313424, -0.648855,
		0.717716, 0.220058, -0.660650,
		42.616089, 27.028833, 33.611786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824680, 26.610804, 33.554207>,  <42.113686, 26.874792, 34.074242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824680, 26.610804, 33.554207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203445, 26.691938, 33.454430>,  <42.430702, 26.740620, 33.394566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203445, 26.691938, 33.454430>,  <41.824680, 26.610804, 33.554207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203445, 26.691938, 33.454430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086354, -0.907809, -0.410396,
		-0.309689, 0.367068, -0.877128,
		0.946909, 0.202839, -0.249440,
		42.487518, 26.752790, 33.379597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271626, 26.474657, 34.104691>,  <41.824680, 26.610804, 33.554207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271626, 26.474657, 34.104691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140251, 26.428942, 33.729656>,  <41.061428, 26.401512, 33.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140251, 26.428942, 33.729656>,  <41.271626, 26.474657, 34.104691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140251, 26.428942, 33.729656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817508, -0.531588, -0.221575,
		-0.473086, -0.839257, 0.268024,
		-0.328437, -0.114288, -0.937586,
		41.041721, 26.394655, 33.448380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826248, 26.142361, 34.572357>,  <41.271626, 26.474657, 34.104691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826248, 26.142361, 34.572357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816399, 26.403770, 34.269756>,  <40.810490, 26.560616, 34.088196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816399, 26.403770, 34.269756>,  <40.826248, 26.142361, 34.572357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816399, 26.403770, 34.269756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996035, 0.048678, 0.074466,
		0.085491, 0.755338, 0.649735,
		-0.024619, 0.653525, -0.756505,
		40.809013, 26.599829, 34.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710285, 26.819551, 34.945236>,  <40.826248, 26.142361, 34.572357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710285, 26.819551, 34.945236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498466, 26.662766, 35.246151>,  <40.371376, 26.568693, 35.426701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498466, 26.662766, 35.246151>,  <40.710285, 26.819551, 34.945236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498466, 26.662766, 35.246151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774042, -0.586093, 0.239486,
		0.347042, 0.709124, 0.613763,
		-0.529548, -0.391966, 0.752291,
		40.339603, 26.545176, 35.471840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080975, 26.740507, 35.569942>,  <40.710285, 26.819551, 34.945236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080975, 26.740507, 35.569942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777466, 26.486496, 35.627903>,  <40.595360, 26.334089, 35.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777466, 26.486496, 35.627903>,  <41.080975, 26.740507, 35.569942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777466, 26.486496, 35.627903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651337, -0.741237, 0.162258,
		0.004369, 0.217498, 0.976051,
		-0.758776, -0.635029, 0.144903,
		40.549831, 26.295988, 35.671375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266380, 26.343884, 36.029411>,  <41.080975, 26.740507, 35.569942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266380, 26.343884, 36.029411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999229, 26.118109, 35.835361>,  <40.838940, 25.982643, 35.718933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999229, 26.118109, 35.835361>,  <41.266380, 26.343884, 36.029411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999229, 26.118109, 35.835361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588036, -0.799743, 0.120931,
		-0.456233, -0.204504, 0.866042,
		-0.667881, -0.564437, -0.485125,
		40.798866, 25.948778, 35.689823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980156, 26.544048, 36.047035>,  <41.266380, 26.343884, 36.029411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980156, 26.544048, 36.047035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786221, 26.322273, 36.317600>,  <41.669861, 26.189209, 36.479939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786221, 26.322273, 36.317600>,  <41.980156, 26.544048, 36.047035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786221, 26.322273, 36.317600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803152, 0.588410, -0.093381,
		-0.346233, -0.588535, -0.730581,
		-0.484840, -0.554436, 0.676410,
		41.640770, 26.155943, 36.520523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158646, 26.402409, 36.798004>,  <41.980156, 26.544048, 36.047035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158646, 26.402409, 36.798004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240520, 26.719582, 36.568447>,  <42.289646, 26.909885, 36.430714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240520, 26.719582, 36.568447>,  <42.158646, 26.402409, 36.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240520, 26.719582, 36.568447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501794, 0.418401, 0.757063,
		0.840420, -0.442940, -0.312248,
		0.204688, 0.792935, -0.573897,
		42.301926, 26.957462, 36.396278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940517, 26.555826, 36.673870>,  <42.158646, 26.402409, 36.798004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940517, 26.555826, 36.673870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705315, 26.879274, 36.681698>,  <42.564194, 27.073343, 36.686394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705315, 26.879274, 36.681698>,  <42.940517, 26.555826, 36.673870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705315, 26.879274, 36.681698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421701, 0.285823, 0.860507,
		0.690233, 0.514232, -0.509062,
		-0.588002, 0.808622, 0.019568,
		42.528915, 27.121861, 36.687569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333935, 26.990168, 36.990379>,  <42.940517, 26.555826, 36.673870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333935, 26.990168, 36.990379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960831, 27.131321, 37.019844>,  <42.736969, 27.216013, 37.037521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960831, 27.131321, 37.019844>,  <43.333935, 26.990168, 36.990379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960831, 27.131321, 37.019844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152021, 0.199775, 0.967977,
		0.326869, 0.914091, -0.239988,
		-0.932763, 0.352886, 0.073661,
		42.681004, 27.237186, 37.041943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352566, 27.672297, 37.294655>,  <43.333935, 26.990168, 36.990379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352566, 27.672297, 37.294655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997112, 27.505125, 37.370197>,  <42.783840, 27.404823, 37.415524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997112, 27.505125, 37.370197>,  <43.352566, 27.672297, 37.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997112, 27.505125, 37.370197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136136, 0.152860, 0.978826,
		-0.437947, 0.895528, -0.078942,
		-0.888634, -0.417927, 0.188858,
		42.730522, 27.379747, 37.426853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176804, 27.440382, 37.970207>,  <43.352566, 27.672297, 37.294655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176804, 27.440382, 37.970207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897858, 27.548204, 38.235844>,  <42.730492, 27.612898, 38.395226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897858, 27.548204, 38.235844>,  <43.176804, 27.440382, 37.970207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897858, 27.548204, 38.235844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268529, 0.957354, -0.106610,
		-0.664512, 0.103983, -0.740008,
		-0.697364, 0.269558, 0.664096,
		42.688648, 27.629072, 38.435074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817749, 28.106787, 37.662025>,  <43.176804, 27.440382, 37.970207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817749, 28.106787, 37.662025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762856, 28.111938, 38.058208>,  <42.729919, 28.115028, 38.295918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762856, 28.111938, 38.058208>,  <42.817749, 28.106787, 37.662025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762856, 28.111938, 38.058208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326182, 0.944734, 0.032913,
		-0.935292, 0.327585, -0.133853,
		-0.137237, 0.012877, 0.990454,
		42.721684, 28.115801, 38.355347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416771, 28.696016, 37.792839>,  <42.817749, 28.106787, 37.662025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416771, 28.696016, 37.792839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587330, 28.609739, 38.144218>,  <42.689663, 28.557972, 38.355045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587330, 28.609739, 38.144218>,  <42.416771, 28.696016, 37.792839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587330, 28.609739, 38.144218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521322, 0.852236, -0.043790,
		-0.739196, 0.476624, 0.475834,
		0.426394, -0.215693, 0.878444,
		42.715248, 28.545031, 38.407753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626526, 29.354288, 38.000954>,  <42.416771, 28.696016, 37.792839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626526, 29.354288, 38.000954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833363, 29.122047, 38.252518>,  <42.957462, 28.982704, 38.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833363, 29.122047, 38.252518>,  <42.626526, 29.354288, 38.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833363, 29.122047, 38.252518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689589, 0.717846, 0.095728,
		-0.507038, 0.384187, 0.771565,
		0.517087, -0.580600, 0.628907,
		42.988487, 28.947868, 38.441189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730850, 29.877960, 38.530537>,  <42.626526, 29.354288, 38.000954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730850, 29.877960, 38.530537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999535, 29.581709, 38.537224>,  <43.160744, 29.403959, 38.541237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999535, 29.581709, 38.537224>,  <42.730850, 29.877960, 38.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999535, 29.581709, 38.537224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738614, 0.667805, -0.092116,
		0.057058, 0.074225, 0.995608,
		0.671709, -0.740626, 0.016720,
		43.201046, 29.359522, 38.542240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277096, 30.089262, 38.973640>,  <42.730850, 29.877960, 38.530537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277096, 30.089262, 38.973640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431774, 29.810911, 38.731575>,  <43.524582, 29.643902, 38.586334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431774, 29.810911, 38.731575>,  <43.277096, 30.089262, 38.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431774, 29.810911, 38.731575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814975, 0.564977, -0.128907,
		0.431609, -0.443348, 0.785593,
		0.386692, -0.695876, -0.605167,
		43.547783, 29.602148, 38.550026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993992, 30.304705, 39.085308>,  <43.277096, 30.089262, 38.973640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993992, 30.304705, 39.085308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008484, 30.049751, 38.777431>,  <44.017178, 29.896780, 38.592705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008484, 30.049751, 38.777431>,  <43.993992, 30.304705, 39.085308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008484, 30.049751, 38.777431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876508, 0.390222, -0.281886,
		0.480021, -0.664433, 0.572808,
		0.036228, -0.637382, -0.769696,
		44.019352, 29.858536, 38.546524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714104, 30.184320, 39.014835>,  <43.993992, 30.304705, 39.085308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714104, 30.184320, 39.014835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561005, 30.089653, 38.657627>,  <44.469147, 30.032852, 38.443302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561005, 30.089653, 38.657627>,  <44.714104, 30.184320, 39.014835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561005, 30.089653, 38.657627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779780, 0.435608, -0.449654,
		0.495427, -0.868466, 0.017822,
		-0.382746, -0.236668, -0.893025,
		44.446182, 30.018652, 38.389721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265308, 30.050280, 38.673531>,  <44.714104, 30.184320, 39.014835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265308, 30.050280, 38.673531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979820, 30.113207, 38.400517>,  <44.808529, 30.150963, 38.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979820, 30.113207, 38.400517>,  <45.265308, 30.050280, 38.673531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979820, 30.113207, 38.400517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651652, 0.506428, -0.564695,
		0.256818, -0.847810, -0.463965,
		-0.713718, 0.157320, -0.682537,
		44.765705, 30.160402, 38.195755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572052, 29.859198, 38.031857>,  <45.265308, 30.050280, 38.673531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572052, 29.859198, 38.031857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267563, 30.103962, 37.945965>,  <45.084869, 30.250820, 37.894432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267563, 30.103962, 37.945965>,  <45.572052, 29.859198, 38.031857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267563, 30.103962, 37.945965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563627, 0.460522, -0.685744,
		-0.320728, -0.643028, -0.695449,
		-0.761222, 0.611911, -0.214725,
		45.039196, 30.287535, 37.881546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644909, 29.933910, 37.356426>,  <45.572052, 29.859198, 38.031857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644909, 29.933910, 37.356426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394997, 30.236353, 37.434353>,  <45.245049, 30.417818, 37.481110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394997, 30.236353, 37.434353>,  <45.644909, 29.933910, 37.356426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394997, 30.236353, 37.434353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506640, 0.582429, -0.635682,
		-0.594108, -0.298462, -0.746965,
		-0.624781, 0.756106, 0.194813,
		45.207561, 30.463184, 37.492798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702618, 30.359964, 36.745747>,  <45.644909, 29.933910, 37.356426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702618, 30.359964, 36.745747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562057, 30.607136, 37.027081>,  <45.477722, 30.755438, 37.195881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562057, 30.607136, 37.027081>,  <45.702618, 30.359964, 36.745747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562057, 30.607136, 37.027081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490199, 0.761477, -0.424097,
		-0.797637, 0.195749, -0.570489,
		-0.351398, 0.617929, 0.703338,
		45.456638, 30.792515, 37.238083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390938, 31.114912, 36.408367>,  <45.702618, 30.359964, 36.745747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390938, 31.114912, 36.408367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506504, 31.164032, 36.788147>,  <45.575844, 31.193504, 37.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506504, 31.164032, 36.788147>,  <45.390938, 31.114912, 36.408367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506504, 31.164032, 36.788147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456035, 0.854340, -0.249269,
		-0.841761, 0.504998, 0.190830,
		0.288914, 0.122799, 0.949447,
		45.593178, 31.200872, 37.072983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277046, 31.802372, 36.599815>,  <45.390938, 31.114912, 36.408367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277046, 31.802372, 36.599815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557220, 31.679440, 36.857479>,  <45.725327, 31.605680, 37.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557220, 31.679440, 36.857479>,  <45.277046, 31.802372, 36.599815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557220, 31.679440, 36.857479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494259, 0.859966, -0.127146,
		-0.514878, 0.407438, 0.754251,
		0.700434, -0.307331, 0.644158,
		45.767349, 31.587240, 37.050728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565643, 32.417122, 36.925179>,  <45.277046, 31.802372, 36.599815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565643, 32.417122, 36.925179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844994, 32.145039, 37.014240>,  <46.012604, 31.981787, 37.067677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844994, 32.145039, 37.014240>,  <45.565643, 32.417122, 36.925179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844994, 32.145039, 37.014240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715555, 0.670386, -0.196376,
		-0.015689, 0.296469, 0.954914,
		0.698380, -0.680212, 0.222657,
		46.054508, 31.940975, 37.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905754, 32.846436, 37.276741>,  <45.565643, 32.417122, 36.925179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905754, 32.846436, 37.276741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130932, 32.535011, 37.165791>,  <46.266037, 32.348156, 37.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.130932, 32.535011, 37.165791>,  <45.905754, 32.846436, 37.276741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130932, 32.535011, 37.165791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739858, 0.624293, -0.250735,
		0.368378, -0.064072, 0.927465,
		0.562945, -0.778558, -0.277381,
		46.299816, 32.301445, 37.082577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660786, 32.955883, 37.558403>,  <45.905754, 32.846436, 37.276741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660786, 32.955883, 37.558403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685890, 32.687908, 37.262501>,  <46.700951, 32.527122, 37.084957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685890, 32.687908, 37.262501>,  <46.660786, 32.955883, 37.558403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685890, 32.687908, 37.262501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700641, 0.557436, -0.445385,
		0.710749, -0.490354, 0.504370,
		0.062758, -0.669939, -0.739759,
		46.704716, 32.486927, 37.040573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406128, 32.975239, 37.239822>,  <46.660786, 32.955883, 37.558403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406128, 32.975239, 37.239822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203125, 32.766861, 36.965290>,  <47.081326, 32.641834, 36.800571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203125, 32.766861, 36.965290>,  <47.406128, 32.975239, 37.239822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203125, 32.766861, 36.965290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503662, 0.466930, -0.726843,
		0.699117, -0.714555, 0.025413,
		-0.507503, -0.520948, -0.686333,
		47.050873, 32.610577, 36.759392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897671, 32.767506, 36.724979>,  <47.406128, 32.975239, 37.239822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897671, 32.767506, 36.724979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531174, 32.771034, 36.564770>,  <47.311275, 32.773151, 36.468643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531174, 32.771034, 36.564770>,  <47.897671, 32.767506, 36.724979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531174, 32.771034, 36.564770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353919, 0.486278, -0.798921,
		0.187722, -0.873760, -0.448669,
		-0.916243, 0.008818, -0.400525,
		47.256302, 32.773678, 36.444611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955254, 32.476154, 36.062283>,  <47.897671, 32.767506, 36.724979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955254, 32.476154, 36.062283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639923, 32.722256, 36.061245>,  <47.450726, 32.869915, 36.060623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639923, 32.722256, 36.061245>,  <47.955254, 32.476154, 36.062283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639923, 32.722256, 36.061245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424103, 0.540343, -0.726750,
		-0.445733, -0.574017, -0.686897,
		-0.788327, 0.615252, -0.002594,
		47.403423, 32.906830, 36.060467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806499, 32.682056, 35.306778>,  <47.955254, 32.476154, 36.062283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806499, 32.682056, 35.306778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637508, 32.937862, 35.563694>,  <47.536114, 33.091347, 35.717842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637508, 32.937862, 35.563694>,  <47.806499, 32.682056, 35.306778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637508, 32.937862, 35.563694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370028, 0.768587, -0.521875,
		-0.827403, 0.017187, -0.561346,
		-0.422474, 0.639514, 0.642291,
		47.510765, 33.129715, 35.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119938, 33.142040, 35.184017>,  <47.806499, 32.682056, 35.306778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119938, 33.142040, 35.184017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358624, 33.362446, 35.417366>,  <47.501835, 33.494690, 35.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358624, 33.362446, 35.417366>,  <47.119938, 33.142040, 35.184017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358624, 33.362446, 35.417366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113210, 0.777519, -0.618585,
		-0.794431, 0.303072, 0.526333,
		0.596710, 0.551009, 0.583375,
		47.537636, 33.527748, 35.592377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793808, 33.800713, 35.450756>,  <47.119938, 33.142040, 35.184017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793808, 33.800713, 35.450756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189976, 33.819195, 35.398697>,  <47.427677, 33.830284, 35.367462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189976, 33.819195, 35.398697>,  <46.793808, 33.800713, 35.450756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189976, 33.819195, 35.398697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126944, 0.675794, -0.726077,
		0.054404, 0.735640, 0.675184,
		0.990417, 0.046209, -0.130151,
		47.487103, 33.833057, 35.359650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104340, 34.431580, 35.510769>,  <46.793808, 33.800713, 35.450756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104340, 34.431580, 35.510769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303944, 34.230846, 35.228165>,  <47.423706, 34.110405, 35.058601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303944, 34.230846, 35.228165>,  <47.104340, 34.431580, 35.510769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303944, 34.230846, 35.228165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194348, 0.729693, -0.655574,
		0.844523, 0.464445, 0.266593,
		0.499009, -0.501835, -0.706507,
		47.453648, 34.080296, 35.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732216, 34.567711, 35.523449>,  <47.104340, 34.431580, 35.510769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732216, 34.567711, 35.523449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738911, 34.734718, 35.160042>,  <47.742928, 34.834923, 34.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.738911, 34.734718, 35.160042>,  <47.732216, 34.567711, 35.523449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.738911, 34.734718, 35.160042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584353, -0.741395, -0.329947,
		-0.811327, -0.525370, -0.256388,
		0.016740, 0.417516, -0.908515,
		47.743931, 34.859974, 34.887486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.002544, 37.299011, 43.546524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654606, 37.151470, 43.415489>,  <33.445843, 37.062946, 43.336868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654606, 37.151470, 43.415489>,  <34.002544, 37.299011, 43.546524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654606, 37.151470, 43.415489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283554, 0.169551, -0.943848,
		0.403682, -0.913893, -0.042895,
		-0.869850, -0.368851, -0.327583,
		33.393650, 37.040813, 43.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171780, 36.705425, 43.034195>,  <34.002544, 37.299011, 43.546524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171780, 36.705425, 43.034195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810738, 36.834888, 42.920670>,  <33.594112, 36.912567, 42.852554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810738, 36.834888, 42.920670>,  <34.171780, 36.705425, 43.034195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810738, 36.834888, 42.920670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289446, -0.031688, -0.956670,
		-0.318626, -0.945644, -0.065079,
		-0.902607, 0.323656, -0.283810,
		33.539955, 36.931984, 42.835526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913021, 36.263844, 42.482460>,  <34.171780, 36.705425, 43.034195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913021, 36.263844, 42.482460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689762, 36.592712, 42.437729>,  <33.555805, 36.790031, 42.410889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689762, 36.592712, 42.437729>,  <33.913021, 36.263844, 42.482460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689762, 36.592712, 42.437729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178140, -0.012896, -0.983921,
		-0.810391, -0.569098, -0.139263,
		-0.558152, 0.822168, -0.111830,
		33.522316, 36.839363, 42.404179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448162, 36.153061, 41.871628>,  <33.913021, 36.263844, 42.482460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448162, 36.153061, 41.871628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.421295, 36.549061, 41.921238>,  <33.405174, 36.786663, 41.951004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.421295, 36.549061, 41.921238>,  <33.448162, 36.153061, 41.871628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421295, 36.549061, 41.921238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138869, 0.113821, -0.983748,
		-0.988030, -0.083299, 0.129836,
		-0.067167, 0.990003, 0.124026,
		33.401146, 36.846062, 41.958447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894588, 36.301243, 41.444492>,  <33.448162, 36.153061, 41.871628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894588, 36.301243, 41.444492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.094868, 36.642578, 41.502617>,  <33.215034, 36.847378, 41.537491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.094868, 36.642578, 41.502617>,  <32.894588, 36.301243, 41.444492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094868, 36.642578, 41.502617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115699, 0.100388, -0.988198,
		-0.857853, 0.511605, -0.048465,
		0.500702, 0.853336, 0.145310,
		33.245079, 36.898579, 41.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571369, 36.817310, 41.196915>,  <32.894588, 36.301243, 41.444492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571369, 36.817310, 41.196915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956699, 36.924446, 41.190475>,  <33.187897, 36.988728, 41.186611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956699, 36.924446, 41.190475>,  <32.571369, 36.817310, 41.196915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956699, 36.924446, 41.190475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079282, 0.226800, -0.970709,
		-0.256341, 0.936389, 0.239717,
		0.963329, 0.267838, -0.016100,
		33.245697, 37.004799, 41.185646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571293, 37.365189, 40.724770>,  <32.571369, 36.817310, 41.196915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571293, 37.365189, 40.724770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962128, 37.282818, 40.746296>,  <33.196629, 37.233395, 40.759212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962128, 37.282818, 40.746296>,  <32.571293, 37.365189, 40.724770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962128, 37.282818, 40.746296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098318, 0.212431, -0.972218,
		0.188771, 0.955232, 0.227809,
		0.977087, -0.205924, 0.053816,
		33.255253, 37.221039, 40.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849762, 37.718048, 40.134369>,  <32.571293, 37.365189, 40.724770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849762, 37.718048, 40.134369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157116, 37.475815, 40.217163>,  <33.341530, 37.330475, 40.266838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157116, 37.475815, 40.217163>,  <32.849762, 37.718048, 40.134369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157116, 37.475815, 40.217163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336645, 0.107401, -0.935487,
		0.544287, 0.788499, 0.286393,
		0.768389, -0.605586, 0.206987,
		33.387634, 37.294140, 40.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451469, 38.039440, 39.856518>,  <32.849762, 37.718048, 40.134369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451469, 38.039440, 39.856518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563599, 37.656883, 39.889320>,  <33.630875, 37.427349, 39.909000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.563599, 37.656883, 39.889320>,  <33.451469, 38.039440, 39.856518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563599, 37.656883, 39.889320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385784, 0.034025, -0.921961,
		0.878970, 0.290083, 0.378501,
		0.280323, -0.956396, 0.082003,
		33.647697, 37.369965, 39.913921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180073, 38.062859, 39.600479>,  <33.451469, 38.039440, 39.856518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180073, 38.062859, 39.600479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045944, 37.686398, 39.617443>,  <33.965469, 37.460522, 39.627621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045944, 37.686398, 39.617443>,  <34.180073, 38.062859, 39.600479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045944, 37.686398, 39.617443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659533, -0.266649, -0.702790,
		0.672739, -0.207689, 0.710132,
		-0.335318, -0.941150, 0.042408,
		33.945351, 37.404053, 39.630165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730133, 37.614994, 39.679195>,  <34.180073, 38.062859, 39.600479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730133, 37.614994, 39.679195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432140, 37.410595, 39.507671>,  <34.253345, 37.287956, 39.404755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432140, 37.410595, 39.507671>,  <34.730133, 37.614994, 39.679195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432140, 37.410595, 39.507671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603105, -0.241230, -0.760311,
		0.285078, -0.825037, 0.487899,
		-0.744980, -0.511002, -0.428814,
		34.208645, 37.257294, 39.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079330, 36.997864, 39.520042>,  <34.730133, 37.614994, 39.679195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079330, 36.997864, 39.520042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750751, 36.982342, 39.292458>,  <34.553604, 36.973026, 39.155907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750751, 36.982342, 39.292458>,  <35.079330, 36.997864, 39.520042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750751, 36.982342, 39.292458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554197, -0.289627, -0.780373,
		-0.134500, -0.956352, 0.259422,
		-0.821447, -0.038811, -0.568962,
		34.504318, 36.970699, 39.121769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166298, 36.315636, 39.239056>,  <35.079330, 36.997864, 39.520042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166298, 36.315636, 39.239056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909256, 36.511532, 39.003357>,  <34.755032, 36.629070, 38.861938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909256, 36.511532, 39.003357>,  <35.166298, 36.315636, 39.239056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909256, 36.511532, 39.003357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588764, -0.176528, -0.788793,
		-0.490325, -0.853809, -0.174906,
		-0.642602, 0.489743, -0.589248,
		34.716476, 36.658455, 38.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015499, 35.898712, 38.623581>,  <35.166298, 36.315636, 39.239056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015499, 35.898712, 38.623581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956409, 36.281513, 38.523724>,  <34.920956, 36.511192, 38.463810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956409, 36.281513, 38.523724>,  <35.015499, 35.898712, 38.623581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956409, 36.281513, 38.523724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665406, -0.090576, -0.740966,
		-0.731718, -0.275578, -0.623414,
		-0.147727, 0.957002, -0.249647,
		34.912090, 36.568615, 38.448830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924530, 35.900558, 37.984737>,  <35.015499, 35.898712, 38.623581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924530, 35.900558, 37.984737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003876, 36.290955, 38.020706>,  <35.051483, 36.525192, 38.042286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003876, 36.290955, 38.020706>,  <34.924530, 35.900558, 37.984737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003876, 36.290955, 38.020706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505041, -0.023155, -0.862785,
		-0.839991, 0.216559, -0.497511,
		0.198364, 0.975995, 0.089921,
		35.063385, 36.583752, 38.047684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907719, 36.162556, 37.339226>,  <34.924530, 35.900558, 37.984737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907719, 36.162556, 37.339226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116077, 36.455082, 37.515339>,  <35.241093, 36.630596, 37.621006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116077, 36.455082, 37.515339>,  <34.907719, 36.162556, 37.339226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116077, 36.455082, 37.515339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465830, 0.188676, -0.864525,
		-0.715308, 0.655426, -0.242386,
		0.520899, 0.731313, 0.440279,
		35.272346, 36.674477, 37.647423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065460, 36.647388, 36.777206>,  <34.907719, 36.162556, 37.339226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065460, 36.647388, 36.777206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350792, 36.707005, 37.051128>,  <35.521992, 36.742775, 37.215481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350792, 36.707005, 37.051128>,  <35.065460, 36.647388, 36.777206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350792, 36.707005, 37.051128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688462, 0.033751, -0.724487,
		-0.131090, 0.988255, -0.078533,
		0.713327, 0.149040, 0.684800,
		35.564789, 36.751717, 37.256569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500546, 37.336037, 36.529984>,  <35.065460, 36.647388, 36.777206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500546, 37.336037, 36.529984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715515, 37.130291, 36.797295>,  <35.844498, 37.006844, 36.957684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715515, 37.130291, 36.797295>,  <35.500546, 37.336037, 36.529984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715515, 37.130291, 36.797295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779716, 0.001180, -0.626132,
		0.321273, 0.857570, 0.401694,
		0.537426, -0.514366, 0.668282,
		35.876743, 36.975983, 36.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022511, 37.698349, 36.593533>,  <35.500546, 37.336037, 36.529984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022511, 37.698349, 36.593533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141537, 37.344540, 36.737244>,  <36.212952, 37.132256, 36.823471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141537, 37.344540, 36.737244>,  <36.022511, 37.698349, 36.593533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141537, 37.344540, 36.737244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760266, -0.008084, -0.649562,
		0.577454, 0.466434, 0.670064,
		0.297561, -0.884519, 0.359282,
		36.230804, 37.079185, 36.845028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782284, 37.747677, 36.523643>,  <36.022511, 37.698349, 36.593533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782284, 37.747677, 36.523643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658089, 37.372757, 36.586967>,  <36.583572, 37.147804, 36.624962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658089, 37.372757, 36.586967>,  <36.782284, 37.747677, 36.523643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658089, 37.372757, 36.586967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537417, -0.310452, -0.784093,
		0.784080, -0.158373, 0.600113,
		-0.310485, -0.937303, 0.158307,
		36.564941, 37.091564, 36.634460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350792, 37.461678, 36.336315>,  <36.782284, 37.747677, 36.523643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350792, 37.461678, 36.336315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070198, 37.176605, 36.336128>,  <36.901840, 37.005562, 36.336014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070198, 37.176605, 36.336128>,  <37.350792, 37.461678, 36.336315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070198, 37.176605, 36.336128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460447, -0.452711, -0.763571,
		0.543969, -0.535854, 0.645723,
		-0.701488, -0.712680, -0.000471,
		36.859753, 36.962803, 36.335987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662537, 36.676579, 36.466282>,  <37.350792, 37.461678, 36.336315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662537, 36.676579, 36.466282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328186, 36.700886, 36.248066>,  <37.127575, 36.715469, 36.117138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328186, 36.700886, 36.248066>,  <37.662537, 36.676579, 36.466282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328186, 36.700886, 36.248066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453038, -0.484790, -0.748154,
		-0.309939, -0.872517, 0.377693,
		-0.835879, 0.060773, -0.545539,
		37.077423, 36.719116, 36.084404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306820, 37.057571, 36.299385>,  <37.662537, 36.676579, 36.466282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306820, 37.057571, 36.299385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683758, 37.185032, 36.340271>,  <38.909920, 37.261509, 36.364803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683758, 37.185032, 36.340271>,  <38.306820, 37.057571, 36.299385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683758, 37.185032, 36.340271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231107, 0.398790, 0.887444,
		0.242023, -0.859900, 0.449440,
		0.942345, 0.318651, 0.102213,
		38.966461, 37.280628, 36.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653275, 36.606712, 36.886700>,  <38.306820, 37.057571, 36.299385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653275, 36.606712, 36.886700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804138, 36.975677, 36.853462>,  <38.894657, 37.197056, 36.833519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804138, 36.975677, 36.853462>,  <38.653275, 36.606712, 36.886700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804138, 36.975677, 36.853462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167732, 0.156263, 0.973369,
		0.910831, -0.353183, 0.213655,
		0.377164, 0.922412, -0.083089,
		38.917286, 37.252399, 36.828537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866753, 36.610798, 37.430107>,  <38.653275, 36.606712, 36.886700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866753, 36.610798, 37.430107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882462, 36.996017, 37.323532>,  <38.891888, 37.227150, 37.259586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882462, 36.996017, 37.323532>,  <38.866753, 36.610798, 37.430107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882462, 36.996017, 37.323532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037814, 0.267880, 0.962710,
		0.998513, -0.027734, 0.046938,
		0.039274, 0.963053, -0.266433,
		38.894245, 37.284935, 37.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313313, 36.894001, 37.898079>,  <38.866753, 36.610798, 37.430107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313313, 36.894001, 37.898079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074467, 37.183426, 37.759567>,  <38.931160, 37.357082, 37.676460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.074467, 37.183426, 37.759567>,  <39.313313, 36.894001, 37.898079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074467, 37.183426, 37.759567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001951, 0.432995, 0.901394,
		0.802154, 0.537560, -0.259959,
		-0.597114, 0.723564, -0.346279,
		38.895332, 37.400494, 37.655682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540432, 37.576275, 37.988495>,  <39.313313, 36.894001, 37.898079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540432, 37.576275, 37.988495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149826, 37.655754, 37.955162>,  <38.915462, 37.703442, 37.935162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149826, 37.655754, 37.955162>,  <39.540432, 37.576275, 37.988495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149826, 37.655754, 37.955162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001057, 0.382342, 0.924020,
		0.215467, 0.902404, -0.373151,
		-0.976511, 0.198701, -0.083336,
		38.856873, 37.715363, 37.930161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459248, 38.147873, 38.421021>,  <39.540432, 37.576275, 37.988495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459248, 38.147873, 38.421021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081787, 38.044785, 38.337978>,  <38.855309, 37.982933, 38.288155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081787, 38.044785, 38.337978>,  <39.459248, 38.147873, 38.421021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081787, 38.044785, 38.337978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289748, 0.340334, 0.894550,
		-0.159890, 0.904297, -0.395831,
		-0.943653, -0.257721, -0.207602,
		38.798691, 37.967468, 38.275696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992039, 38.734962, 38.674255>,  <39.459248, 38.147873, 38.421021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992039, 38.734962, 38.674255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784172, 38.394138, 38.649128>,  <38.659454, 38.189644, 38.634052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784172, 38.394138, 38.649128>,  <38.992039, 38.734962, 38.674255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784172, 38.394138, 38.649128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534313, 0.266741, 0.802096,
		-0.666678, 0.450383, -0.593882,
		-0.519663, -0.852059, -0.062815,
		38.628273, 38.138519, 38.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324947, 39.021122, 38.900211>,  <38.992039, 38.734962, 38.674255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324947, 39.021122, 38.900211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306732, 38.623150, 38.936096>,  <38.295803, 38.384369, 38.957626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306732, 38.623150, 38.936096>,  <38.324947, 39.021122, 38.900211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306732, 38.623150, 38.936096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461598, 0.100601, 0.881366,
		-0.885920, -0.001278, -0.463837,
		-0.045536, -0.994926, 0.089714,
		38.293072, 38.324673, 38.963009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665581, 38.940716, 39.338024>,  <38.324947, 39.021122, 38.900211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665581, 38.940716, 39.338024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840317, 38.581299, 39.354984>,  <37.945160, 38.365650, 39.365162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840317, 38.581299, 39.354984>,  <37.665581, 38.940716, 39.338024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840317, 38.581299, 39.354984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509941, -0.208534, 0.834550,
		-0.741032, -0.386190, -0.549298,
		0.436842, -0.898538, 0.042404,
		37.971371, 38.311737, 39.367706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101925, 38.507256, 39.479156>,  <37.665581, 38.940716, 39.338024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101925, 38.507256, 39.479156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422886, 38.286392, 39.569729>,  <37.615463, 38.153873, 39.624073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422886, 38.286392, 39.569729>,  <37.101925, 38.507256, 39.479156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422886, 38.286392, 39.569729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, -0.308377, 0.838695,
		-0.393270, -0.774609, -0.495297,
		0.802400, -0.552163, 0.226431,
		37.663605, 38.120743, 39.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813900, 37.835651, 39.818054>,  <37.101925, 38.507256, 39.479156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813900, 37.835651, 39.818054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178802, 37.887924, 39.973339>,  <37.397743, 37.919289, 40.066509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178802, 37.887924, 39.973339>,  <36.813900, 37.835651, 39.818054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178802, 37.887924, 39.973339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322504, -0.355180, 0.877404,
		0.252545, -0.925619, -0.281871,
		0.912257, 0.130680, 0.388215,
		37.452480, 37.927128, 40.089802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046307, 37.174423, 40.160412>,  <36.813900, 37.835651, 39.818054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046307, 37.174423, 40.160412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255379, 37.470921, 40.328869>,  <37.380821, 37.648819, 40.429943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255379, 37.470921, 40.328869>,  <37.046307, 37.174423, 40.160412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255379, 37.470921, 40.328869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403629, -0.219963, 0.888088,
		0.750928, -0.634169, 0.184219,
		0.522677, 0.741246, 0.421146,
		37.412182, 37.693295, 40.455212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289684, 36.935452, 40.877327>,  <37.046307, 37.174423, 40.160412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289684, 36.935452, 40.877327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350636, 37.330772, 40.879967>,  <37.387207, 37.567963, 40.881550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350636, 37.330772, 40.879967>,  <37.289684, 36.935452, 40.877327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350636, 37.330772, 40.879967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344171, 0.046809, 0.937739,
		0.926459, -0.145164, 0.347277,
		0.152382, 0.988300, 0.006595,
		37.396351, 37.627262, 40.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673485, 37.104282, 41.501064>,  <37.289684, 36.935452, 40.877327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673485, 37.104282, 41.501064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472866, 37.436615, 41.404587>,  <37.352493, 37.636013, 41.346703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472866, 37.436615, 41.404587>,  <37.673485, 37.104282, 41.501064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472866, 37.436615, 41.404587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162604, 0.183294, 0.969517,
		0.849711, 0.525479, 0.043165,
		-0.501549, 0.830828, -0.241192,
		37.322403, 37.685863, 41.332230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844208, 37.535683, 42.024837>,  <37.673485, 37.104282, 41.501064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844208, 37.535683, 42.024837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527821, 37.725121, 41.869877>,  <37.337990, 37.838783, 41.776901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527821, 37.725121, 41.869877>,  <37.844208, 37.535683, 42.024837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527821, 37.725121, 41.869877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296843, 0.256631, 0.919796,
		0.535030, 0.842526, -0.062403,
		-0.790966, 0.473595, -0.387403,
		37.290531, 37.867199, 41.753654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736652, 38.102951, 42.430595>,  <37.844208, 37.535683, 42.024837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736652, 38.102951, 42.430595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371742, 38.030544, 42.283634>,  <37.152798, 37.987099, 42.195457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371742, 38.030544, 42.283634>,  <37.736652, 38.102951, 42.430595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371742, 38.030544, 42.283634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386548, 0.083983, 0.918438,
		-0.135398, 0.979888, -0.146587,
		-0.912277, -0.181017, -0.367402,
		37.098061, 37.976238, 42.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350861, 38.515770, 42.765484>,  <37.736652, 38.102951, 42.430595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350861, 38.515770, 42.765484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080692, 38.259628, 42.619198>,  <36.918591, 38.105942, 42.531425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080692, 38.259628, 42.619198>,  <37.350861, 38.515770, 42.765484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080692, 38.259628, 42.619198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465013, -0.015064, 0.885176,
		-0.572337, 0.767931, -0.287599,
		-0.675421, -0.640356, -0.365719,
		36.878067, 38.067520, 42.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549736, 38.631569, 43.080471>,  <37.350861, 38.515770, 42.765484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549736, 38.631569, 43.080471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520790, 38.262497, 42.928986>,  <36.503422, 38.041054, 42.838093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520790, 38.262497, 42.928986>,  <36.549736, 38.631569, 43.080471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520790, 38.262497, 42.928986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774802, -0.187100, 0.603883,
		-0.628048, 0.337132, -0.701354,
		-0.072365, -0.922679, -0.378718,
		36.499081, 37.985695, 42.815369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.679050, 38.454109, 42.831612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894054, 38.122032, 42.890755>,  <36.023056, 37.922787, 42.926239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894054, 38.122032, 42.890755>,  <35.679050, 38.454109, 42.831612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894054, 38.122032, 42.890755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589889, -0.244884, 0.769456,
		-0.602592, -0.500806, -0.621351,
		0.537507, -0.830196, 0.147854,
		36.055305, 37.872974, 42.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244179, 37.984486, 43.190075>,  <35.679050, 38.454109, 42.831612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244179, 37.984486, 43.190075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584805, 37.777744, 43.225174>,  <35.789181, 37.653702, 43.246235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584805, 37.777744, 43.225174>,  <35.244179, 37.984486, 43.190075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584805, 37.777744, 43.225174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359216, -0.453349, 0.815744,
		-0.381835, -0.726183, -0.571718,
		0.851567, -0.516849, 0.087752,
		35.840275, 37.622688, 43.251499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112827, 37.215797, 43.202484>,  <35.244179, 37.984486, 43.190075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112827, 37.215797, 43.202484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453503, 37.266041, 43.405991>,  <35.657909, 37.296188, 43.528095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453503, 37.266041, 43.405991>,  <35.112827, 37.215797, 43.202484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453503, 37.266041, 43.405991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366765, -0.550568, 0.749905,
		0.374306, -0.825286, -0.422845,
		0.851691, 0.125609, 0.508767,
		35.709011, 37.303722, 43.558620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259129, 36.526840, 43.492275>,  <35.112827, 37.215797, 43.202484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259129, 36.526840, 43.492275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423458, 36.821526, 43.707111>,  <35.522057, 36.998337, 43.836014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423458, 36.821526, 43.707111>,  <35.259129, 36.526840, 43.492275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423458, 36.821526, 43.707111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413687, -0.374339, 0.829900,
		0.812456, -0.563133, 0.150982,
		0.410826, 0.736717, 0.537095,
		35.546707, 37.042542, 43.868240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500305, 36.170006, 44.165283>,  <35.259129, 36.526840, 43.492275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500305, 36.170006, 44.165283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524673, 36.563427, 44.233295>,  <35.539295, 36.799480, 44.274105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.524673, 36.563427, 44.233295>,  <35.500305, 36.170006, 44.165283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524673, 36.563427, 44.233295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201261, -0.154746, 0.967237,
		0.977641, -0.093148, 0.188523,
		0.060923, 0.983553, 0.170033,
		35.542950, 36.858494, 44.284306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006851, 36.313591, 44.865517>,  <35.500305, 36.170006, 44.165283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006851, 36.313591, 44.865517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735363, 36.598492, 44.793926>,  <35.572472, 36.769432, 44.750973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735363, 36.598492, 44.793926>,  <36.006851, 36.313591, 44.865517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735363, 36.598492, 44.793926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358532, -0.108666, 0.927171,
		0.640931, 0.693461, 0.329120,
		-0.678721, 0.712252, -0.178980,
		35.531746, 36.812168, 44.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927704, 36.697887, 45.479061>,  <36.006851, 36.313591, 44.865517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927704, 36.697887, 45.479061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592678, 36.801952, 45.286896>,  <35.391663, 36.864391, 45.171597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592678, 36.801952, 45.286896>,  <35.927704, 36.697887, 45.479061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592678, 36.801952, 45.286896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474069, 0.090972, 0.875775,
		0.271546, 0.961270, 0.047138,
		-0.837569, 0.260160, -0.480412,
		35.341408, 36.880001, 45.142773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711788, 37.218472, 45.869644>,  <35.927704, 36.697887, 45.479061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711788, 37.218472, 45.869644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367287, 37.122005, 45.690723>,  <35.160587, 37.064125, 45.583370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367287, 37.122005, 45.690723>,  <35.711788, 37.218472, 45.869644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367287, 37.122005, 45.690723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457860, -0.013623, 0.888920,
		-0.220466, 0.970390, -0.098685,
		-0.861254, -0.241160, -0.447306,
		35.108910, 37.049656, 45.556530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176281, 37.786541, 46.035103>,  <35.711788, 37.218472, 45.869644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176281, 37.786541, 46.035103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978371, 37.453876, 45.934284>,  <34.859623, 37.254276, 45.873795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978371, 37.453876, 45.934284>,  <35.176281, 37.786541, 46.035103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978371, 37.453876, 45.934284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475351, 0.016210, 0.879647,
		-0.727485, 0.555043, -0.403353,
		-0.494780, -0.831664, -0.252048,
		34.829937, 37.204376, 45.858669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509727, 37.934910, 46.180706>,  <35.176281, 37.786541, 46.035103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509727, 37.934910, 46.180706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 37.535164, 46.185551>,  <34.531090, 37.295315, 46.188457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 37.535164, 46.185551>,  <34.509727, 37.934910, 46.180706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523079, 37.535164, 46.185551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592811, -0.010036, 0.805279,
		-0.804650, -0.034057, -0.592772,
		0.033374, -0.999370, 0.012114,
		34.533092, 37.235352, 46.189186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850838, 37.758434, 46.383270>,  <34.509727, 37.934910, 46.180706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850838, 37.758434, 46.383270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075340, 37.439178, 46.470875>,  <34.210041, 37.247627, 46.523438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075340, 37.439178, 46.470875>,  <33.850838, 37.758434, 46.383270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075340, 37.439178, 46.470875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495070, -0.111705, 0.861643,
		-0.663244, -0.592031, -0.457828,
		0.561261, -0.798136, 0.219009,
		34.243717, 37.199738, 46.536579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460983, 37.342430, 46.646641>,  <33.850838, 37.758434, 46.383270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460983, 37.342430, 46.646641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774422, 37.130459, 46.776352>,  <33.962486, 37.003277, 46.854179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774422, 37.130459, 46.776352>,  <33.460983, 37.342430, 46.646641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774422, 37.130459, 46.776352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488026, -0.202043, 0.849123,
		-0.384456, -0.823624, -0.416938,
		0.783597, -0.529927, 0.324273,
		34.009502, 36.971481, 46.873634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087402, 36.798889, 46.983059>,  <33.460983, 37.342430, 46.646641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087402, 36.798889, 46.983059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461876, 36.806652, 47.123447>,  <33.686562, 36.811310, 47.207680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461876, 36.806652, 47.123447>,  <33.087402, 36.798889, 46.983059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461876, 36.806652, 47.123447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343221, -0.165084, 0.924633,
		0.075884, -0.986089, -0.147888,
		0.936184, 0.019407, 0.350974,
		33.742733, 36.812473, 47.228741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157383, 36.285114, 47.487518>,  <33.087402, 36.798889, 46.983059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157383, 36.285114, 47.487518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459026, 36.533379, 47.573399>,  <33.640015, 36.682339, 47.624928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459026, 36.533379, 47.573399>,  <33.157383, 36.285114, 47.487518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459026, 36.533379, 47.573399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077600, -0.240412, 0.967564,
		0.652144, -0.746313, -0.133135,
		0.754113, 0.620660, 0.214697,
		33.685261, 36.719578, 47.637806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726204, 35.853615, 47.808929>,  <33.157383, 36.285114, 47.487518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726204, 35.853615, 47.808929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726795, 36.238850, 47.916611>,  <33.727150, 36.469990, 47.981220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726795, 36.238850, 47.916611>,  <33.726204, 35.853615, 47.808929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726795, 36.238850, 47.916611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035000, -0.269088, 0.962479,
		0.999386, 0.007996, -0.034107,
		0.001482, 0.963082, 0.269203,
		33.727242, 36.527775, 47.997372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175423, 35.858582, 48.272324>,  <33.726204, 35.853615, 47.808929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175423, 35.858582, 48.272324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000851, 36.209038, 48.354206>,  <33.896107, 36.419312, 48.403336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000851, 36.209038, 48.354206>,  <34.175423, 35.858582, 48.272324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000851, 36.209038, 48.354206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085439, -0.266845, 0.959945,
		0.895670, 0.401464, 0.191317,
		-0.436435, 0.876140, 0.204704,
		33.869919, 36.471878, 48.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426727, 35.977795, 48.907887>,  <34.175423, 35.858582, 48.272324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426727, 35.977795, 48.907887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118027, 36.231892, 48.896084>,  <33.932808, 36.384350, 48.889004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118027, 36.231892, 48.896084>,  <34.426727, 35.977795, 48.907887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118027, 36.231892, 48.896084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224968, -0.229322, 0.946996,
		0.594806, 0.737480, 0.319888,
		-0.771748, 0.635243, -0.029507,
		33.886501, 36.422466, 48.887230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395607, 36.042130, 49.537411>,  <34.426727, 35.977795, 48.907887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395607, 36.042130, 49.537411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055702, 36.203491, 49.401661>,  <33.851761, 36.300308, 49.320213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055702, 36.203491, 49.401661>,  <34.395607, 36.042130, 49.537411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055702, 36.203491, 49.401661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422389, -0.135824, 0.896180,
		0.315428, 0.904885, 0.285811,
		-0.849760, 0.403404, -0.339371,
		33.800774, 36.324512, 49.299850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212280, 36.607944, 49.997334>,  <34.395607, 36.042130, 49.537411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212280, 36.607944, 49.997334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871082, 36.487839, 49.826576>,  <33.666363, 36.415775, 49.724121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871082, 36.487839, 49.826576>,  <34.212280, 36.607944, 49.997334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871082, 36.487839, 49.826576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436764, -0.037097, 0.898811,
		-0.285716, 0.953135, -0.099500,
		-0.852997, -0.300262, -0.426894,
		33.615185, 36.397758, 49.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636974, 36.987392, 50.309368>,  <34.212280, 36.607944, 49.997334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636974, 36.987392, 50.309368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506516, 36.641647, 50.156265>,  <33.428242, 36.434200, 50.064404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.506516, 36.641647, 50.156265>,  <33.636974, 36.987392, 50.309368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506516, 36.641647, 50.156265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511436, -0.179185, 0.840432,
		-0.795023, 0.469861, -0.383626,
		-0.326146, -0.864363, -0.382760,
		33.408672, 36.382339, 50.041439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910755, 37.077206, 50.310837>,  <33.636974, 36.987392, 50.309368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910755, 37.077206, 50.310837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994350, 36.686039, 50.310993>,  <33.044510, 36.451340, 50.311089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.994350, 36.686039, 50.310993>,  <32.910755, 37.077206, 50.310837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994350, 36.686039, 50.310993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692487, -0.147707, 0.706147,
		-0.690496, -0.147850, -0.708065,
		0.208990, -0.977917, 0.000393,
		33.057049, 36.392662, 50.311111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242447, 36.783264, 50.558262>,  <32.910755, 37.077206, 50.310837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242447, 36.783264, 50.558262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525814, 36.504711, 50.604218>,  <32.695835, 36.337578, 50.631790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.525814, 36.504711, 50.604218>,  <32.242447, 36.783264, 50.558262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525814, 36.504711, 50.604218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521155, -0.406333, 0.750527,
		-0.475972, -0.591559, -0.650776,
		0.708413, -0.696385, 0.114891,
		32.738338, 36.295795, 50.638687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957634, 36.104923, 50.703568>,  <32.242447, 36.783264, 50.558262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957634, 36.104923, 50.703568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.331993, 36.121532, 50.843491>,  <32.556610, 36.131496, 50.927444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.331993, 36.121532, 50.843491>,  <31.957634, 36.104923, 50.703568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331993, 36.121532, 50.843491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263396, -0.576906, 0.773177,
		0.233910, -0.815755, -0.528989,
		0.935899, 0.041520, 0.349811,
		32.612762, 36.133987, 50.948433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698423, 36.138275, 50.007782>,  <31.957634, 36.104923, 50.703568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698423, 36.138275, 50.007782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569353, 36.418571, 50.262291>,  <31.491911, 36.586750, 50.414997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569353, 36.418571, 50.262291>,  <31.698423, 36.138275, 50.007782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569353, 36.418571, 50.262291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219455, 0.598521, -0.770463,
		-0.920717, -0.388242, -0.039347,
		-0.322676, 0.700743, 0.636270,
		31.472549, 36.628796, 50.453171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071447, 35.828487, 50.459320>,  <31.698423, 36.138275, 50.007782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071447, 35.828487, 50.459320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726948, 35.987652, 50.332882>,  <30.520248, 36.083149, 50.257019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.726948, 35.987652, 50.332882>,  <31.071447, 35.828487, 50.459320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726948, 35.987652, 50.332882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168552, -0.363141, -0.916362,
		-0.479419, -0.842494, 0.245685,
		-0.861248, 0.397911, -0.316101,
		30.468573, 36.107025, 50.238052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739897, 35.281742, 50.097317>,  <31.071447, 35.828487, 50.459320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739897, 35.281742, 50.097317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545256, 35.601994, 49.957485>,  <30.428471, 35.794144, 49.873585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545256, 35.601994, 49.957485>,  <30.739897, 35.281742, 50.097317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545256, 35.601994, 49.957485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081435, -0.356841, -0.930609,
		-0.869820, -0.481304, 0.108440,
		-0.486602, 0.800632, -0.349583,
		30.399275, 35.842182, 49.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433451, 35.010853, 49.558605>,  <30.739897, 35.281742, 50.097317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433451, 35.010853, 49.558605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427526, 35.404331, 49.486904>,  <30.423971, 35.640419, 49.443882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427526, 35.404331, 49.486904>,  <30.433451, 35.010853, 49.558605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427526, 35.404331, 49.486904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020973, -0.179539, -0.983527,
		-0.999670, -0.010808, 0.023290,
		-0.014812, 0.983691, -0.179253,
		30.423082, 35.699440, 49.433128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912931, 35.120754, 49.088173>,  <30.433451, 35.010853, 49.558605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912931, 35.120754, 49.088173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180664, 35.414440, 49.042694>,  <30.341303, 35.590652, 49.015408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180664, 35.414440, 49.042694>,  <29.912931, 35.120754, 49.088173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180664, 35.414440, 49.042694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043236, -0.191264, -0.980586,
		-0.741705, 0.651421, -0.159764,
		0.669331, 0.734213, -0.113697,
		30.381464, 35.634705, 49.008587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740351, 35.370842, 48.468380>,  <29.912931, 35.120754, 49.088173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740351, 35.370842, 48.468380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097860, 35.537056, 48.535912>,  <30.312366, 35.636784, 48.576431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097860, 35.537056, 48.535912>,  <29.740351, 35.370842, 48.468380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097860, 35.537056, 48.535912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271739, -0.202208, -0.940888,
		-0.356829, 0.886818, -0.293644,
		0.893774, 0.415530, 0.168829,
		30.365992, 35.661716, 48.586559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947203, 35.681004, 47.802654>,  <29.740351, 35.370842, 48.468380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947203, 35.681004, 47.802654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290092, 35.695923, 48.008091>,  <30.495827, 35.704876, 48.131351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.290092, 35.695923, 48.008091>,  <29.947203, 35.681004, 47.802654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290092, 35.695923, 48.008091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510162, -0.197102, -0.837189,
		0.070001, 0.979673, -0.187990,
		0.857225, 0.037301, 0.513590,
		30.547260, 35.707111, 48.162167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367325, 36.164982, 47.501545>,  <29.947203, 35.681004, 47.802654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367325, 36.164982, 47.501545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632481, 35.943989, 47.703671>,  <30.791574, 35.811394, 47.824947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.632481, 35.943989, 47.703671>,  <30.367325, 36.164982, 47.501545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632481, 35.943989, 47.703671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581734, -0.044822, -0.812143,
		0.471345, 0.832318, 0.291687,
		0.662887, -0.552484, 0.505314,
		30.831347, 35.778244, 47.855267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015371, 36.493855, 47.308281>,  <30.367325, 36.164982, 47.501545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015371, 36.493855, 47.308281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098951, 36.132641, 47.458416>,  <31.149099, 35.915913, 47.548496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098951, 36.132641, 47.458416>,  <31.015371, 36.493855, 47.308281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098951, 36.132641, 47.458416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617899, -0.175574, -0.766404,
		0.757985, 0.392058, 0.521296,
		0.208949, -0.903031, 0.375335,
		31.161636, 35.861732, 47.571018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695406, 36.474754, 47.374443>,  <31.015371, 36.493855, 47.308281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695406, 36.474754, 47.374443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596672, 36.087139, 47.376766>,  <31.537432, 35.854568, 47.378159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596672, 36.087139, 47.376766>,  <31.695406, 36.474754, 47.374443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596672, 36.087139, 47.376766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635992, -0.166513, -0.753517,
		0.731155, -0.182300, 0.657403,
		-0.246833, -0.969041, 0.005806,
		31.522623, 35.796429, 47.378510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364799, 36.084423, 47.195877>,  <31.695406, 36.474754, 47.374443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364799, 36.084423, 47.195877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078732, 35.810562, 47.139618>,  <31.907091, 35.646244, 47.105862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078732, 35.810562, 47.139618>,  <32.364799, 36.084423, 47.195877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078732, 35.810562, 47.139618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308848, -0.129026, -0.942319,
		0.627017, -0.717355, 0.303730,
		-0.715166, -0.684657, -0.140652,
		31.864182, 35.605164, 47.097424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684280, 35.537697, 46.796600>,  <32.364799, 36.084423, 47.195877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684280, 35.537697, 46.796600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289825, 35.511494, 46.735611>,  <32.053154, 35.495773, 46.699017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289825, 35.511494, 46.735611>,  <32.684280, 35.537697, 46.796600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289825, 35.511494, 46.735611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158094, -0.091451, -0.983180,
		0.050459, -0.993653, 0.100539,
		-0.986134, -0.065504, -0.152476,
		31.993986, 35.491844, 46.689869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574387, 34.938335, 46.329266>,  <32.684280, 35.537697, 46.796600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574387, 34.938335, 46.329266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249588, 35.170776, 46.307426>,  <32.054710, 35.310242, 46.294323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249588, 35.170776, 46.307426>,  <32.574387, 34.938335, 46.329266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249588, 35.170776, 46.307426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045962, -0.029598, -0.998505,
		-0.581853, -0.813289, -0.002675,
		-0.811994, 0.581106, -0.054602,
		32.005989, 35.345108, 46.291046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211754, 34.614799, 45.856350>,  <32.574387, 34.938335, 46.329266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211754, 34.614799, 45.856350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112148, 34.999683, 45.900433>,  <32.052387, 35.230614, 45.926884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.112148, 34.999683, 45.900433>,  <32.211754, 34.614799, 45.856350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112148, 34.999683, 45.900433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319466, 0.189028, -0.928552,
		-0.914295, -0.196010, -0.354463,
		-0.249009, 0.962210, 0.110209,
		32.037445, 35.288345, 45.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299183, 34.903923, 45.154396>,  <32.211754, 34.614799, 45.856350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299183, 34.903923, 45.154396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225670, 35.237694, 45.362228>,  <32.181561, 35.437954, 45.486927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225670, 35.237694, 45.362228>,  <32.299183, 34.903923, 45.154396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225670, 35.237694, 45.362228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165107, 0.547275, -0.820506,
		-0.969002, -0.065008, -0.238349,
		-0.183782, 0.834424, 0.519577,
		32.170536, 35.488022, 45.518101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845678, 35.293659, 44.723606>,  <32.299183, 34.903923, 45.154396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845678, 35.293659, 44.723606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045334, 35.542339, 44.965050>,  <32.165127, 35.691547, 45.109917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045334, 35.542339, 44.965050>,  <31.845678, 35.293659, 44.723606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045334, 35.542339, 44.965050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264166, 0.554258, -0.789313,
		-0.825275, 0.553430, 0.112418,
		0.499137, 0.621703, 0.603612,
		32.195076, 35.728851, 45.146133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661333, 35.934536, 44.456783>,  <31.845678, 35.293659, 44.723606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661333, 35.934536, 44.456783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972446, 36.049419, 44.680412>,  <32.159115, 36.118351, 44.814590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.972446, 36.049419, 44.680412>,  <31.661333, 35.934536, 44.456783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972446, 36.049419, 44.680412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293882, 0.620096, -0.727402,
		-0.555598, 0.730063, 0.397893,
		0.777782, 0.287210, 0.559077,
		32.205780, 36.135582, 44.848137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611130, 36.651062, 44.516312>,  <31.661333, 35.934536, 44.456783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611130, 36.651062, 44.516312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989590, 36.537277, 44.578133>,  <32.216663, 36.469006, 44.615223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989590, 36.537277, 44.578133>,  <31.611130, 36.651062, 44.516312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989590, 36.537277, 44.578133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287265, 0.517586, -0.805967,
		0.149274, 0.806961, 0.571429,
		0.946148, -0.284461, 0.154550,
		32.273434, 36.451939, 44.624496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092850, 37.241440, 44.444687>,  <31.611130, 36.651062, 44.516312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092850, 37.241440, 44.444687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346096, 36.933754, 44.410099>,  <32.498043, 36.749142, 44.389347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.346096, 36.933754, 44.410099>,  <32.092850, 37.241440, 44.444687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346096, 36.933754, 44.410099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407357, 0.426085, -0.807782,
		0.658198, 0.476197, 0.583105,
		0.633116, -0.769212, -0.086466,
		32.536030, 36.702991, 44.384159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911644, 37.611923, 44.465618>,  <32.092850, 37.241440, 44.444687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911644, 37.611923, 44.465618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911072, 37.259899, 44.275673>,  <32.910728, 37.048687, 44.161705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911072, 37.259899, 44.275673>,  <32.911644, 37.611923, 44.465618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911072, 37.259899, 44.275673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473964, 0.417546, -0.775251,
		0.880543, -0.226177, 0.416519,
		-0.001428, -0.880056, -0.474867,
		32.910645, 36.995884, 44.133213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412796, 37.631783, 43.949284>,  <32.911644, 37.611923, 44.465618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412796, 37.631783, 43.949284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240723, 37.303463, 43.798965>,  <33.137478, 37.106472, 43.708775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240723, 37.303463, 43.798965>,  <33.412796, 37.631783, 43.949284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240723, 37.303463, 43.798965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320608, 0.250236, -0.913560,
		0.843889, -0.513487, 0.155507,
		-0.430187, -0.820800, -0.375799,
		33.111668, 37.057224, 43.686226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.794743, 26.807774, 33.174828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396175, 26.774008, 33.177162>,  <43.157036, 26.753748, 33.178562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.396175, 26.774008, 33.177162>,  <43.794743, 26.807774, 33.174828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396175, 26.774008, 33.177162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075832, 0.921459, 0.381002,
		-0.037538, 0.379193, -0.924556,
		-0.996414, -0.084413, 0.005834,
		43.097252, 26.748684, 33.178913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547192, 27.336916, 32.811382>,  <43.794743, 26.807774, 33.174828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547192, 27.336916, 32.811382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254711, 27.227716, 33.061443>,  <43.079224, 27.162197, 33.211479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254711, 27.227716, 33.061443>,  <43.547192, 27.336916, 32.811382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254711, 27.227716, 33.061443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101787, 0.949834, 0.295729,
		-0.674524, 0.152605, -0.722308,
		-0.731202, -0.272998, 0.625152,
		43.035351, 27.145817, 33.248989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078453, 27.780687, 32.636566>,  <43.547192, 27.336916, 32.811382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078453, 27.780687, 32.636566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995735, 27.669725, 33.011860>,  <42.946106, 27.603148, 33.237038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.995735, 27.669725, 33.011860>,  <43.078453, 27.780687, 32.636566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995735, 27.669725, 33.011860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205258, 0.949922, 0.235622,
		-0.956612, -0.143855, -0.253377,
		-0.206793, -0.277407, 0.938234,
		42.933697, 27.586504, 33.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493462, 28.241184, 32.944969>,  <43.078453, 27.780687, 32.636566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493462, 28.241184, 32.944969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678093, 28.074047, 33.257980>,  <42.788872, 27.973764, 33.445786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678093, 28.074047, 33.257980>,  <42.493462, 28.241184, 32.944969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678093, 28.074047, 33.257980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106657, 0.849582, 0.516559,
		-0.880663, -0.321897, 0.347586,
		0.461582, -0.417842, 0.782528,
		42.816566, 27.948694, 33.492741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060093, 28.343849, 33.544968>,  <42.493462, 28.241184, 32.944969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060093, 28.343849, 33.544968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445076, 28.307165, 33.647148>,  <42.676067, 28.285154, 33.708458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445076, 28.307165, 33.647148>,  <42.060093, 28.343849, 33.544968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445076, 28.307165, 33.647148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037460, 0.887294, 0.459680,
		-0.268820, -0.451993, 0.850551,
		0.962461, -0.091710, 0.255454,
		42.733814, 28.279652, 33.723785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978184, 28.574142, 34.160698>,  <42.060093, 28.343849, 33.544968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978184, 28.574142, 34.160698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370781, 28.578205, 34.084213>,  <42.606339, 28.580643, 34.038322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370781, 28.578205, 34.084213>,  <41.978184, 28.574142, 34.160698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370781, 28.578205, 34.084213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073122, 0.903034, 0.423300,
		0.176970, -0.429450, 0.885582,
		0.981496, 0.010156, -0.191212,
		42.665230, 28.581251, 34.026848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205189, 28.710867, 34.831673>,  <41.978184, 28.574142, 34.160698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205189, 28.710867, 34.831673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482410, 28.784258, 34.552814>,  <42.648743, 28.828293, 34.385498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482410, 28.784258, 34.552814>,  <42.205189, 28.710867, 34.831673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482410, 28.784258, 34.552814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272591, 0.828565, 0.489054,
		0.667364, -0.528976, 0.524224,
		0.693051, 0.183479, -0.697148,
		42.690327, 28.839302, 34.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740784, 28.941401, 35.249733>,  <42.205189, 28.710867, 34.831673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740784, 28.941401, 35.249733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824581, 29.048557, 34.873573>,  <42.874859, 29.112852, 34.647877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824581, 29.048557, 34.873573>,  <42.740784, 28.941401, 35.249733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824581, 29.048557, 34.873573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322716, 0.888905, 0.325118,
		0.923020, -0.371592, 0.099768,
		0.209496, 0.267894, -0.940396,
		42.887428, 29.128925, 34.591454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434708, 29.072994, 35.220905>,  <42.740784, 28.941401, 35.249733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434708, 29.072994, 35.220905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265957, 29.260382, 34.910408>,  <43.164707, 29.372814, 34.724110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265957, 29.260382, 34.910408>,  <43.434708, 29.072994, 35.220905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265957, 29.260382, 34.910408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424535, 0.858578, 0.287425,
		0.801115, -0.208284, -0.561099,
		-0.421881, 0.468467, -0.776244,
		43.139393, 29.400923, 34.677536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023361, 29.479849, 34.933308>,  <43.434708, 29.072994, 35.220905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023361, 29.479849, 34.933308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672749, 29.639219, 34.825268>,  <43.462383, 29.734842, 34.760445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672749, 29.639219, 34.825268>,  <44.023361, 29.479849, 34.933308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672749, 29.639219, 34.825268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349764, 0.912702, 0.211281,
		0.330699, 0.090724, -0.939366,
		-0.876529, 0.398426, -0.270097,
		43.409790, 29.758747, 34.744240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211185, 29.844250, 34.494080>,  <44.023361, 29.479849, 34.933308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211185, 29.844250, 34.494080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866756, 30.032370, 34.571415>,  <43.660099, 30.145241, 34.617817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866756, 30.032370, 34.571415>,  <44.211185, 29.844250, 34.494080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866756, 30.032370, 34.571415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483361, 0.875090, 0.024068,
		-0.157866, 0.114174, -0.980838,
		-0.861070, 0.470299, 0.193334,
		43.608437, 30.173460, 34.629414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228352, 30.566992, 34.016785>,  <44.211185, 29.844250, 34.494080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228352, 30.566992, 34.016785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945839, 30.609612, 34.296730>,  <43.776333, 30.635183, 34.464699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945839, 30.609612, 34.296730>,  <44.228352, 30.566992, 34.016785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945839, 30.609612, 34.296730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303144, 0.938904, 0.162979,
		-0.639742, 0.327269, -0.695431,
		-0.706281, 0.106552, 0.699867,
		43.733955, 30.641577, 34.506691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901318, 31.167875, 33.874954>,  <44.228352, 30.566992, 34.016785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901318, 31.167875, 33.874954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823273, 31.092299, 34.259918>,  <43.776443, 31.046953, 34.490898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823273, 31.092299, 34.259918>,  <43.901318, 31.167875, 33.874954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823273, 31.092299, 34.259918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362502, 0.897891, 0.249769,
		-0.911330, 0.397609, -0.106700,
		-0.195115, -0.188943, 0.962409,
		43.764740, 31.035616, 34.548641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471775, 31.739706, 34.138561>,  <43.901318, 31.167875, 33.874954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471775, 31.739706, 34.138561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616337, 31.556139, 34.463223>,  <43.703072, 31.445999, 34.658020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616337, 31.556139, 34.463223>,  <43.471775, 31.739706, 34.138561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616337, 31.556139, 34.463223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263888, 0.885244, 0.383023,
		-0.894289, 0.075761, 0.441030,
		0.361400, -0.458915, 0.811656,
		43.724758, 31.418465, 34.706718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075977, 31.975277, 34.718246>,  <43.471775, 31.739706, 34.138561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075977, 31.975277, 34.718246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.421253, 31.841749, 34.869759>,  <43.628418, 31.761633, 34.960667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.421253, 31.841749, 34.869759>,  <43.075977, 31.975277, 34.718246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421253, 31.841749, 34.869759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193214, 0.911526, 0.363027,
		-0.466450, -0.240175, 0.851316,
		0.863187, -0.333821, 0.378776,
		43.680210, 31.741604, 34.983391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013435, 32.133259, 35.449127>,  <43.075977, 31.975277, 34.718246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013435, 32.133259, 35.449127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395267, 32.085056, 35.340130>,  <43.624367, 32.056137, 35.274731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395267, 32.085056, 35.340130>,  <43.013435, 32.133259, 35.449127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395267, 32.085056, 35.340130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203947, 0.930995, 0.302742,
		0.217213, -0.344567, 0.913287,
		0.954581, -0.120503, -0.272498,
		43.681641, 32.048904, 35.258381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487583, 32.146301, 35.972424>,  <43.013435, 32.133259, 35.449127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487583, 32.146301, 35.972424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738819, 32.234291, 35.673862>,  <43.889561, 32.287083, 35.494724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738819, 32.234291, 35.673862>,  <43.487583, 32.146301, 35.972424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738819, 32.234291, 35.673862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150731, 0.906651, 0.394035,
		0.763405, -0.359995, 0.536300,
		0.628087, 0.219972, -0.746404,
		43.927246, 32.300282, 35.449940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034256, 32.513618, 36.364895>,  <43.487583, 32.146301, 35.972424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034256, 32.513618, 36.364895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056259, 32.615131, 35.978615>,  <44.069462, 32.676041, 35.746849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056259, 32.615131, 35.978615>,  <44.034256, 32.513618, 36.364895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056259, 32.615131, 35.978615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160425, 0.952349, 0.259412,
		0.985514, -0.169192, 0.011674,
		0.055008, 0.253781, -0.965696,
		44.072762, 32.691265, 35.688908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603836, 32.943245, 36.325397>,  <44.034256, 32.513618, 36.364895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603836, 32.943245, 36.325397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381771, 33.016846, 36.000946>,  <44.248531, 33.061008, 35.806274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381771, 33.016846, 36.000946>,  <44.603836, 32.943245, 36.325397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381771, 33.016846, 36.000946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137832, 0.982091, 0.128452,
		0.820241, -0.040488, -0.570584,
		-0.555164, 0.184006, -0.811132,
		44.215221, 33.072048, 35.757607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952705, 33.548130, 36.084751>,  <44.603836, 32.943245, 36.325397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952705, 33.548130, 36.084751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595100, 33.531639, 35.906296>,  <44.380539, 33.521744, 35.799221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595100, 33.531639, 35.906296>,  <44.952705, 33.548130, 36.084751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595100, 33.531639, 35.906296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063039, 0.997427, 0.034146,
		0.443583, 0.058651, -0.894312,
		-0.894014, -0.041230, -0.446139,
		44.326897, 33.519272, 35.772453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031746, 34.014660, 35.456120>,  <44.952705, 33.548130, 36.084751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031746, 34.014660, 35.456120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647442, 33.956791, 35.550789>,  <44.416859, 33.922070, 35.607590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647442, 33.956791, 35.550789>,  <45.031746, 34.014660, 35.456120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647442, 33.956791, 35.550789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193135, 0.961317, -0.196388,
		-0.199108, -0.234392, -0.951534,
		-0.960757, -0.144672, 0.236676,
		44.359215, 33.913391, 35.621792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749798, 33.669464, 35.534885>,  <45.031746, 34.014660, 35.456120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749798, 33.669464, 35.534885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591141, 33.570446, 35.181301>,  <45.495945, 33.511036, 34.969151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591141, 33.570446, 35.181301>,  <45.749798, 33.669464, 35.534885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591141, 33.570446, 35.181301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059107, 0.967842, -0.244518,
		0.916067, -0.044738, -0.398522,
		-0.396645, -0.247550, -0.883963,
		45.472149, 33.496181, 34.916111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290016, 33.492706, 35.981274>,  <45.749798, 33.669464, 35.534885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290016, 33.492706, 35.981274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643002, 33.307003, 36.011536>,  <46.854794, 33.195580, 36.029694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643002, 33.307003, 36.011536>,  <46.290016, 33.492706, 35.981274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643002, 33.307003, 36.011536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377591, -0.603237, 0.702517,
		-0.280510, -0.648513, -0.707633,
		0.882462, -0.464259, 0.075659,
		46.907742, 33.167725, 36.034233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089500, 32.808434, 35.821438>,  <46.290016, 33.492706, 35.981274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089500, 32.808434, 35.821438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437420, 32.820972, 36.018402>,  <46.646172, 32.828495, 36.136581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437420, 32.820972, 36.018402>,  <46.089500, 32.808434, 35.821438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437420, 32.820972, 36.018402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340687, -0.683737, 0.645319,
		0.356903, -0.729055, -0.584036,
		0.869800, 0.031343, 0.492407,
		46.698360, 32.830376, 36.166122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325626, 32.046562, 35.740246>,  <46.089500, 32.808434, 35.821438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325626, 32.046562, 35.740246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512287, 32.234539, 36.039948>,  <46.624283, 32.347324, 36.219769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.512287, 32.234539, 36.039948>,  <46.325626, 32.046562, 35.740246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512287, 32.234539, 36.039948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274075, -0.728614, 0.627698,
		0.840904, -0.498269, -0.211208,
		0.466652, 0.469947, 0.749257,
		46.652283, 32.375523, 36.264725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926994, 31.689793, 36.046356>,  <46.325626, 32.046562, 35.740246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926994, 31.689793, 36.046356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803043, 31.939936, 36.332825>,  <46.728672, 32.090023, 36.504707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.803043, 31.939936, 36.332825>,  <46.926994, 31.689793, 36.046356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803043, 31.939936, 36.332825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219223, -0.779949, 0.586191,
		0.925159, 0.024644, 0.378780,
		-0.309875, 0.625357, 0.716175,
		46.710079, 32.127544, 36.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009434, 31.274769, 36.643627>,  <46.926994, 31.689793, 36.046356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009434, 31.274769, 36.643627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.817429, 31.595951, 36.784962>,  <46.702225, 31.788660, 36.869762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.817429, 31.595951, 36.784962>,  <47.009434, 31.274769, 36.643627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817429, 31.595951, 36.784962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692722, -0.594062, 0.408935,
		0.538262, -0.048471, 0.841383,
		-0.480012, 0.802958, 0.353338,
		46.673424, 31.836838, 36.890965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995197, 31.179323, 37.394794>,  <47.009434, 31.274769, 36.643627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995197, 31.179323, 37.394794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700455, 31.436230, 37.310379>,  <46.523609, 31.590374, 37.259731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700455, 31.436230, 37.310379>,  <46.995197, 31.179323, 37.394794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700455, 31.436230, 37.310379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651584, -0.591482, 0.474960,
		0.180225, 0.487487, 0.854327,
		-0.736857, 0.642266, -0.211039,
		46.479397, 31.628910, 37.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590210, 31.186153, 38.007198>,  <46.995197, 31.179323, 37.394794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590210, 31.186153, 38.007198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.339737, 31.312342, 37.721996>,  <46.189453, 31.388054, 37.550877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.339737, 31.312342, 37.721996>,  <46.590210, 31.186153, 38.007198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339737, 31.312342, 37.721996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711925, -0.604209, 0.357902,
		-0.317898, 0.731718, 0.602935,
		-0.626182, 0.315469, -0.713005,
		46.151882, 31.406982, 37.508095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921967, 31.345150, 38.344326>,  <46.590210, 31.186153, 38.007198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921967, 31.345150, 38.344326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833145, 31.298935, 37.957058>,  <45.779854, 31.271206, 37.724697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833145, 31.298935, 37.957058>,  <45.921967, 31.345150, 38.344326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833145, 31.298935, 37.957058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784225, -0.568869, 0.247748,
		-0.579383, 0.814273, 0.035711,
		-0.222049, -0.115535, -0.968166,
		45.766529, 31.264275, 37.666607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196198, 31.488655, 38.287239>,  <45.921967, 31.345150, 38.344326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196198, 31.488655, 38.287239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273872, 31.288570, 37.949699>,  <45.320477, 31.168520, 37.747177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273872, 31.288570, 37.949699>,  <45.196198, 31.488655, 38.287239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273872, 31.288570, 37.949699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762767, -0.617901, 0.190749,
		-0.616827, 0.606612, -0.501544,
		0.194194, -0.500221, -0.843841,
		45.332127, 31.138508, 37.696545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525650, 31.503942, 37.847462>,  <45.196198, 31.488655, 38.287239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525650, 31.503942, 37.847462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760082, 31.192392, 37.758141>,  <44.900742, 31.005463, 37.704548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760082, 31.192392, 37.758141>,  <44.525650, 31.503942, 37.847462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760082, 31.192392, 37.758141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735276, -0.627035, 0.257289,
		-0.340412, 0.013393, -0.940181,
		0.586080, -0.778876, -0.223298,
		44.935905, 30.958729, 37.691151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083481, 31.055574, 37.494804>,  <44.525650, 31.503942, 37.847462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083481, 31.055574, 37.494804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381771, 30.813740, 37.606781>,  <44.560745, 30.668638, 37.673969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381771, 30.813740, 37.606781>,  <44.083481, 31.055574, 37.494804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381771, 30.813740, 37.606781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655682, -0.740519, 0.147352,
		0.118219, -0.293439, -0.948640,
		0.745725, -0.604586, 0.279946,
		44.605488, 30.632364, 37.690765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910458, 30.386524, 37.264156>,  <44.083481, 31.055574, 37.494804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910458, 30.386524, 37.264156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166004, 30.313139, 37.563007>,  <44.319332, 30.269108, 37.742317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166004, 30.313139, 37.563007>,  <43.910458, 30.386524, 37.264156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166004, 30.313139, 37.563007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563277, -0.773016, 0.291832,
		0.523998, -0.607279, -0.597192,
		0.638863, -0.183465, 0.747125,
		44.357662, 30.258099, 37.787144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965107, 29.704481, 37.246201>,  <43.910458, 30.386524, 37.264156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965107, 29.704481, 37.246201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088402, 29.819065, 37.609062>,  <44.162380, 29.887815, 37.826778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088402, 29.819065, 37.609062>,  <43.965107, 29.704481, 37.246201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088402, 29.819065, 37.609062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435010, -0.805603, 0.402205,
		0.846022, -0.518597, -0.123705,
		0.308240, 0.286462, 0.907154,
		44.180874, 29.905005, 37.881207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272141, 29.163496, 37.454521>,  <43.965107, 29.704481, 37.246201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272141, 29.163496, 37.454521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.153927, 29.364113, 37.779758>,  <44.083000, 29.484482, 37.974899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.153927, 29.364113, 37.779758>,  <44.272141, 29.163496, 37.454521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153927, 29.364113, 37.779758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505130, -0.804439, 0.312604,
		0.810865, -0.318331, 0.491083,
		-0.295535, 0.501540, 0.813091,
		44.065266, 29.514574, 38.023685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071808, 28.631634, 37.889355>,  <44.272141, 29.163496, 37.454521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071808, 28.631634, 37.889355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912807, 28.949505, 38.072868>,  <43.817406, 29.140228, 38.182976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912807, 28.949505, 38.072868>,  <44.071808, 28.631634, 37.889355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912807, 28.949505, 38.072868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648960, -0.596941, 0.471712,
		0.648725, -0.110224, 0.752999,
		-0.397502, 0.794677, 0.458782,
		43.793556, 29.187908, 38.210503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029476, 28.338917, 38.528721>,  <44.071808, 28.631634, 37.889355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029476, 28.338917, 38.528721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773426, 28.646225, 38.527653>,  <43.619797, 28.830610, 38.527012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773426, 28.646225, 38.527653>,  <44.029476, 28.338917, 38.528721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773426, 28.646225, 38.527653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699750, -0.581589, 0.414854,
		0.317167, 0.267424, 0.909884,
		-0.640121, 0.768270, -0.002669,
		43.581390, 28.876705, 38.526852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758854, 28.235653, 39.152344>,  <44.029476, 28.338917, 38.528721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758854, 28.235653, 39.152344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503910, 28.457861, 38.938740>,  <43.350945, 28.591185, 38.810577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503910, 28.457861, 38.938740>,  <43.758854, 28.235653, 39.152344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503910, 28.457861, 38.938740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750295, -0.605312, 0.265811,
		-0.175581, 0.570084, 0.802605,
		-0.637361, 0.555519, -0.534013,
		43.312702, 28.624517, 38.778538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252144, 28.262199, 39.572086>,  <43.758854, 28.235653, 39.152344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252144, 28.262199, 39.572086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085228, 28.331842, 39.215309>,  <42.985077, 28.373629, 39.001244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.085228, 28.331842, 39.215309>,  <43.252144, 28.262199, 39.572086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085228, 28.331842, 39.215309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545815, -0.832750, 0.092805,
		-0.726606, 0.525561, 0.442527,
		-0.417289, 0.174105, -0.891940,
		42.960041, 28.384073, 38.947727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619209, 27.984533, 39.694065>,  <43.252144, 28.262199, 39.572086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619209, 27.984533, 39.694065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629772, 28.040123, 39.298088>,  <42.636108, 28.073477, 39.060501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629772, 28.040123, 39.298088>,  <42.619209, 27.984533, 39.694065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629772, 28.040123, 39.298088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659855, -0.741473, -0.121691,
		-0.750929, 0.656433, 0.072123,
		0.026405, 0.138972, -0.989944,
		42.637695, 28.081814, 39.001106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945683, 28.069178, 39.394382>,  <42.619209, 27.984533, 39.694065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945683, 28.069178, 39.394382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189724, 27.916595, 39.116600>,  <42.336147, 27.825047, 38.949932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189724, 27.916595, 39.116600>,  <41.945683, 28.069178, 39.394382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189724, 27.916595, 39.116600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548781, -0.835647, -0.023113,
		-0.571500, 0.395204, -0.719167,
		0.610104, -0.381456, -0.694452,
		42.372757, 27.802158, 38.908264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.164223, 38.699394, 40.906559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938835, 38.400429, 40.765778>,  <37.803600, 38.221050, 40.681309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938835, 38.400429, 40.765778>,  <38.164223, 38.699394, 40.906559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938835, 38.400429, 40.765778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550251, -0.021772, -0.834716,
		0.616218, -0.663999, 0.423534,
		-0.563471, -0.747417, -0.351949,
		37.769794, 38.176205, 40.660194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662941, 38.185413, 40.534367>,  <38.164223, 38.699394, 40.906559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662941, 38.185413, 40.534367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291153, 38.114799, 40.404804>,  <38.068081, 38.072430, 40.327068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291153, 38.114799, 40.404804>,  <38.662941, 38.185413, 40.534367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291153, 38.114799, 40.404804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350032, -0.144914, -0.925461,
		0.116438, -0.973568, 0.196487,
		-0.929473, -0.176535, -0.323907,
		38.012310, 38.061840, 40.307632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720951, 37.511253, 40.130966>,  <38.662941, 38.185413, 40.534367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720951, 37.511253, 40.130966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403969, 37.710598, 39.990311>,  <38.213779, 37.830204, 39.905918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403969, 37.710598, 39.990311>,  <38.720951, 37.511253, 40.130966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403969, 37.710598, 39.990311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315253, -0.158871, -0.935615,
		-0.522136, -0.852291, -0.031210,
		-0.792458, 0.498357, -0.351640,
		38.166233, 37.860104, 39.884819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631248, 37.222923, 39.552563>,  <38.720951, 37.511253, 40.130966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631248, 37.222923, 39.552563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403877, 37.539890, 39.464058>,  <38.267456, 37.730072, 39.410954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403877, 37.539890, 39.464058>,  <38.631248, 37.222923, 39.552563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403877, 37.539890, 39.464058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293139, -0.056223, -0.954416,
		-0.768740, -0.607377, -0.200331,
		-0.568427, 0.792422, -0.221267,
		38.233349, 37.777618, 39.397678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179211, 37.037460, 39.045242>,  <38.631248, 37.222923, 39.552563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179211, 37.037460, 39.045242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211311, 37.435116, 39.016273>,  <38.230572, 37.673710, 38.998894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211311, 37.435116, 39.016273>,  <38.179211, 37.037460, 39.045242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211311, 37.435116, 39.016273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151773, -0.083995, -0.984840,
		-0.985152, 0.068040, -0.157624,
		0.080248, 0.994141, -0.072421,
		38.235386, 37.733356, 38.994549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693367, 37.261833, 38.483395>,  <38.179211, 37.037460, 39.045242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693367, 37.261833, 38.483395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983639, 37.533611, 38.526749>,  <38.157803, 37.696678, 38.552761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983639, 37.533611, 38.526749>,  <37.693367, 37.261833, 38.483395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983639, 37.533611, 38.526749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078180, 0.075086, -0.994108,
		-0.683580, 0.729875, 0.001370,
		0.725677, 0.679444, 0.108389,
		38.201344, 37.737446, 38.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538589, 37.646729, 38.004414>,  <37.693367, 37.261833, 38.483395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538589, 37.646729, 38.004414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914074, 37.756748, 38.087524>,  <38.139366, 37.822762, 38.137390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914074, 37.756748, 38.087524>,  <37.538589, 37.646729, 38.004414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914074, 37.756748, 38.087524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237040, -0.077435, -0.968409,
		-0.250269, 0.958307, -0.137886,
		0.938711, 0.275048, 0.207777,
		38.195686, 37.839264, 38.149857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780659, 38.290565, 37.580898>,  <37.538589, 37.646729, 38.004414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780659, 38.290565, 37.580898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104900, 38.082233, 37.687973>,  <38.299446, 37.957233, 37.752216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104900, 38.082233, 37.687973>,  <37.780659, 38.290565, 37.580898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104900, 38.082233, 37.687973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286645, -0.045703, -0.956946,
		0.510641, 0.852436, 0.112247,
		0.810605, -0.520831, 0.267685,
		38.348083, 37.925983, 37.768280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307446, 38.503838, 37.206692>,  <37.780659, 38.290565, 37.580898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307446, 38.503838, 37.206692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481628, 38.166569, 37.332825>,  <38.586140, 37.964207, 37.408504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481628, 38.166569, 37.332825>,  <38.307446, 38.503838, 37.206692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481628, 38.166569, 37.332825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369164, -0.152212, -0.916815,
		0.821031, 0.515645, 0.244987,
		0.435461, -0.843174, 0.315328,
		38.612267, 37.913616, 37.427422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924141, 38.521816, 37.002346>,  <38.307446, 38.503838, 37.206692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924141, 38.521816, 37.002346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884243, 38.127590, 37.057053>,  <38.860306, 37.891052, 37.089878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884243, 38.127590, 37.057053>,  <38.924141, 38.521816, 37.002346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884243, 38.127590, 37.057053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591323, -0.169260, -0.788472,
		0.800243, 0.002231, 0.599672,
		-0.099741, -0.985569, 0.136768,
		38.854321, 37.831921, 37.098083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453373, 38.374222, 36.623108>,  <38.924141, 38.521816, 37.002346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453373, 38.374222, 36.623108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297604, 38.013466, 36.697880>,  <39.204140, 37.797012, 36.742744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297604, 38.013466, 36.697880>,  <39.453373, 38.374222, 36.623108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297604, 38.013466, 36.697880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543850, -0.388951, -0.743603,
		0.743354, -0.187916, 0.641960,
		-0.389425, -0.901890, 0.186931,
		39.180775, 37.742901, 36.753960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091087, 37.848450, 36.531013>,  <39.453373, 38.374222, 36.623108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091087, 37.848450, 36.531013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737270, 37.670033, 36.476410>,  <39.524982, 37.562981, 36.443645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737270, 37.670033, 36.476410>,  <40.091087, 37.848450, 36.531013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737270, 37.670033, 36.476410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337074, -0.408895, -0.848048,
		0.322448, -0.796146, 0.512034,
		-0.884539, -0.446045, -0.136513,
		39.471909, 37.536221, 36.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278969, 37.141724, 36.393494>,  <40.091087, 37.848450, 36.531013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278969, 37.141724, 36.393494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943676, 37.258514, 36.209270>,  <39.742500, 37.328590, 36.098736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943676, 37.258514, 36.209270>,  <40.278969, 37.141724, 36.393494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943676, 37.258514, 36.209270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253438, -0.539233, -0.803117,
		-0.482844, -0.789921, 0.378003,
		-0.838231, 0.291980, -0.460561,
		39.692207, 37.346107, 36.071102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049454, 36.558956, 36.055161>,  <40.278969, 37.141724, 36.393494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049454, 36.558956, 36.055161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856903, 36.868271, 35.890087>,  <39.741371, 37.053860, 35.791042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856903, 36.868271, 35.890087>,  <40.049454, 36.558956, 36.055161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856903, 36.868271, 35.890087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080549, -0.429800, -0.899324,
		-0.872805, -0.466155, 0.144608,
		-0.481377, 0.773286, -0.412680,
		39.712490, 37.100258, 35.766281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342243, 36.387653, 35.883492>,  <40.049454, 36.558956, 36.055161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342243, 36.387653, 35.883492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605484, 36.086487, 35.881470>,  <39.763428, 35.905788, 35.880257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605484, 36.086487, 35.881470>,  <39.342243, 36.387653, 35.883492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605484, 36.086487, 35.881470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090861, -0.086080, 0.992136,
		-0.747429, -0.652464, -0.125060,
		0.658098, -0.752915, -0.005055,
		39.802914, 35.860611, 35.879951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120403, 35.771587, 36.307205>,  <39.342243, 36.387653, 35.883492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120403, 35.771587, 36.307205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518818, 35.746418, 36.282074>,  <39.757866, 35.731316, 36.266994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518818, 35.746418, 36.282074>,  <39.120403, 35.771587, 36.307205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518818, 35.746418, 36.282074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039606, -0.318621, 0.947054,
		-0.079610, -0.945791, -0.314866,
		0.996039, -0.062924, -0.062824,
		39.817631, 35.727539, 36.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303658, 35.133423, 36.554401>,  <39.120403, 35.771587, 36.307205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303658, 35.133423, 36.554401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632210, 35.356445, 36.602497>,  <39.829342, 35.490261, 36.631355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632210, 35.356445, 36.602497>,  <39.303658, 35.133423, 36.554401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632210, 35.356445, 36.602497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046142, -0.275075, 0.960315,
		0.568507, -0.783239, -0.251669,
		0.821383, 0.557558, 0.120242,
		39.878624, 35.523712, 36.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807297, 34.724640, 36.897919>,  <39.303658, 35.133423, 36.554401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807297, 34.724640, 36.897919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973850, 35.086025, 36.938656>,  <40.073784, 35.302856, 36.963097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973850, 35.086025, 36.938656>,  <39.807297, 34.724640, 36.897919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973850, 35.086025, 36.938656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184223, -0.193530, 0.963643,
		0.890328, -0.382486, -0.247023,
		0.416386, 0.903466, 0.101843,
		40.098766, 35.357063, 36.969208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292480, 34.449741, 37.211315>,  <39.807297, 34.724640, 36.897919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292480, 34.449741, 37.211315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288612, 34.842293, 37.288059>,  <40.286293, 35.077824, 37.334106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288612, 34.842293, 37.288059>,  <40.292480, 34.449741, 37.211315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288612, 34.842293, 37.288059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209254, -0.185632, 0.960080,
		0.977814, 0.049431, -0.203561,
		-0.009670, 0.981375, 0.191857,
		40.285713, 35.136703, 37.345615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860100, 34.629517, 37.682915>,  <40.292480, 34.449741, 37.211315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860100, 34.629517, 37.682915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599121, 34.928169, 37.734852>,  <40.442535, 35.107361, 37.766014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599121, 34.928169, 37.734852>,  <40.860100, 34.629517, 37.682915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599121, 34.928169, 37.734852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141689, -0.048133, 0.988740,
		0.744472, 0.663498, -0.074385,
		-0.652446, 0.746629, 0.129844,
		40.403389, 35.152157, 37.773804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071136, 34.960499, 38.271996>,  <40.860100, 34.629517, 37.682915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071136, 34.960499, 38.271996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683697, 35.056332, 38.245438>,  <40.451233, 35.113831, 38.229504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683697, 35.056332, 38.245438>,  <41.071136, 34.960499, 38.271996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683697, 35.056332, 38.245438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130546, -0.262873, 0.955958,
		0.211581, 0.934611, 0.285896,
		-0.968603, 0.239585, -0.066391,
		40.393116, 35.128208, 38.225521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934341, 35.264294, 38.888744>,  <41.071136, 34.960499, 38.271996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934341, 35.264294, 38.888744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570301, 35.173843, 38.749844>,  <40.351879, 35.119572, 38.666504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570301, 35.173843, 38.749844>,  <40.934341, 35.264294, 38.888744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570301, 35.173843, 38.749844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288038, -0.257250, 0.922419,
		-0.297916, 0.939515, 0.168990,
		-0.910099, -0.226128, -0.347254,
		40.297272, 35.106007, 38.645668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507137, 35.548107, 39.414410>,  <40.934341, 35.264294, 38.888744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507137, 35.548107, 39.414410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280266, 35.272919, 39.233295>,  <40.144142, 35.107807, 39.124626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280266, 35.272919, 39.233295>,  <40.507137, 35.548107, 39.414410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280266, 35.272919, 39.233295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379118, -0.269968, 0.885092,
		-0.731151, 0.673660, -0.107702,
		-0.567175, -0.687967, -0.452784,
		40.110115, 35.066528, 39.097462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781433, 35.674458, 39.636005>,  <40.507137, 35.548107, 39.414410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781433, 35.674458, 39.636005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770458, 35.305759, 39.481277>,  <39.763874, 35.084541, 39.388439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770458, 35.305759, 39.481277>,  <39.781433, 35.674458, 39.636005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770458, 35.305759, 39.481277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450804, -0.333975, 0.827791,
		-0.892201, 0.197095, -0.406363,
		-0.027438, -0.921746, -0.386824,
		39.762226, 35.029236, 39.365231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175053, 35.486248, 39.721680>,  <39.781433, 35.674458, 39.636005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175053, 35.486248, 39.721680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386189, 35.146786, 39.708042>,  <39.512871, 34.943108, 39.699860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386189, 35.146786, 39.708042>,  <39.175053, 35.486248, 39.721680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386189, 35.146786, 39.708042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444632, -0.310307, 0.840245,
		-0.723663, -0.428354, -0.541133,
		0.527840, -0.848659, -0.034097,
		39.544540, 34.892189, 39.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745640, 34.863888, 39.643398>,  <39.175053, 35.486248, 39.721680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745640, 34.863888, 39.643398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077389, 34.700733, 39.796116>,  <39.276440, 34.602840, 39.887745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077389, 34.700733, 39.796116>,  <38.745640, 34.863888, 39.643398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077389, 34.700733, 39.796116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537938, -0.398471, 0.742862,
		-0.150874, -0.821490, -0.549901,
		0.829373, -0.407890, 0.381792,
		39.326202, 34.578365, 39.910652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535011, 34.162498, 39.894325>,  <38.745640, 34.863888, 39.643398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535011, 34.162498, 39.894325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878033, 34.247459, 40.081722>,  <39.083847, 34.298435, 40.194160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878033, 34.247459, 40.081722>,  <38.535011, 34.162498, 39.894325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878033, 34.247459, 40.081722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364672, -0.391316, 0.844918,
		0.362792, -0.895409, -0.258117,
		0.857553, 0.212401, 0.468496,
		39.135300, 34.311180, 40.222271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676414, 33.566097, 40.272781>,  <38.535011, 34.162498, 39.894325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676414, 33.566097, 40.272781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908844, 33.841084, 40.447021>,  <39.048302, 34.006077, 40.551567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908844, 33.841084, 40.447021>,  <38.676414, 33.566097, 40.272781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908844, 33.841084, 40.447021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263117, -0.347805, 0.899890,
		0.770147, -0.637513, -0.021216,
		0.581070, 0.687465, 0.435602,
		39.083164, 34.047321, 40.577702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484970, 32.875362, 40.328762>,  <38.676414, 33.566097, 40.272781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484970, 32.875362, 40.328762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090199, 32.811531, 40.319759>,  <37.853336, 32.773232, 40.314358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090199, 32.811531, 40.319759>,  <38.484970, 32.875362, 40.328762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090199, 32.811531, 40.319759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036673, 0.358346, -0.932868,
		0.156931, -0.919849, -0.359514,
		-0.986929, -0.159580, -0.022502,
		37.794121, 32.763657, 40.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399967, 32.641228, 39.770542>,  <38.484970, 32.875362, 40.328762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399967, 32.641228, 39.770542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016487, 32.733337, 39.837326>,  <37.786400, 32.788605, 39.877396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016487, 32.733337, 39.837326>,  <38.399967, 32.641228, 39.770542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016487, 32.733337, 39.837326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079864, 0.345434, -0.935039,
		-0.272989, -0.909752, -0.312775,
		-0.958696, 0.230276, 0.166956,
		37.728878, 32.802422, 39.887413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088764, 32.395184, 39.125996>,  <38.399967, 32.641228, 39.770542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088764, 32.395184, 39.125996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811447, 32.646496, 39.267197>,  <37.645058, 32.797283, 39.351917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811447, 32.646496, 39.267197>,  <38.088764, 32.395184, 39.125996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811447, 32.646496, 39.267197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216714, 0.285400, -0.933586,
		-0.687304, -0.723744, -0.061707,
		-0.693288, 0.628284, 0.353002,
		37.603462, 32.834980, 39.373096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426697, 32.265339, 38.855236>,  <38.088764, 32.395184, 39.125996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426697, 32.265339, 38.855236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411091, 32.646828, 38.974499>,  <37.401730, 32.875721, 39.046055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411091, 32.646828, 38.974499>,  <37.426697, 32.265339, 38.855236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411091, 32.646828, 38.974499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237776, 0.280951, -0.929801,
		-0.970536, -0.107167, 0.215812,
		-0.039011, 0.953720, 0.298155,
		37.399387, 32.932945, 39.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880505, 32.565910, 38.436008>,  <37.426697, 32.265339, 38.855236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880505, 32.565910, 38.436008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093449, 32.867699, 38.589558>,  <37.221214, 33.048771, 38.681686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093449, 32.867699, 38.589558>,  <36.880505, 32.565910, 38.436008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093449, 32.867699, 38.589558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086238, 0.402779, -0.911226,
		-0.842111, 0.518208, 0.149361,
		0.532364, 0.754473, 0.383874,
		37.253159, 33.094040, 38.704720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555046, 33.201767, 38.226280>,  <36.880505, 32.565910, 38.436008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555046, 33.201767, 38.226280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923897, 33.331558, 38.310562>,  <37.145206, 33.409435, 38.361130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923897, 33.331558, 38.310562>,  <36.555046, 33.201767, 38.226280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923897, 33.331558, 38.310562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098271, 0.330301, -0.938746,
		-0.374200, 0.886348, 0.272692,
		0.922126, 0.324481, 0.210701,
		37.200535, 33.428902, 38.373772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534119, 33.821358, 37.929615>,  <36.555046, 33.201767, 38.226280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534119, 33.821358, 37.929615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920319, 33.721054, 37.957695>,  <37.152039, 33.660873, 37.974545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920319, 33.721054, 37.957695>,  <36.534119, 33.821358, 37.929615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920319, 33.721054, 37.957695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160686, 0.361590, -0.918386,
		0.204911, 0.897983, 0.389409,
		0.965501, -0.250760, 0.070200,
		37.209969, 33.645824, 37.978756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850185, 34.318886, 37.621845>,  <36.534119, 33.821358, 37.929615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850185, 34.318886, 37.621845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130459, 34.033810, 37.635201>,  <37.298622, 33.862762, 37.643215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130459, 34.033810, 37.635201>,  <36.850185, 34.318886, 37.621845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130459, 34.033810, 37.635201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287486, 0.239196, -0.927436,
		0.652989, 0.659437, 0.372489,
		0.700683, -0.712691, 0.033387,
		37.340664, 33.820004, 37.645218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534752, 34.655460, 37.589924>,  <36.850185, 34.318886, 37.621845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534752, 34.655460, 37.589924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622280, 34.290970, 37.450333>,  <37.674797, 34.072277, 37.366577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622280, 34.290970, 37.450333>,  <37.534752, 34.655460, 37.589924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622280, 34.290970, 37.450333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164362, 0.386957, -0.907331,
		0.961823, 0.141183, 0.234445,
		0.218820, -0.911226, -0.348979,
		37.687927, 34.017601, 37.345638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174255, 34.692528, 37.164524>,  <37.534752, 34.655460, 37.589924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174255, 34.692528, 37.164524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978336, 34.365696, 37.042881>,  <37.860786, 34.169598, 36.969894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978336, 34.365696, 37.042881>,  <38.174255, 34.692528, 37.164524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978336, 34.365696, 37.042881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265245, 0.192620, -0.944745,
		0.830509, -0.543395, 0.122382,
		-0.489796, -0.817080, -0.304106,
		37.831398, 34.120571, 36.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611149, 34.320225, 36.704128>,  <38.174255, 34.692528, 37.164524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611149, 34.320225, 36.704128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236687, 34.216114, 36.609589>,  <38.012009, 34.153648, 36.552864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236687, 34.216114, 36.609589>,  <38.611149, 34.320225, 36.704128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236687, 34.216114, 36.609589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168631, 0.257453, -0.951463,
		0.308496, -0.930576, -0.197126,
		-0.936159, -0.260281, -0.236347,
		37.955837, 34.138031, 36.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621483, 34.591709, 36.082767>,  <38.611149, 34.320225, 36.704128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621483, 34.591709, 36.082767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296902, 34.362343, 36.127918>,  <38.102154, 34.224724, 36.155006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296902, 34.362343, 36.127918>,  <38.621483, 34.591709, 36.082767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296902, 34.362343, 36.127918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255581, 0.174496, -0.950910,
		0.525569, -0.800467, -0.288149,
		-0.811452, -0.573415, 0.112874,
		38.053467, 34.190319, 36.161781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.497330, 31.148453, 43.703461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138309, 31.299726, 43.612789>,  <36.922897, 31.390491, 43.558388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138309, 31.299726, 43.612789>,  <37.497330, 31.148453, 43.703461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138309, 31.299726, 43.612789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360365, 0.332982, -0.871356,
		-0.254054, -0.863771, -0.435152,
		-0.897549, 0.378184, -0.226677,
		36.869045, 31.413181, 43.544785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311657, 30.863831, 43.063362>,  <37.497330, 31.148453, 43.703461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311657, 30.863831, 43.063362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128151, 31.217443, 43.099194>,  <37.018047, 31.429611, 43.120693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.128151, 31.217443, 43.099194>,  <37.311657, 30.863831, 43.063362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128151, 31.217443, 43.099194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349650, 0.272280, -0.896442,
		-0.816874, -0.379934, -0.434013,
		-0.458762, 0.884033, 0.089574,
		36.990520, 31.482653, 43.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767506, 30.944944, 42.563553>,  <37.311657, 30.863831, 43.063362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767506, 30.944944, 42.563553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857529, 31.322750, 42.659252>,  <36.911541, 31.549433, 42.716671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857529, 31.322750, 42.659252>,  <36.767506, 30.944944, 42.563553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857529, 31.322750, 42.659252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207906, 0.193342, -0.958851,
		-0.951905, 0.265539, -0.152857,
		0.225059, 0.944515, 0.239250,
		36.925045, 31.606104, 42.731026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507137, 31.281868, 42.001171>,  <36.767506, 30.944944, 42.563553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507137, 31.281868, 42.001171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747791, 31.554291, 42.168121>,  <36.892181, 31.717745, 42.268291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747791, 31.554291, 42.168121>,  <36.507137, 31.281868, 42.001171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747791, 31.554291, 42.168121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206994, 0.371736, -0.904967,
		-0.771487, 0.630851, 0.082673,
		0.601632, 0.681058, 0.417372,
		36.928280, 31.758608, 42.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355572, 31.914351, 41.678604>,  <36.507137, 31.281868, 42.001171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355572, 31.914351, 41.678604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716404, 31.981720, 41.837543>,  <36.932903, 32.022141, 41.932907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716404, 31.981720, 41.837543>,  <36.355572, 31.914351, 41.678604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716404, 31.981720, 41.837543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239637, 0.570239, -0.785749,
		-0.358919, 0.804028, 0.474042,
		0.902082, 0.168422, 0.397345,
		36.987030, 32.032246, 41.956745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448643, 32.703327, 41.734100>,  <36.355572, 31.914351, 41.678604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448643, 32.703327, 41.734100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799831, 32.512371, 41.719883>,  <37.010544, 32.397797, 41.711353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.799831, 32.512371, 41.719883>,  <36.448643, 32.703327, 41.734100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799831, 32.512371, 41.719883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278938, 0.570505, -0.772475,
		0.389052, 0.668296, 0.634049,
		0.877971, -0.477393, -0.035543,
		37.063221, 32.369152, 41.709221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021248, 33.267262, 41.654011>,  <36.448643, 32.703327, 41.734100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021248, 33.267262, 41.654011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188099, 32.915611, 41.561806>,  <37.288212, 32.704620, 41.506485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188099, 32.915611, 41.561806>,  <37.021248, 33.267262, 41.654011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188099, 32.915611, 41.561806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437282, 0.416477, -0.797076,
		0.796735, 0.231688, 0.558153,
		0.417131, -0.879129, -0.230509,
		37.313240, 32.651871, 41.492653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633102, 33.393616, 41.346985>,  <37.021248, 33.267262, 41.654011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633102, 33.393616, 41.346985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574852, 33.014759, 41.232647>,  <37.539902, 32.787445, 41.164043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574852, 33.014759, 41.232647>,  <37.633102, 33.393616, 41.346985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574852, 33.014759, 41.232647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233939, 0.247767, -0.940151,
		0.961284, -0.203778, 0.185494,
		-0.145623, -0.947146, -0.285846,
		37.531166, 32.730614, 41.146893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252235, 33.074131, 41.105957>,  <37.633102, 33.393616, 41.346985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252235, 33.074131, 41.105957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955544, 32.868027, 40.934219>,  <37.777527, 32.744366, 40.831177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955544, 32.868027, 40.934219>,  <38.252235, 33.074131, 41.105957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955544, 32.868027, 40.934219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213750, 0.425168, -0.879513,
		0.635722, -0.744137, -0.205225,
		-0.741734, -0.515259, -0.429348,
		37.733025, 32.713448, 40.805416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986042, 33.212246, 41.044388>,  <38.252235, 33.074131, 41.105957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986042, 33.212246, 41.044388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051449, 33.606770, 41.052994>,  <39.090694, 33.843483, 41.058159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051449, 33.606770, 41.052994>,  <38.986042, 33.212246, 41.044388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051449, 33.606770, 41.052994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061460, -0.011581, 0.998042,
		0.984624, -0.164522, 0.058724,
		0.163520, 0.986305, 0.021514,
		39.100506, 33.902660, 41.059448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530621, 33.322865, 41.516499>,  <38.986042, 33.212246, 41.044388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530621, 33.322865, 41.516499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288548, 33.640106, 41.488976>,  <39.143303, 33.830452, 41.472462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288548, 33.640106, 41.488976>,  <39.530621, 33.322865, 41.516499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288548, 33.640106, 41.488976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144042, -0.024080, 0.989279,
		0.782945, 0.608609, 0.128813,
		-0.605186, 0.793105, -0.068812,
		39.106991, 33.878036, 41.468330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700058, 33.612190, 42.069469>,  <39.530621, 33.322865, 41.516499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700058, 33.612190, 42.069469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355236, 33.789852, 41.971832>,  <39.148342, 33.896450, 41.913250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355236, 33.789852, 41.971832>,  <39.700058, 33.612190, 42.069469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355236, 33.789852, 41.971832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211136, 0.123117, 0.969672,
		0.460737, 0.887450, -0.012357,
		-0.862057, 0.444155, -0.244097,
		39.096619, 33.923100, 41.898602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589024, 34.225521, 42.540367>,  <39.700058, 33.612190, 42.069469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589024, 34.225521, 42.540367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224281, 34.136143, 42.402622>,  <39.005436, 34.082516, 42.319977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224281, 34.136143, 42.402622>,  <39.589024, 34.225521, 42.540367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224281, 34.136143, 42.402622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370125, 0.084726, 0.925110,
		-0.177537, 0.971027, -0.159962,
		-0.911859, -0.223447, -0.344360,
		38.950722, 34.069107, 42.299313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254757, 34.828568, 42.679688>,  <39.589024, 34.225521, 42.540367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254757, 34.828568, 42.679688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017941, 34.509613, 42.632946>,  <38.875851, 34.318241, 42.604900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.017941, 34.509613, 42.632946>,  <39.254757, 34.828568, 42.679688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017941, 34.509613, 42.632946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216832, 0.017954, 0.976044,
		-0.776190, 0.603197, -0.183529,
		-0.592041, -0.797390, -0.116857,
		38.840328, 34.270397, 42.597889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586540, 35.001621, 43.038631>,  <39.254757, 34.828568, 42.679688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586540, 35.001621, 43.038631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540142, 34.605778, 43.004658>,  <38.512302, 34.368271, 42.984272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540142, 34.605778, 43.004658>,  <38.586540, 35.001621, 43.038631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540142, 34.605778, 43.004658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147990, -0.067338, 0.986694,
		-0.982163, 0.127017, -0.138642,
		-0.115991, -0.989612, -0.084934,
		38.505344, 34.308895, 42.979179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897598, 34.841675, 43.394669>,  <38.586540, 35.001621, 43.038631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897598, 34.841675, 43.394669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059822, 34.476051, 43.396023>,  <38.157158, 34.256676, 43.396835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059822, 34.476051, 43.396023>,  <37.897598, 34.841675, 43.394669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059822, 34.476051, 43.396023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267102, -0.114963, 0.956786,
		-0.874172, -0.388942, -0.290772,
		0.405562, -0.914061, 0.003390,
		38.181492, 34.201832, 43.397041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373760, 34.261154, 43.630859>,  <37.897598, 34.841675, 43.394669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373760, 34.261154, 43.630859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740009, 34.109974, 43.685684>,  <37.959759, 34.019264, 43.718578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740009, 34.109974, 43.685684>,  <37.373760, 34.261154, 43.630859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740009, 34.109974, 43.685684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233183, -0.221537, 0.946862,
		-0.327506, -0.898928, -0.290976,
		0.915623, -0.377954, 0.137060,
		38.014698, 33.996590, 43.726803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263176, 33.507061, 43.952007>,  <37.373760, 34.261154, 43.630859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263176, 33.507061, 43.952007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629379, 33.630653, 44.055061>,  <37.849102, 33.704807, 44.116894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629379, 33.630653, 44.055061>,  <37.263176, 33.507061, 43.952007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629379, 33.630653, 44.055061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240972, -0.091630, 0.966197,
		0.322140, -0.946645, -0.009433,
		0.915510, 0.308977, 0.257633,
		37.904034, 33.723347, 44.132351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395191, 33.103992, 44.513409>,  <37.263176, 33.507061, 43.952007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395191, 33.103992, 44.513409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662182, 33.400730, 44.539169>,  <37.822376, 33.578773, 44.554626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.662182, 33.400730, 44.539169>,  <37.395191, 33.103992, 44.513409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662182, 33.400730, 44.539169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270996, 0.161447, 0.948945,
		0.693570, -0.650850, 0.308798,
		0.667475, 0.741842, 0.064402,
		37.862423, 33.623283, 44.558491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746758, 32.935673, 45.093563>,  <37.395191, 33.103992, 44.513409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746758, 32.935673, 45.093563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802464, 33.330265, 45.059029>,  <37.835888, 33.567020, 45.038307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802464, 33.330265, 45.059029>,  <37.746758, 32.935673, 45.093563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802464, 33.330265, 45.059029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380980, 0.133853, 0.914843,
		0.914034, -0.094516, 0.394472,
		0.139268, 0.986484, -0.086338,
		37.844246, 33.626209, 45.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080059, 33.199589, 45.669170>,  <37.746758, 32.935673, 45.093563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080059, 33.199589, 45.669170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937149, 33.542526, 45.520947>,  <37.851402, 33.748287, 45.432011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.937149, 33.542526, 45.520947>,  <38.080059, 33.199589, 45.669170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937149, 33.542526, 45.520947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102861, 0.358217, 0.927955,
		0.928318, 0.369651, -0.039794,
		-0.357275, 0.857344, -0.370562,
		37.829967, 33.799728, 45.409779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488350, 33.770241, 46.037655>,  <38.080059, 33.199589, 45.669170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488350, 33.770241, 46.037655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145786, 33.922993, 45.898666>,  <37.940250, 34.014645, 45.815273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145786, 33.922993, 45.898666>,  <38.488350, 33.770241, 46.037655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145786, 33.922993, 45.898666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205799, 0.364732, 0.908085,
		0.473513, 0.849199, -0.233768,
		-0.856407, 0.381880, -0.347469,
		37.888863, 34.037556, 45.794426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465080, 34.449493, 46.333035>,  <38.488350, 33.770241, 46.037655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465080, 34.449493, 46.333035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087807, 34.391548, 46.213417>,  <37.861443, 34.356781, 46.141647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087807, 34.391548, 46.213417>,  <38.465080, 34.449493, 46.333035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087807, 34.391548, 46.213417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320354, 0.635364, 0.702628,
		0.088218, 0.758504, -0.645670,
		-0.943181, -0.144859, -0.299040,
		37.804852, 34.348091, 46.123703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.058794, 34.438080, 43.565155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381638, 34.211113, 43.630413>,  <30.575344, 34.074932, 43.669567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381638, 34.211113, 43.630413>,  <30.058794, 34.438080, 43.565155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381638, 34.211113, 43.630413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296671, 0.150861, -0.942989,
		0.510455, 0.809494, 0.290097,
		0.807108, -0.567416, 0.163146,
		30.623770, 34.040890, 43.679356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623213, 34.856834, 43.445049>,  <30.058794, 34.438080, 43.565155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623213, 34.856834, 43.445049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.766863, 34.486115, 43.401096>,  <30.853052, 34.263683, 43.374725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.766863, 34.486115, 43.401096>,  <30.623213, 34.856834, 43.445049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766863, 34.486115, 43.401096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404858, 0.260782, -0.876403,
		0.840904, 0.270251, 0.468875,
		0.359123, -0.926799, -0.109880,
		30.874599, 34.208076, 43.368134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236578, 35.024227, 43.133907>,  <30.623213, 34.856834, 43.445049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236578, 35.024227, 43.133907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.189329, 34.632507, 43.068153>,  <31.160980, 34.397476, 43.028702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.189329, 34.632507, 43.068153>,  <31.236578, 35.024227, 43.133907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189329, 34.632507, 43.068153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536591, 0.076341, -0.840382,
		0.835534, -0.187473, 0.516465,
		-0.118122, -0.979299, -0.164382,
		31.153893, 34.338718, 43.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883169, 34.722866, 43.026615>,  <31.236578, 35.024227, 43.133907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883169, 34.722866, 43.026615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619610, 34.488686, 42.837685>,  <31.461473, 34.348175, 42.724327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619610, 34.488686, 42.837685>,  <31.883169, 34.722866, 43.026615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619610, 34.488686, 42.837685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509277, 0.114929, -0.852894,
		0.553616, -0.802516, 0.222433,
		-0.658897, -0.585456, -0.472329,
		31.421940, 34.313049, 42.695984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192860, 34.290405, 42.694721>,  <31.883169, 34.722866, 43.026615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192860, 34.290405, 42.694721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858303, 34.272762, 42.476181>,  <31.657570, 34.262177, 42.345055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858303, 34.272762, 42.476181>,  <32.192860, 34.290405, 42.694721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858303, 34.272762, 42.476181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547819, -0.033629, -0.835920,
		0.018502, -0.998460, 0.052293,
		-0.836392, -0.044113, -0.546354,
		31.607386, 34.259529, 42.312275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392353, 33.839264, 42.099319>,  <32.192860, 34.290405, 42.694721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392353, 33.839264, 42.099319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066929, 34.045349, 41.991486>,  <31.871674, 34.168999, 41.926785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066929, 34.045349, 41.991486>,  <32.392353, 33.839264, 42.099319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066929, 34.045349, 41.991486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387009, 0.133747, -0.912324,
		-0.433985, -0.846562, -0.308204,
		-0.813560, 0.515213, -0.269583,
		31.822861, 34.199913, 41.910610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326851, 33.583427, 41.432991>,  <32.392353, 33.839264, 42.099319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326851, 33.583427, 41.432991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083607, 33.900330, 41.453159>,  <31.937660, 34.090469, 41.465260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083607, 33.900330, 41.453159>,  <32.326851, 33.583427, 41.432991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083607, 33.900330, 41.453159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125729, 0.158828, -0.979268,
		-0.783836, -0.589159, -0.196194,
		-0.608106, 0.792252, 0.050421,
		31.901175, 34.138004, 41.468285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925728, 33.436657, 40.898621>,  <32.326851, 33.583427, 41.432991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925728, 33.436657, 40.898621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913984, 33.824032, 40.997623>,  <31.906939, 34.056458, 41.057026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913984, 33.824032, 40.997623>,  <31.925728, 33.436657, 40.898621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913984, 33.824032, 40.997623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212477, 0.248002, -0.945171,
		-0.976725, 0.024839, -0.213053,
		-0.029360, 0.968441, 0.247508,
		31.905176, 34.114563, 41.071877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512518, 33.780144, 40.444218>,  <31.925728, 33.436657, 40.898621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512518, 33.780144, 40.444218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709902, 34.099640, 40.581921>,  <31.828333, 34.291336, 40.664543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709902, 34.099640, 40.581921>,  <31.512518, 33.780144, 40.444218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709902, 34.099640, 40.581921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023141, 0.383612, -0.923205,
		-0.869460, 0.463532, 0.170814,
		0.493461, 0.798737, 0.344262,
		31.857941, 34.339260, 40.685200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164558, 34.387253, 40.218193>,  <31.512518, 33.780144, 40.444218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164558, 34.387253, 40.218193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.538033, 34.501038, 40.305195>,  <31.762117, 34.569309, 40.357395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.538033, 34.501038, 40.305195>,  <31.164558, 34.387253, 40.218193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538033, 34.501038, 40.305195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062131, 0.469501, -0.880743,
		-0.352661, 0.835852, 0.420693,
		0.933686, 0.284466, 0.217507,
		31.818138, 34.586376, 40.370445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215536, 35.055492, 39.914993>,  <31.164558, 34.387253, 40.218193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215536, 35.055492, 39.914993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599628, 34.953526, 39.960564>,  <31.830084, 34.892345, 39.987907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599628, 34.953526, 39.960564>,  <31.215536, 35.055492, 39.914993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599628, 34.953526, 39.960564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236335, 0.524745, -0.817795,
		0.148682, 0.812196, 0.564120,
		0.960229, -0.254913, 0.113931,
		31.887697, 34.877052, 39.994743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541868, 35.678932, 39.827892>,  <31.215536, 35.055492, 39.914993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541868, 35.678932, 39.827892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817684, 35.398857, 39.753838>,  <31.983173, 35.230812, 39.709404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817684, 35.398857, 39.753838>,  <31.541868, 35.678932, 39.827892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817684, 35.398857, 39.753838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205272, 0.434086, -0.877173,
		0.694547, 0.566843, 0.443049,
		0.689541, -0.700184, -0.185136,
		32.024548, 35.188801, 39.698296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074505, 36.062603, 39.626862>,  <31.541868, 35.678932, 39.827892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074505, 36.062603, 39.626862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106045, 35.694798, 39.472836>,  <32.124969, 35.474113, 39.380421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.106045, 35.694798, 39.472836>,  <32.074505, 36.062603, 39.626862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106045, 35.694798, 39.472836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055478, 0.389718, -0.919262,
		0.995342, 0.051118, 0.081740,
		0.078846, -0.919514, -0.385067,
		32.129700, 35.418941, 39.357315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766201, 36.086105, 39.166962>,  <32.074505, 36.062603, 39.626862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766201, 36.086105, 39.166962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544113, 35.772312, 39.056461>,  <32.410862, 35.584034, 38.990162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544113, 35.772312, 39.056461>,  <32.766201, 36.086105, 39.166962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544113, 35.772312, 39.056461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323027, 0.102681, -0.940803,
		0.766412, -0.611587, 0.196400,
		-0.555216, -0.784486, -0.276255,
		32.377548, 35.536968, 38.973583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439335, 36.157795, 39.549500>,  <32.766201, 36.086105, 39.166962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439335, 36.157795, 39.549500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631912, 36.507595, 39.573063>,  <33.747459, 36.717476, 39.587200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631912, 36.507595, 39.573063>,  <33.439335, 36.157795, 39.549500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631912, 36.507595, 39.573063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302949, 0.102962, 0.947428,
		0.822458, -0.473977, 0.314498,
		0.481441, 0.874497, 0.058909,
		33.776344, 36.769943, 39.590736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882504, 36.080730, 40.061531>,  <33.439335, 36.157795, 39.549500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882504, 36.080730, 40.061531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815731, 36.470905, 40.004044>,  <33.775669, 36.705009, 39.969551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815731, 36.470905, 40.004044>,  <33.882504, 36.080730, 40.061531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815731, 36.470905, 40.004044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013693, 0.143453, 0.989562,
		0.985874, 0.167155, -0.010590,
		-0.166930, 0.975439, -0.143715,
		33.765652, 36.763538, 39.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318684, 36.425697, 40.506371>,  <33.882504, 36.080730, 40.061531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318684, 36.425697, 40.506371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039268, 36.704273, 40.440620>,  <33.871620, 36.871418, 40.401169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039268, 36.704273, 40.440620>,  <34.318684, 36.425697, 40.506371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039268, 36.704273, 40.440620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034844, 0.262548, 0.964290,
		0.714722, 0.667867, -0.207667,
		-0.698540, 0.696435, -0.164378,
		33.829708, 36.913204, 40.391308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579182, 36.911346, 40.857338>,  <34.318684, 36.425697, 40.506371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579182, 36.911346, 40.857338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191956, 37.004509, 40.820251>,  <33.959618, 37.060406, 40.798000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191956, 37.004509, 40.820251>,  <34.579182, 36.911346, 40.857338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191956, 37.004509, 40.820251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012012, 0.326340, 0.945176,
		0.250397, 0.916109, -0.313122,
		-0.968069, 0.232908, -0.092719,
		33.901535, 37.074383, 40.792435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503952, 37.503407, 41.262165>,  <34.579182, 36.911346, 40.857338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503952, 37.503407, 41.262165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132877, 37.354816, 41.247223>,  <33.910233, 37.265663, 41.238258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132877, 37.354816, 41.247223>,  <34.503952, 37.503407, 41.262165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132877, 37.354816, 41.247223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127622, 0.221500, 0.966773,
		-0.350859, 0.901634, -0.252892,
		-0.927691, -0.371476, -0.037354,
		33.854568, 37.243374, 41.236015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058796, 37.868649, 41.719662>,  <34.503952, 37.503407, 41.262165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058796, 37.868649, 41.719662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786438, 37.579906, 41.670189>,  <33.623024, 37.406662, 41.640503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.786438, 37.579906, 41.670189>,  <34.058796, 37.868649, 41.719662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786438, 37.579906, 41.670189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294575, 0.115315, 0.948645,
		-0.670526, 0.682364, -0.291159,
		-0.680897, -0.721860, -0.123686,
		33.582169, 37.363350, 41.633083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502094, 38.103512, 42.133125>,  <34.058796, 37.868649, 41.719662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502094, 38.103512, 42.133125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440979, 37.712547, 42.074726>,  <33.404312, 37.477966, 42.039684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440979, 37.712547, 42.074726>,  <33.502094, 38.103512, 42.133125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440979, 37.712547, 42.074726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450663, -0.062572, 0.890498,
		-0.879522, 0.201854, -0.430925,
		-0.152787, -0.977415, -0.146002,
		33.395142, 37.419323, 42.030926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825359, 37.918232, 42.394749>,  <33.502094, 38.103512, 42.133125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825359, 37.918232, 42.394749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030910, 37.575100, 42.391937>,  <33.154243, 37.369221, 42.390251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030910, 37.575100, 42.391937>,  <32.825359, 37.918232, 42.394749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030910, 37.575100, 42.391937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412746, -0.254424, 0.874591,
		-0.752042, -0.446534, -0.484810,
		0.513881, -0.857832, -0.007032,
		33.185074, 37.317749, 42.389828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329002, 37.334736, 42.579437>,  <32.825359, 37.918232, 42.394749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329002, 37.334736, 42.579437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.698849, 37.202892, 42.655792>,  <32.920757, 37.123787, 42.701603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.698849, 37.202892, 42.655792>,  <32.329002, 37.334736, 42.579437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698849, 37.202892, 42.655792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300258, -0.322395, 0.897723,
		-0.234357, -0.887367, -0.397060,
		0.924620, -0.329608, 0.190883,
		32.976234, 37.104012, 42.713058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248966, 36.661179, 42.837074>,  <32.329002, 37.334736, 42.579437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248966, 36.661179, 42.837074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604477, 36.757305, 42.993187>,  <32.817783, 36.814980, 43.086857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604477, 36.757305, 42.993187>,  <32.248966, 36.661179, 42.837074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604477, 36.757305, 42.993187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331076, -0.252245, 0.909264,
		0.316957, -0.937348, -0.144627,
		0.888778, 0.240315, 0.390284,
		32.871109, 36.829399, 43.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471981, 36.005386, 43.151970>,  <32.248966, 36.661179, 42.837074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471981, 36.005386, 43.151970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643970, 36.327400, 43.315453>,  <32.747166, 36.520607, 43.413544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643970, 36.327400, 43.315453>,  <32.471981, 36.005386, 43.151970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643970, 36.327400, 43.315453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188334, -0.362753, 0.912656,
		0.882977, -0.469395, -0.004361,
		0.429978, 0.805033, 0.408706,
		32.772964, 36.568909, 43.438065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851650, 35.777962, 43.631428>,  <32.471981, 36.005386, 43.151970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851650, 35.777962, 43.631428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855309, 36.151871, 43.773479>,  <32.857502, 36.376217, 43.858711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.855309, 36.151871, 43.773479>,  <32.851650, 35.777962, 43.631428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855309, 36.151871, 43.773479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162840, -0.349011, 0.922862,
		0.986610, -0.066266, 0.149028,
		0.009142, 0.934773, 0.355129,
		32.858051, 36.432304, 43.880016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427002, 35.799522, 44.198967>,  <32.851650, 35.777962, 43.631428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427002, 35.799522, 44.198967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139126, 36.073978, 44.241428>,  <32.966400, 36.238651, 44.266903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139126, 36.073978, 44.241428>,  <33.427002, 35.799522, 44.198967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139126, 36.073978, 44.241428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075864, -0.229689, 0.970303,
		0.690143, 0.690260, 0.217357,
		-0.719686, 0.686137, 0.106152,
		32.923222, 36.279819, 44.273273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534004, 36.109959, 44.791973>,  <33.427002, 35.799522, 44.198967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534004, 36.109959, 44.791973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152718, 36.217728, 44.737137>,  <32.923946, 36.282391, 44.704235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152718, 36.217728, 44.737137>,  <33.534004, 36.109959, 44.791973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152718, 36.217728, 44.737137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209261, -0.260809, 0.942438,
		0.218163, 0.927032, 0.304987,
		-0.953213, 0.269427, -0.137093,
		32.866753, 36.298557, 44.696011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039062, 36.731926, 44.941746>,  <33.534004, 36.109959, 44.791973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039062, 36.731926, 44.941746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373676, 36.830006, 45.137745>,  <34.574444, 36.888855, 45.255344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373676, 36.830006, 45.137745>,  <34.039062, 36.731926, 44.941746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373676, 36.830006, 45.137745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453294, 0.192667, -0.870290,
		-0.307800, 0.950135, 0.050024,
		0.836531, 0.245200, 0.489993,
		34.624634, 36.903564, 45.284744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252079, 37.376247, 44.706917>,  <34.039062, 36.731926, 44.941746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252079, 37.376247, 44.706917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597931, 37.218990, 44.832043>,  <34.805443, 37.124638, 44.907120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597931, 37.218990, 44.832043>,  <34.252079, 37.376247, 44.706917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597931, 37.218990, 44.832043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473550, 0.429744, -0.768811,
		0.167817, 0.812873, 0.557741,
		0.864631, -0.393138, 0.312818,
		34.857319, 37.101048, 44.925888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725040, 37.836803, 44.522682>,  <34.252079, 37.376247, 44.706917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725040, 37.836803, 44.522682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987671, 37.545513, 44.601269>,  <35.145248, 37.370739, 44.648422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987671, 37.545513, 44.601269>,  <34.725040, 37.836803, 44.522682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987671, 37.545513, 44.601269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598413, 0.344372, -0.723401,
		0.459140, 0.592537, 0.661885,
		0.656577, -0.728223, 0.196467,
		35.184643, 37.327045, 44.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335979, 38.142681, 44.492298>,  <34.725040, 37.836803, 44.522682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335979, 38.142681, 44.492298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414360, 37.756481, 44.423691>,  <35.461388, 37.524761, 44.382526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.414360, 37.756481, 44.423691>,  <35.335979, 38.142681, 44.492298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414360, 37.756481, 44.423691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491126, 0.248017, -0.835034,
		0.848761, 0.079395, 0.522781,
		0.195956, -0.965497, -0.171514,
		35.473148, 37.466831, 44.372238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127945, 37.941105, 44.520035>,  <35.335979, 38.142681, 44.492298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127945, 37.941105, 44.520035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918076, 37.692547, 44.287281>,  <35.792152, 37.543411, 44.147629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.918076, 37.692547, 44.287281>,  <36.127945, 37.941105, 44.520035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918076, 37.692547, 44.287281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643485, 0.158021, -0.748971,
		0.557353, -0.767400, 0.316946,
		-0.524676, -0.621391, -0.581883,
		35.760674, 37.506130, 44.112717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697311, 37.462288, 44.331451>,  <36.127945, 37.941105, 44.520035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697311, 37.462288, 44.331451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380802, 37.428009, 44.089279>,  <36.190895, 37.407444, 43.943977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380802, 37.428009, 44.089279>,  <36.697311, 37.462288, 44.331451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380802, 37.428009, 44.089279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595308, 0.118121, -0.794768,
		0.139625, -0.989294, -0.042449,
		-0.791273, -0.085700, -0.605427,
		36.143421, 37.402302, 43.907650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995129, 37.248554, 43.683979>,  <36.697311, 37.462288, 44.331451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995129, 37.248554, 43.683979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639595, 37.357357, 43.536472>,  <36.426277, 37.422638, 43.447968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639595, 37.357357, 43.536472>,  <36.995129, 37.248554, 43.683979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639595, 37.357357, 43.536472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399716, 0.066724, -0.914207,
		-0.224066, -0.959979, -0.168033,
		-0.888831, 0.272008, -0.368769,
		36.372944, 37.438961, 43.425842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813751, 36.867569, 43.064381>,  <36.995129, 37.248554, 43.683979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813751, 36.867569, 43.064381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594925, 37.201752, 43.043461>,  <36.463631, 37.402260, 43.030907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.594925, 37.201752, 43.043461>,  <36.813751, 36.867569, 43.064381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594925, 37.201752, 43.043461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433827, 0.229528, -0.871270,
		-0.715904, -0.499328, -0.488010,
		-0.547061, 0.835457, -0.052303,
		36.430805, 37.452389, 43.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354568, 36.809811, 42.335312>,  <36.813751, 36.867569, 43.064381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354568, 36.809811, 42.335312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421547, 37.174084, 42.486370>,  <36.461735, 37.392647, 42.577007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.421547, 37.174084, 42.486370>,  <36.354568, 36.809811, 42.335312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421547, 37.174084, 42.486370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444539, 0.272164, -0.853412,
		-0.879970, 0.310777, -0.359263,
		0.167442, 0.910683, 0.377649,
		36.471779, 37.447289, 42.599667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036163, 37.271397, 41.976448>,  <36.354568, 36.809811, 42.335312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036163, 37.271397, 41.976448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301353, 37.505241, 42.163502>,  <36.460468, 37.645550, 42.275734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.301353, 37.505241, 42.163502>,  <36.036163, 37.271397, 41.976448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301353, 37.505241, 42.163502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372565, 0.284159, -0.883430,
		-0.649350, 0.759920, -0.029416,
		0.662978, 0.584615, 0.467639,
		36.500248, 37.680626, 42.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970425, 37.870628, 41.510277>,  <36.036163, 37.271397, 41.976448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970425, 37.870628, 41.510277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310059, 37.942501, 41.708981>,  <36.513840, 37.985626, 41.828201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310059, 37.942501, 41.708981>,  <35.970425, 37.870628, 41.510277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310059, 37.942501, 41.708981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473193, 0.159330, -0.866431,
		-0.234832, 0.970736, 0.050259,
		0.849083, 0.179683, 0.496761,
		36.564785, 37.996407, 41.858009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225044, 38.429901, 41.281849>,  <35.970425, 37.870628, 41.510277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225044, 38.429901, 41.281849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558533, 38.262196, 41.425587>,  <36.758625, 38.161572, 41.511829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558533, 38.262196, 41.425587>,  <36.225044, 38.429901, 41.281849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558533, 38.262196, 41.425587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446907, 0.130106, -0.885068,
		0.324320, 0.898495, 0.295842,
		0.833721, -0.419260, 0.359348,
		36.808647, 38.136417, 41.533390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773369, 38.891483, 41.074249>,  <36.225044, 38.429901, 41.281849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773369, 38.891483, 41.074249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923889, 38.526947, 41.141010>,  <37.014202, 38.308224, 41.181065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923889, 38.526947, 41.141010>,  <36.773369, 38.891483, 41.074249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923889, 38.526947, 41.141010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629196, 0.119140, -0.768061,
		0.680080, 0.394036, 0.618245,
		0.376301, -0.911340, 0.166901,
		37.036781, 38.253544, 41.191082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383904, 38.902706, 40.999386>,  <36.773369, 38.891483, 41.074249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383904, 38.902706, 40.999386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376492, 38.503723, 40.971836>,  <37.372044, 38.264336, 40.955307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376492, 38.503723, 40.971836>,  <37.383904, 38.902706, 40.999386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376492, 38.503723, 40.971836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803888, 0.026100, -0.594207,
		0.594492, -0.066379, 0.801357,
		-0.018528, -0.997453, -0.068878,
		37.370934, 38.204487, 40.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.401133, 38.006168, 38.903893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179325, 38.025467, 39.236202>,  <31.046240, 38.037045, 39.435589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179325, 38.025467, 39.236202>,  <31.401133, 38.006168, 38.903893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179325, 38.025467, 39.236202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653688, -0.643049, -0.398975,
		0.514978, -0.764304, 0.388120,
		-0.554518, 0.048246, 0.830772,
		31.012970, 38.039940, 39.485435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363579, 37.323696, 39.262321>,  <31.401133, 38.006168, 38.903893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363579, 37.323696, 39.262321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037718, 37.545319, 39.330860>,  <30.842201, 37.678291, 39.371983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037718, 37.545319, 39.330860>,  <31.363579, 37.323696, 39.262321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037718, 37.545319, 39.330860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573438, -0.725395, -0.380750,
		-0.086661, -0.408437, 0.908663,
		-0.814653, 0.554058, 0.171350,
		30.793322, 37.711536, 39.382263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848381, 36.938705, 39.727283>,  <31.363579, 37.323696, 39.262321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848381, 36.938705, 39.727283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655027, 37.202507, 39.497017>,  <30.539015, 37.360786, 39.358856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655027, 37.202507, 39.497017>,  <30.848381, 36.938705, 39.727283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655027, 37.202507, 39.497017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551270, -0.740159, -0.385054,
		-0.680030, 0.131218, 0.721347,
		-0.483386, 0.659505, -0.575667,
		30.510012, 37.400360, 39.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158953, 36.472481, 39.573997>,  <30.848381, 36.938705, 39.727283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158953, 36.472481, 39.573997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114874, 36.804405, 39.355171>,  <30.088427, 37.003559, 39.223877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114874, 36.804405, 39.355171>,  <30.158953, 36.472481, 39.573997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114874, 36.804405, 39.355171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701506, -0.454853, -0.548633,
		-0.704092, 0.323312, 0.632237,
		-0.110195, 0.829807, -0.547064,
		30.081816, 37.053349, 39.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394186, 36.541428, 39.491650>,  <30.158953, 36.472481, 39.573997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394186, 36.541428, 39.491650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.562925, 36.754242, 39.197987>,  <29.664169, 36.881931, 39.021790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.562925, 36.754242, 39.197987>,  <29.394186, 36.541428, 39.491650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562925, 36.754242, 39.197987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629817, -0.410521, -0.659395,
		-0.652207, 0.740548, 0.161907,
		0.421848, 0.532034, -0.734155,
		29.689480, 36.913853, 38.977741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850939, 36.879642, 39.005127>,  <29.394186, 36.541428, 39.491650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850939, 36.879642, 39.005127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193445, 36.844761, 38.801479>,  <29.398949, 36.823830, 38.679291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193445, 36.844761, 38.801479>,  <28.850939, 36.879642, 39.005127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193445, 36.844761, 38.801479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486268, -0.468546, -0.737569,
		-0.174225, 0.879124, -0.443606,
		0.856265, -0.087209, -0.509122,
		29.450325, 36.818600, 38.648743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648409, 36.974049, 38.351673>,  <28.850939, 36.879642, 39.005127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648409, 36.974049, 38.351673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006334, 36.797112, 38.327541>,  <29.221090, 36.690948, 38.313065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006334, 36.797112, 38.327541>,  <28.648409, 36.974049, 38.351673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006334, 36.797112, 38.327541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360636, -0.636560, -0.681713,
		0.263150, 0.631763, -0.729128,
		0.894815, -0.442343, -0.060326,
		29.274778, 36.664410, 38.309444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792160, 36.915104, 37.634182>,  <28.648409, 36.974049, 38.351673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792160, 36.915104, 37.634182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021975, 36.639385, 37.810715>,  <29.159863, 36.473953, 37.916634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021975, 36.639385, 37.810715>,  <28.792160, 36.915104, 37.634182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021975, 36.639385, 37.810715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362413, -0.697719, -0.617937,
		0.733871, 0.195080, -0.650674,
		0.574535, -0.689299, 0.441336,
		29.194334, 36.432594, 37.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958761, 36.497112, 37.058174>,  <28.792160, 36.915104, 37.634182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958761, 36.497112, 37.058174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078503, 36.252430, 37.351074>,  <29.150349, 36.105621, 37.526814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078503, 36.252430, 37.351074>,  <28.958761, 36.497112, 37.058174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078503, 36.252430, 37.351074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279127, -0.790019, -0.545855,
		0.912401, -0.040988, -0.407241,
		0.299355, -0.611710, 0.732255,
		29.168308, 36.068916, 37.570751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399872, 36.053299, 36.719471>,  <28.958761, 36.497112, 37.058174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399872, 36.053299, 36.719471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258644, 35.877949, 37.050087>,  <29.173906, 35.772739, 37.248455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258644, 35.877949, 37.050087>,  <29.399872, 36.053299, 36.719471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258644, 35.877949, 37.050087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409332, -0.722020, -0.557794,
		0.841301, -0.535270, 0.075484,
		-0.353072, -0.438375, 0.826540,
		29.152723, 35.746437, 37.298050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636122, 35.226524, 36.734989>,  <29.399872, 36.053299, 36.719471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636122, 35.226524, 36.734989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315245, 35.262287, 36.971123>,  <29.122719, 35.283745, 37.112804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315245, 35.262287, 36.971123>,  <29.636122, 35.226524, 36.734989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315245, 35.262287, 36.971123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451827, -0.737239, -0.502326,
		0.390307, -0.669690, 0.631803,
		-0.802192, 0.089404, 0.590333,
		29.074587, 35.289108, 37.148224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322279, 34.638397, 36.722347>,  <29.636122, 35.226524, 36.734989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322279, 34.638397, 36.722347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020937, 34.860611, 36.863110>,  <28.840132, 34.993938, 36.947567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020937, 34.860611, 36.863110>,  <29.322279, 34.638397, 36.722347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020937, 34.860611, 36.863110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653136, -0.569732, -0.498819,
		-0.076622, -0.605627, 0.792051,
		-0.753355, 0.555537, 0.351902,
		28.794931, 35.027271, 36.968681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926453, 34.207951, 37.124977>,  <29.322279, 34.638397, 36.722347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926453, 34.207951, 37.124977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678104, 34.499954, 37.010715>,  <28.529095, 34.675156, 36.942158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.678104, 34.499954, 37.010715>,  <28.926453, 34.207951, 37.124977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678104, 34.499954, 37.010715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573932, -0.671523, -0.468678,
		-0.533966, -0.127042, 0.835907,
		-0.620873, 0.730012, -0.285657,
		28.491842, 34.718956, 36.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278706, 33.895412, 37.166897>,  <28.926453, 34.207951, 37.124977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278706, 33.895412, 37.166897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213470, 34.224594, 36.949215>,  <28.174330, 34.422104, 36.818607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213470, 34.224594, 36.949215>,  <28.278706, 33.895412, 37.166897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213470, 34.224594, 36.949215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617421, -0.515360, -0.594303,
		-0.769542, 0.239078, 0.592155,
		-0.163088, 0.822950, -0.544203,
		28.164543, 34.471478, 36.785954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584152, 33.959770, 37.026024>,  <28.278706, 33.895412, 37.166897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584152, 33.959770, 37.026024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725296, 34.182384, 36.725155>,  <27.809982, 34.315952, 36.544632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.725296, 34.182384, 36.725155>,  <27.584152, 33.959770, 37.026024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725296, 34.182384, 36.725155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636997, -0.445943, -0.628783,
		-0.685364, 0.701004, 0.197153,
		0.352861, 0.556531, -0.752172,
		27.831154, 34.349342, 36.499504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968662, 34.110920, 36.587017>,  <27.584152, 33.959770, 37.026024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968662, 34.110920, 36.587017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290634, 34.179417, 36.359768>,  <27.483818, 34.220516, 36.223419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.290634, 34.179417, 36.359768>,  <26.968662, 34.110920, 36.587017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290634, 34.179417, 36.359768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528380, -0.228818, -0.817592,
		-0.270006, 0.958289, -0.093699,
		0.804930, 0.171246, -0.568123,
		27.532112, 34.230789, 36.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788769, 34.530388, 36.100990>,  <26.968662, 34.110920, 36.587017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788769, 34.530388, 36.100990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128809, 34.394676, 35.939884>,  <27.332832, 34.313248, 35.843220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.128809, 34.394676, 35.939884>,  <26.788769, 34.530388, 36.100990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128809, 34.394676, 35.939884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478436, -0.177970, -0.859899,
		0.220065, 0.923698, -0.313616,
		0.850100, -0.339278, -0.402765,
		27.383839, 34.292892, 35.819054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872614, 34.862183, 35.441612>,  <26.788769, 34.530388, 36.100990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872614, 34.862183, 35.441612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123688, 34.552124, 35.412876>,  <27.274332, 34.366089, 35.395634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123688, 34.552124, 35.412876>,  <26.872614, 34.862183, 35.441612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123688, 34.552124, 35.412876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347700, -0.196590, -0.916764,
		0.696503, 0.600418, -0.392915,
		0.627685, -0.775146, -0.071839,
		27.311993, 34.319580, 35.391323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223288, 34.949833, 34.745930>,  <26.872614, 34.862183, 35.441612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223288, 34.949833, 34.745930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273899, 34.564556, 34.840794>,  <27.304266, 34.333389, 34.897713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273899, 34.564556, 34.840794>,  <27.223288, 34.949833, 34.745930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273899, 34.564556, 34.840794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538414, -0.267482, -0.799102,
		0.833127, -0.026578, -0.552443,
		0.126530, -0.963196, 0.237156,
		27.311857, 34.275597, 34.911942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577127, 34.531960, 34.093380>,  <27.223288, 34.949833, 34.745930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577127, 34.531960, 34.093380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331615, 34.332096, 34.337879>,  <27.184309, 34.212177, 34.484577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.331615, 34.332096, 34.337879>,  <27.577127, 34.531960, 34.093380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331615, 34.332096, 34.337879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566931, -0.259863, -0.781703,
		0.549422, -0.826327, -0.123771,
		-0.613779, -0.499654, 0.611245,
		27.147482, 34.182201, 34.521252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160770, 34.682266, 33.616177>,  <27.577127, 34.531960, 34.093380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160770, 34.682266, 33.616177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439522, 34.873116, 33.401993>,  <28.606773, 34.987625, 33.273483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439522, 34.873116, 33.401993>,  <28.160770, 34.682266, 33.616177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439522, 34.873116, 33.401993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338492, 0.439407, 0.832072,
		0.632285, -0.761101, 0.144711,
		0.696878, 0.477124, -0.535457,
		28.648584, 35.016254, 33.241356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856445, 34.618298, 33.958572>,  <28.160770, 34.682266, 33.616177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856445, 34.618298, 33.958572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884638, 34.943031, 33.726723>,  <28.901554, 35.137871, 33.587612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884638, 34.943031, 33.726723>,  <28.856445, 34.618298, 33.958572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884638, 34.943031, 33.726723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384250, 0.514131, 0.766825,
		0.920535, -0.276768, -0.275709,
		0.070482, 0.811831, -0.579624,
		28.905783, 35.186581, 33.552837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475613, 34.937759, 34.213604>,  <28.856445, 34.618298, 33.958572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475613, 34.937759, 34.213604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275509, 35.224514, 34.019360>,  <29.155447, 35.396564, 33.902813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275509, 35.224514, 34.019360>,  <29.475613, 34.937759, 34.213604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275509, 35.224514, 34.019360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258168, 0.658816, 0.706620,
		0.826491, 0.228125, -0.514656,
		-0.500261, 0.716883, -0.485610,
		29.125431, 35.439579, 33.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993263, 35.581528, 34.011780>,  <29.475613, 34.937759, 34.213604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993263, 35.581528, 34.011780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606062, 35.680485, 34.028599>,  <29.373741, 35.739857, 34.038689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606062, 35.680485, 34.028599>,  <29.993263, 35.581528, 34.011780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606062, 35.680485, 34.028599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227585, 0.794939, 0.562386,
		0.105707, 0.553960, -0.825806,
		-0.968004, 0.247389, 0.042043,
		29.315660, 35.754700, 34.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089939, 36.306644, 33.900379>,  <29.993263, 35.581528, 34.011780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089939, 36.306644, 33.900379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731256, 36.223209, 34.056541>,  <29.516047, 36.173149, 34.150238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.731256, 36.223209, 34.056541>,  <30.089939, 36.306644, 33.900379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731256, 36.223209, 34.056541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108478, 0.751549, 0.650698,
		-0.429132, 0.625834, -0.651290,
		-0.896704, -0.208584, 0.390403,
		29.462246, 36.160633, 34.173664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661980, 37.060318, 33.877789>,  <30.089939, 36.306644, 33.900379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661980, 37.060318, 33.877789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497417, 36.810875, 34.143677>,  <29.398680, 36.661209, 34.303211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.497417, 36.810875, 34.143677>,  <29.661980, 37.060318, 33.877789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497417, 36.810875, 34.143677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215722, 0.641957, 0.735768,
		-0.885557, 0.446093, -0.129577,
		-0.411404, -0.623612, 0.664722,
		29.373997, 36.623791, 34.343094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404078, 37.590321, 34.321114>,  <29.661980, 37.060318, 33.877789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404078, 37.590321, 34.321114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391668, 37.238503, 34.511040>,  <29.384224, 37.027412, 34.624996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391668, 37.238503, 34.511040>,  <29.404078, 37.590321, 34.321114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391668, 37.238503, 34.511040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547547, 0.382466, 0.744253,
		-0.836200, 0.283069, 0.469726,
		-0.031021, -0.879541, 0.474811,
		29.382362, 36.974640, 34.653484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170654, 37.734978, 35.024342>,  <29.404078, 37.590321, 34.321114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170654, 37.734978, 35.024342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362488, 37.384361, 35.040752>,  <29.477589, 37.173992, 35.050598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362488, 37.384361, 35.040752>,  <29.170654, 37.734978, 35.024342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362488, 37.384361, 35.040752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410579, 0.265469, 0.872325,
		-0.775515, -0.401510, 0.487202,
		0.479584, -0.876537, 0.041024,
		29.506363, 37.121399, 35.053059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229551, 37.560928, 35.675793>,  <29.170654, 37.734978, 35.024342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229551, 37.560928, 35.675793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502361, 37.324345, 35.503738>,  <29.666048, 37.182396, 35.400505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502361, 37.324345, 35.503738>,  <29.229551, 37.560928, 35.675793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502361, 37.324345, 35.503738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632075, 0.180878, 0.753502,
		-0.367862, -0.785787, 0.497209,
		0.682026, -0.591458, -0.430138,
		29.706968, 37.146908, 35.374699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540367, 37.262188, 36.233845>,  <29.229551, 37.560928, 35.675793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540367, 37.262188, 36.233845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810390, 37.232456, 35.940239>,  <29.972404, 37.214619, 35.764076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810390, 37.232456, 35.940239>,  <29.540367, 37.262188, 36.233845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810390, 37.232456, 35.940239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735420, -0.011455, 0.677515,
		-0.058767, -0.997168, 0.046930,
		0.675059, -0.074329, -0.734010,
		30.012909, 37.210155, 35.720036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064306, 36.921028, 36.574173>,  <29.540367, 37.262188, 36.233845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064306, 36.921028, 36.574173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240522, 37.049656, 36.238907>,  <30.346252, 37.126835, 36.037746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.240522, 37.049656, 36.238907>,  <30.064306, 36.921028, 36.574173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240522, 37.049656, 36.238907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875263, 0.053727, 0.480653,
		0.199597, -0.945359, -0.257793,
		0.440539, 0.321573, -0.838162,
		30.372684, 37.146130, 35.987457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718472, 36.579639, 36.334435>,  <30.064306, 36.921028, 36.574173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718472, 36.579639, 36.334435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736681, 36.957611, 36.204800>,  <30.747606, 37.184395, 36.127018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736681, 36.957611, 36.204800>,  <30.718472, 36.579639, 36.334435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736681, 36.957611, 36.204800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887012, 0.110994, 0.448207,
		0.459497, -0.307876, -0.833112,
		0.045522, 0.944930, -0.324091,
		30.750338, 37.241089, 36.107571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447321, 36.635944, 36.314445>,  <30.718472, 36.579639, 36.334435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447321, 36.635944, 36.314445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294182, 37.005032, 36.296459>,  <31.202297, 37.226482, 36.285667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294182, 37.005032, 36.296459>,  <31.447321, 36.635944, 36.314445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294182, 37.005032, 36.296459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712663, 0.325969, 0.621173,
		0.587825, 0.205767, -0.782382,
		-0.382850, 0.922715, -0.044970,
		31.179327, 37.281845, 36.282967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088329, 37.115238, 36.329369>,  <31.447321, 36.635944, 36.314445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088329, 37.115238, 36.329369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.793751, 37.365147, 36.433144>,  <31.617002, 37.515091, 36.495411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.793751, 37.365147, 36.433144>,  <32.088329, 37.115238, 36.329369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793751, 37.365147, 36.433144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623356, 0.477720, 0.619040,
		0.262816, 0.617615, -0.741269,
		-0.736447, 0.624768, 0.259442,
		31.572817, 37.552578, 36.510975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377163, 37.708267, 36.252834>,  <32.088329, 37.115238, 36.329369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377163, 37.708267, 36.252834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.078407, 37.829033, 36.489815>,  <31.899155, 37.901493, 36.632004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.078407, 37.829033, 36.489815>,  <32.377163, 37.708267, 36.252834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078407, 37.829033, 36.489815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658430, 0.460237, 0.595526,
		-0.092870, 0.834882, -0.542537,
		-0.746890, 0.301916, 0.592454,
		31.854340, 37.919609, 36.667553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350605, 38.566315, 36.366234>,  <32.377163, 37.708267, 36.252834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350605, 38.566315, 36.366234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153137, 38.418152, 36.680962>,  <32.034657, 38.329254, 36.869801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153137, 38.418152, 36.680962>,  <32.350605, 38.566315, 36.366234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153137, 38.418152, 36.680962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588627, 0.523690, 0.615847,
		-0.640163, 0.767171, -0.040501,
		-0.493670, -0.370403, 0.786824,
		32.005035, 38.307030, 36.917007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127728, 39.196739, 36.739891>,  <32.350605, 38.566315, 36.366234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127728, 39.196739, 36.739891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.125362, 38.890743, 36.997498>,  <32.123943, 38.707146, 37.152061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.125362, 38.890743, 36.997498>,  <32.127728, 39.196739, 36.739891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125362, 38.890743, 36.997498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412796, 0.584730, 0.698349,
		-0.910804, 0.269979, 0.312325,
		-0.005914, -0.764985, 0.644021,
		32.123589, 38.661247, 37.190704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799662, 39.514233, 37.315136>,  <32.127728, 39.196739, 36.739891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799662, 39.514233, 37.315136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972998, 39.184174, 37.460098>,  <32.077000, 38.986137, 37.547077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972998, 39.184174, 37.460098>,  <31.799662, 39.514233, 37.315136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972998, 39.184174, 37.460098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356636, 0.526307, 0.771889,
		-0.827664, -0.205242, 0.522349,
		0.433340, -0.825152, 0.362409,
		32.103001, 38.936626, 37.568821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798471, 39.556465, 38.121902>,  <31.799662, 39.514233, 37.315136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798471, 39.556465, 38.121902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064156, 39.275261, 38.020233>,  <32.223564, 39.106537, 37.959232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064156, 39.275261, 38.020233>,  <31.798471, 39.556465, 38.121902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064156, 39.275261, 38.020233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601351, 0.300501, 0.740322,
		-0.444076, -0.644573, 0.622352,
		0.664209, -0.703011, -0.254170,
		32.263420, 39.064358, 37.943981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973402, 39.272549, 38.777660>,  <31.798471, 39.556465, 38.121902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973402, 39.272549, 38.777660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269993, 39.130482, 38.549953>,  <32.447948, 39.045242, 38.413330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269993, 39.130482, 38.549953>,  <31.973402, 39.272549, 38.777660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269993, 39.130482, 38.549953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639303, 0.116351, 0.760101,
		-0.203727, -0.927534, 0.313330,
		0.741476, -0.355166, -0.569271,
		32.492435, 39.023933, 38.379173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272362, 38.898628, 39.181908>,  <31.973402, 39.272549, 38.777660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272362, 38.898628, 39.181908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.557568, 38.977802, 38.912857>,  <32.728691, 39.025307, 38.751427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.557568, 38.977802, 38.912857>,  <32.272362, 38.898628, 39.181908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557568, 38.977802, 38.912857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636788, 0.218687, 0.739376,
		0.293442, -0.955510, 0.029886,
		0.713017, 0.197933, -0.672629,
		32.771473, 39.037182, 38.711067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869045, 38.550678, 39.420712>,  <32.272362, 38.898628, 39.181908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869045, 38.550678, 39.420712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053661, 38.811108, 39.179688>,  <33.164429, 38.967365, 39.035072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053661, 38.811108, 39.179688>,  <32.869045, 38.550678, 39.420712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053661, 38.811108, 39.179688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769243, 0.044600, 0.637398,
		0.441869, -0.757700, -0.480252,
		0.461537, 0.651077, -0.602563,
		33.192123, 39.006432, 38.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.924553, 35.123421, 46.408669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642025, 34.840557, 46.395813>,  <37.472507, 34.670837, 46.388100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.642025, 34.840557, 46.395813>,  <37.924553, 35.123421, 46.408669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642025, 34.840557, 46.395813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398739, 0.359927, 0.843480,
		-0.584909, 0.608583, -0.536197,
		-0.706320, -0.707163, -0.032141,
		37.430130, 34.628407, 46.386169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272228, 35.429390, 46.703865>,  <37.924553, 35.123421, 46.408669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272228, 35.429390, 46.703865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244835, 35.030354, 46.708389>,  <37.228397, 34.790932, 46.711102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244835, 35.030354, 46.708389>,  <37.272228, 35.429390, 46.703865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244835, 35.030354, 46.708389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455256, 0.041336, 0.889400,
		-0.887722, 0.055766, -0.456989,
		-0.068488, -0.997588, 0.011307,
		37.224289, 34.731075, 46.711781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590157, 35.270355, 46.902988>,  <37.272228, 35.429390, 46.703865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590157, 35.270355, 46.902988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787144, 34.938160, 47.007107>,  <36.905338, 34.738842, 47.069576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787144, 34.938160, 47.007107>,  <36.590157, 35.270355, 46.902988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787144, 34.938160, 47.007107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539196, -0.056369, 0.840292,
		-0.683183, -0.554171, -0.475558,
		0.492472, -0.830492, 0.260297,
		36.934887, 34.689011, 47.085197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134529, 34.843594, 47.021461>,  <36.590157, 35.270355, 46.902988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134529, 34.843594, 47.021461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449684, 34.706104, 47.225849>,  <36.638775, 34.623611, 47.348484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449684, 34.706104, 47.225849>,  <36.134529, 34.843594, 47.021461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449684, 34.706104, 47.225849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570447, -0.094753, 0.815850,
		-0.232009, -0.934279, -0.270730,
		0.787884, -0.343722, 0.510973,
		36.686050, 34.602989, 47.379143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807835, 34.436043, 47.512699>,  <36.134529, 34.843594, 47.021461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807835, 34.436043, 47.512699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180267, 34.478039, 47.652447>,  <36.403728, 34.503235, 47.736294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180267, 34.478039, 47.652447>,  <35.807835, 34.436043, 47.512699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180267, 34.478039, 47.652447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325439, -0.193689, 0.925513,
		0.164837, -0.975429, -0.146173,
		0.931085, 0.104988, 0.349370,
		36.459591, 34.509537, 47.757259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009018, 33.816879, 47.875134>,  <35.807835, 34.436043, 47.512699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009018, 33.816879, 47.875134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252243, 34.097282, 48.024181>,  <36.398178, 34.265526, 48.113609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252243, 34.097282, 48.024181>,  <36.009018, 33.816879, 47.875134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252243, 34.097282, 48.024181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187267, -0.329464, 0.925411,
		0.771484, -0.632490, -0.069060,
		0.608065, 0.701007, 0.372620,
		36.434662, 34.307583, 48.135967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330341, 33.521454, 48.514172>,  <36.009018, 33.816879, 47.875134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330341, 33.521454, 48.514172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357670, 33.917816, 48.560532>,  <36.374065, 34.155636, 48.588348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357670, 33.917816, 48.560532>,  <36.330341, 33.521454, 48.514172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357670, 33.917816, 48.560532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385322, -0.080946, 0.919225,
		0.920249, -0.107457, 0.376289,
		0.068318, 0.990909, 0.115896,
		36.378166, 34.215088, 48.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410763, 33.563076, 49.269333>,  <36.330341, 33.521454, 48.514172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410763, 33.563076, 49.269333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310444, 33.936306, 49.166203>,  <36.250252, 34.160244, 49.104324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.310444, 33.936306, 49.166203>,  <36.410763, 33.563076, 49.269333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310444, 33.936306, 49.166203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506655, 0.100421, 0.856281,
		0.824863, 0.345384, 0.447560,
		-0.250801, 0.933073, -0.257825,
		36.235203, 34.216228, 49.088856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485340, 33.951584, 49.861736>,  <36.410763, 33.563076, 49.269333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485340, 33.951584, 49.861736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229553, 34.165413, 49.640717>,  <36.076080, 34.293713, 49.508106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229553, 34.165413, 49.640717>,  <36.485340, 33.951584, 49.861736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229553, 34.165413, 49.640717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481641, 0.281638, 0.829881,
		0.599254, 0.796811, 0.077377,
		-0.639466, 0.534577, -0.552549,
		36.037712, 34.325787, 49.474953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211807, 34.393215, 50.331558>,  <36.485340, 33.951584, 49.861736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211807, 34.393215, 50.331558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949482, 34.445843, 50.034210>,  <35.792088, 34.477421, 49.855801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949482, 34.445843, 50.034210>,  <36.211807, 34.393215, 50.331558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949482, 34.445843, 50.034210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715842, 0.204325, 0.667698,
		0.239737, 0.970021, -0.039818,
		-0.655817, 0.131568, -0.743367,
		35.752735, 34.485313, 49.811199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718861, 34.797333, 50.707584>,  <36.211807, 34.393215, 50.331558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718861, 34.797333, 50.707584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530487, 34.706543, 50.366596>,  <35.417461, 34.652069, 50.162003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530487, 34.706543, 50.366596>,  <35.718861, 34.797333, 50.707584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530487, 34.706543, 50.366596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864772, -0.072181, 0.496951,
		-0.174327, 0.971222, -0.162289,
		-0.470936, -0.226974, -0.852468,
		35.389206, 34.638451, 50.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221107, 35.315323, 50.668941>,  <35.718861, 34.797333, 50.707584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221107, 35.315323, 50.668941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129414, 34.964462, 50.500153>,  <35.074398, 34.753948, 50.398880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129414, 34.964462, 50.500153>,  <35.221107, 35.315323, 50.668941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129414, 34.964462, 50.500153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852876, -0.027924, 0.521367,
		-0.469100, 0.479406, -0.741698,
		-0.229236, -0.877149, -0.421973,
		35.060642, 34.701317, 50.373562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507778, 35.308208, 50.586773>,  <35.221107, 35.315323, 50.668941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507778, 35.308208, 50.586773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626060, 34.926559, 50.605530>,  <34.697029, 34.697571, 50.616783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626060, 34.926559, 50.605530>,  <34.507778, 35.308208, 50.586773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626060, 34.926559, 50.605530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802763, -0.221586, 0.553599,
		-0.517812, -0.201350, -0.831462,
		0.295707, -0.954127, 0.046896,
		34.714771, 34.640320, 50.619598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996265, 34.954292, 50.222004>,  <34.507778, 35.308208, 50.586773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996265, 34.954292, 50.222004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166470, 34.717518, 50.495808>,  <34.268593, 34.575451, 50.660091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166470, 34.717518, 50.495808>,  <33.996265, 34.954292, 50.222004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166470, 34.717518, 50.495808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898301, -0.184736, 0.398657,
		-0.109525, -0.784529, -0.610343,
		0.425510, -0.591935, 0.684510,
		34.294121, 34.539936, 50.701160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537113, 35.278091, 50.751041>,  <33.996265, 34.954292, 50.222004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537113, 35.278091, 50.751041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286129, 35.587349, 50.714073>,  <33.135540, 35.772903, 50.691895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286129, 35.587349, 50.714073>,  <33.537113, 35.278091, 50.751041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286129, 35.587349, 50.714073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278873, 0.112322, -0.953737,
		-0.726996, -0.624205, -0.286086,
		-0.627461, 0.773144, -0.092416,
		33.097889, 35.819294, 50.686348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241993, 35.145885, 50.138390>,  <33.537113, 35.278091, 50.751041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241993, 35.145885, 50.138390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171276, 35.533783, 50.205730>,  <33.128845, 35.766521, 50.246136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171276, 35.533783, 50.205730>,  <33.241993, 35.145885, 50.138390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171276, 35.533783, 50.205730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229973, 0.207016, -0.950924,
		-0.957004, -0.129400, -0.259614,
		-0.176794, 0.969742, 0.168357,
		33.118237, 35.824707, 50.256237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875259, 35.307091, 49.564278>,  <33.241993, 35.145885, 50.138390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875259, 35.307091, 49.564278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039822, 35.646137, 49.698322>,  <33.138557, 35.849564, 49.778748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039822, 35.646137, 49.698322>,  <32.875259, 35.307091, 49.564278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039822, 35.646137, 49.698322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177883, 0.285927, -0.941596,
		-0.893927, 0.446985, -0.033145,
		0.411403, 0.847614, 0.335109,
		33.163242, 35.900421, 49.798855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638790, 35.790577, 49.116528>,  <32.875259, 35.307091, 49.564278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638790, 35.790577, 49.116528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948906, 35.977238, 49.286781>,  <33.134975, 36.089233, 49.388935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948906, 35.977238, 49.286781>,  <32.638790, 35.790577, 49.116528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948906, 35.977238, 49.286781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194976, 0.464151, -0.864030,
		-0.600760, 0.752861, 0.268865,
		0.775288, 0.466653, 0.425633,
		33.181492, 36.117233, 49.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596970, 36.499611, 48.836670>,  <32.638790, 35.790577, 49.116528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596970, 36.499611, 48.836670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968037, 36.436874, 48.972221>,  <33.190678, 36.399231, 49.053551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968037, 36.436874, 48.972221>,  <32.596970, 36.499611, 48.836670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968037, 36.436874, 48.972221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356594, 0.641396, -0.679303,
		-0.110808, 0.751007, 0.650930,
		0.927665, -0.156845, 0.338876,
		33.246338, 36.389820, 49.073883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890171, 37.203140, 49.037182>,  <32.596970, 36.499611, 48.836670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890171, 37.203140, 49.037182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196182, 36.960667, 48.950218>,  <33.379791, 36.815182, 48.898041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.196182, 36.960667, 48.950218>,  <32.890171, 37.203140, 49.037182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196182, 36.960667, 48.950218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348811, 0.673835, -0.651366,
		0.541348, 0.422479, 0.726948,
		0.765031, -0.606183, -0.217414,
		33.425694, 36.778812, 48.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212025, 37.632519, 48.663513>,  <32.890171, 37.203140, 49.037182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212025, 37.632519, 48.663513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397850, 37.283215, 48.604744>,  <33.509346, 37.073631, 48.569481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397850, 37.283215, 48.604744>,  <33.212025, 37.632519, 48.663513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397850, 37.283215, 48.604744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328059, 0.323831, -0.887418,
		0.822529, 0.364065, 0.436923,
		0.464568, -0.873264, -0.146926,
		33.537220, 37.021236, 48.560665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882828, 37.763596, 48.304432>,  <33.212025, 37.632519, 48.663513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882828, 37.763596, 48.304432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803211, 37.382710, 48.211773>,  <33.755440, 37.154179, 48.156178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803211, 37.382710, 48.211773>,  <33.882828, 37.763596, 48.304432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803211, 37.382710, 48.211773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481047, 0.111006, -0.869639,
		0.853801, -0.284527, 0.435967,
		-0.199041, -0.952219, -0.231648,
		33.743500, 37.097042, 48.142277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548180, 37.554047, 48.050884>,  <33.882828, 37.763596, 48.304432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548180, 37.554047, 48.050884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253235, 37.321491, 47.913319>,  <34.076267, 37.181957, 47.830780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253235, 37.321491, 47.913319>,  <34.548180, 37.554047, 48.050884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253235, 37.321491, 47.913319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477150, -0.087903, -0.874415,
		0.478146, -0.808861, 0.342227,
		-0.737363, -0.581391, -0.343917,
		34.032024, 37.147076, 47.810143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933838, 37.091118, 47.770294>,  <34.548180, 37.554047, 48.050884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933838, 37.091118, 47.770294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581669, 37.002529, 47.602577>,  <34.370365, 36.949375, 47.501949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581669, 37.002529, 47.602577>,  <34.933838, 37.091118, 47.770294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581669, 37.002529, 47.602577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461941, -0.200959, -0.863844,
		0.107055, -0.954236, 0.279235,
		-0.880426, -0.221469, -0.419288,
		34.317543, 36.936089, 47.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110622, 36.542076, 47.291973>,  <34.933838, 37.091118, 47.770294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110622, 36.542076, 47.291973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745136, 36.653893, 47.174007>,  <34.525845, 36.720982, 47.103230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.745136, 36.653893, 47.174007>,  <35.110622, 36.542076, 47.291973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745136, 36.653893, 47.174007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240691, -0.212425, -0.947071,
		-0.327394, -0.936340, 0.126813,
		-0.913718, 0.279542, -0.294915,
		34.471020, 36.737755, 47.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911358, 36.097931, 46.770561>,  <35.110622, 36.542076, 47.291973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911358, 36.097931, 46.770561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696701, 36.428467, 46.702232>,  <34.567905, 36.626789, 46.661236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696701, 36.428467, 46.702232>,  <34.911358, 36.097931, 46.770561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696701, 36.428467, 46.702232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159424, -0.099504, -0.982183,
		-0.828610, -0.554318, -0.078339,
		-0.536647, 0.826336, -0.170822,
		34.535706, 36.676369, 46.650986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445023, 35.993965, 46.173843>,  <34.911358, 36.097931, 46.770561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445023, 35.993965, 46.173843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515614, 36.386986, 46.197323>,  <34.557968, 36.622799, 46.211411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515614, 36.386986, 46.197323>,  <34.445023, 35.993965, 46.173843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515614, 36.386986, 46.197323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125411, 0.036707, -0.991425,
		-0.976283, 0.182324, -0.116745,
		0.176475, 0.982553, 0.058702,
		34.568558, 36.681751, 46.214935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019634, 36.267475, 45.565327>,  <34.445023, 35.993965, 46.173843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019634, 36.267475, 45.565327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319000, 36.518841, 45.650143>,  <34.498619, 36.669662, 45.701031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319000, 36.518841, 45.650143>,  <34.019634, 36.267475, 45.565327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319000, 36.518841, 45.650143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161569, 0.137323, -0.977260,
		-0.643246, 0.765659, 0.001242,
		0.748419, 0.628418, 0.212040,
		34.543526, 36.707367, 45.713753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339390, 36.398354, 45.411198>,  <34.019634, 36.267475, 45.565327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339390, 36.398354, 45.411198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977650, 36.326908, 45.256149>,  <32.760605, 36.284039, 45.163120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977650, 36.326908, 45.256149>,  <33.339390, 36.398354, 45.411198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977650, 36.326908, 45.256149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269320, -0.465721, 0.842953,
		-0.331089, 0.866717, 0.373069,
		-0.904349, -0.178618, -0.387619,
		32.706345, 36.273323, 45.139862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834911, 36.509975, 45.963108>,  <33.339390, 36.398354, 45.411198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834911, 36.509975, 45.963108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642502, 36.281097, 45.697414>,  <32.527054, 36.143772, 45.537998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.642502, 36.281097, 45.697414>,  <32.834911, 36.509975, 45.963108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642502, 36.281097, 45.697414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560103, -0.382294, 0.734940,
		-0.674461, 0.725565, -0.136594,
		-0.481027, -0.572195, -0.664234,
		32.498192, 36.109440, 45.498146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212704, 36.591240, 46.156666>,  <32.834911, 36.509975, 45.963108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212704, 36.591240, 46.156666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203037, 36.246368, 45.954254>,  <32.197239, 36.039444, 45.832806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203037, 36.246368, 45.954254>,  <32.212704, 36.591240, 46.156666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203037, 36.246368, 45.954254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569671, -0.404080, 0.715677,
		-0.821517, 0.305563, -0.481394,
		-0.024162, -0.862177, -0.506029,
		32.195789, 35.987717, 45.802444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513979, 36.482269, 46.033390>,  <32.212704, 36.591240, 46.156666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513979, 36.482269, 46.033390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657486, 36.112301, 45.983101>,  <31.743591, 35.890320, 45.952927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657486, 36.112301, 45.983101>,  <31.513979, 36.482269, 46.033390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657486, 36.112301, 45.983101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588284, -0.328623, 0.738870,
		-0.724711, -0.191124, -0.662016,
		0.358769, -0.924921, -0.125721,
		31.765118, 35.834824, 45.945385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005629, 36.100819, 46.264717>,  <31.513979, 36.482269, 46.033390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005629, 36.100819, 46.264717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311600, 35.843208, 46.260361>,  <31.495182, 35.688641, 46.257748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311600, 35.843208, 46.260361>,  <31.005629, 36.100819, 46.264717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311600, 35.843208, 46.260361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311664, -0.384866, 0.868760,
		-0.563696, -0.661142, -0.495114,
		0.764927, -0.644025, -0.010894,
		31.541079, 35.650002, 46.257092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696585, 35.454723, 46.429150>,  <31.005629, 36.100819, 46.264717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696585, 35.454723, 46.429150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085447, 35.453407, 46.522869>,  <31.318766, 35.452618, 46.579102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.085447, 35.453407, 46.522869>,  <30.696585, 35.454723, 46.429150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085447, 35.453407, 46.522869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224339, -0.301838, 0.926588,
		0.067677, -0.953353, -0.294172,
		0.972158, -0.003286, 0.234302,
		31.377094, 35.452423, 46.593159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837883, 34.867435, 46.826717>,  <30.696585, 35.454723, 46.429150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837883, 34.867435, 46.826717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.150139, 35.102741, 46.911140>,  <31.337492, 35.243927, 46.961796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.150139, 35.102741, 46.911140>,  <30.837883, 34.867435, 46.826717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150139, 35.102741, 46.911140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226039, -0.049091, 0.972880,
		0.582676, -0.807174, 0.094650,
		0.780637, 0.588269, 0.211057,
		31.384331, 35.279221, 46.974457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104961, 34.187859, 46.778889>,  <30.837883, 34.867435, 46.826717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104961, 34.187859, 46.778889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826027, 33.922810, 46.669598>,  <30.658667, 33.763779, 46.604023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826027, 33.922810, 46.669598>,  <31.104961, 34.187859, 46.778889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826027, 33.922810, 46.669598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111037, 0.276736, -0.954509,
		0.708092, -0.695952, -0.119402,
		-0.697335, -0.662623, -0.273231,
		30.616827, 33.724022, 46.587627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419102, 33.839737, 46.270836>,  <31.104961, 34.187859, 46.778889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419102, 33.839737, 46.270836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029890, 33.767738, 46.213123>,  <30.796364, 33.724541, 46.178493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029890, 33.767738, 46.213123>,  <31.419102, 33.839737, 46.270836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029890, 33.767738, 46.213123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150842, -0.023227, -0.988285,
		0.174536, -0.983393, 0.049752,
		-0.973028, -0.179996, -0.144283,
		30.737982, 33.713741, 46.169838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342360, 33.279011, 45.773323>,  <31.419102, 33.839737, 46.270836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342360, 33.279011, 45.773323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993332, 33.470432, 45.734116>,  <30.783915, 33.585285, 45.710590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.993332, 33.470432, 45.734116>,  <31.342360, 33.279011, 45.773323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993332, 33.470432, 45.734116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028485, -0.150461, -0.988205,
		-0.487659, -0.865070, 0.117655,
		-0.872569, 0.478556, -0.098015,
		30.731562, 33.613998, 45.704712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920507, 32.927383, 45.243507>,  <31.342360, 33.279011, 45.773323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920507, 32.927383, 45.243507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714554, 33.269146, 45.271450>,  <30.590981, 33.474205, 45.288216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714554, 33.269146, 45.271450>,  <30.920507, 32.927383, 45.243507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714554, 33.269146, 45.271450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142953, -0.005229, -0.989716,
		-0.845256, -0.519575, 0.124833,
		-0.514885, 0.854408, 0.069855,
		30.560089, 33.525467, 45.292408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336264, 32.883713, 44.752518>,  <30.920507, 32.927383, 45.243507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336264, 32.883713, 44.752518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341183, 33.276588, 44.827518>,  <30.344133, 33.512314, 44.872520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341183, 33.276588, 44.827518>,  <30.336264, 32.883713, 44.752518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341183, 33.276588, 44.827518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154704, 0.187127, -0.970077,
		-0.987884, -0.017078, 0.154249,
		0.012297, 0.982187, 0.187502,
		30.344872, 33.571243, 44.883770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745970, 33.278267, 44.397850>,  <30.336264, 32.883713, 44.752518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745970, 33.278267, 44.397850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059166, 33.523460, 44.440144>,  <30.247084, 33.670574, 44.465519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059166, 33.523460, 44.440144>,  <29.745970, 33.278267, 44.397850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059166, 33.523460, 44.440144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060277, 0.094413, -0.993707,
		-0.619105, 0.784437, 0.036976,
		0.782991, 0.612980, 0.105735,
		30.294064, 33.707355, 44.471863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686462, 33.804657, 43.836140>,  <29.745970, 33.278267, 44.397850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686462, 33.804657, 43.836140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071735, 33.851669, 43.932858>,  <30.302898, 33.879879, 43.990891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.071735, 33.851669, 43.932858>,  <29.686462, 33.804657, 43.836140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071735, 33.851669, 43.932858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218829, 0.179756, -0.959063,
		-0.156187, 0.976665, 0.147418,
		0.963182, 0.117533, 0.241798,
		30.360689, 33.886929, 44.005398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.105358, 32.421844, 49.270771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477222, 32.528507, 49.372459>,  <33.700340, 32.592506, 49.433472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477222, 32.528507, 49.372459>,  <33.105358, 32.421844, 49.270771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477222, 32.528507, 49.372459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276018, -0.047057, -0.960000,
		-0.244031, 0.962641, -0.117350,
		0.929658, 0.266661, 0.254223,
		33.756119, 32.608505, 49.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345520, 32.973007, 48.898350>,  <33.105358, 32.421844, 49.270771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345520, 32.973007, 48.898350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.673084, 32.781261, 49.024590>,  <33.869621, 32.666214, 49.100334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.673084, 32.781261, 49.024590>,  <33.345520, 32.973007, 48.898350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673084, 32.781261, 49.024590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394656, 0.071080, -0.916076,
		0.416697, 0.874735, 0.247391,
		0.818908, -0.479360, 0.315600,
		33.918758, 32.637455, 49.119270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902271, 33.392262, 48.663212>,  <33.345520, 32.973007, 48.898350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902271, 33.392262, 48.663212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087074, 33.043484, 48.728039>,  <34.197956, 32.834217, 48.766937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.087074, 33.043484, 48.728039>,  <33.902271, 33.392262, 48.663212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087074, 33.043484, 48.728039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350471, 0.011630, -0.936501,
		0.814689, 0.489472, 0.310963,
		0.462008, -0.871941, 0.162071,
		34.225677, 32.781902, 48.776661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410522, 33.495621, 48.198856>,  <33.902271, 33.392262, 48.663212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410522, 33.495621, 48.198856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469891, 33.116596, 48.312061>,  <34.505512, 32.889183, 48.379986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469891, 33.116596, 48.312061>,  <34.410522, 33.495621, 48.198856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469891, 33.116596, 48.312061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418523, -0.199103, -0.886113,
		0.895996, 0.249965, 0.367025,
		0.148422, -0.947563, 0.283012,
		34.514416, 32.832329, 48.396965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120274, 33.354164, 48.183990>,  <34.410522, 33.495621, 48.198856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120274, 33.354164, 48.183990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931511, 33.002171, 48.162292>,  <34.818253, 32.790974, 48.149273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931511, 33.002171, 48.162292>,  <35.120274, 33.354164, 48.183990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931511, 33.002171, 48.162292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438163, -0.180692, -0.880547,
		0.765063, -0.439301, 0.470844,
		-0.471902, -0.879980, -0.054245,
		34.789940, 32.738178, 48.146019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594669, 32.994274, 47.958542>,  <35.120274, 33.354164, 48.183990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594669, 32.994274, 47.958542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275173, 32.767418, 47.878174>,  <35.083477, 32.631306, 47.829952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.275173, 32.767418, 47.878174>,  <35.594669, 32.994274, 47.958542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275173, 32.767418, 47.878174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475806, -0.390986, -0.787869,
		0.368272, -0.724903, 0.582143,
		-0.798739, -0.567138, -0.200924,
		35.035553, 32.597275, 47.817898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925610, 32.411133, 47.672138>,  <35.594669, 32.994274, 47.958542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925610, 32.411133, 47.672138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.546013, 32.394562, 47.547108>,  <35.318256, 32.384621, 47.472088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.546013, 32.394562, 47.547108>,  <35.925610, 32.411133, 47.672138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546013, 32.394562, 47.547108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304351, -0.379442, -0.873724,
		-0.082407, -0.924287, 0.372696,
		-0.948989, -0.041429, -0.312577,
		35.261314, 32.382133, 47.453335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745220, 31.676659, 47.465309>,  <35.925610, 32.411133, 47.672138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745220, 31.676659, 47.465309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492882, 31.922400, 47.275738>,  <35.341480, 32.069843, 47.161995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.492882, 31.922400, 47.275738>,  <35.745220, 31.676659, 47.465309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492882, 31.922400, 47.275738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232890, -0.432720, -0.870928,
		-0.740136, -0.659791, 0.129901,
		-0.630841, 0.614353, -0.473930,
		35.303631, 32.106705, 47.133560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290379, 31.320093, 47.073414>,  <35.745220, 31.676659, 47.465309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290379, 31.320093, 47.073414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.280209, 31.685658, 46.911366>,  <35.274109, 31.904997, 46.814137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.280209, 31.685658, 46.911366>,  <35.290379, 31.320093, 47.073414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280209, 31.685658, 46.911366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037594, -0.404090, -0.913946,
		-0.998970, -0.038465, -0.024085,
		-0.025423, 0.913910, -0.405120,
		35.272583, 31.959831, 46.789829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920628, 31.245022, 46.569420>,  <35.290379, 31.320093, 47.073414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920628, 31.245022, 46.569420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.111767, 31.579954, 46.463181>,  <35.226448, 31.780912, 46.399437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.111767, 31.579954, 46.463181>,  <34.920628, 31.245022, 46.569420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111767, 31.579954, 46.463181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013483, -0.309308, -0.950866,
		-0.878340, 0.450786, -0.159091,
		0.477845, 0.837329, -0.265600,
		35.255119, 31.831154, 46.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582058, 31.409414, 45.954369>,  <34.920628, 31.245022, 46.569420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582058, 31.409414, 45.954369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926567, 31.612656, 45.952034>,  <35.133274, 31.734600, 45.950634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926567, 31.612656, 45.952034>,  <34.582058, 31.409414, 45.954369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926567, 31.612656, 45.952034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141850, -0.251446, -0.957420,
		-0.487937, 0.823775, -0.288639,
		0.861276, 0.508104, -0.005837,
		35.184952, 31.765087, 45.950283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594746, 31.763851, 45.319569>,  <34.582058, 31.409414, 45.954369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594746, 31.763851, 45.319569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979679, 31.751993, 45.427666>,  <35.210640, 31.744879, 45.492523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979679, 31.751993, 45.427666>,  <34.594746, 31.763851, 45.319569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979679, 31.751993, 45.427666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265799, -0.106210, -0.958160,
		0.057108, 0.993902, -0.094330,
		0.962336, -0.029645, 0.270243,
		35.268379, 31.743099, 45.508739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193596, 32.282566, 45.004841>,  <34.594746, 31.763851, 45.319569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193596, 32.282566, 45.004841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.892132, 32.034973, 44.916424>,  <33.711254, 31.886417, 44.863373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.892132, 32.034973, 44.916424>,  <34.193596, 32.282566, 45.004841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892132, 32.034973, 44.916424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370758, 0.122680, 0.920591,
		-0.542709, 0.775767, -0.321950,
		-0.753662, -0.618979, -0.221042,
		33.666035, 31.849279, 44.850113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761372, 32.549152, 45.360146>,  <34.193596, 32.282566, 45.004841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761372, 32.549152, 45.360146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601368, 32.196033, 45.261635>,  <33.505367, 31.984161, 45.202530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601368, 32.196033, 45.261635>,  <33.761372, 32.549152, 45.360146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601368, 32.196033, 45.261635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603847, 0.051711, 0.795421,
		-0.689464, 0.466891, -0.553762,
		-0.400010, -0.882802, -0.246278,
		33.481365, 31.931192, 45.187752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139507, 32.730450, 45.360004>,  <33.761372, 32.549152, 45.360146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139507, 32.730450, 45.360004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129185, 32.332260, 45.396580>,  <33.122993, 32.093346, 45.418526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129185, 32.332260, 45.396580>,  <33.139507, 32.730450, 45.360004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129185, 32.332260, 45.396580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679144, 0.084577, 0.729116,
		-0.733551, -0.043286, -0.678255,
		-0.025805, -0.995476, 0.091439,
		33.121445, 32.033619, 45.424011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474785, 32.588703, 45.551407>,  <33.139507, 32.730450, 45.360004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474785, 32.588703, 45.551407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675701, 32.255348, 45.643639>,  <32.796249, 32.055336, 45.698978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.675701, 32.255348, 45.643639>,  <32.474785, 32.588703, 45.551407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675701, 32.255348, 45.643639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598933, -0.142975, 0.787932,
		-0.623685, -0.533875, -0.570959,
		0.502290, -0.833388, 0.230584,
		32.826389, 32.005333, 45.712814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952490, 32.154778, 45.670990>,  <32.474785, 32.588703, 45.551407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952490, 32.154778, 45.670990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.268456, 31.983263, 45.846344>,  <32.458035, 31.880354, 45.951557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.268456, 31.983263, 45.846344>,  <31.952490, 32.154778, 45.670990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268456, 31.983263, 45.846344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557687, -0.205046, 0.804327,
		-0.255003, -0.879825, -0.401101,
		0.789911, -0.428795, 0.438379,
		32.505428, 31.854628, 45.977859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715158, 31.541260, 45.876057>,  <31.952490, 32.154778, 45.670990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715158, 31.541260, 45.876057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046261, 31.616516, 46.087498>,  <32.244923, 31.661671, 46.214363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046261, 31.616516, 46.087498>,  <31.715158, 31.541260, 45.876057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046261, 31.616516, 46.087498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454210, -0.328427, 0.828148,
		0.329418, -0.925602, -0.186401,
		0.827755, 0.188142, 0.528607,
		32.294586, 31.672958, 46.246078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628952, 31.095921, 46.343464>,  <31.715158, 31.541260, 45.876057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628952, 31.095921, 46.343464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916218, 31.310982, 46.520176>,  <32.088577, 31.440018, 46.626205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916218, 31.310982, 46.520176>,  <31.628952, 31.095921, 46.343464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916218, 31.310982, 46.520176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431365, -0.154210, 0.888900,
		0.546047, -0.828944, 0.121176,
		0.718162, 0.537653, 0.441784,
		32.131668, 31.472277, 46.652710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756107, 30.662325, 46.948639>,  <31.628952, 31.095921, 46.343464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756107, 30.662325, 46.948639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.890009, 31.036091, 46.997318>,  <31.970350, 31.260351, 47.026524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.890009, 31.036091, 46.997318>,  <31.756107, 30.662325, 46.948639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890009, 31.036091, 46.997318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200425, -0.055586, 0.978131,
		0.920744, -0.351823, 0.168673,
		0.334753, 0.934415, 0.121695,
		31.990435, 31.316416, 47.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275795, 30.562199, 47.508411>,  <31.756107, 30.662325, 46.948639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275795, 30.562199, 47.508411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131657, 30.934338, 47.481270>,  <32.045174, 31.157621, 47.464985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131657, 30.934338, 47.481270>,  <32.275795, 30.562199, 47.508411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131657, 30.934338, 47.481270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301444, -0.047300, 0.952310,
		0.882769, 0.363616, 0.297492,
		-0.360346, 0.930347, -0.067855,
		32.023552, 31.213442, 47.460915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614975, 31.017736, 48.058968>,  <32.275795, 30.562199, 47.508411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614975, 31.017736, 48.058968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.259087, 31.169462, 47.957371>,  <32.045551, 31.260498, 47.896412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.259087, 31.169462, 47.957371>,  <32.614975, 31.017736, 48.058968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259087, 31.169462, 47.957371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273162, 0.003401, 0.961962,
		0.365750, 0.925262, 0.100589,
		-0.889724, 0.379314, -0.253991,
		31.992168, 31.283257, 47.881172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506542, 31.452171, 48.612270>,  <32.614975, 31.017736, 48.058968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506542, 31.452171, 48.612270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153690, 31.420004, 48.426632>,  <31.941978, 31.400703, 48.315250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153690, 31.420004, 48.426632>,  <32.506542, 31.452171, 48.612270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153690, 31.420004, 48.426632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465047, -0.007549, 0.885254,
		-0.074693, 0.996733, -0.030738,
		-0.882129, -0.080417, -0.464091,
		31.889051, 31.395878, 48.287403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106129, 31.963535, 48.978748>,  <32.506542, 31.452171, 48.612270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106129, 31.963535, 48.978748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.822702, 31.742165, 48.803635>,  <31.652647, 31.609343, 48.698566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.822702, 31.742165, 48.803635>,  <32.106129, 31.963535, 48.978748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822702, 31.742165, 48.803635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450052, -0.123417, 0.884433,
		-0.543498, 0.823704, -0.161621,
		-0.708564, -0.553426, -0.437787,
		31.610134, 31.576138, 48.672298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411774, 32.237358, 49.086544>,  <32.106129, 31.963535, 48.978748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411774, 32.237358, 49.086544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382488, 31.841616, 49.036232>,  <31.364918, 31.604172, 49.006046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.382488, 31.841616, 49.036232>,  <31.411774, 32.237358, 49.086544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382488, 31.841616, 49.036232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505208, -0.071947, 0.859993,
		-0.859887, 0.126508, -0.494561,
		-0.073214, -0.989353, -0.125779,
		31.360523, 31.544809, 48.998497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732149, 32.176205, 49.360069>,  <31.411774, 32.237358, 49.086544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732149, 32.176205, 49.360069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892641, 31.809847, 49.355007>,  <30.988935, 31.590033, 49.351971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892641, 31.809847, 49.355007>,  <30.732149, 32.176205, 49.360069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892641, 31.809847, 49.355007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478285, -0.221270, 0.849873,
		-0.781191, -0.334939, -0.526836,
		0.401229, -0.915890, -0.012658,
		31.013010, 31.535080, 49.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414070, 31.848583, 48.786201>,  <30.732149, 32.176205, 49.360069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414070, 31.848583, 48.786201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.172720, 32.154430, 48.876793>,  <30.027910, 32.337940, 48.931149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.172720, 32.154430, 48.876793>,  <30.414070, 31.848583, 48.786201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172720, 32.154430, 48.876793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000615, 0.284451, -0.958691,
		-0.797457, -0.578312, -0.172102,
		-0.603376, 0.764620, 0.226482,
		29.991707, 32.383816, 48.944736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834692, 31.813643, 48.241035>,  <30.414070, 31.848583, 48.786201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834692, 31.813643, 48.241035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.870934, 32.176476, 48.405468>,  <29.892677, 32.394176, 48.504128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.870934, 32.176476, 48.405468>,  <29.834692, 31.813643, 48.241035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870934, 32.176476, 48.405468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047004, 0.408427, -0.911580,
		-0.994777, 0.101914, -0.005632,
		0.090603, 0.907084, 0.411084,
		29.898115, 32.448601, 48.528793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487022, 32.214897, 47.811314>,  <29.834692, 31.813643, 48.241035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487022, 32.214897, 47.811314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.718895, 32.479137, 48.002132>,  <29.858019, 32.637684, 48.116623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.718895, 32.479137, 48.002132>,  <29.487022, 32.214897, 47.811314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718895, 32.479137, 48.002132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007988, 0.580808, -0.814002,
		-0.814805, 0.475672, 0.331406,
		0.579681, 0.660605, 0.477045,
		29.892799, 32.677319, 48.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169853, 32.853901, 47.692329>,  <29.487022, 32.214897, 47.811314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169853, 32.853901, 47.692329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546276, 32.936455, 47.799522>,  <29.772129, 32.985985, 47.863838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546276, 32.936455, 47.799522>,  <29.169853, 32.853901, 47.692329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546276, 32.936455, 47.799522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099425, 0.588504, -0.802357,
		-0.323303, 0.781709, 0.533297,
		0.941058, 0.206382, 0.267987,
		29.828594, 32.998371, 47.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290455, 33.637310, 47.699558>,  <29.169853, 32.853901, 47.692329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290455, 33.637310, 47.699558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.643074, 33.453053, 47.658215>,  <29.854645, 33.342499, 47.633408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.643074, 33.453053, 47.658215>,  <29.290455, 33.637310, 47.699558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643074, 33.453053, 47.658215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223678, 0.600355, -0.767817,
		0.415742, 0.653747, 0.632276,
		0.881548, -0.460640, -0.103364,
		29.907539, 33.314861, 47.627205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718657, 34.188931, 47.399525>,  <29.290455, 33.637310, 47.699558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718657, 34.188931, 47.399525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.957590, 33.870586, 47.359940>,  <30.100950, 33.679581, 47.336189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.957590, 33.870586, 47.359940>,  <29.718657, 34.188931, 47.399525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957590, 33.870586, 47.359940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413481, 0.411342, -0.812300,
		0.687186, 0.444296, 0.574783,
		0.597335, -0.795863, -0.098961,
		30.136791, 33.631828, 47.330250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550158, 34.353874, 47.238224>,  <29.718657, 34.188931, 47.399525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550158, 34.353874, 47.238224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415058, 34.006889, 47.092113>,  <30.333998, 33.798698, 47.004448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.415058, 34.006889, 47.092113>,  <30.550158, 34.353874, 47.238224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415058, 34.006889, 47.092113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205147, 0.310911, -0.928035,
		0.918608, -0.388378, 0.072948,
		-0.337749, -0.867465, -0.365280,
		30.313734, 33.746651, 46.982529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110363, 34.609131, 47.425472>,  <30.550158, 34.353874, 47.238224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110363, 34.609131, 47.425472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268757, 34.975792, 47.403763>,  <31.363794, 35.195789, 47.390739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.268757, 34.975792, 47.403763>,  <31.110363, 34.609131, 47.425472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268757, 34.975792, 47.403763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357575, 0.208368, 0.910342,
		0.845775, -0.341076, 0.410282,
		0.395986, 0.916652, -0.054272,
		31.387552, 35.250786, 47.387482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443089, 34.609497, 48.084297>,  <31.110363, 34.609131, 47.425472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443089, 34.609497, 48.084297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393152, 34.982697, 47.949284>,  <31.363190, 35.206615, 47.868275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393152, 34.982697, 47.949284>,  <31.443089, 34.609497, 48.084297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393152, 34.982697, 47.949284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262018, 0.297114, 0.918188,
		0.956954, 0.203066, 0.207371,
		-0.124840, 0.932999, -0.337532,
		31.355700, 35.262596, 47.848022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755068, 35.125240, 48.501381>,  <31.443089, 34.609497, 48.084297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755068, 35.125240, 48.501381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469448, 35.324577, 48.304695>,  <31.298077, 35.444180, 48.186684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469448, 35.324577, 48.304695>,  <31.755068, 35.125240, 48.501381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469448, 35.324577, 48.304695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390900, 0.298878, 0.870557,
		0.580802, 0.813832, -0.018609,
		-0.714049, 0.498347, -0.491715,
		31.255234, 35.474083, 48.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731314, 35.736774, 48.821011>,  <31.755068, 35.125240, 48.501381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731314, 35.736774, 48.821011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391876, 35.735943, 48.609394>,  <31.188213, 35.735443, 48.482426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391876, 35.735943, 48.609394>,  <31.731314, 35.736774, 48.821011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391876, 35.735943, 48.609394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490178, 0.379301, 0.784765,
		0.199037, 0.925272, -0.322890,
		-0.848593, -0.002076, -0.529042,
		31.137299, 35.735321, 48.450680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512861, 36.380863, 48.772942>,  <31.731314, 35.736774, 48.821011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512861, 36.380863, 48.772942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.182081, 36.162376, 48.719574>,  <30.983614, 36.031284, 48.687553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.182081, 36.162376, 48.719574>,  <31.512861, 36.380863, 48.772942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182081, 36.162376, 48.719574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395025, 0.395515, 0.829170,
		-0.400135, 0.738388, -0.542840,
		-0.826951, -0.546215, -0.133423,
		30.933996, 35.998512, 48.679546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002075, 36.783192, 48.970772>,  <31.512861, 36.380863, 48.772942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002075, 36.783192, 48.970772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820045, 36.427280, 48.984631>,  <30.710827, 36.213734, 48.992947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820045, 36.427280, 48.984631>,  <31.002075, 36.783192, 48.970772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820045, 36.427280, 48.984631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513178, 0.293867, 0.806406,
		-0.727705, 0.349196, -0.590346,
		-0.455077, -0.889778, 0.034649,
		30.683523, 36.160347, 48.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346529, 36.924751, 49.084133>,  <31.002075, 36.783192, 48.970772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346529, 36.924751, 49.084133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384315, 36.539799, 49.186035>,  <30.406988, 36.308826, 49.247177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384315, 36.539799, 49.186035>,  <30.346529, 36.924751, 49.084133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384315, 36.539799, 49.186035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527239, 0.168703, 0.832801,
		-0.844449, -0.212992, -0.491467,
		0.094468, -0.962379, 0.254759,
		30.412657, 36.251083, 49.262463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660538, 36.862499, 49.318317>,  <30.346529, 36.924751, 49.084133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660538, 36.862499, 49.318317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889803, 36.583130, 49.489750>,  <30.027363, 36.415508, 49.592609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.889803, 36.583130, 49.489750>,  <29.660538, 36.862499, 49.318317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889803, 36.583130, 49.489750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456607, 0.162088, 0.874778,
		-0.680436, -0.697087, -0.226003,
		0.573164, -0.698425, 0.428586,
		30.061752, 36.373604, 49.618324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268909, 36.558071, 49.931427>,  <29.660538, 36.862499, 49.318317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268909, 36.558071, 49.931427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637379, 36.435383, 50.027229>,  <29.858459, 36.361771, 50.084713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637379, 36.435383, 50.027229>,  <29.268909, 36.558071, 49.931427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637379, 36.435383, 50.027229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261766, -0.032965, 0.964568,
		-0.287954, -0.951230, -0.110655,
		0.921174, -0.306717, 0.239507,
		29.913731, 36.343369, 50.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.931095, 36.600727, 35.562428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293770, 36.571369, 35.728577>,  <36.511375, 36.553757, 35.828266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293770, 36.571369, 35.728577>,  <35.931095, 36.600727, 35.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293770, 36.571369, 35.728577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402119, 0.146985, 0.903712,
		-0.127380, -0.986412, 0.103756,
		0.906683, -0.073393, 0.415378,
		36.565777, 36.549351, 35.853191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955883, 36.041542, 36.159729>,  <35.931095, 36.600727, 35.562428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955883, 36.041542, 36.159729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232048, 36.326683, 36.209000>,  <36.397747, 36.497768, 36.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232048, 36.326683, 36.209000>,  <35.955883, 36.041542, 36.159729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232048, 36.326683, 36.209000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328390, 0.157116, 0.931383,
		0.644591, -0.683483, 0.342569,
		0.690408, 0.712857, 0.123173,
		36.439171, 36.540539, 36.245953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399837, 35.799881, 36.662380>,  <35.955883, 36.041542, 36.159729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399837, 35.799881, 36.662380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408070, 36.199757, 36.656834>,  <36.413010, 36.439682, 36.653507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408070, 36.199757, 36.656834>,  <36.399837, 35.799881, 36.662380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408070, 36.199757, 36.656834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379050, 0.020636, 0.925146,
		0.925147, -0.013784, 0.379358,
		0.020580, 0.999692, -0.013867,
		36.414246, 36.499664, 36.652672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563725, 35.918713, 37.356823>,  <36.399837, 35.799881, 36.662380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563725, 35.918713, 37.356823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469875, 36.272770, 37.196091>,  <36.413567, 36.485207, 37.099651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469875, 36.272770, 37.196091>,  <36.563725, 35.918713, 37.356823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469875, 36.272770, 37.196091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610907, 0.187280, 0.769232,
		0.756137, 0.425963, 0.496801,
		-0.234624, 0.885145, -0.401833,
		36.399487, 36.538315, 37.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624756, 36.451946, 37.889870>,  <36.563725, 35.918713, 37.356823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624756, 36.451946, 37.889870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386677, 36.596642, 37.602848>,  <36.243828, 36.683460, 37.430637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386677, 36.596642, 37.602848>,  <36.624756, 36.451946, 37.889870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386677, 36.596642, 37.602848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732011, 0.124293, 0.669859,
		0.331502, 0.923956, 0.190819,
		-0.595202, 0.361741, -0.717549,
		36.208115, 36.705162, 37.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451141, 37.014366, 38.164467>,  <36.624756, 36.451946, 37.889870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451141, 37.014366, 38.164467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172585, 36.917423, 37.894268>,  <36.005451, 36.859257, 37.732147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172585, 36.917423, 37.894268>,  <36.451141, 37.014366, 38.164467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172585, 36.917423, 37.894268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715098, 0.154854, 0.681656,
		-0.060597, 0.957750, -0.281146,
		-0.696392, -0.242353, -0.675502,
		35.963665, 36.844719, 37.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895985, 37.436516, 38.427666>,  <36.451141, 37.014366, 38.164467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895985, 37.436516, 38.427666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714882, 37.195492, 38.164780>,  <35.606220, 37.050877, 38.007050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714882, 37.195492, 38.164780>,  <35.895985, 37.436516, 38.427666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714882, 37.195492, 38.164780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855019, 0.084358, 0.511690,
		-0.252883, 0.793602, -0.553395,
		-0.452761, -0.602561, -0.657212,
		35.579052, 37.014725, 37.967617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369270, 37.809219, 38.137863>,  <35.895985, 37.436516, 38.427666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369270, 37.809219, 38.137863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277969, 37.422504, 38.091873>,  <35.223186, 37.190475, 38.064278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277969, 37.422504, 38.091873>,  <35.369270, 37.809219, 38.137863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277969, 37.422504, 38.091873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804424, 0.120746, 0.581654,
		-0.548453, 0.225258, -0.805269,
		-0.228256, -0.966788, -0.114979,
		35.209492, 37.132469, 38.057381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573303, 37.762363, 38.152077>,  <35.369270, 37.809219, 38.137863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573303, 37.762363, 38.152077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704391, 37.396187, 38.245506>,  <34.783043, 37.176479, 38.301563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704391, 37.396187, 38.245506>,  <34.573303, 37.762363, 38.152077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704391, 37.396187, 38.245506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807493, -0.143059, 0.572267,
		-0.490464, -0.376155, -0.786099,
		0.327720, -0.915446, 0.233578,
		34.802708, 37.121552, 38.315578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974251, 37.462856, 38.099503>,  <34.573303, 37.762363, 38.152077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974251, 37.462856, 38.099503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201172, 37.220650, 38.322754>,  <34.337326, 37.075325, 38.456707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201172, 37.220650, 38.322754>,  <33.974251, 37.462856, 38.099503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201172, 37.220650, 38.322754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742865, -0.083784, 0.664178,
		-0.355409, -0.791409, -0.497349,
		0.567306, -0.605518, 0.558132,
		34.371365, 37.038994, 38.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519211, 36.921669, 38.351429>,  <33.974251, 37.462856, 38.099503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519211, 36.921669, 38.351429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821999, 36.972015, 38.607914>,  <34.003670, 37.002224, 38.761806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821999, 36.972015, 38.607914>,  <33.519211, 36.921669, 38.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821999, 36.972015, 38.607914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647645, 0.014028, 0.761813,
		0.086896, -0.991947, 0.092138,
		0.756971, 0.125871, 0.641211,
		34.049091, 37.009777, 38.800278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327900, 36.422119, 38.825390>,  <33.519211, 36.921669, 38.351429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327900, 36.422119, 38.825390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577991, 36.688282, 38.988525>,  <33.728046, 36.847980, 39.086407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577991, 36.688282, 38.988525>,  <33.327900, 36.422119, 38.825390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577991, 36.688282, 38.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673367, 0.195748, 0.712923,
		0.394549, -0.720361, 0.570448,
		0.625226, 0.665404, 0.407835,
		33.765560, 36.887905, 39.110874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169720, 35.671165, 38.562283>,  <33.327900, 36.422119, 38.825390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169720, 35.671165, 38.562283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788754, 35.552349, 38.534931>,  <32.560173, 35.481060, 38.518520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788754, 35.552349, 38.534931>,  <33.169720, 35.671165, 38.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788754, 35.552349, 38.534931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026969, 0.141340, -0.989594,
		0.303620, -0.944345, -0.126603,
		-0.952411, -0.297047, -0.068381,
		32.503029, 35.463234, 38.514416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152584, 35.069229, 38.130165>,  <33.169720, 35.671165, 38.562283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152584, 35.069229, 38.130165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788940, 35.235168, 38.115093>,  <32.570755, 35.334732, 38.106049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788940, 35.235168, 38.115093>,  <33.152584, 35.069229, 38.130165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788940, 35.235168, 38.115093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019912, -0.047084, -0.998692,
		-0.416083, -0.908670, 0.034544,
		-0.909109, 0.414851, -0.037684,
		32.516209, 35.359623, 38.103786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866379, 34.761967, 37.546402>,  <33.152584, 35.069229, 38.130165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866379, 34.761967, 37.546402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614914, 35.062405, 37.627045>,  <32.464035, 35.242668, 37.675430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614914, 35.062405, 37.627045>,  <32.866379, 34.761967, 37.546402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614914, 35.062405, 37.627045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130172, 0.153948, -0.979467,
		-0.766708, -0.641996, 0.000991,
		-0.628661, 0.751094, 0.201603,
		32.426315, 35.287731, 37.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292160, 34.600380, 37.173393>,  <32.866379, 34.761967, 37.546402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292160, 34.600380, 37.173393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258179, 34.992256, 37.246048>,  <32.237789, 35.227383, 37.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258179, 34.992256, 37.246048>,  <32.292160, 34.600380, 37.173393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258179, 34.992256, 37.246048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155350, 0.193087, -0.968805,
		-0.984200, -0.054087, -0.168598,
		-0.084954, 0.979690, 0.181634,
		32.232693, 35.286163, 37.300537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808416, 34.841564, 36.715134>,  <32.292160, 34.600380, 37.173393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808416, 34.841564, 36.715134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986887, 35.184444, 36.818001>,  <32.093967, 35.390171, 36.879723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986887, 35.184444, 36.818001>,  <31.808416, 34.841564, 36.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986887, 35.184444, 36.818001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078409, 0.248811, -0.965373,
		-0.891504, 0.450891, 0.043801,
		0.446176, 0.857199, 0.257170,
		32.120739, 35.441605, 36.895153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452997, 35.356785, 36.434113>,  <31.808416, 34.841564, 36.715134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452997, 35.356785, 36.434113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825354, 35.488850, 36.496647>,  <32.048767, 35.568089, 36.534168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825354, 35.488850, 36.496647>,  <31.452997, 35.356785, 36.434113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825354, 35.488850, 36.496647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058400, 0.287956, -0.955861,
		-0.360604, 0.898930, 0.248774,
		0.930889, 0.330159, 0.156336,
		32.104622, 35.587898, 36.543549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490406, 35.874454, 35.964859>,  <31.452997, 35.356785, 36.434113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490406, 35.874454, 35.964859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873714, 35.799831, 36.051498>,  <32.103699, 35.755058, 36.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873714, 35.799831, 36.051498>,  <31.490406, 35.874454, 35.964859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873714, 35.799831, 36.051498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267682, 0.319670, -0.908932,
		0.100329, 0.928982, 0.356268,
		0.958270, -0.186559, 0.216599,
		32.161194, 35.743862, 36.116478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752792, 36.439247, 35.618439>,  <31.490406, 35.874454, 35.964859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752792, 36.439247, 35.618439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036846, 36.161068, 35.662357>,  <32.207279, 35.994160, 35.688709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036846, 36.161068, 35.662357>,  <31.752792, 36.439247, 35.618439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036846, 36.161068, 35.662357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272727, 0.127946, -0.953546,
		0.649098, 0.707089, 0.280528,
		0.710135, -0.695452, 0.109793,
		32.249886, 35.952431, 35.695293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320236, 36.712460, 35.249821>,  <31.752792, 36.439247, 35.618439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320236, 36.712460, 35.249821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436302, 36.331375, 35.285927>,  <32.505939, 36.102726, 35.307590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436302, 36.331375, 35.285927>,  <32.320236, 36.712460, 35.249821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436302, 36.331375, 35.285927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321382, 0.008162, -0.946914,
		0.901399, 0.303769, 0.308553,
		0.290162, -0.952711, 0.090269,
		32.523350, 36.045563, 35.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016624, 36.642399, 35.041508>,  <32.320236, 36.712460, 35.249821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016624, 36.642399, 35.041508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857918, 36.277515, 35.000618>,  <32.762695, 36.058586, 34.976086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857918, 36.277515, 35.000618>,  <33.016624, 36.642399, 35.041508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857918, 36.277515, 35.000618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391975, -0.067678, -0.917483,
		0.830021, -0.404092, 0.384416,
		-0.396764, -0.912211, -0.102220,
		32.738888, 36.003853, 34.969952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358768, 36.337124, 34.543461>,  <33.016624, 36.642399, 35.041508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358768, 36.337124, 34.543461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076424, 36.054440, 34.562748>,  <32.907017, 35.884830, 34.574322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076424, 36.054440, 34.562748>,  <33.358768, 36.337124, 34.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076424, 36.054440, 34.562748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149983, -0.215636, -0.964887,
		0.692291, -0.673843, 0.258203,
		-0.705860, -0.706708, 0.048218,
		32.864666, 35.842426, 34.577213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660069, 35.790371, 34.097702>,  <33.358768, 36.337124, 34.543461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660069, 35.790371, 34.097702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262741, 35.759846, 34.132328>,  <33.024345, 35.741531, 34.153103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262741, 35.759846, 34.132328>,  <33.660069, 35.790371, 34.097702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262741, 35.759846, 34.132328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081867, -0.062630, -0.994673,
		0.081327, -0.995115, 0.055964,
		-0.993320, -0.076312, 0.086561,
		32.964745, 35.736954, 34.158295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726616, 35.237465, 33.599594>,  <33.660069, 35.790371, 34.097702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726616, 35.237465, 33.599594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945648, 35.458244, 33.348034>,  <34.077068, 35.590710, 33.197098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945648, 35.458244, 33.348034>,  <33.726616, 35.237465, 33.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945648, 35.458244, 33.348034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332356, 0.546297, 0.768830,
		0.767918, -0.630013, 0.115698,
		0.547578, 0.551944, -0.628900,
		34.109921, 35.623829, 33.159363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488888, 35.312740, 33.905506>,  <33.726616, 35.237465, 33.599594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488888, 35.312740, 33.905506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400433, 35.642780, 33.697540>,  <34.347359, 35.840805, 33.572762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400433, 35.642780, 33.697540>,  <34.488888, 35.312740, 33.905506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400433, 35.642780, 33.697540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167513, 0.557325, 0.813221,
		0.960748, 0.092743, -0.261461,
		-0.221140, 0.825098, -0.519913,
		34.334091, 35.890308, 33.541565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292782, 34.665119, 34.262814>,  <34.488888, 35.312740, 33.905506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292782, 34.665119, 34.262814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433887, 34.300766, 34.348461>,  <34.518551, 34.082153, 34.399849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433887, 34.300766, 34.348461>,  <34.292782, 34.665119, 34.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433887, 34.300766, 34.348461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860062, 0.225504, -0.457647,
		0.368578, 0.345600, 0.862966,
		0.352765, -0.910883, 0.214122,
		34.539719, 34.027500, 34.412697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051991, 34.495884, 34.600594>,  <34.292782, 34.665119, 34.262814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051991, 34.495884, 34.600594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931667, 34.209057, 34.349091>,  <34.859474, 34.036961, 34.198189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931667, 34.209057, 34.349091>,  <35.051991, 34.495884, 34.600594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931667, 34.209057, 34.349091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838433, 0.115342, -0.532659,
		0.454474, -0.687394, 0.566518,
		-0.300804, -0.717068, -0.628754,
		34.841427, 33.993938, 34.160465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552856, 34.814655, 34.957291>,  <35.051991, 34.495884, 34.600594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552856, 34.814655, 34.957291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933727, 34.713116, 35.025307>,  <35.162251, 34.652191, 35.066116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933727, 34.713116, 35.025307>,  <34.552856, 34.814655, 34.957291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933727, 34.713116, 35.025307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265279, -0.410734, 0.872310,
		-0.151590, -0.875705, -0.458433,
		0.952181, -0.253846, 0.170043,
		35.219383, 34.636963, 35.076321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640228, 34.060341, 35.055149>,  <34.552856, 34.814655, 34.957291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640228, 34.060341, 35.055149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904678, 34.270000, 35.269878>,  <35.063351, 34.395794, 35.398716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904678, 34.270000, 35.269878>,  <34.640228, 34.060341, 35.055149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904678, 34.270000, 35.269878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357383, -0.409111, 0.839587,
		0.659688, -0.746926, -0.083153,
		0.661127, 0.524147, 0.536824,
		35.103016, 34.427246, 35.430927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060753, 33.599499, 35.478188>,  <34.640228, 34.060341, 35.055149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060753, 33.599499, 35.478188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081726, 33.960880, 35.648373>,  <35.094311, 34.177711, 35.750484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081726, 33.960880, 35.648373>,  <35.060753, 33.599499, 35.478188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081726, 33.960880, 35.648373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121704, -0.417089, 0.900680,
		0.991181, -0.099002, 0.088086,
		0.052430, 0.903457, 0.425459,
		35.097454, 34.231918, 35.776009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598530, 33.594948, 35.923256>,  <35.060753, 33.599499, 35.478188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598530, 33.594948, 35.923256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362297, 33.894703, 36.043011>,  <35.220558, 34.074554, 36.114864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362297, 33.894703, 36.043011>,  <35.598530, 33.594948, 35.923256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362297, 33.894703, 36.043011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206769, -0.499139, 0.841491,
		0.780036, 0.435067, 0.449733,
		-0.590584, 0.749385, 0.299388,
		35.185123, 34.119518, 36.132828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814796, 33.882458, 36.524296>,  <35.598530, 33.594948, 35.923256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814796, 33.882458, 36.524296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425724, 33.975231, 36.520454>,  <35.192280, 34.030895, 36.518150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425724, 33.975231, 36.520454>,  <35.814796, 33.882458, 36.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425724, 33.975231, 36.520454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126844, -0.496389, 0.858783,
		0.194417, 0.836542, 0.512249,
		-0.972683, 0.231938, -0.009604,
		35.133919, 34.044811, 36.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732800, 34.094719, 37.200832>,  <35.814796, 33.882458, 36.524296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732800, 34.094719, 37.200832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363125, 34.011818, 37.072510>,  <35.141319, 33.962078, 36.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363125, 34.011818, 37.072510>,  <35.732800, 34.094719, 37.200832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363125, 34.011818, 37.072510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224581, -0.384521, 0.895381,
		-0.308926, 0.899551, 0.308826,
		-0.924191, -0.207250, -0.320810,
		35.085869, 33.949642, 36.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457561, 34.064812, 37.785683>,  <35.732800, 34.094719, 37.200832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457561, 34.064812, 37.785683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191685, 33.884422, 37.547417>,  <35.032158, 33.776188, 37.404457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191685, 33.884422, 37.547417>,  <35.457561, 34.064812, 37.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191685, 33.884422, 37.547417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390730, -0.469724, 0.791637,
		-0.636801, 0.758936, 0.136013,
		-0.664691, -0.450971, -0.595660,
		34.992279, 33.749130, 37.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886681, 34.207905, 38.071651>,  <35.457561, 34.064812, 37.785683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886681, 34.207905, 38.071651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797680, 33.887150, 37.849854>,  <34.744282, 33.694695, 37.716774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797680, 33.887150, 37.849854>,  <34.886681, 34.207905, 38.071651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797680, 33.887150, 37.849854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419944, -0.434455, 0.796803,
		-0.879853, 0.410145, -0.240083,
		-0.222499, -0.801891, -0.554495,
		34.730930, 33.646584, 37.683506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189945, 34.157597, 38.193504>,  <34.886681, 34.207905, 38.071651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189945, 34.157597, 38.193504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315826, 33.797661, 38.072678>,  <34.391354, 33.581699, 38.000183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315826, 33.797661, 38.072678>,  <34.189945, 34.157597, 38.193504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315826, 33.797661, 38.072678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120441, -0.353518, 0.927642,
		-0.941518, -0.255550, -0.219631,
		0.314702, -0.899844, -0.302065,
		34.410236, 33.527706, 37.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642254, 33.678684, 38.316944>,  <34.189945, 34.157597, 38.193504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642254, 33.678684, 38.316944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980854, 33.467461, 38.289818>,  <34.184013, 33.340725, 38.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980854, 33.467461, 38.289818>,  <33.642254, 33.678684, 38.316944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980854, 33.467461, 38.289818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216399, -0.457645, 0.862399,
		-0.486435, -0.715340, -0.501666,
		0.846494, -0.528061, -0.067816,
		34.234802, 33.309044, 38.269474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453705, 33.024666, 38.430935>,  <33.642254, 33.678684, 38.316944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453705, 33.024666, 38.430935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849571, 33.002060, 38.483643>,  <34.087093, 32.988495, 38.515266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849571, 33.002060, 38.483643>,  <33.453705, 33.024666, 38.430935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849571, 33.002060, 38.483643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143327, -0.414762, 0.898571,
		0.003873, -0.908173, -0.418577,
		0.989667, -0.056513, 0.131772,
		34.146473, 32.985107, 38.523174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512669, 32.391590, 38.786430>,  <33.453705, 33.024666, 38.430935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512669, 32.391590, 38.786430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855431, 32.578751, 38.872940>,  <34.061089, 32.691048, 38.924847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855431, 32.578751, 38.872940>,  <33.512669, 32.391590, 38.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855431, 32.578751, 38.872940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, -0.476481, 0.878342,
		0.514033, -0.744332, -0.426310,
		0.856906, 0.467906, 0.216276,
		34.112503, 32.719124, 38.937824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878567, 32.033859, 39.394138>,  <33.512669, 32.391590, 38.786430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878567, 32.033859, 39.394138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111721, 32.358829, 39.388279>,  <34.251614, 32.553810, 39.384766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111721, 32.358829, 39.388279>,  <33.878567, 32.033859, 39.394138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111721, 32.358829, 39.388279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193701, -0.121424, 0.973517,
		0.789130, -0.570284, -0.228144,
		0.582884, 0.812424, -0.014645,
		34.286587, 32.602558, 39.383884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482826, 31.820145, 39.669003>,  <33.878567, 32.033859, 39.394138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482826, 31.820145, 39.669003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446030, 32.213951, 39.728695>,  <34.423954, 32.450233, 39.764511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446030, 32.213951, 39.728695>,  <34.482826, 31.820145, 39.669003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446030, 32.213951, 39.728695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283816, -0.117727, 0.951624,
		0.954456, 0.129893, -0.268591,
		-0.091989, 0.984514, 0.149231,
		34.418434, 32.509304, 39.773464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068542, 32.029766, 40.057415>,  <34.482826, 31.820145, 39.669003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068542, 32.029766, 40.057415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828426, 32.343655, 40.119205>,  <34.684357, 32.531986, 40.156281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828426, 32.343655, 40.119205>,  <35.068542, 32.029766, 40.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828426, 32.343655, 40.119205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224306, -0.020215, 0.974309,
		0.767685, 0.619518, -0.163883,
		-0.600289, 0.784722, 0.154480,
		34.648338, 32.579071, 40.165550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413933, 32.558437, 40.508465>,  <35.068542, 32.029766, 40.057415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413933, 32.558437, 40.508465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020088, 32.597897, 40.566170>,  <34.783783, 32.621571, 40.600792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020088, 32.597897, 40.566170>,  <35.413933, 32.558437, 40.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020088, 32.597897, 40.566170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131938, -0.121775, 0.983750,
		0.114613, 0.987643, 0.106885,
		-0.984610, 0.098648, 0.144265,
		34.724705, 32.627491, 40.609447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368908, 32.821800, 41.163609>,  <35.413933, 32.558437, 40.508465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368908, 32.821800, 41.163609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996014, 32.696308, 41.091476>,  <34.772278, 32.621014, 41.048199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996014, 32.696308, 41.091476>,  <35.368908, 32.821800, 41.163609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996014, 32.696308, 41.091476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131992, -0.169191, 0.976705,
		-0.336932, 0.934317, 0.116315,
		-0.932231, -0.313730, -0.180328,
		34.716343, 32.602188, 41.037376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988659, 33.115337, 41.730320>,  <35.368908, 32.821800, 41.163609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988659, 33.115337, 41.730320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766193, 32.815514, 41.586742>,  <34.632713, 32.635620, 41.500595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766193, 32.815514, 41.586742>,  <34.988659, 33.115337, 41.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766193, 32.815514, 41.586742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162032, -0.325815, 0.931445,
		-0.815125, 0.576195, 0.059753,
		-0.556163, -0.749563, -0.358941,
		34.599346, 32.590645, 41.479061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292660, 33.182098, 41.985123>,  <34.988659, 33.115337, 41.730320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292660, 33.182098, 41.985123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314274, 32.797718, 41.876564>,  <34.327244, 32.567089, 41.811428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314274, 32.797718, 41.876564>,  <34.292660, 33.182098, 41.985123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314274, 32.797718, 41.876564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489737, -0.262365, 0.831458,
		-0.870194, 0.087983, -0.484790,
		0.054038, -0.960949, -0.271397,
		34.330486, 32.509434, 41.795143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616463, 32.935513, 42.227528>,  <34.292660, 33.182098, 41.985123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616463, 32.935513, 42.227528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840336, 32.611828, 42.156059>,  <33.974659, 32.417618, 42.113178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840336, 32.611828, 42.156059>,  <33.616463, 32.935513, 42.227528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840336, 32.611828, 42.156059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331448, -0.416191, 0.846716,
		-0.759535, -0.414676, -0.501149,
		0.559686, -0.809215, -0.178669,
		34.008244, 32.369064, 42.102459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171406, 32.319073, 42.251949>,  <33.616463, 32.935513, 42.227528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171406, 32.319073, 42.251949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557297, 32.243996, 42.325779>,  <33.788834, 32.198948, 42.370075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557297, 32.243996, 42.325779>,  <33.171406, 32.319073, 42.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557297, 32.243996, 42.325779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239643, -0.336041, 0.910850,
		-0.108939, -0.922955, -0.369169,
		0.964729, -0.187696, 0.184572,
		33.846714, 32.187687, 42.381149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067509, 31.716650, 42.624199>,  <33.171406, 32.319073, 42.251949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067509, 31.716650, 42.624199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450012, 31.806971, 42.698593>,  <33.679512, 31.861162, 42.743229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450012, 31.806971, 42.698593>,  <33.067509, 31.716650, 42.624199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450012, 31.806971, 42.698593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100175, -0.344570, 0.933401,
		0.274847, -0.911200, -0.306877,
		0.956255, 0.225801, 0.185984,
		33.736889, 31.874710, 42.754387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353462, 31.099844, 42.978279>,  <33.067509, 31.716650, 42.624199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353462, 31.099844, 42.978279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575588, 31.423740, 43.054119>,  <33.708862, 31.618078, 43.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575588, 31.423740, 43.054119>,  <33.353462, 31.099844, 42.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575588, 31.423740, 43.054119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158409, -0.120815, 0.979954,
		0.816416, -0.574215, 0.061180,
		0.555313, 0.809741, 0.189596,
		33.742184, 31.666662, 43.110996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709373, 30.848778, 43.507740>,  <33.353462, 31.099844, 42.978279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709373, 30.848778, 43.507740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761711, 31.245033, 43.523308>,  <33.793114, 31.482786, 43.532650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761711, 31.245033, 43.523308>,  <33.709373, 30.848778, 43.507740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761711, 31.245033, 43.523308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065516, -0.047812, 0.996705,
		0.989236, -0.127863, -0.071159,
		0.130844, 0.990639, 0.038921,
		33.800964, 31.542225, 43.534985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220016, 31.054773, 44.079128>,  <33.709373, 30.848778, 43.507740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220016, 31.054773, 44.079128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015965, 31.394209, 44.023037>,  <33.893532, 31.597870, 43.989384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015965, 31.394209, 44.023037>,  <34.220016, 31.054773, 44.079128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015965, 31.394209, 44.023037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150844, 0.072239, 0.985915,
		0.846764, 0.524101, 0.091153,
		-0.510134, 0.848587, -0.140227,
		33.862923, 31.648785, 43.980968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493900, 31.524038, 44.560242>,  <34.220016, 31.054773, 44.079128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493900, 31.524038, 44.560242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114910, 31.623137, 44.479340>,  <33.887516, 31.682596, 44.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114910, 31.623137, 44.479340>,  <34.493900, 31.524038, 44.560242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114910, 31.623137, 44.479340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214465, -0.023037, 0.976460,
		0.237255, 0.968551, 0.074960,
		-0.947478, 0.247746, -0.202255,
		33.830666, 31.697460, 44.418663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880157, 32.098568, 44.705879>,  <34.493900, 31.524038, 44.560242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880157, 32.098568, 44.705879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193039, 31.951975, 44.907413>,  <35.380768, 31.864019, 45.028336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193039, 31.951975, 44.907413>,  <34.880157, 32.098568, 44.705879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193039, 31.951975, 44.907413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506626, -0.096523, -0.856746,
		0.362616, 0.925404, 0.110170,
		0.782202, -0.366485, 0.503835,
		35.427700, 31.842030, 45.058563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561409, 32.550453, 44.525253>,  <34.880157, 32.098568, 44.705879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561409, 32.550453, 44.525253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700542, 32.198170, 44.653851>,  <35.784023, 31.986799, 44.731010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700542, 32.198170, 44.653851>,  <35.561409, 32.550453, 44.525253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700542, 32.198170, 44.653851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530823, -0.097661, -0.841837,
		0.772813, 0.463475, 0.433533,
		0.347831, -0.880712, 0.321497,
		35.804893, 31.933956, 44.750301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313557, 32.562012, 44.582603>,  <35.561409, 32.550453, 44.525253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313557, 32.562012, 44.582603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204025, 32.179611, 44.540497>,  <36.138306, 31.950171, 44.515232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204025, 32.179611, 44.540497>,  <36.313557, 32.562012, 44.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204025, 32.179611, 44.540497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437347, -0.026296, -0.898908,
		0.856588, -0.292186, 0.425305,
		-0.273832, -0.956000, -0.105262,
		36.121876, 31.892811, 44.508919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921402, 32.169716, 44.569515>,  <36.313557, 32.562012, 44.582603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921402, 32.169716, 44.569515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650791, 31.939564, 44.385666>,  <36.488426, 31.801474, 44.275356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650791, 31.939564, 44.385666>,  <36.921402, 32.169716, 44.569515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650791, 31.939564, 44.385666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592025, -0.053739, -0.804126,
		0.437977, -0.816120, 0.376994,
		-0.676522, -0.575379, -0.459627,
		36.447834, 31.766951, 44.247776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341488, 31.693623, 44.291233>,  <36.921402, 32.169716, 44.569515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341488, 31.693623, 44.291233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990639, 31.625999, 44.111420>,  <36.780128, 31.585424, 44.003532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990639, 31.625999, 44.111420>,  <37.341488, 31.693623, 44.291233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990639, 31.625999, 44.111420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471748, -0.127712, -0.872435,
		0.090084, -0.977296, 0.191773,
		-0.877119, -0.169061, -0.449533,
		36.727505, 31.575281, 43.976559>
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
