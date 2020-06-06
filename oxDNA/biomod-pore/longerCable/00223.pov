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
	<24.012760, 35.280174, 34.971306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031097, 34.897392, 34.856663>,  <24.042101, 34.667725, 34.787876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031097, 34.897392, 34.856663>,  <24.012760, 35.280174, 34.971306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.031097, 34.897392, 34.856663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903942, 0.082377, -0.419646,
		0.425190, 0.278313, -0.861252,
		0.045845, -0.956952, -0.286605,
		24.044851, 34.610306, 34.770683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752029, 35.542400, 35.052223>,  <24.012760, 35.280174, 34.971306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752029, 35.542400, 35.052223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751638, 35.477474, 35.446918>,  <24.751404, 35.438519, 35.683735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751638, 35.477474, 35.446918>,  <24.752029, 35.542400, 35.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751638, 35.477474, 35.446918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875294, 0.477039, 0.079338,
		-0.483590, 0.863764, 0.141604,
		-0.000979, -0.162312, 0.986739,
		24.751345, 35.428780, 35.742939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510214, 36.097435, 34.739025>,  <24.752029, 35.542400, 35.052223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510214, 36.097435, 34.739025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800688, 36.333015, 34.597157>,  <24.974972, 36.474365, 34.512035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800688, 36.333015, 34.597157>,  <24.510214, 36.097435, 34.739025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800688, 36.333015, 34.597157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481982, -0.804002, -0.348245,
		-0.490254, 0.081947, -0.867719,
		0.726185, 0.588953, -0.354668,
		25.018543, 36.509701, 34.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718294, 35.768814, 34.105942>,  <24.510214, 36.097435, 34.739025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718294, 35.768814, 34.105942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025932, 36.002209, 34.210281>,  <25.210514, 36.142246, 34.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025932, 36.002209, 34.210281>,  <24.718294, 35.768814, 34.105942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025932, 36.002209, 34.210281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638787, -0.715251, -0.283493,
		0.021155, 0.384657, -0.922817,
		0.769093, 0.583486, 0.260845,
		25.256660, 36.177254, 34.288536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222982, 35.677074, 33.557163>,  <24.718294, 35.768814, 34.105942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222982, 35.677074, 33.557163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467735, 35.864681, 33.811916>,  <25.614588, 35.977245, 33.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467735, 35.864681, 33.811916>,  <25.222982, 35.677074, 33.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467735, 35.864681, 33.811916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761084, -0.568306, -0.312695,
		0.215287, 0.676057, -0.704698,
		0.611884, 0.469015, 0.636885,
		25.651300, 36.005386, 34.002983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823114, 35.969734, 33.195454>,  <25.222982, 35.677074, 33.557163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823114, 35.969734, 33.195454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898600, 35.853367, 33.570633>,  <25.943890, 35.783546, 33.795742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898600, 35.853367, 33.570633>,  <25.823114, 35.969734, 33.195454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898600, 35.853367, 33.570633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584655, -0.734117, -0.345327,
		0.789029, 0.613546, 0.031552,
		0.188711, -0.290920, 0.937952,
		25.955214, 35.766090, 33.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499256, 35.819553, 33.365036>,  <25.823114, 35.969734, 33.195454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499256, 35.819553, 33.365036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284109, 35.570995, 33.592918>,  <26.155022, 35.421860, 33.729649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284109, 35.570995, 33.592918>,  <26.499256, 35.819553, 33.365036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284109, 35.570995, 33.592918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599550, -0.757037, -0.259682,
		0.592653, 0.201892, 0.779744,
		-0.537868, -0.621397, 0.569705,
		26.122749, 35.384575, 33.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972359, 35.535404, 33.818279>,  <26.499256, 35.819553, 33.365036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972359, 35.535404, 33.818279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655897, 35.293064, 33.784760>,  <26.466021, 35.147659, 33.764648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655897, 35.293064, 33.784760>,  <26.972359, 35.535404, 33.818279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655897, 35.293064, 33.784760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609424, -0.769300, -0.191780,
		0.051724, -0.202796, 0.977854,
		-0.791156, -0.605847, -0.083797,
		26.418550, 35.111309, 33.759621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976116, 35.002064, 34.326324>,  <26.972359, 35.535404, 33.818279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976116, 35.002064, 34.326324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743338, 34.840504, 34.043991>,  <26.603670, 34.743568, 33.874592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743338, 34.840504, 34.043991>,  <26.976116, 35.002064, 34.326324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743338, 34.840504, 34.043991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571101, -0.820879, -0.001127,
		-0.578950, -0.403760, 0.708375,
		-0.581945, -0.403901, -0.705836,
		26.568754, 34.719334, 33.832241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740936, 34.218483, 34.514065>,  <26.976116, 35.002064, 34.326324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740936, 34.218483, 34.514065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656534, 34.233902, 34.123375>,  <26.605892, 34.243153, 33.888962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656534, 34.233902, 34.123375>,  <26.740936, 34.218483, 34.514065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656534, 34.233902, 34.123375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536649, -0.830597, -0.148716,
		-0.816997, -0.555538, 0.154574,
		-0.211006, 0.038549, -0.976724,
		26.593233, 34.245468, 33.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750174, 33.529613, 34.358715>,  <26.740936, 34.218483, 34.514065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750174, 33.529613, 34.358715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801847, 33.718410, 34.009880>,  <26.832851, 33.831688, 33.800579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801847, 33.718410, 34.009880>,  <26.750174, 33.529613, 34.358715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801847, 33.718410, 34.009880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721691, -0.647881, -0.243743,
		-0.680053, -0.597888, -0.424333,
		0.129186, 0.471996, -0.872084,
		26.840603, 33.860008, 33.748257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602463, 33.042347, 33.696758>,  <26.750174, 33.529613, 34.358715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602463, 33.042347, 33.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863596, 33.340572, 33.643162>,  <27.020275, 33.519508, 33.611004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863596, 33.340572, 33.643162>,  <26.602463, 33.042347, 33.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863596, 33.340572, 33.643162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709856, -0.663864, -0.235348,
		-0.264418, 0.058528, -0.962631,
		0.652831, 0.745559, -0.133991,
		27.059444, 33.564240, 33.602962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028915, 32.971817, 33.076820>,  <26.602463, 33.042347, 33.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028915, 32.971817, 33.076820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229445, 33.189133, 33.346195>,  <27.349762, 33.319523, 33.507820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229445, 33.189133, 33.346195>,  <27.028915, 32.971817, 33.076820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229445, 33.189133, 33.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818873, -0.549314, -0.166435,
		0.279503, 0.634894, -0.720269,
		0.501323, 0.543290, 0.673433,
		27.379841, 33.352119, 33.548225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687105, 32.732525, 32.684738>,  <27.028915, 32.971817, 33.076820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687105, 32.732525, 32.684738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750761, 33.038036, 32.434517>,  <27.788954, 33.221344, 32.284386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750761, 33.038036, 32.434517>,  <27.687105, 32.732525, 32.684738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750761, 33.038036, 32.434517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783997, 0.482866, 0.390115,
		0.600020, 0.428350, 0.675642,
		0.159139, 0.763778, -0.625554,
		27.798502, 33.267170, 32.246849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858419, 33.499790, 32.961056>,  <27.687105, 32.732525, 32.684738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858419, 33.499790, 32.961056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661110, 33.492020, 32.613194>,  <27.542725, 33.487358, 32.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661110, 33.492020, 32.613194>,  <27.858419, 33.499790, 32.961056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661110, 33.492020, 32.613194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843917, 0.253091, 0.473022,
		0.210914, 0.967247, -0.141237,
		-0.493275, -0.019425, -0.869657,
		27.513128, 33.486191, 32.352295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686375, 34.223373, 32.990257>,  <27.858419, 33.499790, 32.961056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686375, 34.223373, 32.990257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381769, 33.994217, 33.111515>,  <27.199005, 33.856724, 33.184269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381769, 33.994217, 33.111515>,  <27.686375, 34.223373, 32.990257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381769, 33.994217, 33.111515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524982, 0.819479, 0.229887,
		-0.380117, 0.015918, -0.924801,
		-0.761515, -0.572888, 0.303141,
		27.153315, 33.822350, 33.202457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107525, 34.335777, 32.563862>,  <27.686375, 34.223373, 32.990257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107525, 34.335777, 32.563862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009981, 34.201473, 32.927795>,  <26.951456, 34.120892, 33.146156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009981, 34.201473, 32.927795>,  <27.107525, 34.335777, 32.563862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009981, 34.201473, 32.927795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790854, 0.611849, 0.013824,
		-0.561323, -0.716175, -0.414741,
		-0.243858, -0.335759, 0.909834,
		26.936823, 34.100746, 33.200745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332752, 34.230694, 32.542103>,  <27.107525, 34.335777, 32.563862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332752, 34.230694, 32.542103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421757, 34.248501, 32.931667>,  <26.475159, 34.259186, 33.165405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421757, 34.248501, 32.931667>,  <26.332752, 34.230694, 32.542103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421757, 34.248501, 32.931667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739585, 0.658582, 0.138869,
		-0.635219, -0.751191, 0.179466,
		0.222510, 0.044519, 0.973913,
		26.488510, 34.261856, 33.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753263, 34.449730, 32.769333>,  <26.332752, 34.230694, 32.542103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753263, 34.449730, 32.769333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011599, 34.502930, 33.070053>,  <26.166599, 34.534847, 33.250484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011599, 34.502930, 33.070053>,  <25.753263, 34.449730, 32.769333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011599, 34.502930, 33.070053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622762, 0.661409, 0.417977,
		-0.441660, -0.738139, 0.509988,
		0.645836, 0.132998, 0.751803,
		26.205349, 34.542828, 33.295593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397043, 34.295422, 33.491753>,  <25.753263, 34.449730, 32.769333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397043, 34.295422, 33.491753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702137, 34.545300, 33.558681>,  <25.885193, 34.695225, 33.598839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702137, 34.545300, 33.558681>,  <25.397043, 34.295422, 33.491753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702137, 34.545300, 33.558681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590798, 0.567824, 0.573178,
		0.263048, -0.536038, 0.802165,
		0.762734, 0.624691, 0.167325,
		25.930958, 34.732708, 33.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396841, 34.418854, 34.176777>,  <25.397043, 34.295422, 33.491753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396841, 34.418854, 34.176777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583824, 34.716640, 33.986092>,  <25.696014, 34.895313, 33.871681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583824, 34.716640, 33.986092>,  <25.396841, 34.418854, 34.176777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583824, 34.716640, 33.986092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553409, 0.666963, 0.498898,
		0.689362, 0.030605, 0.723770,
		0.467459, 0.744462, -0.476716,
		25.724062, 34.939980, 33.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523214, 34.914940, 34.692085>,  <25.396841, 34.418854, 34.176777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523214, 34.914940, 34.692085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524857, 35.096466, 34.335651>,  <25.525843, 35.205383, 34.121792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524857, 35.096466, 34.335651>,  <25.523214, 34.914940, 34.692085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524857, 35.096466, 34.335651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466431, 0.789091, 0.399722,
		0.884548, 0.413990, 0.214913,
		0.004105, 0.453816, -0.891086,
		25.526089, 35.232613, 34.068325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149851, 35.104332, 34.438828>,  <25.523214, 34.914940, 34.692085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149851, 35.104332, 34.438828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367544, 35.416817, 34.316505>,  <26.498159, 35.604309, 34.243111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367544, 35.416817, 34.316505>,  <26.149851, 35.104332, 34.438828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367544, 35.416817, 34.316505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775510, 0.607511, 0.171796,
		0.319991, 0.143661, 0.936465,
		0.544233, 0.781211, -0.305809,
		26.530813, 35.651180, 34.224762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075888, 35.684296, 35.018055>,  <26.149851, 35.104332, 34.438828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075888, 35.684296, 35.018055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165781, 35.803696, 34.647026>,  <26.219717, 35.875336, 34.424408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165781, 35.803696, 34.647026>,  <26.075888, 35.684296, 35.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165781, 35.803696, 34.647026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741925, 0.669531, 0.035704,
		0.631698, 0.680168, 0.371927,
		0.224732, 0.298496, -0.927575,
		26.233200, 35.893246, 34.368752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335796, 36.488041, 34.973446>,  <26.075888, 35.684296, 35.018055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335796, 36.488041, 34.973446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124622, 36.342831, 34.666332>,  <25.997917, 36.255703, 34.482063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124622, 36.342831, 34.666332>,  <26.335796, 36.488041, 34.973446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124622, 36.342831, 34.666332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731133, 0.654251, 0.193391,
		0.432120, 0.663452, -0.610822,
		-0.527936, -0.363024, -0.767787,
		25.966242, 36.233925, 34.435997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181459, 37.060413, 34.545124>,  <26.335796, 36.488041, 34.973446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181459, 37.060413, 34.545124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899679, 36.790737, 34.456383>,  <25.730612, 36.628933, 34.403137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899679, 36.790737, 34.456383>,  <26.181459, 37.060413, 34.545124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899679, 36.790737, 34.456383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708739, 0.684896, 0.169132,
		0.037923, 0.276384, -0.960299,
		-0.704451, -0.674187, -0.221858,
		25.688343, 36.588482, 34.389824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690214, 36.971684, 33.972855>,  <26.181459, 37.060413, 34.545124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690214, 36.971684, 33.972855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767311, 36.596256, 34.087357>,  <26.813570, 36.370998, 34.156059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767311, 36.596256, 34.087357>,  <26.690214, 36.971684, 33.972855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767311, 36.596256, 34.087357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977256, 0.209900, 0.030200,
		-0.088429, 0.273923, 0.957678,
		0.192744, -0.938567, 0.286255,
		26.825134, 36.314686, 34.173233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966770, 36.788212, 34.582619>,  <26.690214, 36.971684, 33.972855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966770, 36.788212, 34.582619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123196, 36.517590, 34.333031>,  <27.217051, 36.355217, 34.183277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123196, 36.517590, 34.333031>,  <26.966770, 36.788212, 34.582619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123196, 36.517590, 34.333031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914897, 0.359547, 0.183546,
		0.100169, -0.642649, 0.759585,
		0.391062, -0.676556, -0.623973,
		27.240515, 36.314621, 34.145840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566645, 36.510033, 34.898285>,  <26.966770, 36.788212, 34.582619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566645, 36.510033, 34.898285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625134, 36.476566, 34.504002>,  <27.660227, 36.456486, 34.267433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625134, 36.476566, 34.504002>,  <27.566645, 36.510033, 34.898285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625134, 36.476566, 34.504002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829525, 0.553262, 0.076089,
		0.538988, -0.828795, 0.150304,
		0.146220, -0.083670, -0.985707,
		27.668999, 36.451466, 34.208290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282476, 36.212593, 34.734249>,  <27.566645, 36.510033, 34.898285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282476, 36.212593, 34.734249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122601, 36.487564, 34.491699>,  <28.026676, 36.652546, 34.346169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122601, 36.487564, 34.491699>,  <28.282476, 36.212593, 34.734249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122601, 36.487564, 34.491699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660522, 0.674658, 0.329464,
		0.635579, -0.268841, -0.723715,
		-0.399688, 0.687430, -0.606374,
		28.002695, 36.693794, 34.309788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779675, 36.670380, 34.241318>,  <28.282476, 36.212593, 34.734249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779675, 36.670380, 34.241318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435490, 36.869671, 34.283978>,  <28.228979, 36.989246, 34.309574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435490, 36.869671, 34.283978>,  <28.779675, 36.670380, 34.241318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435490, 36.869671, 34.283978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504526, 0.803935, 0.314867,
		0.071136, 0.324739, -0.943125,
		-0.860461, 0.498229, 0.106651,
		28.177351, 37.019138, 34.315971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797380, 37.309692, 33.953838>,  <28.779675, 36.670380, 34.241318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797380, 37.309692, 33.953838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542021, 37.337421, 34.260468>,  <28.388805, 37.354061, 34.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542021, 37.337421, 34.260468>,  <28.797380, 37.309692, 33.953838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542021, 37.337421, 34.260468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560363, 0.724627, 0.401135,
		-0.527672, 0.685646, -0.501451,
		-0.638401, 0.069327, 0.766576,
		28.350500, 37.358219, 34.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414896, 37.917355, 33.774662>,  <28.797380, 37.309692, 33.953838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414896, 37.917355, 33.774662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499750, 37.791759, 34.144833>,  <28.550663, 37.716400, 34.366936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499750, 37.791759, 34.144833>,  <28.414896, 37.917355, 33.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499750, 37.791759, 34.144833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656881, 0.746946, 0.102857,
		-0.723537, 0.586073, 0.364709,
		0.212136, -0.313991, 0.925423,
		28.563391, 37.697563, 34.422459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339958, 38.467075, 34.185524>,  <28.414896, 37.917355, 33.774662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339958, 38.467075, 34.185524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606157, 38.212395, 34.341328>,  <28.765877, 38.059586, 34.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606157, 38.212395, 34.341328>,  <28.339958, 38.467075, 34.185524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606157, 38.212395, 34.341328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646559, 0.752492, 0.125369,
		-0.372927, 0.168409, 0.912449,
		0.665498, -0.636706, 0.389511,
		28.805807, 38.021381, 34.458179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497839, 38.633110, 34.887817>,  <28.339958, 38.467075, 34.185524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497839, 38.633110, 34.887817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831570, 38.466846, 34.742970>,  <29.031807, 38.367088, 34.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831570, 38.466846, 34.742970>,  <28.497839, 38.633110, 34.887817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831570, 38.466846, 34.742970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482152, 0.868667, 0.113783,
		0.267266, -0.269528, 0.925161,
		0.834325, -0.415658, -0.362118,
		29.081867, 38.342148, 34.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010521, 38.628807, 35.362968>,  <28.497839, 38.633110, 34.887817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010521, 38.628807, 35.362968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128283, 38.675320, 34.983536>,  <29.198938, 38.703228, 34.755875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128283, 38.675320, 34.983536>,  <29.010521, 38.628807, 35.362968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128283, 38.675320, 34.983536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568403, 0.776623, 0.271614,
		0.768274, -0.619140, 0.162545,
		0.294403, 0.116282, -0.948581,
		29.216604, 38.710205, 34.698963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710793, 38.626759, 35.337212>,  <29.010521, 38.628807, 35.362968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710793, 38.626759, 35.337212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596706, 38.849247, 35.024986>,  <29.528255, 38.982738, 34.837650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596706, 38.849247, 35.024986>,  <29.710793, 38.626759, 35.337212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596706, 38.849247, 35.024986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566353, 0.754806, 0.330926,
		0.773238, -0.347688, -0.530298,
		-0.285213, 0.556220, -0.780559,
		29.511143, 39.016113, 34.790817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272068, 38.905022, 34.998882>,  <29.710793, 38.626759, 35.337212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272068, 38.905022, 34.998882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962534, 39.143295, 34.912773>,  <29.776814, 39.286259, 34.861107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962534, 39.143295, 34.912773>,  <30.272068, 38.905022, 34.998882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962534, 39.143295, 34.912773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593696, 0.800586, 0.081159,
		0.220693, -0.065005, -0.973175,
		-0.773835, 0.595681, -0.215277,
		29.730383, 39.321999, 34.848190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507277, 39.296478, 34.475594>,  <30.272068, 38.905022, 34.998882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507277, 39.296478, 34.475594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196968, 39.499245, 34.625908>,  <30.010784, 39.620907, 34.716095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196968, 39.499245, 34.625908>,  <30.507277, 39.296478, 34.475594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196968, 39.499245, 34.625908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567364, 0.820994, 0.063774,
		-0.276188, 0.262680, -0.924510,
		-0.775769, 0.506920, 0.375784,
		29.964237, 39.651321, 34.738644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924507, 39.650364, 35.056885>,  <30.507277, 39.296478, 34.475594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924507, 39.650364, 35.056885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581297, 39.502911, 35.199940>,  <30.375370, 39.414440, 35.285770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581297, 39.502911, 35.199940>,  <30.924507, 39.650364, 35.056885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581297, 39.502911, 35.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158283, 0.472640, 0.866924,
		-0.488607, 0.800451, -0.347190,
		-0.858027, -0.368631, 0.357633,
		30.323889, 39.392323, 35.307228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805292, 40.196518, 35.561893>,  <30.924507, 39.650364, 35.056885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805292, 40.196518, 35.561893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537003, 40.491936, 35.534527>,  <30.376030, 40.669186, 35.518108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537003, 40.491936, 35.534527>,  <30.805292, 40.196518, 35.561893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537003, 40.491936, 35.534527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566172, -0.569390, -0.596024,
		-0.479145, -0.361034, 0.800047,
		-0.670724, 0.738546, -0.068413,
		30.335787, 40.713501, 35.514004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104868, 39.882706, 35.734058>,  <30.805292, 40.196518, 35.561893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104868, 39.882706, 35.734058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116543, 40.196220, 35.485920>,  <30.123547, 40.384331, 35.337036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116543, 40.196220, 35.485920>,  <30.104868, 39.882706, 35.734058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116543, 40.196220, 35.485920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565026, -0.499010, -0.657065,
		-0.824556, 0.369688, 0.428296,
		0.029185, 0.783785, -0.620345,
		30.125298, 40.431355, 35.299816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390093, 40.024334, 35.675156>,  <30.104868, 39.882706, 35.734058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390093, 40.024334, 35.675156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600567, 40.122173, 35.349384>,  <29.726852, 40.180878, 35.153919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600567, 40.122173, 35.349384>,  <29.390093, 40.024334, 35.675156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600567, 40.122173, 35.349384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627556, -0.534607, -0.566011,
		-0.573848, 0.808928, -0.127801,
		0.526186, 0.244602, -0.814431,
		29.758423, 40.195553, 35.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954199, 40.254688, 35.213951>,  <29.390093, 40.024334, 35.675156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954199, 40.254688, 35.213951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266712, 40.080872, 35.034721>,  <29.454220, 39.976582, 34.927185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266712, 40.080872, 35.034721>,  <28.954199, 40.254688, 35.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266712, 40.080872, 35.034721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620958, -0.613932, -0.487339,
		-0.063317, 0.658984, -0.749487,
		0.781282, -0.434543, -0.448074,
		29.501097, 39.950508, 34.900299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645988, 40.046787, 34.592308>,  <28.954199, 40.254688, 35.213951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645988, 40.046787, 34.592308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981379, 39.835045, 34.644070>,  <29.182613, 39.708000, 34.675125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981379, 39.835045, 34.644070>,  <28.645988, 40.046787, 34.592308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981379, 39.835045, 34.644070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439253, -0.797070, -0.414411,
		0.322514, 0.290632, -0.900843,
		0.838476, -0.529351, 0.129405,
		29.232922, 39.676239, 34.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918598, 39.820347, 34.001713>,  <28.645988, 40.046787, 34.592308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918598, 39.820347, 34.001713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083639, 39.554817, 34.251225>,  <29.182663, 39.395500, 34.400932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083639, 39.554817, 34.251225>,  <28.918598, 39.820347, 34.001713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083639, 39.554817, 34.251225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401731, -0.747200, -0.529438,
		0.817540, -0.032144, -0.574974,
		0.412603, -0.663821, 0.623779,
		29.207420, 39.355671, 34.438358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130487, 39.257694, 33.559429>,  <28.918598, 39.820347, 34.001713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130487, 39.257694, 33.559429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141523, 39.119946, 33.934799>,  <29.148144, 39.037296, 34.160023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141523, 39.119946, 33.934799>,  <29.130487, 39.257694, 33.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141523, 39.119946, 33.934799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231568, -0.915451, -0.329128,
		0.972427, -0.208230, -0.105001,
		0.027589, -0.344368, 0.938429,
		29.149799, 39.016636, 34.216328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547070, 38.695347, 33.914665>,  <29.130487, 39.257694, 33.559429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547070, 38.695347, 33.914665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933214, 38.590981, 33.914780>,  <30.164902, 38.528362, 33.914848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933214, 38.590981, 33.914780>,  <29.547070, 38.695347, 33.914665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933214, 38.590981, 33.914780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068345, 0.251801, -0.965363,
		0.251801, 0.931945, 0.260912,
		0.965363, -0.260912, 0.000290,
		30.222822, 38.512707, 33.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535093, 38.036274, 33.816612>,  <29.547070, 38.695347, 33.914665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535093, 38.036274, 33.816612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847881, 38.132652, 34.046558>,  <30.035555, 38.190479, 34.184525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847881, 38.132652, 34.046558>,  <29.535093, 38.036274, 33.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847881, 38.132652, 34.046558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617119, 0.428967, 0.659660,
		-0.087657, -0.870594, 0.484131,
		0.781972, 0.240943, 0.574862,
		30.082474, 38.204937, 34.219017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684847, 37.700016, 34.405132>,  <29.535093, 38.036274, 33.816612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684847, 37.700016, 34.405132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808271, 38.072189, 34.484207>,  <29.882326, 38.295494, 34.531651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808271, 38.072189, 34.484207>,  <29.684847, 37.700016, 34.405132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808271, 38.072189, 34.484207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803956, 0.144029, 0.576984,
		0.508375, -0.336963, 0.792471,
		0.308561, 0.930436, 0.197683,
		29.900839, 38.351318, 34.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845673, 37.382217, 33.684269>,  <29.684847, 37.700016, 34.405132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845673, 37.382217, 33.684269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223257, 37.385162, 33.816261>,  <30.449808, 37.386929, 33.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223257, 37.385162, 33.816261>,  <29.845673, 37.382217, 33.684269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223257, 37.385162, 33.816261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053688, -0.983009, 0.175530,
		0.325664, -0.183409, -0.927526,
		0.943960, 0.007367, 0.329977,
		30.506445, 37.387371, 33.915253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403355, 37.619717, 33.213306>,  <29.845673, 37.382217, 33.684269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403355, 37.619717, 33.213306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561325, 37.965019, 33.087566>,  <30.656107, 38.172203, 33.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561325, 37.965019, 33.087566>,  <30.403355, 37.619717, 33.213306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561325, 37.965019, 33.087566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510401, 0.078337, 0.856361,
		0.763888, -0.498642, -0.409672,
		0.394926, 0.863261, -0.314348,
		30.679802, 38.223999, 32.993263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097919, 37.579376, 33.342133>,  <30.403355, 37.619717, 33.213306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097919, 37.579376, 33.342133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950184, 37.947273, 33.395290>,  <30.861544, 38.168011, 33.427185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950184, 37.947273, 33.395290>,  <31.097919, 37.579376, 33.342133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950184, 37.947273, 33.395290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327856, -0.004845, 0.944715,
		0.869541, 0.392488, -0.299754,
		-0.369337, 0.919744, 0.132893,
		30.839382, 38.223198, 33.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484638, 38.077980, 33.797043>,  <31.097919, 37.579376, 33.342133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484638, 38.077980, 33.797043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122097, 38.240562, 33.843208>,  <30.904572, 38.338112, 33.870907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122097, 38.240562, 33.843208>,  <31.484638, 38.077980, 33.797043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122097, 38.240562, 33.843208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108900, -0.039202, 0.993280,
		0.408248, 0.912829, -0.008732,
		-0.906352, 0.406455, 0.115411,
		30.850191, 38.362499, 33.877831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347891, 37.715431, 34.453136>,  <31.484638, 38.077980, 33.797043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347891, 37.715431, 34.453136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640993, 37.556068, 34.673805>,  <31.816854, 37.460453, 34.806206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640993, 37.556068, 34.673805>,  <31.347891, 37.715431, 34.453136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640993, 37.556068, 34.673805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150115, 0.885365, 0.439994,
		-0.663728, -0.239593, 0.708562,
		0.732755, -0.398403, 0.551675,
		31.860819, 37.436546, 34.839306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346922, 38.046200, 35.174969>,  <31.347891, 37.715431, 34.453136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346922, 38.046200, 35.174969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716955, 37.901188, 35.129723>,  <31.938974, 37.814178, 35.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716955, 37.901188, 35.129723>,  <31.346922, 38.046200, 35.174969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716955, 37.901188, 35.129723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375813, 0.831012, 0.410102,
		-0.054679, -0.421886, 0.904998,
		0.925081, -0.362534, -0.113111,
		31.994480, 37.792427, 35.095791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625303, 38.016029, 35.800720>,  <31.346922, 38.046200, 35.174969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625303, 38.016029, 35.800720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 38.047138, 35.545498>,  <32.115578, 38.065804, 35.392365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931725, 38.047138, 35.545498>,  <31.625303, 38.016029, 35.800720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931725, 38.047138, 35.545498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307130, 0.827717, 0.469635,
		0.564652, -0.555731, 0.610190,
		0.766055, 0.077772, -0.638053,
		32.161541, 38.070469, 35.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346935, 38.085220, 36.040100>,  <31.625303, 38.016029, 35.800720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346935, 38.085220, 36.040100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313667, 38.276863, 35.690575>,  <32.293709, 38.391850, 35.480862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313667, 38.276863, 35.690575>,  <32.346935, 38.085220, 36.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313667, 38.276863, 35.690575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389034, 0.822880, 0.414152,
		0.917462, -0.305498, -0.254824,
		-0.083167, 0.479103, -0.873810,
		32.288719, 38.420593, 35.428432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920731, 38.636318, 36.105160>,  <32.346935, 38.085220, 36.040100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920731, 38.636318, 36.105160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650341, 38.745453, 35.831337>,  <32.488106, 38.810936, 35.667042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650341, 38.745453, 35.831337>,  <32.920731, 38.636318, 36.105160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650341, 38.745453, 35.831337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153246, 0.960673, 0.231566,
		0.720815, 0.051627, -0.691202,
		-0.675974, 0.272840, -0.684556,
		32.447548, 38.827305, 35.625969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939293, 39.373852, 36.069729>,  <32.920731, 38.636318, 36.105160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939293, 39.373852, 36.069729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261585, 39.156605, 35.975227>,  <33.454960, 39.026257, 35.918526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261585, 39.156605, 35.975227>,  <32.939293, 39.373852, 36.069729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261585, 39.156605, 35.975227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542034, -0.515400, -0.663748,
		0.238730, 0.662860, -0.709665,
		0.805734, -0.543119, -0.236251,
		33.503304, 38.993668, 35.904350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119186, 39.371014, 35.382027>,  <32.939293, 39.373852, 36.069729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119186, 39.371014, 35.382027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226894, 39.018242, 35.536789>,  <33.291519, 38.806580, 35.629646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226894, 39.018242, 35.536789>,  <33.119186, 39.371014, 35.382027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226894, 39.018242, 35.536789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676242, -0.459185, -0.576060,
		0.685706, -0.106529, -0.720041,
		0.269265, -0.881930, 0.386905,
		33.307674, 38.753662, 35.652859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655403, 39.003262, 35.077858>,  <33.119186, 39.371014, 35.382027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655403, 39.003262, 35.077858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879730, 38.727840, 35.261761>,  <33.014328, 38.562588, 35.372105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879730, 38.727840, 35.261761>,  <32.655403, 39.003262, 35.077858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879730, 38.727840, 35.261761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640404, -0.712717, -0.286211,
		0.524749, -0.133919, -0.840657,
		0.560821, -0.688549, 0.459760,
		33.047977, 38.521275, 35.399689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939716, 38.551754, 34.577030>,  <32.655403, 39.003262, 35.077858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939716, 38.551754, 34.577030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866455, 38.390511, 34.935684>,  <32.822498, 38.293762, 35.150875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866455, 38.390511, 34.935684>,  <32.939716, 38.551754, 34.577030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866455, 38.390511, 34.935684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478174, -0.760373, -0.439526,
		0.858956, -0.509248, -0.053493,
		-0.183153, -0.403113, 0.896635,
		32.811508, 38.269577, 35.204674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071556, 37.818909, 34.445423>,  <32.939716, 38.551754, 34.577030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071556, 37.818909, 34.445423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837360, 37.896286, 34.760330>,  <32.696842, 37.942715, 34.949272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837360, 37.896286, 34.760330>,  <33.071556, 37.818909, 34.445423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837360, 37.896286, 34.760330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542972, -0.814690, -0.203623,
		0.601986, -0.546681, 0.582025,
		-0.585487, 0.193445, 0.787264,
		32.661713, 37.954319, 34.996510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208858, 37.261406, 34.883186>,  <33.071556, 37.818909, 34.445423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208858, 37.261406, 34.883186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849087, 37.422703, 34.950615>,  <32.633224, 37.519482, 34.991074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849087, 37.422703, 34.950615>,  <33.208858, 37.261406, 34.883186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849087, 37.422703, 34.950615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437060, -0.828451, -0.350211,
		-0.001565, -0.388668, 0.921377,
		-0.899431, 0.403245, 0.168575,
		32.579258, 37.543678, 35.001186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834488, 36.791618, 35.315689>,  <33.208858, 37.261406, 34.883186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834488, 36.791618, 35.315689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544514, 37.014935, 35.154301>,  <32.370529, 37.148926, 35.057468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544514, 37.014935, 35.154301>,  <32.834488, 36.791618, 35.315689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544514, 37.014935, 35.154301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457723, -0.828146, -0.323517,
		-0.514747, -0.049851, 0.855892,
		-0.724931, 0.558291, -0.403467,
		32.327034, 37.182423, 35.033260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128830, 36.578899, 35.560253>,  <32.834488, 36.791618, 35.315689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128830, 36.578899, 35.560253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097858, 36.748875, 35.199490>,  <32.079277, 36.850861, 34.983032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097858, 36.748875, 35.199490>,  <32.128830, 36.578899, 35.560253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097858, 36.748875, 35.199490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320529, -0.867207, -0.381069,
		-0.944069, 0.259583, 0.203348,
		-0.077426, 0.424935, -0.901907,
		32.074631, 36.876354, 34.928917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601105, 36.217884, 35.334522>,  <32.128830, 36.578899, 35.560253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601105, 36.217884, 35.334522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813038, 36.340645, 35.018272>,  <31.940197, 36.414303, 34.828522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813038, 36.340645, 35.018272>,  <31.601105, 36.217884, 35.334522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813038, 36.340645, 35.018272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315651, -0.793897, -0.519704,
		-0.787174, 0.524917, -0.323758,
		0.529832, 0.306903, -0.790626,
		31.971987, 36.432716, 34.781086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240255, 35.926376, 34.770267>,  <31.601105, 36.217884, 35.334522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240255, 35.926376, 34.770267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595188, 36.012463, 34.607136>,  <31.808147, 36.064114, 34.509258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595188, 36.012463, 34.607136>,  <31.240255, 35.926376, 34.770267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595188, 36.012463, 34.607136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064659, -0.817603, -0.572140,
		-0.456576, 0.534048, -0.711569,
		0.887332, 0.215216, -0.407829,
		31.861387, 36.077026, 34.484787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124512, 35.929100, 33.965561>,  <31.240255, 35.926376, 34.770267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124512, 35.929100, 33.965561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506565, 35.871742, 34.069221>,  <31.735798, 35.837326, 34.131416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506565, 35.871742, 34.069221>,  <31.124512, 35.929100, 33.965561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506565, 35.871742, 34.069221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060040, -0.763071, -0.643520,
		0.290027, 0.630207, -0.720224,
		0.955133, -0.143396, 0.259149,
		31.793104, 35.828724, 34.146965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456654, 36.004196, 33.380703>,  <31.124512, 35.929100, 33.965561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456654, 36.004196, 33.380703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724073, 35.820080, 33.614342>,  <31.884525, 35.709610, 33.754524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724073, 35.820080, 33.614342>,  <31.456654, 36.004196, 33.380703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724073, 35.820080, 33.614342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181855, -0.660393, -0.728567,
		0.721089, 0.593305, -0.357799,
		0.668550, -0.460294, 0.584098,
		31.924639, 35.681992, 33.789570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011391, 36.000397, 32.997849>,  <31.456654, 36.004196, 33.380703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011391, 36.000397, 32.997849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089314, 35.712372, 33.264248>,  <32.136066, 35.539555, 33.424088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089314, 35.712372, 33.264248>,  <32.011391, 36.000397, 32.997849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089314, 35.712372, 33.264248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206322, -0.633731, -0.745531,
		0.958895, 0.282647, 0.025108,
		0.194811, -0.720066, 0.665998,
		32.147758, 35.496353, 33.464046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694588, 35.729126, 32.856567>,  <32.011391, 36.000397, 32.997849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694588, 35.729126, 32.856567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496937, 35.445419, 33.057674>,  <32.378345, 35.275196, 33.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496937, 35.445419, 33.057674>,  <32.694588, 35.729126, 32.856567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496937, 35.445419, 33.057674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297529, -0.681345, -0.668764,
		0.816891, -0.180868, 0.547700,
		-0.494131, -0.709264, 0.502771,
		32.348698, 35.232639, 33.208508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117775, 35.157768, 32.763947>,  <32.694588, 35.729126, 32.856567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117775, 35.157768, 32.763947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802002, 34.965199, 32.916279>,  <32.612537, 34.849659, 33.007679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802002, 34.965199, 32.916279>,  <33.117775, 35.157768, 32.763947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802002, 34.965199, 32.916279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033371, -0.585830, -0.809746,
		0.612929, -0.651949, 0.446408,
		-0.789433, -0.481420, 0.380829,
		32.565170, 34.820774, 33.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300644, 34.429413, 32.702389>,  <33.117775, 35.157768, 32.763947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300644, 34.429413, 32.702389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901703, 34.456730, 32.712372>,  <32.662338, 34.473118, 32.718361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901703, 34.456730, 32.712372>,  <33.300644, 34.429413, 32.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901703, 34.456730, 32.712372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061350, -0.606231, -0.792919,
		-0.039018, -0.792351, 0.608816,
		-0.997353, 0.068289, 0.024957,
		32.602497, 34.477215, 32.719860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068783, 33.768188, 32.507908>,  <33.300644, 34.429413, 32.702389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068783, 33.768188, 32.507908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751999, 34.001610, 32.436062>,  <32.561928, 34.141663, 32.392956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751999, 34.001610, 32.436062>,  <33.068783, 33.768188, 32.507908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751999, 34.001610, 32.436062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043657, -0.347543, -0.936647,
		-0.609011, -0.733945, 0.300717,
		-0.791959, 0.583557, -0.179616,
		32.514412, 34.176678, 32.382175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685848, 33.427151, 32.107544>,  <33.068783, 33.768188, 32.507908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685848, 33.427151, 32.107544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527802, 33.789902, 32.048958>,  <32.432976, 34.007553, 32.013805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527802, 33.789902, 32.048958>,  <32.685848, 33.427151, 32.107544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527802, 33.789902, 32.048958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176101, -0.231251, -0.956824,
		-0.901596, -0.352261, 0.251072,
		-0.395112, 0.906883, -0.146462,
		32.409267, 34.061966, 32.005020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159149, 33.302620, 31.716949>,  <32.685848, 33.427151, 32.107544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159149, 33.302620, 31.716949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197815, 33.697586, 31.666880>,  <32.221012, 33.934566, 31.636837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197815, 33.697586, 31.666880>,  <32.159149, 33.302620, 31.716949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197815, 33.697586, 31.666880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053062, -0.120473, -0.991298,
		-0.993902, 0.102461, 0.040749,
		0.096661, 0.987415, -0.125175,
		32.226814, 33.993809, 31.629328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615299, 33.506039, 31.256733>,  <32.159149, 33.302620, 31.716949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615299, 33.506039, 31.256733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912079, 33.773026, 31.231451>,  <32.090145, 33.933220, 31.216282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912079, 33.773026, 31.231451>,  <31.615299, 33.506039, 31.256733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912079, 33.773026, 31.231451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177583, 0.104741, -0.978516,
		-0.646511, 0.737232, 0.196245,
		0.741948, 0.667471, -0.063204,
		32.134663, 33.973267, 31.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391954, 33.949459, 30.685555>,  <31.615299, 33.506039, 31.256733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391954, 33.949459, 30.685555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766315, 34.065788, 30.765062>,  <31.990932, 34.135586, 30.812767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766315, 34.065788, 30.765062>,  <31.391954, 33.949459, 30.685555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766315, 34.065788, 30.765062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160696, 0.149647, -0.975593,
		-0.313465, 0.945003, 0.093322,
		0.935904, 0.290818, 0.198767,
		32.047085, 34.153034, 30.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505457, 34.686035, 30.396301>,  <31.391954, 33.949459, 30.685555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505457, 34.686035, 30.396301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861359, 34.503803, 30.407551>,  <32.074898, 34.394466, 30.414301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861359, 34.503803, 30.407551>,  <31.505457, 34.686035, 30.396301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861359, 34.503803, 30.407551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130821, 0.195498, -0.971939,
		0.437295, 0.868464, 0.233544,
		0.889752, -0.455576, 0.028124,
		32.128284, 34.367130, 30.415987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916937, 35.028767, 30.022827>,  <31.505457, 34.686035, 30.396301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916937, 35.028767, 30.022827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123760, 34.686470, 30.030462>,  <32.247856, 34.481094, 30.035044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123760, 34.686470, 30.030462>,  <31.916937, 35.028767, 30.022827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123760, 34.686470, 30.030462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157105, 0.072959, -0.984883,
		0.841408, 0.512242, 0.172165,
		0.517059, -0.855737, 0.019088,
		32.278877, 34.429749, 30.036188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474384, 35.125256, 29.619938>,  <31.916937, 35.028767, 30.022827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474384, 35.125256, 29.619938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445023, 34.726337, 29.618938>,  <32.427406, 34.486984, 29.618338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445023, 34.726337, 29.618938>,  <32.474384, 35.125256, 29.619938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445023, 34.726337, 29.618938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014226, 0.003555, -0.999892,
		0.997201, -0.073359, -0.014449,
		-0.073403, -0.997299, -0.002501,
		32.423000, 34.427147, 29.618189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928955, 34.877007, 29.054899>,  <32.474384, 35.125256, 29.619938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928955, 34.877007, 29.054899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691837, 34.558743, 29.104731>,  <32.549568, 34.367783, 29.134630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691837, 34.558743, 29.104731>,  <32.928955, 34.877007, 29.054899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691837, 34.558743, 29.104731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057124, -0.195840, -0.978970,
		0.803329, -0.573207, 0.161544,
		-0.592790, -0.795663, 0.124580,
		32.514000, 34.320045, 29.142105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296658, 34.281258, 28.723719>,  <32.928955, 34.877007, 29.054899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296658, 34.281258, 28.723719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902424, 34.217548, 28.746515>,  <32.665882, 34.179321, 28.760193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902424, 34.217548, 28.746515>,  <33.296658, 34.281258, 28.723719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902424, 34.217548, 28.746515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047968, -0.059955, -0.997048,
		0.162224, -0.985412, 0.051451,
		-0.985587, -0.159277, 0.056994,
		32.606747, 34.169765, 28.763613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051144, 33.807919, 28.244255>,  <33.296658, 34.281258, 28.723719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051144, 33.807919, 28.244255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701916, 33.979328, 28.337297>,  <32.492378, 34.082176, 28.393124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701916, 33.979328, 28.337297>,  <33.051144, 33.807919, 28.244255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701916, 33.979328, 28.337297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311044, -0.122115, -0.942518,
		-0.375491, -0.895238, 0.239906,
		-0.873074, 0.428528, 0.232605,
		32.439995, 34.107887, 28.407080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567043, 33.408489, 27.911991>,  <33.051144, 33.807919, 28.244255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567043, 33.408489, 27.911991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396572, 33.764713, 27.975573>,  <32.294289, 33.978447, 28.013721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396572, 33.764713, 27.975573>,  <32.567043, 33.408489, 27.911991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396572, 33.764713, 27.975573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467638, -0.066468, -0.881418,
		-0.774394, -0.449975, 0.444789,
		-0.426180, 0.890564, 0.158953,
		32.268719, 34.031883, 28.023258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823299, 33.322510, 27.717323>,  <32.567043, 33.408489, 27.911991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823299, 33.322510, 27.717323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938757, 33.704376, 27.688200>,  <32.008030, 33.933495, 27.670727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938757, 33.704376, 27.688200>,  <31.823299, 33.322510, 27.717323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938757, 33.704376, 27.688200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405105, 0.052874, -0.912740,
		-0.867511, 0.292952, 0.402001,
		0.288645, 0.954664, -0.072807,
		32.025349, 33.990776, 27.666357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243828, 33.619995, 27.492414>,  <31.823299, 33.322510, 27.717323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243828, 33.619995, 27.492414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478254, 33.937626, 27.427961>,  <31.618910, 34.128204, 27.389290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478254, 33.937626, 27.427961>,  <31.243828, 33.619995, 27.492414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478254, 33.937626, 27.427961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387550, 0.100074, -0.916401,
		-0.711568, 0.599521, 0.366395,
		0.586068, 0.794078, -0.161135,
		31.654076, 34.175850, 27.379622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862886, 34.035633, 26.928656>,  <31.243828, 33.619995, 27.492414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862886, 34.035633, 26.928656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230284, 34.193165, 26.914379>,  <31.450722, 34.287682, 26.905813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230284, 34.193165, 26.914379>,  <30.862886, 34.035633, 26.928656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230284, 34.193165, 26.914379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132724, 0.222001, -0.965971,
		-0.372502, 0.891973, 0.256176,
		0.918492, 0.393827, -0.035690,
		31.505831, 34.311314, 26.903671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783346, 34.550240, 26.389019>,  <30.862886, 34.035633, 26.928656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783346, 34.550240, 26.389019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179228, 34.510296, 26.430035>,  <31.416758, 34.486328, 26.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179228, 34.510296, 26.430035>,  <30.783346, 34.550240, 26.389019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179228, 34.510296, 26.430035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090984, -0.114079, -0.989297,
		0.110489, 0.988440, -0.103818,
		0.989704, -0.099860, 0.102537,
		31.476139, 34.480339, 26.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126539, 35.055504, 25.939453>,  <30.783346, 34.550240, 26.389019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126539, 35.055504, 25.939453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400877, 34.772312, 26.006849>,  <31.565479, 34.602398, 26.047287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400877, 34.772312, 26.006849>,  <31.126539, 35.055504, 25.939453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400877, 34.772312, 26.006849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201445, -0.037787, -0.978771,
		0.699313, 0.705224, 0.116703,
		0.685843, -0.707977, 0.168489,
		31.606630, 34.559917, 26.057396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639046, 35.221306, 25.503025>,  <31.126539, 35.055504, 25.939453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639046, 35.221306, 25.503025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750610, 34.848953, 25.597406>,  <31.817549, 34.625542, 25.654036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750610, 34.848953, 25.597406>,  <31.639046, 35.221306, 25.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750610, 34.848953, 25.597406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337453, -0.135032, -0.931607,
		0.899074, 0.339458, 0.276466,
		0.278910, -0.930878, 0.235955,
		31.834284, 34.569691, 25.668192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303623, 35.173103, 25.232775>,  <31.639046, 35.221306, 25.503025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303623, 35.173103, 25.232775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157398, 34.802818, 25.271587>,  <32.069664, 34.580647, 25.294874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157398, 34.802818, 25.271587>,  <32.303623, 35.173103, 25.232775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157398, 34.802818, 25.271587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351760, -0.233915, -0.906393,
		0.861760, -0.297210, 0.411140,
		-0.365562, -0.925716, 0.097032,
		32.047729, 34.525105, 25.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847855, 34.609020, 24.907776>,  <32.303623, 35.173103, 25.232775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847855, 34.609020, 24.907776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495987, 34.419792, 24.927286>,  <32.284866, 34.306255, 24.938993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495987, 34.419792, 24.927286>,  <32.847855, 34.609020, 24.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495987, 34.419792, 24.927286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208842, -0.476398, -0.854067,
		0.427273, -0.741112, 0.517871,
		-0.879672, -0.473073, 0.048777,
		32.232086, 34.277870, 24.941919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965717, 33.804935, 24.887787>,  <32.847855, 34.609020, 24.907776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965717, 33.804935, 24.887787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595692, 33.884541, 24.758389>,  <32.373676, 33.932304, 24.680750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595692, 33.884541, 24.758389>,  <32.965717, 33.804935, 24.887787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595692, 33.884541, 24.758389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197753, -0.474797, -0.857590,
		-0.324264, -0.857299, 0.399864,
		-0.925066, 0.199011, -0.323493,
		32.318172, 33.944244, 24.661341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768242, 33.163513, 24.657343>,  <32.965717, 33.804935, 24.887787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768242, 33.163513, 24.657343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502911, 33.416779, 24.497795>,  <32.343712, 33.568737, 24.402067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502911, 33.416779, 24.497795>,  <32.768242, 33.163513, 24.657343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502911, 33.416779, 24.497795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054712, -0.572618, -0.817994,
		-0.746327, -0.520775, 0.414475,
		-0.663327, 0.633168, -0.398868,
		32.303913, 33.606728, 24.378136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284286, 32.748028, 24.319838>,  <32.768242, 33.163513, 24.657343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284286, 32.748028, 24.319838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249935, 33.109352, 24.151718>,  <32.229324, 33.326149, 24.050846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249935, 33.109352, 24.151718>,  <32.284286, 32.748028, 24.319838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249935, 33.109352, 24.151718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052597, -0.417157, -0.907311,
		-0.994916, -0.100026, -0.011686,
		-0.085880, 0.903313, -0.420297,
		32.224171, 33.380344, 24.025629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636240, 32.731159, 23.994705>,  <32.284286, 32.748028, 24.319838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636240, 32.731159, 23.994705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855978, 33.013065, 23.815142>,  <31.987822, 33.182209, 23.707403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855978, 33.013065, 23.815142>,  <31.636240, 32.731159, 23.994705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855978, 33.013065, 23.815142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097699, -0.479375, -0.872155,
		-0.829864, 0.522973, -0.194488,
		0.549346, 0.704768, -0.448910,
		32.020782, 33.224495, 23.680470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305614, 32.887569, 23.421610>,  <31.636240, 32.731159, 23.994705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305614, 32.887569, 23.421610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669052, 33.031994, 23.337624>,  <31.887115, 33.118649, 23.287231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669052, 33.031994, 23.337624>,  <31.305614, 32.887569, 23.421610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669052, 33.031994, 23.337624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140455, -0.209291, -0.967714,
		-0.393351, 0.908752, -0.139448,
		0.908596, 0.361065, -0.209964,
		31.941631, 33.140312, 23.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192696, 33.189632, 22.817194>,  <31.305614, 32.887569, 23.421610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192696, 33.189632, 22.817194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590216, 33.151268, 22.794685>,  <31.828728, 33.128250, 22.781179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590216, 33.151268, 22.794685>,  <31.192696, 33.189632, 22.817194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590216, 33.151268, 22.794685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072205, -0.171727, -0.982495,
		0.084564, 0.980465, -0.177587,
		0.993798, -0.095907, -0.056272,
		31.888355, 33.122498, 22.777803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520739, 33.574112, 22.291004>,  <31.192696, 33.189632, 22.817194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520739, 33.574112, 22.291004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791517, 33.284634, 22.344683>,  <31.953985, 33.110947, 22.376890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791517, 33.284634, 22.344683>,  <31.520739, 33.574112, 22.291004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791517, 33.284634, 22.344683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027973, -0.156899, -0.987218,
		0.735501, 0.672047, -0.085969,
		0.676946, -0.723695, 0.134199,
		31.994600, 33.067524, 22.384943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016930, 33.783772, 21.875000>,  <31.520739, 33.574112, 22.291004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016930, 33.783772, 21.875000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094193, 33.399933, 21.956850>,  <32.140549, 33.169632, 22.005960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094193, 33.399933, 21.956850>,  <32.016930, 33.783772, 21.875000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094193, 33.399933, 21.956850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187124, -0.168697, -0.967743,
		0.963159, 0.225213, 0.146978,
		0.193154, -0.959594, 0.204625,
		32.152138, 33.112053, 22.018238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588562, 33.581203, 21.418030>,  <32.016930, 33.783772, 21.875000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588562, 33.581203, 21.418030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400745, 33.240181, 21.509842>,  <32.288055, 33.035568, 21.564928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400745, 33.240181, 21.509842>,  <32.588562, 33.581203, 21.418030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400745, 33.240181, 21.509842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196940, -0.354553, -0.914061,
		0.860665, -0.383987, 0.334379,
		-0.469543, -0.852553, 0.229529,
		32.259884, 32.984417, 21.578701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088249, 33.096844, 21.270878>,  <32.588562, 33.581203, 21.418030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088249, 33.096844, 21.270878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732685, 32.914627, 21.251596>,  <32.519348, 32.805298, 21.240028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732685, 32.914627, 21.251596>,  <33.088249, 33.096844, 21.270878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732685, 32.914627, 21.251596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221666, -0.335671, -0.915527,
		0.400876, -0.824507, 0.399359,
		-0.888911, -0.455537, -0.048203,
		32.466011, 32.777966, 21.237135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326195, 32.604416, 20.763218>,  <33.088249, 33.096844, 21.270878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326195, 32.604416, 20.763218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927574, 32.588757, 20.792503>,  <32.688404, 32.579361, 20.810074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927574, 32.588757, 20.792503>,  <33.326195, 32.604416, 20.763218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927574, 32.588757, 20.792503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050209, -0.418096, -0.907014,
		0.066119, -0.907559, 0.414687,
		-0.996548, -0.039150, 0.073212,
		32.628609, 32.577011, 20.814466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134098, 31.877813, 20.631279>,  <33.326195, 32.604416, 20.763218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134098, 31.877813, 20.631279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814426, 32.108517, 20.563553>,  <32.622623, 32.246937, 20.522917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814426, 32.108517, 20.563553>,  <33.134098, 31.877813, 20.631279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814426, 32.108517, 20.563553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039228, -0.331123, -0.942772,
		-0.599816, -0.746798, 0.287251,
		-0.799176, 0.576758, -0.169317,
		32.574673, 32.281544, 20.512758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648228, 31.428019, 20.287704>,  <33.134098, 31.877813, 20.631279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648228, 31.428019, 20.287704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530773, 31.798330, 20.192450>,  <32.460300, 32.020519, 20.135298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530773, 31.798330, 20.192450>,  <32.648228, 31.428019, 20.287704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530773, 31.798330, 20.192450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129345, -0.208347, -0.969464,
		-0.947127, -0.315470, -0.058567,
		-0.293634, 0.925781, -0.238135,
		32.442684, 32.076065, 20.121010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965729, 31.422338, 19.972570>,  <32.648228, 31.428019, 20.287704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965729, 31.422338, 19.972570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171436, 31.740459, 19.844185>,  <32.294861, 31.931332, 19.767153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171436, 31.740459, 19.844185>,  <31.965729, 31.422338, 19.972570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171436, 31.740459, 19.844185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106509, -0.312122, -0.944053,
		-0.850989, 0.519684, -0.075808,
		0.514270, 0.795304, -0.320963,
		32.325718, 31.979052, 19.747896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454670, 31.712606, 19.576462>,  <31.965729, 31.422338, 19.972570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454670, 31.712606, 19.576462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799028, 31.881369, 19.462723>,  <32.005642, 31.982626, 19.394480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799028, 31.881369, 19.462723>,  <31.454670, 31.712606, 19.576462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799028, 31.881369, 19.462723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308062, -0.012531, -0.951284,
		-0.404916, 0.906553, 0.119185,
		0.860895, 0.421906, -0.284349,
		32.057297, 32.007942, 19.377419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421211, 32.338753, 19.128618>,  <31.454670, 31.712606, 19.576462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421211, 32.338753, 19.128618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756725, 32.135666, 19.049967>,  <31.958033, 32.013813, 19.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756725, 32.135666, 19.049967>,  <31.421211, 32.338753, 19.128618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756725, 32.135666, 19.049967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216441, 0.020437, -0.976082,
		0.499596, 0.861279, -0.092749,
		0.838783, -0.507721, -0.196626,
		32.008362, 31.983349, 18.990978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740402, 32.743217, 18.537512>,  <31.421211, 32.338753, 19.128618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740402, 32.743217, 18.537512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787966, 32.347031, 18.565351>,  <31.816504, 32.109318, 18.582054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787966, 32.347031, 18.565351>,  <31.740402, 32.743217, 18.537512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787966, 32.347031, 18.565351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291220, -0.101802, -0.951224,
		0.949237, 0.092840, -0.300548,
		0.118908, -0.990463, 0.069598,
		31.823639, 32.049892, 18.586231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117729, 32.586716, 17.862368>,  <31.740402, 32.743217, 18.537512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117729, 32.586716, 17.862368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928946, 32.270973, 18.019428>,  <31.815676, 32.081528, 18.113665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928946, 32.270973, 18.019428>,  <32.117729, 32.586716, 17.862368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928946, 32.270973, 18.019428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510409, -0.118502, -0.851727,
		0.718845, -0.602391, -0.346967,
		-0.471957, -0.789355, 0.392651,
		31.787357, 32.034168, 18.137224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448975, 32.926971, 18.392447>,  <32.117729, 32.586716, 17.862368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448975, 32.926971, 18.392447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667305, 32.678066, 18.167994>,  <32.798302, 32.528725, 18.033321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667305, 32.678066, 18.167994>,  <32.448975, 32.926971, 18.392447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667305, 32.678066, 18.167994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633576, 0.131737, -0.762382,
		0.548321, 0.771647, -0.322343,
		0.545825, -0.622259, -0.561131,
		32.831051, 32.491390, 17.999655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138744, 32.938423, 18.368530>,  <32.448975, 32.926971, 18.392447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138744, 32.938423, 18.368530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374466, 33.209568, 18.192701>,  <33.515900, 33.372253, 18.087204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374466, 33.209568, 18.192701>,  <33.138744, 32.938423, 18.368530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374466, 33.209568, 18.192701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503761, -0.117062, -0.855874,
		-0.631623, 0.725808, 0.272496,
		0.589302, 0.677863, -0.439573,
		33.551258, 33.412926, 18.060829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735092, 33.457249, 17.882505>,  <33.138744, 32.938423, 18.368530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735092, 33.457249, 17.882505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112591, 33.343426, 17.815138>,  <33.339092, 33.275131, 17.774717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112591, 33.343426, 17.815138>,  <32.735092, 33.457249, 17.882505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112591, 33.343426, 17.815138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244179, -0.256283, -0.935252,
		0.222971, 0.923767, -0.311350,
		0.943748, -0.284559, -0.168420,
		33.395714, 33.258057, 17.764612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096279, 33.698299, 17.247763>,  <32.735092, 33.457249, 17.882505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096279, 33.698299, 17.247763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226940, 33.339336, 17.366396>,  <33.305336, 33.123959, 17.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226940, 33.339336, 17.366396>,  <33.096279, 33.698299, 17.247763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226940, 33.339336, 17.366396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314761, -0.399176, -0.861153,
		0.891191, 0.187949, -0.412861,
		0.326657, -0.897404, 0.296583,
		33.324936, 33.070114, 17.455370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549694, 33.354004, 16.742762>,  <33.096279, 33.698299, 17.247763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549694, 33.354004, 16.742762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390953, 33.048908, 16.947012>,  <33.295708, 32.865852, 17.069561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390953, 33.048908, 16.947012>,  <33.549694, 33.354004, 16.742762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390953, 33.048908, 16.947012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283143, -0.427450, -0.858555,
		0.873119, -0.485301, -0.046329,
		-0.396854, -0.762738, 0.510624,
		33.271896, 32.820087, 17.100199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215046, 33.411808, 17.069511>,  <33.549694, 33.354004, 16.742762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215046, 33.411808, 17.069511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905182, 33.579967, 17.258471>,  <33.719261, 33.680862, 17.371845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905182, 33.579967, 17.258471>,  <34.215046, 33.411808, 17.069511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905182, 33.579967, 17.258471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549626, 0.078166, 0.831746,
		0.312743, 0.903964, -0.291617,
		-0.774663, 0.420403, 0.472397,
		33.672783, 33.706089, 17.400190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416962, 34.094379, 17.361395>,  <34.215046, 33.411808, 17.069511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416962, 34.094379, 17.361395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144150, 33.895226, 17.575665>,  <33.980461, 33.775734, 17.704226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144150, 33.895226, 17.575665>,  <34.416962, 34.094379, 17.361395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144150, 33.895226, 17.575665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528849, 0.170147, 0.831486,
		-0.505124, 0.850391, 0.147257,
		-0.682033, -0.497880, 0.535674,
		33.939541, 33.745861, 17.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121975, 34.579422, 17.872221>,  <34.416962, 34.094379, 17.361395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121975, 34.579422, 17.872221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077801, 34.219418, 18.040874>,  <34.051296, 34.003414, 18.142067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077801, 34.219418, 18.040874>,  <34.121975, 34.579422, 17.872221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077801, 34.219418, 18.040874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510514, 0.312621, 0.801026,
		-0.852748, 0.303710, 0.424948,
		-0.110432, -0.900016, 0.421636,
		34.044670, 33.949413, 18.167366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952614, 34.682243, 18.708166>,  <34.121975, 34.579422, 17.872221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952614, 34.682243, 18.708166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056938, 34.296936, 18.682577>,  <34.119534, 34.065750, 18.667223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056938, 34.296936, 18.682577>,  <33.952614, 34.682243, 18.708166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056938, 34.296936, 18.682577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539948, 0.090620, 0.836806,
		-0.800272, -0.252788, 0.543750,
		0.260809, -0.963269, -0.063972,
		34.135181, 34.007954, 18.663385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845562, 34.359192, 19.361931>,  <33.952614, 34.682243, 18.708166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845562, 34.359192, 19.361931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109219, 34.095676, 19.216862>,  <34.267410, 33.937569, 19.129820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109219, 34.095676, 19.216862>,  <33.845562, 34.359192, 19.361931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109219, 34.095676, 19.216862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547619, 0.089949, 0.831879,
		-0.515412, -0.746930, 0.420055,
		0.659139, -0.658790, -0.362672,
		34.306961, 33.898041, 19.108061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881332, 33.680477, 19.711664>,  <33.845562, 34.359192, 19.361931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881332, 33.680477, 19.711664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 33.713875, 19.533396>,  <34.451759, 33.733913, 19.426435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 33.713875, 19.533396>,  <33.881332, 33.680477, 19.711664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237850, 33.713875, 19.533396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441609, 0.063065, 0.894989,
		0.102834, -0.994510, 0.019337,
		0.891295, 0.083496, -0.445670,
		34.505238, 33.738922, 19.399694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262215, 33.365593, 20.126930>,  <33.881332, 33.680477, 19.711664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262215, 33.365593, 20.126930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527817, 33.578724, 19.917095>,  <34.687180, 33.706604, 19.791193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527817, 33.578724, 19.917095>,  <34.262215, 33.365593, 20.126930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527817, 33.578724, 19.917095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500919, 0.203891, 0.841136,
		0.555138, -0.821294, -0.131518,
		0.664005, 0.532827, -0.524589,
		34.727016, 33.738571, 19.759718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832973, 33.170307, 20.427505>,  <34.262215, 33.365593, 20.126930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832973, 33.170307, 20.427505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913113, 33.519329, 20.249290>,  <34.961197, 33.728745, 20.142361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913113, 33.519329, 20.249290>,  <34.832973, 33.170307, 20.427505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913113, 33.519329, 20.249290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463533, 0.316219, 0.827733,
		0.863132, -0.372357, -0.341105,
		0.200348, 0.872557, -0.445539,
		34.973217, 33.781097, 20.115629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535542, 33.211273, 20.626476>,  <34.832973, 33.170307, 20.427505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535542, 33.211273, 20.626476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400982, 33.579208, 20.545742>,  <35.320248, 33.799969, 20.497301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400982, 33.579208, 20.545742>,  <35.535542, 33.211273, 20.626476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400982, 33.579208, 20.545742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458277, 0.347135, 0.818217,
		0.822690, 0.182748, -0.538315,
		-0.336396, 0.919837, -0.201836,
		35.300064, 33.855160, 20.485191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969105, 33.593342, 21.015387>,  <35.535542, 33.211273, 20.626476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969105, 33.593342, 21.015387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702663, 33.871216, 20.906784>,  <35.542797, 34.037941, 20.841623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702663, 33.871216, 20.906784>,  <35.969105, 33.593342, 21.015387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702663, 33.871216, 20.906784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307767, 0.587583, 0.748349,
		0.679400, 0.414919, -0.605193,
		-0.666105, 0.694686, -0.271506,
		35.502831, 34.079620, 20.825333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290916, 34.295547, 21.185946>,  <35.969105, 33.593342, 21.015387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290916, 34.295547, 21.185946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895924, 34.358612, 21.187830>,  <35.658928, 34.396450, 21.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895924, 34.358612, 21.187830>,  <36.290916, 34.295547, 21.185946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895924, 34.358612, 21.187830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103971, 0.628157, 0.771108,
		0.118618, 0.761945, -0.636686,
		-0.987482, 0.157664, 0.004709,
		35.599678, 34.405910, 21.189243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104546, 35.050823, 21.253687>,  <36.290916, 34.295547, 21.185946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104546, 35.050823, 21.253687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779217, 34.867786, 21.397413>,  <35.584019, 34.757965, 21.483650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779217, 34.867786, 21.397413>,  <36.104546, 35.050823, 21.253687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779217, 34.867786, 21.397413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044087, 0.567337, 0.822305,
		-0.580136, 0.684642, -0.441256,
		-0.813325, -0.457595, 0.359317,
		35.535217, 34.730507, 21.505209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699734, 35.571350, 21.576284>,  <36.104546, 35.050823, 21.253687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699734, 35.571350, 21.576284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544209, 35.228855, 21.712328>,  <35.450893, 35.023357, 21.793955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544209, 35.228855, 21.712328>,  <35.699734, 35.571350, 21.576284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544209, 35.228855, 21.712328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078332, 0.398542, 0.913799,
		-0.917979, 0.328659, -0.222031,
		-0.388817, -0.856240, 0.340109,
		35.427563, 34.971985, 21.814360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121578, 35.794750, 21.963734>,  <35.699734, 35.571350, 21.576284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121578, 35.794750, 21.963734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226246, 35.432384, 22.096912>,  <35.289047, 35.214966, 22.176821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226246, 35.432384, 22.096912>,  <35.121578, 35.794750, 21.963734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226246, 35.432384, 22.096912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251908, 0.268905, 0.929641,
		-0.931702, -0.327134, -0.157840,
		0.261673, -0.905910, 0.332948,
		35.304749, 35.160610, 22.196796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589428, 35.579769, 22.496761>,  <35.121578, 35.794750, 21.963734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589428, 35.579769, 22.496761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921120, 35.365910, 22.561918>,  <35.120132, 35.237595, 22.601011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921120, 35.365910, 22.561918>,  <34.589428, 35.579769, 22.496761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921120, 35.365910, 22.561918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081402, 0.172806, 0.981587,
		-0.552955, -0.827216, 0.099773,
		0.829226, -0.534651, 0.162891,
		35.169888, 35.205513, 22.610785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436321, 35.109119, 23.013741>,  <34.589428, 35.579769, 22.496761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436321, 35.109119, 23.013741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834736, 35.136536, 23.036411>,  <35.073784, 35.152985, 23.050013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834736, 35.136536, 23.036411>,  <34.436321, 35.109119, 23.013741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834736, 35.136536, 23.036411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077470, 0.355660, 0.931399,
		0.043677, -0.932099, 0.359560,
		0.996038, 0.068536, 0.056676,
		35.133549, 35.157097, 23.053413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707100, 34.643776, 23.555786>,  <34.436321, 35.109119, 23.013741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707100, 34.643776, 23.555786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002575, 34.910252, 23.514748>,  <35.179859, 35.070137, 23.490126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002575, 34.910252, 23.514748>,  <34.707100, 34.643776, 23.555786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002575, 34.910252, 23.514748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079662, 0.064857, 0.994710,
		0.669320, -0.742957, -0.005160,
		0.738691, 0.666190, -0.102595,
		35.224182, 35.110107, 23.483969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363876, 34.457359, 24.022945>,  <34.707100, 34.643776, 23.555786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363876, 34.457359, 24.022945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344379, 34.851654, 23.958502>,  <35.332680, 35.088230, 23.919836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344379, 34.851654, 23.958502>,  <35.363876, 34.457359, 24.022945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344379, 34.851654, 23.958502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250248, 0.168207, 0.953458,
		0.966954, 0.006157, -0.254876,
		-0.048742, 0.985732, -0.161108,
		35.329758, 35.147373, 23.910170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885334, 34.704708, 24.377470>,  <35.363876, 34.457359, 24.022945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885334, 34.704708, 24.377470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685429, 35.044888, 24.311771>,  <35.565483, 35.248993, 24.272352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685429, 35.044888, 24.311771>,  <35.885334, 34.704708, 24.377470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685429, 35.044888, 24.311771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126176, 0.259088, 0.957577,
		0.856920, 0.457841, -0.236789,
		-0.499767, 0.850444, -0.164249,
		35.535500, 35.300022, 24.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177956, 35.183311, 24.769426>,  <35.885334, 34.704708, 24.377470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177956, 35.183311, 24.769426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818485, 35.336819, 24.684471>,  <35.602802, 35.428925, 24.633499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818485, 35.336819, 24.684471>,  <36.177956, 35.183311, 24.769426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818485, 35.336819, 24.684471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061675, 0.368842, 0.927444,
		0.434262, 0.846567, -0.307799,
		-0.898673, 0.383770, -0.212386,
		35.548885, 35.451950, 24.620756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216850, 35.823723, 25.027151>,  <36.177956, 35.183311, 24.769426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216850, 35.823723, 25.027151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825203, 35.754368, 24.984705>,  <35.590214, 35.712757, 24.959238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825203, 35.754368, 24.984705>,  <36.216850, 35.823723, 25.027151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825203, 35.754368, 24.984705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166186, 0.382113, 0.909050,
		-0.117068, 0.907704, -0.402949,
		-0.979120, -0.173386, -0.106114,
		35.531467, 35.702351, 24.952871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810394, 36.458252, 25.221603>,  <36.216850, 35.823723, 25.027151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810394, 36.458252, 25.221603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568340, 36.143219, 25.268129>,  <35.423107, 35.954201, 25.296045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568340, 36.143219, 25.268129>,  <35.810394, 36.458252, 25.221603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568340, 36.143219, 25.268129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227789, 0.311277, 0.922615,
		-0.762842, 0.531808, -0.367766,
		-0.605132, -0.787583, 0.116315,
		35.386803, 35.906944, 25.303024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099129, 36.787277, 25.466539>,  <35.810394, 36.458252, 25.221603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099129, 36.787277, 25.466539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037300, 36.398808, 25.539127>,  <35.000202, 36.165726, 25.582680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037300, 36.398808, 25.539127>,  <35.099129, 36.787277, 25.466539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037300, 36.398808, 25.539127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, 0.206971, 0.963624,
		-0.973404, 0.118267, -0.196210,
		-0.154575, -0.971173, 0.181468,
		34.990929, 36.107456, 25.593567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435684, 36.755432, 25.642307>,  <35.099129, 36.787277, 25.466539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435684, 36.755432, 25.642307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600712, 36.434166, 25.814217>,  <34.699730, 36.241405, 25.917362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600712, 36.434166, 25.814217>,  <34.435684, 36.755432, 25.642307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600712, 36.434166, 25.814217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359161, 0.290150, 0.887027,
		-0.837131, -0.520319, -0.168759,
		0.412572, -0.803169, 0.429772,
		34.724483, 36.193214, 25.943148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861740, 36.446804, 26.056433>,  <34.435684, 36.755432, 25.642307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861740, 36.446804, 26.056433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206673, 36.298706, 26.194593>,  <34.413631, 36.209846, 26.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206673, 36.298706, 26.194593>,  <33.861740, 36.446804, 26.056433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206673, 36.298706, 26.194593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304393, 0.166062, 0.937960,
		-0.404630, -0.913971, 0.030502,
		0.862334, -0.370243, 0.345400,
		34.465374, 36.187634, 26.298214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654274, 36.024761, 26.592491>,  <33.861740, 36.446804, 26.056433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654274, 36.024761, 26.592491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036674, 36.100811, 26.681860>,  <34.266113, 36.146439, 26.735481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036674, 36.100811, 26.681860>,  <33.654274, 36.024761, 26.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036674, 36.100811, 26.681860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249706, 0.127620, 0.959875,
		0.153974, -0.973432, 0.169478,
		0.956001, 0.190115, 0.223422,
		34.323475, 36.157848, 26.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859512, 35.608841, 27.169914>,  <33.654274, 36.024761, 26.592491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859512, 35.608841, 27.169914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144661, 35.888546, 27.191252>,  <34.315750, 36.056370, 27.204054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144661, 35.888546, 27.191252>,  <33.859512, 35.608841, 27.169914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144661, 35.888546, 27.191252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076910, 0.002348, 0.997035,
		0.697062, -0.714864, 0.055453,
		0.712875, 0.699260, 0.053343,
		34.358524, 36.098324, 27.207254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263100, 35.474049, 27.799530>,  <33.859512, 35.608841, 27.169914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263100, 35.474049, 27.799530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354633, 35.854710, 27.717558>,  <34.409554, 36.083107, 27.668375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354633, 35.854710, 27.717558>,  <34.263100, 35.474049, 27.799530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354633, 35.854710, 27.717558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205674, 0.253029, 0.945343,
		0.951491, -0.174174, 0.253631,
		0.228830, 0.951651, -0.204932,
		34.423283, 36.140205, 27.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716293, 35.678211, 28.291742>,  <34.263100, 35.474049, 27.799530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716293, 35.678211, 28.291742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558708, 36.017986, 28.151314>,  <34.464157, 36.221851, 28.067057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558708, 36.017986, 28.151314>,  <34.716293, 35.678211, 28.291742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558708, 36.017986, 28.151314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120498, 0.330933, 0.935929,
		0.911192, 0.411027, -0.028021,
		-0.393965, 0.849435, -0.351072,
		34.440517, 36.272816, 28.045992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992935, 36.142822, 28.711548>,  <34.716293, 35.678211, 28.291742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992935, 36.142822, 28.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659248, 36.298241, 28.555027>,  <34.459038, 36.391491, 28.461115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659248, 36.298241, 28.555027>,  <34.992935, 36.142822, 28.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659248, 36.298241, 28.555027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133513, 0.546178, 0.826961,
		0.535030, 0.742108, -0.403755,
		-0.834216, 0.388542, -0.391303,
		34.408985, 36.414803, 28.437635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049809, 36.853237, 28.786877>,  <34.992935, 36.142822, 28.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049809, 36.853237, 28.786877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661644, 36.762123, 28.754827>,  <34.428745, 36.707455, 28.735598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661644, 36.762123, 28.754827>,  <35.049809, 36.853237, 28.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661644, 36.762123, 28.754827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179249, 0.457218, 0.871104,
		-0.161792, 0.859689, -0.484518,
		-0.970409, -0.227786, -0.080124,
		34.370522, 36.693787, 28.730791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797138, 37.345814, 29.180902>,  <35.049809, 36.853237, 28.786877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797138, 37.345814, 29.180902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472618, 37.117687, 29.129480>,  <34.277905, 36.980812, 29.098627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472618, 37.117687, 29.129480>,  <34.797138, 37.345814, 29.180902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472618, 37.117687, 29.129480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392510, 0.368395, 0.842746,
		-0.433274, 0.734181, -0.522735,
		-0.811301, -0.570319, -0.128557,
		34.229229, 36.946590, 29.090914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304390, 37.902119, 29.189228>,  <34.797138, 37.345814, 29.180902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304390, 37.902119, 29.189228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133751, 37.551655, 29.278994>,  <34.031368, 37.341377, 29.332853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133751, 37.551655, 29.278994>,  <34.304390, 37.902119, 29.189228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133751, 37.551655, 29.278994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430702, 0.414979, 0.801428,
		-0.795307, 0.245228, -0.554392,
		-0.426594, -0.876159, 0.224415,
		34.005772, 37.288807, 29.346317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442471, 38.020416, 29.210794>,  <34.304390, 37.902119, 29.189228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442471, 38.020416, 29.210794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544540, 37.683224, 29.400221>,  <33.605782, 37.480907, 29.513876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544540, 37.683224, 29.400221>,  <33.442471, 38.020416, 29.210794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544540, 37.683224, 29.400221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351561, 0.375368, 0.857615,
		-0.900717, -0.385328, -0.200577,
		0.255173, -0.842984, 0.473566,
		33.621094, 37.430328, 29.542292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862202, 37.891006, 29.646233>,  <33.442471, 38.020416, 29.210794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862202, 37.891006, 29.646233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157070, 37.677982, 29.812590>,  <33.333992, 37.550167, 29.912405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157070, 37.677982, 29.812590>,  <32.862202, 37.891006, 29.646233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157070, 37.677982, 29.812590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364034, 0.205526, 0.908426,
		-0.569266, -0.821061, -0.042362,
		0.737167, -0.532558, 0.415894,
		33.378220, 37.518215, 29.937357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610485, 37.711452, 30.447346>,  <32.862202, 37.891006, 29.646233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610485, 37.711452, 30.447346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986519, 37.575142, 30.451620>,  <33.212139, 37.493355, 30.454184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986519, 37.575142, 30.451620>,  <32.610485, 37.711452, 30.447346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986519, 37.575142, 30.451620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023085, -0.032355, 0.999210,
		-0.340163, -0.939587, -0.038283,
		0.940083, -0.340778, 0.010684,
		33.268543, 37.472908, 30.454824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665924, 37.136776, 30.949888>,  <32.610485, 37.711452, 30.447346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665924, 37.136776, 30.949888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023495, 37.313629, 30.920443>,  <33.238037, 37.419743, 30.902775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023495, 37.313629, 30.920443>,  <32.665924, 37.136776, 30.949888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023495, 37.313629, 30.920443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078783, 0.006692, 0.996869,
		0.441245, -0.896923, -0.028851,
		0.893922, 0.442136, -0.073615,
		33.291672, 37.446270, 30.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218872, 36.771431, 31.234972>,  <32.665924, 37.136776, 30.949888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218872, 36.771431, 31.234972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351498, 37.148788, 31.231638>,  <33.431072, 37.375202, 31.229637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351498, 37.148788, 31.231638>,  <33.218872, 36.771431, 31.234972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351498, 37.148788, 31.231638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017745, 0.002597, 0.999839,
		0.943264, -0.331663, -0.015880,
		0.331569, 0.943395, -0.008335,
		33.450970, 37.431808, 31.229137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724815, 36.893143, 31.755213>,  <33.218872, 36.771431, 31.234972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724815, 36.893143, 31.755213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618252, 37.266575, 31.659330>,  <33.554314, 37.490635, 31.601801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618252, 37.266575, 31.659330>,  <33.724815, 36.893143, 31.755213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618252, 37.266575, 31.659330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069454, 0.266642, 0.961290,
		0.961354, 0.239450, -0.135877,
		-0.266411, 0.933577, -0.239707,
		33.538330, 37.546646, 31.587418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151100, 37.364536, 32.094082>,  <33.724815, 36.893143, 31.755213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151100, 37.364536, 32.094082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826759, 37.585026, 32.015430>,  <33.632153, 37.717319, 31.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826759, 37.585026, 32.015430>,  <34.151100, 37.364536, 32.094082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826759, 37.585026, 32.015430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027347, 0.371297, 0.928111,
		0.584608, 0.747186, -0.316142,
		-0.810855, 0.551227, -0.196629,
		33.583504, 37.750393, 31.956442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182629, 38.212193, 32.312561>,  <34.151100, 37.364536, 32.094082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182629, 38.212193, 32.312561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800297, 38.095940, 32.295040>,  <33.570896, 38.026188, 32.284527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800297, 38.095940, 32.295040>,  <34.182629, 38.212193, 32.312561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800297, 38.095940, 32.295040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187907, 0.489677, 0.851415,
		-0.225999, 0.822040, -0.522660,
		-0.955832, -0.290630, -0.043801,
		33.513546, 38.008751, 32.281898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726727, 37.982563, 31.739132>,  <34.182629, 38.212193, 32.312561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726727, 37.982563, 31.739132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115101, 37.917793, 31.809628>,  <35.348125, 37.878933, 31.851925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115101, 37.917793, 31.809628>,  <34.726727, 37.982563, 31.739132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115101, 37.917793, 31.809628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239142, 0.627247, -0.741197,
		0.009471, 0.761802, 0.647740,
		0.970938, -0.161921, 0.176238,
		35.406384, 37.869217, 31.862499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051785, 38.583252, 31.356943>,  <34.726727, 37.982563, 31.739132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051785, 38.583252, 31.356943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368397, 38.351856, 31.435760>,  <35.558365, 38.213020, 31.483051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368397, 38.351856, 31.435760>,  <35.051785, 38.583252, 31.356943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368397, 38.351856, 31.435760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490085, 0.408243, -0.770165,
		0.365089, 0.706180, 0.606647,
		0.791534, -0.578487, 0.197043,
		35.605858, 38.178310, 31.494873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632195, 38.974174, 31.258968>,  <35.051785, 38.583252, 31.356943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632195, 38.974174, 31.258968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770336, 38.599659, 31.233351>,  <35.853222, 38.374950, 31.217979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770336, 38.599659, 31.233351>,  <35.632195, 38.974174, 31.258968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770336, 38.599659, 31.233351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506203, 0.243312, -0.827380,
		0.790246, 0.253320, 0.557979,
		0.345355, -0.936284, -0.064045,
		35.873943, 38.318775, 31.214138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221569, 39.082996, 31.098846>,  <35.632195, 38.974174, 31.258968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221569, 39.082996, 31.098846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137741, 38.711781, 30.975672>,  <36.087444, 38.489052, 30.901768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137741, 38.711781, 30.975672>,  <36.221569, 39.082996, 31.098846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137741, 38.711781, 30.975672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573147, 0.138561, -0.807653,
		0.792201, -0.345751, 0.502865,
		-0.209569, -0.928039, -0.307934,
		36.074871, 38.433369, 30.883291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810604, 38.803509, 30.834515>,  <36.221569, 39.082996, 31.098846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810604, 38.803509, 30.834515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549355, 38.554577, 30.661940>,  <36.392605, 38.405216, 30.558393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549355, 38.554577, 30.661940>,  <36.810604, 38.803509, 30.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549355, 38.554577, 30.661940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561371, -0.015526, -0.827419,
		0.508230, -0.782600, 0.359499,
		-0.653120, -0.622332, -0.431438,
		36.353420, 38.367878, 30.532509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296341, 38.305668, 30.458986>,  <36.810604, 38.803509, 30.834515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296341, 38.305668, 30.458986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928753, 38.288483, 30.302193>,  <36.708202, 38.278172, 30.208117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928753, 38.288483, 30.302193>,  <37.296341, 38.305668, 30.458986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928753, 38.288483, 30.302193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390536, -0.236734, -0.889628,
		-0.054577, -0.970624, 0.234329,
		-0.918969, -0.042961, -0.391984,
		36.653061, 38.275593, 30.184597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210922, 37.643867, 30.146500>,  <37.296341, 38.305668, 30.458986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210922, 37.643867, 30.146500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947258, 37.890957, 29.974955>,  <36.789059, 38.039211, 29.872028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947258, 37.890957, 29.974955>,  <37.210922, 37.643867, 30.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947258, 37.890957, 29.974955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255944, -0.351960, -0.900343,
		-0.707107, -0.703235, 0.073895,
		-0.659161, 0.617725, -0.428862,
		36.749512, 38.076275, 29.846296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792046, 37.280682, 29.773045>,  <37.210922, 37.643867, 30.146500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792046, 37.280682, 29.773045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743599, 37.643833, 29.612501>,  <36.714531, 37.861725, 29.516174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743599, 37.643833, 29.612501>,  <36.792046, 37.280682, 29.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743599, 37.643833, 29.612501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227221, -0.368244, -0.901536,
		-0.966282, -0.200389, -0.161688,
		-0.121117, 0.907877, -0.401360,
		36.707264, 37.916195, 29.492092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263397, 37.232521, 29.224447>,  <36.792046, 37.280682, 29.773045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263397, 37.232521, 29.224447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496273, 37.544884, 29.133902>,  <36.635998, 37.732300, 29.079575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496273, 37.544884, 29.133902>,  <36.263397, 37.232521, 29.224447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496273, 37.544884, 29.133902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160948, -0.383597, -0.909367,
		-0.796962, 0.492993, -0.349012,
		0.582191, 0.780904, -0.226366,
		36.670929, 37.779156, 29.065992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197647, 37.246830, 28.594080>,  <36.263397, 37.232521, 29.224447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197647, 37.246830, 28.594080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511116, 37.490410, 28.643137>,  <36.699196, 37.636559, 28.672571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511116, 37.490410, 28.643137>,  <36.197647, 37.246830, 28.594080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511116, 37.490410, 28.643137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338039, -0.252430, -0.906647,
		-0.521145, 0.751969, -0.403670,
		0.783669, 0.608951, 0.122642,
		36.746216, 37.673096, 28.679930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162067, 37.645725, 27.986574>,  <36.197647, 37.246830, 28.594080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162067, 37.645725, 27.986574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540947, 37.686131, 28.108303>,  <36.768276, 37.710373, 28.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540947, 37.686131, 28.108303>,  <36.162067, 37.645725, 27.986574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540947, 37.686131, 28.108303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313587, -0.093742, -0.944921,
		-0.066923, 0.990459, -0.120469,
		0.947198, 0.101015, 0.304321,
		36.825108, 37.716434, 28.199600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585552, 37.888626, 27.354744>,  <36.162067, 37.645725, 27.986574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585552, 37.888626, 27.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859512, 37.738487, 27.604555>,  <37.023888, 37.648403, 27.754442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859512, 37.738487, 27.604555>,  <36.585552, 37.888626, 27.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859512, 37.738487, 27.604555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312885, -0.622564, -0.717298,
		0.658043, 0.686680, -0.308951,
		0.684896, -0.375347, 0.624526,
		37.064980, 37.625885, 27.791912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354225, 37.988380, 27.036497>,  <36.585552, 37.888626, 27.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354225, 37.988380, 27.036497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379845, 37.697701, 27.310083>,  <37.395214, 37.523293, 27.474236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379845, 37.697701, 27.310083>,  <37.354225, 37.988380, 27.036497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379845, 37.697701, 27.310083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449516, -0.590896, -0.669908,
		0.890973, 0.350358, 0.288818,
		0.064046, -0.726699, 0.683964,
		37.399059, 37.479691, 27.515272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037170, 37.873055, 27.130703>,  <37.354225, 37.988380, 27.036497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037170, 37.873055, 27.130703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838211, 37.546356, 27.247683>,  <37.718838, 37.350338, 27.317869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838211, 37.546356, 27.247683>,  <38.037170, 37.873055, 27.130703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838211, 37.546356, 27.247683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432710, -0.525749, -0.732359,
		0.751905, -0.237726, 0.614919,
		-0.497394, -0.816746, 0.292447,
		37.688992, 37.301331, 27.335417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544235, 37.399940, 27.150236>,  <38.037170, 37.873055, 27.130703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544235, 37.399940, 27.150236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215420, 37.172783, 27.133511>,  <38.018131, 37.036488, 27.123476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215420, 37.172783, 27.133511>,  <38.544235, 37.399940, 27.150236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215420, 37.172783, 27.133511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409460, -0.538470, -0.736473,
		0.395726, -0.622529, 0.675173,
		-0.822036, -0.567898, -0.041814,
		37.968807, 37.002415, 27.120966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716370, 36.737545, 27.219006>,  <38.544235, 37.399940, 27.150236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716370, 36.737545, 27.219006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370827, 36.712852, 27.019030>,  <38.163502, 36.698036, 26.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370827, 36.712852, 27.019030>,  <38.716370, 36.737545, 27.219006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370827, 36.712852, 27.019030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466797, -0.471143, -0.748415,
		-0.189342, -0.879894, 0.435817,
		-0.863858, -0.061732, -0.499939,
		38.111668, 36.694332, 26.869047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901550, 36.224075, 26.717768>,  <38.716370, 36.737545, 27.219006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901550, 36.224075, 26.717768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546814, 36.343616, 26.576801>,  <38.333973, 36.415340, 26.492222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546814, 36.343616, 26.576801>,  <38.901550, 36.224075, 26.717768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546814, 36.343616, 26.576801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189822, -0.459727, -0.867536,
		-0.421280, -0.836264, 0.350977,
		-0.886843, 0.298853, -0.352415,
		38.280762, 36.433273, 26.471077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469997, 35.613354, 26.558649>,  <38.901550, 36.224075, 26.717768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469997, 35.613354, 26.558649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326630, 35.914299, 26.337564>,  <38.240608, 36.094864, 26.204914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326630, 35.914299, 26.337564>,  <38.469997, 35.613354, 26.558649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326630, 35.914299, 26.337564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025427, -0.583958, -0.811386,
		-0.933213, -0.304873, 0.190173,
		-0.358422, 0.752360, -0.552709,
		38.219105, 36.140007, 26.171751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006828, 35.267086, 26.114576>,  <38.469997, 35.613354, 26.558649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006828, 35.267086, 26.114576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096977, 35.608829, 25.927269>,  <38.151066, 35.813877, 25.814884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096977, 35.608829, 25.927269>,  <38.006828, 35.267086, 26.114576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096977, 35.608829, 25.927269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134740, -0.448682, -0.883476,
		-0.964912, 0.262201, 0.013998,
		0.225368, 0.854362, -0.468268,
		38.164589, 35.865139, 25.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473175, 35.432350, 25.667332>,  <38.006828, 35.267086, 26.114576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473175, 35.432350, 25.667332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793789, 35.632599, 25.536539>,  <37.986156, 35.752747, 25.458063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793789, 35.632599, 25.536539>,  <37.473175, 35.432350, 25.667332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793789, 35.632599, 25.536539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239692, -0.231978, -0.942727,
		-0.547798, 0.834007, -0.065945,
		0.801539, 0.500618, -0.326982,
		38.034252, 35.782784, 25.438444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228199, 35.580936, 25.089096>,  <37.473175, 35.432350, 25.667332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228199, 35.580936, 25.089096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621876, 35.618797, 25.029228>,  <37.858082, 35.641514, 24.993307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621876, 35.618797, 25.029228>,  <37.228199, 35.580936, 25.089096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621876, 35.618797, 25.029228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119428, -0.269271, -0.955631,
		-0.130751, 0.958402, -0.253712,
		0.984196, 0.094649, -0.149668,
		37.917133, 35.647194, 24.984327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264706, 36.084438, 24.554522>,  <37.228199, 35.580936, 25.089096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264706, 36.084438, 24.554522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583843, 35.843445, 24.563082>,  <37.775326, 35.698849, 24.568218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583843, 35.843445, 24.563082>,  <37.264706, 36.084438, 24.554522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583843, 35.843445, 24.563082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132928, -0.210432, -0.968529,
		0.588024, 0.769892, -0.247979,
		0.797846, -0.602482, 0.021399,
		37.823196, 35.662701, 24.569502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618774, 36.226032, 23.915171>,  <37.264706, 36.084438, 24.554522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618774, 36.226032, 23.915171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757156, 35.874557, 24.046761>,  <37.840183, 35.663673, 24.125713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757156, 35.874557, 24.046761>,  <37.618774, 36.226032, 23.915171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757156, 35.874557, 24.046761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124330, -0.390463, -0.912184,
		0.929978, 0.274670, -0.244329,
		0.345951, -0.878689, 0.328973,
		37.860943, 35.610950, 24.145452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288544, 35.987713, 23.442705>,  <37.618774, 36.226032, 23.915171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288544, 35.987713, 23.442705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171284, 35.643875, 23.610113>,  <38.100925, 35.437572, 23.710558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171284, 35.643875, 23.610113>,  <38.288544, 35.987713, 23.442705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171284, 35.643875, 23.610113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264915, -0.347579, -0.899449,
		0.918630, -0.374549, -0.125825,
		-0.293154, -0.859594, 0.418521,
		38.083336, 35.385998, 23.735670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664604, 35.472710, 23.170469>,  <38.288544, 35.987713, 23.442705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664604, 35.472710, 23.170469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350899, 35.277889, 23.324203>,  <38.162674, 35.160999, 23.416445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350899, 35.277889, 23.324203>,  <38.664604, 35.472710, 23.170469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350899, 35.277889, 23.324203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081375, -0.533369, -0.841959,
		0.615069, -0.691593, 0.378668,
		-0.784263, -0.487049, 0.384337,
		38.115620, 35.131775, 23.439505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766003, 34.740383, 23.047752>,  <38.664604, 35.472710, 23.170469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766003, 34.740383, 23.047752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371990, 34.772099, 23.108974>,  <38.135582, 34.791126, 23.145708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371990, 34.772099, 23.108974>,  <38.766003, 34.740383, 23.047752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371990, 34.772099, 23.108974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171002, -0.561284, -0.809765,
		0.021703, -0.823817, 0.566441,
		-0.985032, 0.079288, 0.153056,
		38.076481, 34.795887, 23.154892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462410, 34.025005, 22.881283>,  <38.766003, 34.740383, 23.047752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462410, 34.025005, 22.881283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165546, 34.292233, 22.859798>,  <37.987427, 34.452568, 22.846909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165546, 34.292233, 22.859798>,  <38.462410, 34.025005, 22.881283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165546, 34.292233, 22.859798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417932, -0.523954, -0.742163,
		-0.523954, -0.528359, 0.668064,
		0.742163, -0.668064, 0.053710,
		37.942898, 34.492653, 22.843685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932957, 33.605087, 22.998323>,  <38.462410, 34.025005, 22.881283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932957, 33.605087, 22.998323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799843, 33.930470, 22.807520>,  <37.719975, 34.125698, 22.693037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799843, 33.930470, 22.807520>,  <37.932957, 33.605087, 22.998323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799843, 33.930470, 22.807520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433637, -0.581196, -0.688600,
		-0.837384, -0.022307, 0.546160,
		-0.332786, 0.813458, -0.477011,
		37.700008, 34.174507, 22.664417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125702, 33.522705, 22.849150>,  <37.932957, 33.605087, 22.998323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125702, 33.522705, 22.849150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311474, 33.773460, 22.598930>,  <37.422939, 33.923912, 22.448799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311474, 33.773460, 22.598930>,  <37.125702, 33.522705, 22.849150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311474, 33.773460, 22.598930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369716, -0.504608, -0.780180,
		-0.804743, 0.593617, -0.002586,
		0.464433, 0.626889, -0.625550,
		37.450806, 33.961529, 22.411266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674213, 33.360058, 22.288328>,  <37.125702, 33.522705, 22.849150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674213, 33.360058, 22.288328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971340, 33.549377, 22.098927>,  <37.149616, 33.662968, 21.985285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971340, 33.549377, 22.098927>,  <36.674213, 33.360058, 22.288328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971340, 33.549377, 22.098927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087049, -0.632978, -0.769261,
		-0.663807, 0.612641, -0.428989,
		0.742821, 0.473298, -0.473505,
		37.194187, 33.691368, 21.956875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530403, 33.453846, 21.514656>,  <36.674213, 33.360058, 22.288328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530403, 33.453846, 21.514656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925308, 33.516785, 21.505192>,  <37.162251, 33.554550, 21.499514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925308, 33.516785, 21.505192>,  <36.530403, 33.453846, 21.514656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925308, 33.516785, 21.505192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049922, -0.447497, -0.892891,
		-0.151085, 0.880334, -0.449651,
		0.987259, 0.157350, -0.023662,
		37.221485, 33.563992, 21.498093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705116, 33.784218, 20.786961>,  <36.530403, 33.453846, 21.514656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705116, 33.784218, 20.786961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035194, 33.598057, 20.914997>,  <37.233242, 33.486362, 20.991819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035194, 33.598057, 20.914997>,  <36.705116, 33.784218, 20.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035194, 33.598057, 20.914997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007468, -0.575627, -0.817678,
		0.564800, 0.672353, -0.478480,
		0.825194, -0.465398, 0.320093,
		37.282753, 33.458439, 21.011024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109085, 33.532768, 20.161263>,  <36.705116, 33.784218, 20.786961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109085, 33.532768, 20.161263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245934, 33.296272, 20.453396>,  <37.328045, 33.154373, 20.628675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245934, 33.296272, 20.453396>,  <37.109085, 33.532768, 20.161263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245934, 33.296272, 20.453396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176175, -0.803813, -0.568197,
		0.922991, 0.065728, -0.379166,
		0.342125, -0.591240, 0.730332,
		37.348572, 33.118900, 20.672495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550423, 32.999126, 19.889175>,  <37.109085, 33.532768, 20.161263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550423, 32.999126, 19.889175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458157, 32.826771, 20.238146>,  <37.402798, 32.723358, 20.447529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458157, 32.826771, 20.238146>,  <37.550423, 32.999126, 19.889175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458157, 32.826771, 20.238146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003932, -0.897010, -0.441993,
		0.973025, -0.098522, 0.208603,
		-0.230665, -0.430891, 0.872426,
		37.388958, 32.697502, 20.499874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832382, 32.345379, 19.847755>,  <37.550423, 32.999126, 19.889175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832382, 32.345379, 19.847755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569824, 32.295429, 20.145361>,  <37.412289, 32.265461, 20.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569824, 32.295429, 20.145361>,  <37.832382, 32.345379, 19.847755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569824, 32.295429, 20.145361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077431, -0.969846, -0.231090,
		0.750436, -0.209295, 0.626930,
		-0.656392, -0.124874, 0.744014,
		37.372906, 32.257965, 20.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957272, 31.654648, 19.976635>,  <37.832382, 32.345379, 19.847755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957272, 31.654648, 19.976635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615433, 31.752426, 20.159899>,  <37.410328, 31.811092, 20.269857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615433, 31.752426, 20.159899>,  <37.957272, 31.654648, 19.976635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615433, 31.752426, 20.159899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345588, -0.926251, -0.150429,
		0.387601, -0.286891, 0.876047,
		-0.854596, 0.244445, 0.458161,
		37.359055, 31.825760, 20.297348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788219, 31.164581, 20.595985>,  <37.957272, 31.654648, 19.976635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788219, 31.164581, 20.595985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461048, 31.332212, 20.438324>,  <37.264744, 31.432791, 20.343727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461048, 31.332212, 20.438324>,  <37.788219, 31.164581, 20.595985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461048, 31.332212, 20.438324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324251, -0.901738, -0.285886,
		-0.475233, -0.106030, 0.873448,
		-0.817933, 0.419079, -0.394155,
		37.215668, 31.457935, 20.320078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234352, 30.751303, 20.832054>,  <37.788219, 31.164581, 20.595985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234352, 30.751303, 20.832054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081829, 30.941088, 20.514692>,  <36.990314, 31.054958, 20.324274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081829, 30.941088, 20.514692>,  <37.234352, 30.751303, 20.832054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081829, 30.941088, 20.514692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258093, -0.878757, -0.401465,
		-0.887692, 0.051694, 0.457526,
		-0.381300, 0.474462, -0.793408,
		36.967438, 31.083426, 20.276670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467587, 30.138948, 20.553408>,  <37.234352, 30.751303, 20.832054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467587, 30.138948, 20.553408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408680, 29.827673, 20.797615>,  <37.373337, 29.640907, 20.944139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408680, 29.827673, 20.797615>,  <37.467587, 30.138948, 20.553408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408680, 29.827673, 20.797615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368227, 0.616016, 0.696372,
		-0.917999, -0.122256, -0.377270,
		-0.147269, -0.778189, 0.610519,
		37.364498, 29.594215, 20.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694420, 30.131905, 20.858656>,  <37.467587, 30.138948, 20.553408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694420, 30.131905, 20.858656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929310, 29.915680, 21.099640>,  <37.070244, 29.785946, 21.244230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929310, 29.915680, 21.099640>,  <36.694420, 30.131905, 20.858656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929310, 29.915680, 21.099640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228094, 0.603632, 0.763938,
		-0.776619, -0.586024, 0.231171,
		0.587228, -0.540560, 0.602460,
		37.105480, 29.753511, 21.280378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303062, 30.146576, 21.296185>,  <36.694420, 30.131905, 20.858656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303062, 30.146576, 21.296185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636719, 30.010641, 21.469955>,  <36.836910, 29.929081, 21.574217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636719, 30.010641, 21.469955>,  <36.303062, 30.146576, 21.296185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636719, 30.010641, 21.469955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161239, 0.602985, 0.781288,
		-0.527462, -0.721749, 0.448178,
		0.834138, -0.339836, 0.434425,
		36.886959, 29.908689, 21.600283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103065, 29.903502, 21.965515>,  <36.303062, 30.146576, 21.296185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103065, 29.903502, 21.965515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492271, 29.986670, 22.005545>,  <36.725796, 30.036572, 22.029562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492271, 29.986670, 22.005545>,  <36.103065, 29.903502, 21.965515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492271, 29.986670, 22.005545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169359, 0.348929, 0.921719,
		0.156726, -0.913793, 0.374726,
		0.973013, 0.207921, 0.100073,
		36.784176, 30.049046, 22.035566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269798, 29.631321, 22.577183>,  <36.103065, 29.903502, 21.965515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269798, 29.631321, 22.577183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521049, 29.920259, 22.461481>,  <36.671803, 30.093622, 22.392059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521049, 29.920259, 22.461481>,  <36.269798, 29.631321, 22.577183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521049, 29.920259, 22.461481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156111, 0.481175, 0.862612,
		0.762286, -0.496678, 0.415007,
		0.628131, 0.722344, -0.289256,
		36.709488, 30.136963, 22.374704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622322, 29.753292, 23.282803>,  <36.269798, 29.631321, 22.577183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622322, 29.753292, 23.282803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 30.060627, 23.044979>,  <36.773983, 30.245029, 22.902285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717110, 30.060627, 23.044979>,  <36.622322, 29.753292, 23.282803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717110, 30.060627, 23.044979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049581, 0.601628, 0.797236,
		0.970251, -0.218398, 0.104472,
		0.236968, 0.768340, -0.594559,
		36.788200, 30.291128, 22.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984604, 30.233364, 23.731697>,  <36.622322, 29.753292, 23.282803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984604, 30.233364, 23.731697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877316, 30.473103, 23.430010>,  <36.812943, 30.616945, 23.248997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877316, 30.473103, 23.430010>,  <36.984604, 30.233364, 23.731697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877316, 30.473103, 23.430010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074467, 0.767663, 0.636513,
		0.960476, 0.226887, -0.161268,
		-0.268217, 0.599346, -0.754217,
		36.796852, 30.652906, 23.203745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491741, 30.827007, 23.813345>,  <36.984604, 30.233364, 23.731697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491741, 30.827007, 23.813345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155609, 30.958185, 23.640697>,  <36.953930, 31.036892, 23.537109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155609, 30.958185, 23.640697>,  <37.491741, 30.827007, 23.813345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155609, 30.958185, 23.640697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116489, 0.668386, 0.734636,
		0.529407, 0.667617, -0.523465,
		-0.840332, 0.327944, -0.431618,
		36.903511, 31.056568, 23.511211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455334, 31.528822, 23.974373>,  <37.491741, 30.827007, 23.813345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455334, 31.528822, 23.974373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077080, 31.447861, 23.872549>,  <36.850128, 31.399284, 23.811455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077080, 31.447861, 23.872549>,  <37.455334, 31.528822, 23.974373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077080, 31.447861, 23.872549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325218, 0.587506, 0.740992,
		-0.000424, 0.783499, -0.621393,
		-0.945639, -0.202402, -0.254559,
		36.793388, 31.387140, 23.796181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196415, 32.171032, 24.020468>,  <37.455334, 31.528822, 23.974373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196415, 32.171032, 24.020468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875198, 31.932869, 24.010588>,  <36.682468, 31.789970, 24.004660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875198, 31.932869, 24.010588>,  <37.196415, 32.171032, 24.020468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875198, 31.932869, 24.010588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435709, 0.558367, 0.705963,
		-0.406545, 0.577681, -0.707818,
		-0.803044, -0.595408, -0.024699,
		36.634285, 31.754246, 24.003178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701130, 32.638561, 24.034151>,  <37.196415, 32.171032, 24.020468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701130, 32.638561, 24.034151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501366, 32.316799, 24.162846>,  <36.381508, 32.123741, 24.240063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501366, 32.316799, 24.162846>,  <36.701130, 32.638561, 24.034151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501366, 32.316799, 24.162846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541555, 0.579720, 0.608805,
		-0.676246, 0.129805, -0.725150,
		-0.499410, -0.804410, 0.321737,
		36.351543, 32.075478, 24.259367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143089, 32.918152, 24.058716>,  <36.701130, 32.638561, 24.034151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143089, 32.918152, 24.058716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130478, 32.609436, 24.312754>,  <36.122913, 32.424206, 24.465178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130478, 32.609436, 24.312754>,  <36.143089, 32.918152, 24.058716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130478, 32.609436, 24.312754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352315, 0.603209, 0.715551,
		-0.935350, -0.201194, -0.290930,
		-0.031527, -0.771790, 0.635096,
		36.121021, 32.377899, 24.503283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478519, 32.914371, 24.474319>,  <36.143089, 32.918152, 24.058716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478519, 32.914371, 24.474319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748459, 32.715973, 24.692886>,  <35.910423, 32.596935, 24.824026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748459, 32.715973, 24.692886>,  <35.478519, 32.914371, 24.474319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748459, 32.715973, 24.692886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136282, 0.643943, 0.752838,
		-0.725265, -0.582516, 0.366967,
		0.674846, -0.495996, 0.546416,
		35.950912, 32.567173, 24.856812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229385, 32.746536, 25.184896>,  <35.478519, 32.914371, 24.474319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229385, 32.746536, 25.184896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624870, 32.711674, 25.233648>,  <35.862160, 32.690758, 25.262899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624870, 32.711674, 25.233648>,  <35.229385, 32.746536, 25.184896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624870, 32.711674, 25.233648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059946, 0.515399, 0.854851,
		-0.137319, -0.852507, 0.504356,
		0.988711, -0.087154, 0.121878,
		35.921482, 32.685528, 25.270212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333473, 32.628872, 25.925962>,  <35.229385, 32.746536, 25.184896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333473, 32.628872, 25.925962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701969, 32.727551, 25.805660>,  <35.923069, 32.786758, 25.733479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701969, 32.727551, 25.805660>,  <35.333473, 32.628872, 25.925962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701969, 32.727551, 25.805660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161665, 0.460426, 0.872853,
		0.353799, -0.852733, 0.384283,
		0.921244, 0.246689, -0.300755,
		35.978340, 32.801559, 25.715433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778008, 32.506882, 26.541908>,  <35.333473, 32.628872, 25.925962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778008, 32.506882, 26.541908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978111, 32.749073, 26.294317>,  <36.098175, 32.894390, 26.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978111, 32.749073, 26.294317>,  <35.778008, 32.506882, 26.541908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978111, 32.749073, 26.294317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318850, 0.535808, 0.781822,
		0.805031, -0.588475, 0.074985,
		0.500260, 0.605482, -0.618977,
		36.128189, 32.930717, 26.108624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436871, 32.571678, 26.875904>,  <35.778008, 32.506882, 26.541908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436871, 32.571678, 26.875904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415443, 32.889332, 26.633753>,  <36.402588, 33.079926, 26.488462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415443, 32.889332, 26.633753>,  <36.436871, 32.571678, 26.875904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415443, 32.889332, 26.633753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118917, 0.607006, 0.785750,
		0.991458, -0.029901, -0.126950,
		-0.053564, 0.794135, -0.605377,
		36.399376, 33.127571, 26.452139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897568, 33.133160, 27.137527>,  <36.436871, 32.571678, 26.875904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897568, 33.133160, 27.137527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676281, 33.332481, 26.870501>,  <36.543507, 33.452072, 26.710285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676281, 33.332481, 26.870501>,  <36.897568, 33.133160, 27.137527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676281, 33.332481, 26.870501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213256, 0.859378, 0.464749,
		0.805276, 0.114746, -0.581690,
		-0.553220, 0.498300, -0.667567,
		36.510315, 33.481972, 26.670231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337112, 33.653290, 26.732435>,  <36.897568, 33.133160, 27.137527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337112, 33.653290, 26.732435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955143, 33.763939, 26.775517>,  <36.725960, 33.830330, 26.801365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955143, 33.763939, 26.775517>,  <37.337112, 33.653290, 26.732435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955143, 33.763939, 26.775517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294468, 0.836872, 0.461448,
		0.037514, 0.472362, -0.880606,
		-0.954925, 0.276621, 0.107701,
		36.668667, 33.846924, 26.807827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371254, 34.409180, 26.507858>,  <37.337112, 33.653290, 26.732435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371254, 34.409180, 26.507858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009033, 34.366398, 26.672073>,  <36.791702, 34.340729, 26.770603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009033, 34.366398, 26.672073>,  <37.371254, 34.409180, 26.507858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009033, 34.366398, 26.672073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108730, 0.876870, 0.468270,
		-0.410071, 0.468679, -0.782420,
		-0.905549, -0.106952, 0.410538,
		36.737370, 34.334312, 26.795235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099136, 35.118591, 26.664753>,  <37.371254, 34.409180, 26.507858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099136, 35.118591, 26.664753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879730, 34.887543, 26.906574>,  <36.748085, 34.748913, 27.051666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879730, 34.887543, 26.906574>,  <37.099136, 35.118591, 26.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879730, 34.887543, 26.906574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109763, 0.667026, 0.736904,
		-0.828904, 0.470561, -0.302473,
		-0.548516, -0.577623, 0.604551,
		36.715176, 34.714256, 27.087940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682831, 35.620949, 27.110048>,  <37.099136, 35.118591, 26.664753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682831, 35.620949, 27.110048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659412, 35.272121, 27.304396>,  <36.645363, 35.062824, 27.421003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659412, 35.272121, 27.304396>,  <36.682831, 35.620949, 27.110048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659412, 35.272121, 27.304396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233633, 0.461218, 0.855976,
		-0.970561, 0.163630, 0.176741,
		-0.058547, -0.872069, 0.485869,
		36.641850, 35.010502, 27.450157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313786, 35.798290, 27.817120>,  <36.682831, 35.620949, 27.110048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313786, 35.798290, 27.817120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 35.462128, 27.864212>,  <36.652355, 35.260429, 27.892467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 35.462128, 27.864212>,  <36.313786, 35.798290, 27.817120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525391, 35.462128, 27.864212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244097, 0.283566, 0.927365,
		-0.812751, -0.461848, 0.355151,
		0.529011, -0.840408, 0.117733,
		36.684093, 35.210007, 27.899532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185097, 35.535572, 28.530590>,  <36.313786, 35.798290, 27.817120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185097, 35.535572, 28.530590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528400, 35.356163, 28.430817>,  <36.734383, 35.248516, 28.370953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528400, 35.356163, 28.430817>,  <36.185097, 35.535572, 28.530590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528400, 35.356163, 28.430817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345597, 0.145790, 0.926989,
		-0.379413, -0.881800, 0.280134,
		0.858259, -0.448525, -0.249432,
		36.785877, 35.221607, 28.355988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320660, 35.153839, 29.106613>,  <36.185097, 35.535572, 28.530590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320660, 35.153839, 29.106613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673683, 35.229523, 28.934433>,  <36.885498, 35.274933, 28.831125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673683, 35.229523, 28.934433>,  <36.320660, 35.153839, 29.106613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673683, 35.229523, 28.934433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388120, 0.223617, 0.894069,
		0.265426, -0.956135, 0.123917,
		0.882560, 0.189214, -0.430449,
		36.938450, 35.286285, 28.805298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805740, 34.683895, 29.351442>,  <36.320660, 35.153839, 29.106613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805740, 34.683895, 29.351442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044746, 34.970837, 29.208124>,  <37.188152, 35.143002, 29.122133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044746, 34.970837, 29.208124>,  <36.805740, 34.683895, 29.351442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044746, 34.970837, 29.208124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484088, 0.033506, 0.874377,
		0.639242, -0.695904, -0.327242,
		0.597518, 0.717353, -0.358297,
		37.224003, 35.186043, 29.100636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551037, 34.531914, 29.396847>,  <36.805740, 34.683895, 29.351442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551037, 34.531914, 29.396847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541386, 34.930000, 29.358963>,  <37.535595, 35.168850, 29.336233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541386, 34.930000, 29.358963>,  <37.551037, 34.531914, 29.396847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541386, 34.930000, 29.358963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585048, 0.090874, 0.805891,
		0.810639, -0.035968, -0.584440,
		-0.024124, 0.995213, -0.094709,
		37.534149, 35.228565, 29.330551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301842, 34.791481, 29.459356>,  <37.551037, 34.531914, 29.396847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301842, 34.791481, 29.459356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076256, 35.111923, 29.539528>,  <37.940903, 35.304188, 29.587631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076256, 35.111923, 29.539528>,  <38.301842, 34.791481, 29.459356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076256, 35.111923, 29.539528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578963, 0.210506, 0.787711,
		0.588848, 0.560283, -0.582529,
		-0.563967, 0.801105, 0.200427,
		37.907066, 35.352253, 29.599655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800945, 35.237518, 29.541857>,  <38.301842, 34.791481, 29.459356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800945, 35.237518, 29.541857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478840, 35.371742, 29.737389>,  <38.285576, 35.452274, 29.854708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478840, 35.371742, 29.737389>,  <38.800945, 35.237518, 29.541857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478840, 35.371742, 29.737389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581486, 0.285807, 0.761701,
		0.115882, 0.897617, -0.425271,
		-0.805261, 0.335556, 0.488832,
		38.237263, 35.472408, 29.884039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032612, 35.733253, 29.940863>,  <38.800945, 35.237518, 29.541857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032612, 35.733253, 29.940863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670364, 35.678913, 30.101564>,  <38.453018, 35.646309, 30.197985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670364, 35.678913, 30.101564>,  <39.032612, 35.733253, 29.940863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670364, 35.678913, 30.101564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388271, 0.115506, 0.914278,
		-0.170607, 0.983974, -0.051858,
		-0.905615, -0.135847, 0.401754,
		38.398682, 35.638161, 30.222090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929409, 36.296509, 30.417948>,  <39.032612, 35.733253, 29.940863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929409, 36.296509, 30.417948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670593, 36.013592, 30.531845>,  <38.515305, 35.843842, 30.600183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670593, 36.013592, 30.531845>,  <38.929409, 36.296509, 30.417948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670593, 36.013592, 30.531845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314763, 0.092355, 0.944666,
		-0.694456, 0.700859, 0.162874,
		-0.647036, -0.707296, 0.284741,
		38.476482, 35.801403, 30.617268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718143, 36.517555, 31.040775>,  <38.929409, 36.296509, 30.417948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718143, 36.517555, 31.040775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610573, 36.132553, 31.055002>,  <38.546032, 35.901550, 31.063538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610573, 36.132553, 31.055002>,  <38.718143, 36.517555, 31.040775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610573, 36.132553, 31.055002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311524, -0.051979, 0.948816,
		-0.911390, 0.266241, 0.313822,
		-0.268926, -0.962504, 0.035568,
		38.529896, 35.843803, 31.065672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270733, 36.458263, 31.607698>,  <38.718143, 36.517555, 31.040775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270733, 36.458263, 31.607698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441704, 36.107269, 31.520681>,  <38.544285, 35.896671, 31.468472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441704, 36.107269, 31.520681>,  <38.270733, 36.458263, 31.607698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441704, 36.107269, 31.520681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223025, -0.130849, 0.965991,
		-0.876108, -0.461408, 0.139773,
		0.427427, -0.877486, -0.217544,
		38.569931, 35.844025, 31.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009880, 36.045322, 32.051220>,  <38.270733, 36.458263, 31.607698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009880, 36.045322, 32.051220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340912, 35.862003, 31.921555>,  <38.539532, 35.752010, 31.843756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340912, 35.862003, 31.921555>,  <38.009880, 36.045322, 32.051220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340912, 35.862003, 31.921555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291754, -0.142183, 0.945867,
		-0.479579, -0.877352, 0.016043,
		0.827577, -0.458299, -0.324159,
		38.589184, 35.724514, 31.824306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051086, 35.477589, 32.505802>,  <38.009880, 36.045322, 32.051220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051086, 35.477589, 32.505802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422722, 35.514542, 32.362553>,  <38.645702, 35.536713, 32.276604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422722, 35.514542, 32.362553>,  <38.051086, 35.477589, 32.505802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422722, 35.514542, 32.362553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364271, -0.061058, 0.929289,
		0.063987, -0.993850, -0.090382,
		0.929092, 0.092386, -0.358123,
		38.701450, 35.542255, 32.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471241, 34.885227, 32.701862>,  <38.051086, 35.477589, 32.505802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471241, 34.885227, 32.701862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734161, 35.177208, 32.626907>,  <38.891914, 35.352398, 32.581936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734161, 35.177208, 32.626907>,  <38.471241, 34.885227, 32.701862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734161, 35.177208, 32.626907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584825, -0.337233, 0.737735,
		0.475320, -0.594507, -0.648562,
		0.657305, 0.729955, -0.187389,
		38.931355, 35.396194, 32.570690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036961, 34.496334, 32.827145>,  <38.471241, 34.885227, 32.701862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036961, 34.496334, 32.827145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147896, 34.880638, 32.828735>,  <39.214458, 35.111221, 32.829689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147896, 34.880638, 32.828735>,  <39.036961, 34.496334, 32.827145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147896, 34.880638, 32.828735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482186, -0.142766, 0.864358,
		0.831011, -0.237804, -0.502861,
		0.277339, 0.960764, 0.003975,
		39.231098, 35.168869, 32.829929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766689, 34.601494, 32.864017>,  <39.036961, 34.496334, 32.827145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766689, 34.601494, 32.864017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610756, 34.938408, 33.012924>,  <39.517197, 35.140556, 33.102268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610756, 34.938408, 33.012924>,  <39.766689, 34.601494, 32.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610756, 34.938408, 33.012924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469700, -0.165847, 0.867108,
		0.792093, 0.512882, -0.330969,
		-0.389834, 0.842287, 0.372267,
		39.493805, 35.191093, 33.124603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305431, 34.866901, 33.155273>,  <39.766689, 34.601494, 32.864017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305431, 34.866901, 33.155273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980030, 35.035423, 33.315636>,  <39.784790, 35.136536, 33.411854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980030, 35.035423, 33.315636>,  <40.305431, 34.866901, 33.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980030, 35.035423, 33.315636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314747, -0.260729, 0.912664,
		0.489033, 0.868635, 0.079500,
		-0.813499, 0.421300, 0.400905,
		39.735981, 35.161812, 33.435905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607437, 35.253906, 33.633907>,  <40.305431, 34.866901, 33.155273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607437, 35.253906, 33.633907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227905, 35.213760, 33.753677>,  <40.000187, 35.189674, 33.825539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227905, 35.213760, 33.753677>,  <40.607437, 35.253906, 33.633907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227905, 35.213760, 33.753677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312602, -0.163919, 0.935634,
		-0.044820, 0.981355, 0.186904,
		-0.948826, -0.100361, 0.299427,
		39.943256, 35.183651, 33.843506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485695, 35.722244, 34.211277>,  <40.607437, 35.253906, 33.633907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485695, 35.722244, 34.211277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225372, 35.418953, 34.226959>,  <40.069180, 35.236977, 34.236370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225372, 35.418953, 34.226959>,  <40.485695, 35.722244, 34.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225372, 35.418953, 34.226959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410547, -0.308004, 0.858245,
		-0.638674, 0.574645, 0.511741,
		-0.650805, -0.758232, 0.039204,
		40.030132, 35.191483, 34.238720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718166, 36.453815, 34.000000>,  <40.485695, 35.722244, 34.211277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718166, 36.453815, 34.000000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061539, 36.615757, 34.125973>,  <41.267563, 36.712921, 34.201557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061539, 36.615757, 34.125973>,  <40.718166, 36.453815, 34.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061539, 36.615757, 34.125973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510624, 0.732602, 0.450064,
		-0.048510, -0.547163, 0.835619,
		0.858434, 0.404855, 0.314933,
		41.319069, 36.737213, 34.220451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530613, 36.761005, 34.673290>,  <40.718166, 36.453815, 34.000000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530613, 36.761005, 34.673290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890633, 36.916462, 34.594437>,  <41.106644, 37.009735, 34.547123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890633, 36.916462, 34.594437>,  <40.530613, 36.761005, 34.673290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890633, 36.916462, 34.594437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239862, 0.819500, 0.520466,
		0.363830, -0.421161, 0.830814,
		0.900052, 0.388642, -0.197138,
		41.160648, 37.033054, 34.535294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034496, 36.701290, 35.247528>,  <40.530613, 36.761005, 34.673290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034496, 36.701290, 35.247528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093323, 37.024914, 35.019917>,  <41.128616, 37.219090, 34.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093323, 37.024914, 35.019917>,  <41.034496, 36.701290, 35.247528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093323, 37.024914, 35.019917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247563, 0.587076, 0.770748,
		0.957646, 0.027522, 0.286631,
		0.147062, 0.809063, -0.569025,
		41.137440, 37.267632, 34.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261005, 37.133747, 35.720520>,  <41.034496, 36.701290, 35.247528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261005, 37.133747, 35.720520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231827, 37.379993, 35.406654>,  <41.214321, 37.527740, 35.218334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231827, 37.379993, 35.406654>,  <41.261005, 37.133747, 35.720520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231827, 37.379993, 35.406654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143467, 0.772100, 0.619095,
		0.986963, 0.157732, 0.032001,
		-0.072944, 0.615615, -0.784664,
		41.209946, 37.564678, 35.171257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794304, 37.661442, 35.779873>,  <41.261005, 37.133747, 35.720520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794304, 37.661442, 35.779873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485100, 37.791382, 35.561909>,  <41.299576, 37.869347, 35.431129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485100, 37.791382, 35.561909>,  <41.794304, 37.661442, 35.779873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485100, 37.791382, 35.561909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080124, 0.802076, 0.591823,
		0.629310, 0.501147, -0.593987,
		-0.773013, 0.324847, -0.544909,
		41.253197, 37.888836, 35.398438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834549, 38.309883, 35.971287>,  <41.794304, 37.661442, 35.779873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834549, 38.309883, 35.971287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517437, 38.347076, 35.730335>,  <41.327171, 38.369392, 35.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517437, 38.347076, 35.730335>,  <41.834549, 38.309883, 35.971287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517437, 38.347076, 35.730335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262906, 0.839464, 0.475585,
		0.549897, 0.535401, -0.641061,
		-0.792776, 0.092984, -0.602379,
		41.279606, 38.374973, 35.549622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806370, 39.028854, 35.742908>,  <41.834549, 38.309883, 35.971287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806370, 39.028854, 35.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435287, 38.886723, 35.697124>,  <41.212639, 38.801445, 35.669655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435287, 38.886723, 35.697124>,  <41.806370, 39.028854, 35.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435287, 38.886723, 35.697124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373194, 0.875118, 0.308051,
		-0.009292, 0.328497, -0.944460,
		-0.927707, -0.355329, -0.114461,
		41.156975, 38.780125, 35.662785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362888, 39.592312, 35.419231>,  <41.806370, 39.028854, 35.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362888, 39.592312, 35.419231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143612, 39.325294, 35.620770>,  <41.012047, 39.165085, 35.741692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143612, 39.325294, 35.620770>,  <41.362888, 39.592312, 35.419231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143612, 39.325294, 35.620770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309354, 0.721553, 0.619404,
		-0.777035, 0.183687, -0.602060,
		-0.548195, -0.667548, 0.503847,
		40.979153, 39.125031, 35.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744114, 39.941486, 35.472145>,  <41.362888, 39.592312, 35.419231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744114, 39.941486, 35.472145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746975, 39.666336, 35.762463>,  <40.748692, 39.501247, 35.936653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746975, 39.666336, 35.762463>,  <40.744114, 39.941486, 35.472145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746975, 39.666336, 35.762463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239186, 0.703569, 0.669164,
		-0.970948, -0.178384, -0.159499,
		0.007150, -0.687873, 0.725796,
		40.749119, 39.459972, 35.980202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122620, 40.055382, 35.725716>,  <40.744114, 39.941486, 35.472145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122620, 40.055382, 35.725716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306004, 39.865570, 36.026287>,  <40.416035, 39.751682, 36.206631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306004, 39.865570, 36.026287>,  <40.122620, 40.055382, 35.725716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306004, 39.865570, 36.026287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373874, 0.664076, 0.647474,
		-0.806249, -0.577776, 0.127035,
		0.458456, -0.474530, 0.751425,
		40.443539, 39.723209, 36.251713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678391, 39.966087, 36.237457>,  <40.122620, 40.055382, 35.725716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678391, 39.966087, 36.237457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038963, 39.969341, 36.410595>,  <40.255306, 39.971294, 36.514477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038963, 39.969341, 36.410595>,  <39.678391, 39.966087, 36.237457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038963, 39.969341, 36.410595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316421, 0.694754, 0.645906,
		-0.295468, -0.719202, 0.628846,
		0.901430, 0.008135, 0.432848,
		40.309391, 39.971783, 36.540451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511772, 40.337265, 36.766022>,  <39.678391, 39.966087, 36.237457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511772, 40.337265, 36.766022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902042, 40.304535, 36.847363>,  <40.136204, 40.284897, 36.896168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902042, 40.304535, 36.847363>,  <39.511772, 40.337265, 36.766022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902042, 40.304535, 36.847363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100385, 0.657898, 0.746386,
		-0.194862, -0.748648, 0.633684,
		0.975680, -0.081830, 0.203352,
		40.194748, 40.279987, 36.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717075, 40.269115, 37.606003>,  <39.511772, 40.337265, 36.766022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717075, 40.269115, 37.606003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961151, 40.463074, 37.355389>,  <40.107597, 40.579449, 37.205021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961151, 40.463074, 37.355389>,  <39.717075, 40.269115, 37.606003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961151, 40.463074, 37.355389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014815, 0.783700, 0.620963,
		0.792123, -0.388183, 0.471016,
		0.610182, 0.484901, -0.626537,
		40.144207, 40.608543, 37.167427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311611, 40.614475, 38.054100>,  <39.717075, 40.269115, 37.606003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311611, 40.614475, 38.054100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286110, 40.805267, 37.703461>,  <40.270809, 40.919743, 37.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286110, 40.805267, 37.703461>,  <40.311611, 40.614475, 38.054100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286110, 40.805267, 37.703461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066062, 0.878477, 0.473196,
		0.995777, -0.027744, -0.087513,
		-0.063750, 0.476979, -0.876600,
		40.266983, 40.948360, 37.440479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882690, 41.113373, 38.109871>,  <40.311611, 40.614475, 38.054100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882690, 41.113373, 38.109871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609383, 41.205734, 37.832790>,  <40.445400, 41.261150, 37.666542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609383, 41.205734, 37.832790>,  <40.882690, 41.113373, 38.109871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609383, 41.205734, 37.832790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252300, 0.815587, 0.520732,
		0.685196, 0.530566, -0.499005,
		-0.683265, 0.230904, -0.692699,
		40.404404, 41.275005, 37.624981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892200, 41.780800, 38.186817>,  <40.882690, 41.113373, 38.109871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892200, 41.780800, 38.186817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568657, 41.729229, 37.957340>,  <40.374531, 41.698288, 37.819653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568657, 41.729229, 37.957340>,  <40.892200, 41.780800, 38.186817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568657, 41.729229, 37.957340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415719, 0.815394, 0.402878,
		0.415846, 0.564367, -0.713135,
		-0.808857, -0.128929, -0.573697,
		40.326000, 41.690552, 37.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670853, 42.496529, 37.977104>,  <40.892200, 41.780800, 38.186817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670853, 42.496529, 37.977104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368607, 42.236931, 37.941643>,  <40.187260, 42.081173, 37.920364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368607, 42.236931, 37.941643>,  <40.670853, 42.496529, 37.977104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368607, 42.236931, 37.941643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578691, 0.598013, 0.554523,
		-0.306862, 0.470311, -0.827432,
		-0.755614, -0.648990, -0.088657,
		40.141922, 42.042233, 37.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226639, 42.974758, 37.895264>,  <40.670853, 42.496529, 37.977104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226639, 42.974758, 37.895264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981045, 42.667099, 37.966194>,  <39.833691, 42.482506, 38.008755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981045, 42.667099, 37.966194>,  <40.226639, 42.974758, 37.895264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981045, 42.667099, 37.966194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536954, 0.571664, 0.620388,
		-0.578540, 0.285689, -0.763985,
		-0.613981, -0.769144, 0.177329,
		39.796852, 42.436356, 38.019394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452354, 43.148113, 37.752312>,  <40.226639, 42.974758, 37.895264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452354, 43.148113, 37.752312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477428, 42.866463, 38.035233>,  <39.492474, 42.697472, 38.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477428, 42.866463, 38.035233>,  <39.452354, 43.148113, 37.752312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477428, 42.866463, 38.035233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534934, 0.574597, 0.619423,
		-0.842566, -0.417189, -0.340641,
		0.062685, -0.704125, 0.707304,
		39.496235, 42.655224, 38.247425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839478, 43.073486, 38.003078>,  <39.452354, 43.148113, 37.752312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839478, 43.073486, 38.003078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077553, 42.923161, 38.287193>,  <39.220398, 42.832966, 38.457664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077553, 42.923161, 38.287193>,  <38.839478, 43.073486, 38.003078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077553, 42.923161, 38.287193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405031, 0.623114, 0.669088,
		-0.694043, -0.685925, 0.218657,
		0.595193, -0.375813, 0.710289,
		39.256111, 42.810417, 38.500278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339832, 42.762962, 38.609619>,  <38.839478, 43.073486, 38.003078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339832, 42.762962, 38.609619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700600, 42.915737, 38.690289>,  <38.917061, 43.007404, 38.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700600, 42.915737, 38.690289>,  <38.339832, 42.762962, 38.609619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700600, 42.915737, 38.690289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425507, 0.705580, 0.566658,
		0.074132, -0.596890, 0.798891,
		0.901914, 0.381941, 0.201675,
		38.971172, 43.030319, 38.750790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390171, 42.966999, 39.343456>,  <38.339832, 42.762962, 38.609619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390171, 42.966999, 39.343456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632942, 43.173836, 39.102043>,  <38.778603, 43.297939, 38.957195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632942, 43.173836, 39.102043>,  <38.390171, 42.966999, 39.343456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632942, 43.173836, 39.102043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187626, 0.831152, 0.523433,
		0.772294, -0.204446, 0.601468,
		0.606926, 0.517095, -0.603535,
		38.815022, 43.328964, 38.920982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070904, 42.828896, 39.519295>,  <38.390171, 42.966999, 39.343456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070904, 42.828896, 39.519295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892227, 42.623676, 39.226105>,  <38.785023, 42.500546, 39.050190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892227, 42.623676, 39.226105>,  <39.070904, 42.828896, 39.519295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892227, 42.623676, 39.226105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891796, -0.321137, -0.318702,
		-0.071877, -0.796025, 0.600981,
		-0.446692, -0.513045, -0.732974,
		38.758221, 42.469765, 39.006214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487965, 42.243778, 39.460812>,  <39.070904, 42.828896, 39.519295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487965, 42.243778, 39.460812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276020, 42.302708, 39.126736>,  <39.148853, 42.338066, 38.926289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276020, 42.302708, 39.126736>,  <39.487965, 42.243778, 39.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276020, 42.302708, 39.126736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811851, -0.196682, -0.549740,
		-0.245255, -0.969337, -0.015388,
		-0.529857, 0.147319, -0.835194,
		39.117062, 42.346905, 38.876179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732517, 41.725224, 39.044853>,  <39.487965, 42.243778, 39.460812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732517, 41.725224, 39.044853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560432, 41.957077, 38.768028>,  <39.457180, 42.096188, 38.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560432, 41.957077, 38.768028>,  <39.732517, 41.725224, 39.044853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560432, 41.957077, 38.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549436, -0.440152, -0.710202,
		-0.716264, -0.685782, -0.129109,
		-0.430216, 0.579629, -0.692058,
		39.431366, 42.130966, 38.560410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197063, 41.406563, 38.501259>,  <39.732517, 41.725224, 39.044853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197063, 41.406563, 38.501259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387211, 41.723946, 38.349236>,  <39.501301, 41.914375, 38.258022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387211, 41.723946, 38.349236>,  <39.197063, 41.406563, 38.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387211, 41.723946, 38.349236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282668, -0.546835, -0.788080,
		-0.833139, 0.267200, -0.484235,
		0.475372, 0.793458, -0.380061,
		39.529823, 41.961983, 38.235218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943527, 41.537037, 37.770012>,  <39.197063, 41.406563, 38.501259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943527, 41.537037, 37.770012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303173, 41.712013, 37.776176>,  <39.518959, 41.816998, 37.779877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303173, 41.712013, 37.776176>,  <38.943527, 41.537037, 37.770012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303173, 41.712013, 37.776176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249642, -0.483556, -0.838959,
		-0.359541, 0.758169, -0.543976,
		0.899116, 0.437439, 0.015412,
		39.572906, 41.843246, 37.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180382, 41.678120, 37.081100>,  <38.943527, 41.537037, 37.770012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180382, 41.678120, 37.081100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526730, 41.660202, 37.280403>,  <39.734539, 41.649452, 37.399986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526730, 41.660202, 37.280403>,  <39.180382, 41.678120, 37.081100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526730, 41.660202, 37.280403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435394, -0.423039, -0.794651,
		0.246376, 0.905004, -0.346796,
		0.865870, -0.044790, 0.498259,
		39.786491, 41.646767, 37.429882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634148, 41.801605, 36.610245>,  <39.180382, 41.678120, 37.081100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634148, 41.801605, 36.610245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814781, 41.622192, 36.918758>,  <39.923164, 41.514545, 37.103867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814781, 41.622192, 36.918758>,  <39.634148, 41.801605, 36.610245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814781, 41.622192, 36.918758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459113, -0.624407, -0.631927,
		0.765038, 0.639480, -0.076047,
		0.451589, -0.448534, 0.771288,
		39.950256, 41.487633, 37.150146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287655, 41.597176, 36.345806>,  <39.634148, 41.801605, 36.610245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287655, 41.597176, 36.345806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247391, 41.388916, 36.684933>,  <40.223232, 41.263958, 36.888409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247391, 41.388916, 36.684933>,  <40.287655, 41.597176, 36.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247391, 41.388916, 36.684933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335017, -0.820117, -0.463866,
		0.936820, 0.237341, 0.256977,
		-0.100657, -0.520651, 0.847815,
		40.217194, 41.232719, 36.939278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900002, 41.197876, 36.317680>,  <40.287655, 41.597176, 36.345806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900002, 41.197876, 36.317680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644978, 41.012974, 36.564205>,  <40.491962, 40.902031, 36.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644978, 41.012974, 36.564205>,  <40.900002, 41.197876, 36.317680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644978, 41.012974, 36.564205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225878, -0.876987, -0.424114,
		0.736545, -0.131187, 0.663545,
		-0.637559, -0.462259, 0.616308,
		40.453709, 40.874294, 36.749096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321407, 40.796757, 36.763657>,  <40.900002, 41.197876, 36.317680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321407, 40.796757, 36.763657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999893, 40.719418, 36.988708>,  <40.806984, 40.673016, 37.123737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999893, 40.719418, 36.988708>,  <41.321407, 40.796757, 36.763657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999893, 40.719418, 36.988708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086731, -0.897530, -0.432339,
		0.588566, -0.396304, 0.704651,
		-0.803784, -0.193345, 0.562628,
		40.758759, 40.661415, 37.157497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415813, 40.182163, 37.220764>,  <41.321407, 40.796757, 36.763657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415813, 40.182163, 37.220764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028378, 40.217400, 37.127754>,  <40.795914, 40.238541, 37.071949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028378, 40.217400, 37.127754>,  <41.415813, 40.182163, 37.220764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028378, 40.217400, 37.127754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009779, -0.920928, -0.389611,
		-0.248461, -0.379648, 0.891142,
		-0.968593, 0.088089, -0.232527,
		40.737801, 40.243828, 37.057995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210827, 39.495880, 37.344437>,  <41.415813, 40.182163, 37.220764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210827, 39.495880, 37.344437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931236, 39.658268, 37.108940>,  <40.763481, 39.755699, 36.967640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931236, 39.658268, 37.108940>,  <41.210827, 39.495880, 37.344437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931236, 39.658268, 37.108940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038683, -0.843511, -0.535717,
		-0.714096, -0.351680, 0.605299,
		-0.698978, 0.405968, -0.588744,
		40.721542, 39.780060, 36.932316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951305, 38.959404, 37.207989>,  <41.210827, 39.495880, 37.344437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951305, 38.959404, 37.207989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797981, 39.196205, 36.924412>,  <40.705986, 39.338287, 36.754265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797981, 39.196205, 36.924412>,  <40.951305, 38.959404, 37.207989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797981, 39.196205, 36.924412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121536, -0.793228, -0.596673,
		-0.915588, -0.142548, 0.376002,
		-0.383310, 0.592005, -0.708945,
		40.682987, 39.373806, 36.711727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375702, 38.545055, 36.937351>,  <40.951305, 38.959404, 37.207989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375702, 38.545055, 36.937351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495049, 38.803955, 36.656765>,  <40.566654, 38.959293, 36.488415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495049, 38.803955, 36.656765>,  <40.375702, 38.545055, 36.937351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495049, 38.803955, 36.656765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040298, -0.742823, -0.668274,
		-0.953601, 0.171121, -0.247714,
		0.298363, 0.647249, -0.701461,
		40.584557, 38.998131, 36.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004692, 38.474541, 36.352150>,  <40.375702, 38.545055, 36.937351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004692, 38.474541, 36.352150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309277, 38.684498, 36.200008>,  <40.492027, 38.810471, 36.108723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309277, 38.684498, 36.200008>,  <40.004692, 38.474541, 36.352150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309277, 38.684498, 36.200008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056722, -0.530569, -0.845742,
		-0.645728, 0.665571, -0.374233,
		0.761458, 0.524892, -0.380356,
		40.537712, 38.841965, 36.085903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946335, 38.276703, 35.727814>,  <40.004692, 38.474541, 36.352150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946335, 38.276703, 35.727814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310577, 38.440872, 35.708439>,  <40.529121, 38.539375, 35.696815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310577, 38.440872, 35.708439>,  <39.946335, 38.276703, 35.727814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310577, 38.440872, 35.708439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229808, -0.600273, -0.766068,
		-0.343489, 0.686456, -0.640932,
		0.910606, 0.410427, -0.048434,
		40.583759, 38.563999, 35.693909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049690, 38.395199, 35.075226>,  <39.946335, 38.276703, 35.727814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049690, 38.395199, 35.075226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423088, 38.387615, 35.218464>,  <40.647125, 38.383064, 35.304409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423088, 38.387615, 35.218464>,  <40.049690, 38.395199, 35.075226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423088, 38.387615, 35.218464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259646, -0.653053, -0.711411,
		0.247343, 0.757075, -0.604697,
		0.933491, -0.018955, 0.358100,
		40.703136, 38.381927, 35.325893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477043, 38.577450, 34.562016>,  <40.049690, 38.395199, 35.075226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477043, 38.577450, 34.562016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689564, 38.369102, 34.829273>,  <40.817078, 38.244095, 34.989628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689564, 38.369102, 34.829273>,  <40.477043, 38.577450, 34.562016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689564, 38.369102, 34.829273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443966, -0.500512, -0.743224,
		0.721533, 0.691511, -0.034678,
		0.531305, -0.520864, 0.668143,
		40.848957, 38.212845, 35.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000286, 38.306675, 34.168320>,  <40.477043, 38.577450, 34.562016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000286, 38.306675, 34.168320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069836, 38.082767, 34.492401>,  <41.111565, 37.948421, 34.686848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069836, 38.082767, 34.492401>,  <41.000286, 38.306675, 34.168320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069836, 38.082767, 34.492401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575400, -0.609930, -0.544885,
		0.799176, 0.560931, 0.216041,
		0.173872, -0.559769, 0.810202,
		41.121998, 37.914837, 34.735462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682858, 38.260887, 34.285538>,  <41.000286, 38.306675, 34.168320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682858, 38.260887, 34.285538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528351, 37.944798, 34.475838>,  <41.435646, 37.755142, 34.590019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528351, 37.944798, 34.475838>,  <41.682858, 38.260887, 34.285538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528351, 37.944798, 34.475838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709784, -0.584044, -0.393827,
		0.589073, 0.185560, 0.786486,
		-0.386264, -0.790228, 0.475752,
		41.412472, 37.707729, 34.618565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230804, 37.739944, 34.229630>,  <41.682858, 38.260887, 34.285538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230804, 37.739944, 34.229630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914951, 37.518883, 34.336258>,  <41.725441, 37.386246, 34.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914951, 37.518883, 34.336258>,  <42.230804, 37.739944, 34.229630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914951, 37.518883, 34.336258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486788, -0.828723, -0.276146,
		0.373529, -0.088287, 0.923407,
		-0.789629, -0.552652, 0.266575,
		41.678062, 37.353088, 34.416229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458790, 37.156998, 34.683117>,  <42.230804, 37.739944, 34.229630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458790, 37.156998, 34.683117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104397, 37.017384, 34.560997>,  <41.891762, 36.933617, 34.487724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104397, 37.017384, 34.560997>,  <42.458790, 37.156998, 34.683117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104397, 37.017384, 34.560997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416389, -0.888571, -0.192512,
		-0.204083, -0.297684, 0.932595,
		-0.885985, -0.349034, -0.305295,
		41.838600, 36.912674, 34.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181873, 36.573189, 35.138069>,  <42.458790, 37.156998, 34.683117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181873, 36.573189, 35.138069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103760, 36.514198, 34.750233>,  <42.056892, 36.478806, 34.517529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103760, 36.514198, 34.750233>,  <42.181873, 36.573189, 35.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103760, 36.514198, 34.750233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462022, -0.885888, 0.041684,
		-0.865100, -0.439834, 0.241139,
		-0.195288, -0.147472, -0.969595,
		42.045174, 36.469955, 34.459354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916500, 35.938992, 35.154530>,  <42.181873, 36.573189, 35.138069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916500, 35.938992, 35.154530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126812, 36.032837, 34.827480>,  <42.252998, 36.089146, 34.631248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126812, 36.032837, 34.827480>,  <41.916500, 35.938992, 35.154530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126812, 36.032837, 34.827480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562321, -0.817087, 0.127139,
		-0.638243, -0.526616, -0.561534,
		0.525776, 0.234617, -0.817627,
		42.284546, 36.103222, 34.582191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892143, 35.334942, 34.655998>,  <41.916500, 35.938992, 35.154530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892143, 35.334942, 34.655998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220909, 35.557175, 34.605724>,  <42.418167, 35.690514, 34.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220909, 35.557175, 34.605724>,  <41.892143, 35.334942, 34.655998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220909, 35.557175, 34.605724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569524, -0.797546, 0.198903,
		0.010271, -0.235059, -0.971927,
		0.821910, 0.555579, -0.125680,
		42.467484, 35.723846, 34.568020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389977, 35.014244, 34.225433>,  <41.892143, 35.334942, 34.655998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389977, 35.014244, 34.225433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590324, 35.282715, 34.444027>,  <42.710533, 35.443798, 34.575184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590324, 35.282715, 34.444027>,  <42.389977, 35.014244, 34.225433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590324, 35.282715, 34.444027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646841, -0.709795, 0.278904,
		0.575087, 0.213794, -0.789662,
		0.500870, 0.671180, 0.546485,
		42.740585, 35.484070, 34.607971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151394, 35.057190, 33.989155>,  <42.389977, 35.014244, 34.225433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151394, 35.057190, 33.989155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112762, 35.153366, 34.375492>,  <43.089584, 35.211071, 34.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112762, 35.153366, 34.375492>,  <43.151394, 35.057190, 33.989155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112762, 35.153366, 34.375492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670014, -0.701888, 0.241732,
		0.736039, 0.670477, -0.093310,
		-0.096582, 0.240443, 0.965846,
		43.083786, 35.225498, 34.665245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785046, 35.257195, 34.301632>,  <43.151394, 35.057190, 33.989155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785046, 35.257195, 34.301632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550198, 35.113003, 34.591553>,  <43.409286, 35.026489, 34.765507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550198, 35.113003, 34.591553>,  <43.785046, 35.257195, 34.301632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550198, 35.113003, 34.591553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693702, -0.685524, 0.220986,
		0.417210, 0.632545, 0.652551,
		-0.587123, -0.360479, 0.724805,
		43.374062, 35.004860, 34.808994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455124, 35.265636, 33.760162>,  <43.785046, 35.257195, 34.301632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455124, 35.265636, 33.760162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689728, 35.572090, 33.865265>,  <44.830490, 35.755962, 33.928326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689728, 35.572090, 33.865265>,  <44.455124, 35.265636, 33.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689728, 35.572090, 33.865265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120391, -0.403276, 0.907124,
		0.800944, -0.500404, -0.328762,
		0.586510, 0.766136, 0.262758,
		44.865681, 35.801929, 33.944092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033337, 34.950611, 33.928009>,  <44.455124, 35.265636, 33.760162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033337, 34.950611, 33.928009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046638, 35.303940, 34.115040>,  <45.054619, 35.515938, 34.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046638, 35.303940, 34.115040>,  <45.033337, 34.950611, 33.928009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046638, 35.303940, 34.115040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575318, -0.399472, 0.713744,
		0.817254, 0.245274, -0.521476,
		0.033252, 0.883325, 0.467581,
		45.056614, 35.568935, 34.255314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589249, 34.912815, 34.369946>,  <45.033337, 34.950611, 33.928009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589249, 34.912815, 34.369946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425838, 35.255379, 34.496223>,  <45.327793, 35.460918, 34.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425838, 35.255379, 34.496223>,  <45.589249, 34.912815, 34.369946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425838, 35.255379, 34.496223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501309, -0.078509, 0.861699,
		0.762753, 0.510291, -0.397253,
		-0.408530, 0.856411, 0.315697,
		45.303280, 35.512302, 34.590931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054241, 35.131802, 34.789219>,  <45.589249, 34.912815, 34.369946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054241, 35.131802, 34.789219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742783, 35.362270, 34.888607>,  <45.555908, 35.500553, 34.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742783, 35.362270, 34.888607>,  <46.054241, 35.131802, 34.789219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742783, 35.362270, 34.888607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442235, 0.222999, 0.868734,
		0.445132, 0.786318, -0.428441,
		-0.778643, 0.576173, 0.248474,
		45.509190, 35.535122, 34.963150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283077, 35.673412, 35.095852>,  <46.054241, 35.131802, 34.789219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283077, 35.673412, 35.095852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911537, 35.635307, 35.239048>,  <45.688614, 35.612446, 35.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911537, 35.635307, 35.239048>,  <46.283077, 35.673412, 35.095852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911537, 35.635307, 35.239048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301961, 0.365106, 0.880634,
		-0.214596, 0.926079, -0.310365,
		-0.928853, -0.095262, 0.357990,
		45.632881, 35.606728, 35.346443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059292, 36.289898, 35.393665>,  <46.283077, 35.673412, 35.095852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059292, 36.289898, 35.393665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899128, 35.973816, 35.579247>,  <45.803032, 35.784168, 35.690598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899128, 35.973816, 35.579247>,  <46.059292, 36.289898, 35.393665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899128, 35.973816, 35.579247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227582, 0.404695, 0.885680,
		-0.887627, 0.460220, 0.017793,
		-0.400407, -0.790202, 0.463956,
		45.779007, 35.736755, 35.718433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702362, 36.435356, 35.977234>,  <46.059292, 36.289898, 35.393665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702362, 36.435356, 35.977234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811394, 36.062248, 36.071579>,  <45.876812, 35.838383, 36.128185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811394, 36.062248, 36.071579>,  <45.702362, 36.435356, 35.977234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811394, 36.062248, 36.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273882, 0.310233, 0.910354,
		-0.922329, -0.183542, 0.340033,
		0.272578, -0.932775, 0.235867,
		45.893166, 35.782417, 36.142338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478241, 36.267227, 36.615501>,  <45.702362, 36.435356, 35.977234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478241, 36.267227, 36.615501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789139, 36.030628, 36.529697>,  <45.975677, 35.888668, 36.478214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789139, 36.030628, 36.529697>,  <45.478241, 36.267227, 36.615501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789139, 36.030628, 36.529697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509564, 0.391759, 0.766074,
		-0.369097, -0.704735, 0.605900,
		0.777246, -0.591501, -0.214511,
		46.022312, 35.853176, 36.465343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874287, 36.223438, 37.189911>,  <45.478241, 36.267227, 36.615501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874287, 36.223438, 37.189911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142464, 36.133080, 36.907219>,  <46.303371, 36.078865, 36.737602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.142464, 36.133080, 36.907219>,  <45.874287, 36.223438, 37.189911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142464, 36.133080, 36.907219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657110, 0.623108, 0.424197,
		0.344545, -0.748803, 0.566201,
		0.670444, -0.225901, -0.706735,
		46.343597, 36.065308, 36.695198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855381, 35.483032, 36.931194>,  <45.874287, 36.223438, 37.189911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855381, 35.483032, 36.931194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161446, 35.228752, 36.890377>,  <46.345085, 35.076183, 36.865887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161446, 35.228752, 36.890377>,  <45.855381, 35.483032, 36.931194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161446, 35.228752, 36.890377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643835, 0.755987, 0.118149,
		0.002033, -0.156099, 0.987739,
		0.765161, -0.635701, -0.102040,
		46.390995, 35.038040, 36.859764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379654, 35.719212, 37.484478>,  <45.855381, 35.483032, 36.931194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379654, 35.719212, 37.484478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556992, 35.523312, 37.184189>,  <46.663395, 35.405769, 37.004017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556992, 35.523312, 37.184189>,  <46.379654, 35.719212, 37.484478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556992, 35.523312, 37.184189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647060, 0.754454, -0.110058,
		0.620288, -0.436969, 0.651384,
		0.443347, -0.489752, -0.750724,
		46.689995, 35.376385, 36.958973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993034, 35.468327, 37.663822>,  <46.379654, 35.719212, 37.484478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993034, 35.468327, 37.663822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000019, 35.560867, 37.274738>,  <47.004211, 35.616390, 37.041286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000019, 35.560867, 37.274738>,  <46.993034, 35.468327, 37.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000019, 35.560867, 37.274738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800102, 0.580193, 0.152357,
		0.599610, -0.780931, -0.174969,
		0.017464, 0.231348, -0.972714,
		47.005257, 35.630272, 36.982925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.629509, 35.239677, 37.226093>,  <46.993034, 35.468327, 37.663822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.629509, 35.239677, 37.226093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460449, 35.583477, 37.111115>,  <47.359013, 35.789757, 37.042130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460449, 35.583477, 37.111115>,  <47.629509, 35.239677, 37.226093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.460449, 35.583477, 37.111115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896447, 0.443099, 0.006816,
		0.133224, -0.254796, -0.957774,
		-0.422652, 0.859501, -0.287443,
		47.333652, 35.841328, 37.024883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.944912, 35.323093, 36.645126>,  <47.629509, 35.239677, 37.226093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.944912, 35.323093, 36.645126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816196, 35.670456, 36.796028>,  <47.738968, 35.878872, 36.886570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816196, 35.670456, 36.796028>,  <47.944912, 35.323093, 36.645126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816196, 35.670456, 36.796028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935588, 0.352812, -0.014113,
		-0.145357, 0.348417, -0.926001,
		-0.321787, 0.868406, 0.377258,
		47.719662, 35.930977, 36.909206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.766254, 34.792759, 36.062469>,  <47.944912, 35.323093, 36.645126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.766254, 34.792759, 36.062469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782524, 34.735798, 36.458057>,  <47.792286, 34.701622, 36.695412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782524, 34.735798, 36.458057>,  <47.766254, 34.792759, 36.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782524, 34.735798, 36.458057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883768, 0.456650, 0.102101,
		-0.466154, -0.878175, -0.107280,
		0.040673, -0.142406, 0.988973,
		47.794727, 34.693077, 36.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726437, 35.019257, 35.342087>,  <47.766254, 34.792759, 36.062469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726437, 35.019257, 35.342087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607864, 34.844368, 35.002449>,  <47.536720, 34.739433, 34.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607864, 34.844368, 35.002449>,  <47.726437, 35.019257, 35.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607864, 34.844368, 35.002449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128529, -0.899232, 0.418166,
		-0.946365, 0.014825, 0.322760,
		-0.296435, -0.437222, -0.849096,
		47.518932, 34.713200, 34.747719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.326881, 30.351524, 27.117191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014957, 30.600092, 27.086912>,  <33.827801, 30.749233, 27.068745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014957, 30.600092, 27.086912>,  <34.326881, 30.351524, 27.117191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014957, 30.600092, 27.086912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109438, 0.254384, 0.960891,
		0.616374, 0.741030, -0.266379,
		-0.779812, 0.621420, -0.075699,
		33.781013, 30.786518, 27.064203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500351, 30.893814, 27.537485>,  <34.326881, 30.351524, 27.117191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500351, 30.893814, 27.537485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103638, 30.939390, 27.514240>,  <33.865608, 30.966736, 27.500294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.103638, 30.939390, 27.514240>,  <34.500351, 30.893814, 27.537485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103638, 30.939390, 27.514240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022146, 0.294512, 0.955391,
		0.125974, 0.948831, -0.289570,
		-0.991786, 0.113941, -0.058113,
		33.806103, 30.973572, 27.496807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440292, 31.614880, 27.670208>,  <34.500351, 30.893814, 27.537485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440292, 31.614880, 27.670208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110039, 31.409271, 27.763256>,  <33.911888, 31.285906, 27.819084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110039, 31.409271, 27.763256>,  <34.440292, 31.614880, 27.670208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110039, 31.409271, 27.763256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019710, 0.438319, 0.898603,
		-0.563861, 0.737333, -0.372023,
		-0.825635, -0.514019, 0.232618,
		33.862347, 31.255066, 27.833042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172520, 32.113266, 28.100458>,  <34.440292, 31.614880, 27.670208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172520, 32.113266, 28.100458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992432, 31.764387, 28.176952>,  <33.884377, 31.555059, 28.222849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.992432, 31.764387, 28.176952>,  <34.172520, 32.113266, 28.100458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992432, 31.764387, 28.176952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060226, 0.243345, 0.968068,
		-0.890883, 0.424328, -0.162088,
		-0.450222, -0.872198, 0.191237,
		33.857365, 31.502728, 28.234324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583199, 32.240032, 28.421890>,  <34.172520, 32.113266, 28.100458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583199, 32.240032, 28.421890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.670734, 31.871073, 28.549196>,  <33.723255, 31.649698, 28.625580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.670734, 31.871073, 28.549196>,  <33.583199, 32.240032, 28.421890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670734, 31.871073, 28.549196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180295, 0.282332, 0.942222,
		-0.958959, -0.263580, -0.104517,
		0.218843, -0.922396, 0.318267,
		33.736389, 31.594355, 28.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154377, 32.113853, 28.857563>,  <33.583199, 32.240032, 28.421890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154377, 32.113853, 28.857563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.394165, 31.814417, 28.970867>,  <33.538040, 31.634754, 29.038849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.394165, 31.814417, 28.970867>,  <33.154377, 32.113853, 28.857563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394165, 31.814417, 28.970867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068347, 0.304731, 0.949983,
		-0.797471, -0.588850, 0.131514,
		0.599474, -0.748595, 0.283260,
		33.574009, 31.589838, 29.055845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783833, 31.778709, 29.440441>,  <33.154377, 32.113853, 28.857563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783833, 31.778709, 29.440441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172714, 31.686863, 29.458727>,  <33.406044, 31.631754, 29.469698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172714, 31.686863, 29.458727>,  <32.783833, 31.778709, 29.440441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172714, 31.686863, 29.458727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015752, 0.130659, 0.991302,
		-0.233594, -0.964471, 0.123411,
		0.972207, -0.229618, 0.045714,
		33.464375, 31.617977, 29.472441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865898, 31.359684, 30.048727>,  <32.783833, 31.778709, 29.440441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865898, 31.359684, 30.048727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229439, 31.499670, 29.957939>,  <33.447563, 31.583662, 29.903465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229439, 31.499670, 29.957939>,  <32.865898, 31.359684, 30.048727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229439, 31.499670, 29.957939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143489, 0.248621, 0.957914,
		0.391669, -0.903167, 0.175742,
		0.908849, 0.349968, -0.226972,
		33.502094, 31.604660, 29.889847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374748, 31.184446, 30.683764>,  <32.865898, 31.359684, 30.048727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374748, 31.184446, 30.683764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594677, 31.460613, 30.495712>,  <33.726635, 31.626312, 30.382881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594677, 31.460613, 30.495712>,  <33.374748, 31.184446, 30.683764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594677, 31.460613, 30.495712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398684, 0.277667, 0.874044,
		0.733992, -0.668003, -0.122590,
		0.549824, 0.690415, -0.470127,
		33.759624, 31.667738, 30.354673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060551, 31.234930, 31.074741>,  <33.374748, 31.184446, 30.683764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060551, 31.234930, 31.074741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998123, 31.564804, 30.857286>,  <33.960667, 31.762728, 30.726814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.998123, 31.564804, 30.857286>,  <34.060551, 31.234930, 31.074741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998123, 31.564804, 30.857286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283703, 0.564615, 0.775063,
		0.946126, -0.033268, -0.322084,
		-0.156069, 0.824683, -0.543636,
		33.951302, 31.812208, 30.694195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719593, 31.503017, 31.006840>,  <34.060551, 31.234930, 31.074741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719593, 31.503017, 31.006840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435654, 31.783503, 30.980267>,  <34.265289, 31.951794, 30.964323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435654, 31.783503, 30.980267>,  <34.719593, 31.503017, 31.006840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435654, 31.783503, 30.980267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514031, 0.580215, 0.631762,
		0.481546, 0.414306, -0.772311,
		-0.709849, 0.701214, -0.066435,
		34.222698, 31.993866, 30.960337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072231, 32.155609, 30.832037>,  <34.719593, 31.503017, 31.006840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072231, 32.155609, 30.832037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716339, 32.243385, 30.992146>,  <34.502804, 32.296051, 31.088211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716339, 32.243385, 30.992146>,  <35.072231, 32.155609, 30.832037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716339, 32.243385, 30.992146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446166, 0.603392, 0.660950,
		-0.096478, 0.766657, -0.634767,
		-0.889735, 0.219445, 0.400271,
		34.449417, 32.309219, 31.112226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018623, 32.899597, 30.865698>,  <35.072231, 32.155609, 30.832037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018623, 32.899597, 30.865698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732365, 32.803761, 31.128130>,  <34.560608, 32.746258, 31.285589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732365, 32.803761, 31.128130>,  <35.018623, 32.899597, 30.865698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732365, 32.803761, 31.128130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290369, 0.752250, 0.591443,
		-0.635240, 0.613772, -0.468779,
		-0.715651, -0.239589, 0.656080,
		34.517670, 32.731884, 31.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777420, 33.514019, 31.090919>,  <35.018623, 32.899597, 30.865698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777420, 33.514019, 31.090919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649475, 33.245468, 31.358334>,  <34.572708, 33.084339, 31.518782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649475, 33.245468, 31.358334>,  <34.777420, 33.514019, 31.090919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649475, 33.245468, 31.358334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209202, 0.638144, 0.740950,
		-0.924080, 0.376860, -0.063663,
		-0.319861, -0.671378, 0.668536,
		34.553516, 33.044056, 31.558895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232506, 33.819496, 31.406214>,  <34.777420, 33.514019, 31.090919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232506, 33.819496, 31.406214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412113, 33.548485, 31.639221>,  <34.519878, 33.385876, 31.779026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.412113, 33.548485, 31.639221>,  <34.232506, 33.819496, 31.406214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412113, 33.548485, 31.639221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047840, 0.669232, 0.741512,
		-0.892240, -0.305086, 0.332913,
		0.449021, -0.677532, 0.582520,
		34.546818, 33.345226, 31.813976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959419, 33.991703, 31.959347>,  <34.232506, 33.819496, 31.406214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959419, 33.991703, 31.959347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269794, 33.770599, 32.080921>,  <34.456020, 33.637936, 32.153866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269794, 33.770599, 32.080921>,  <33.959419, 33.991703, 31.959347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269794, 33.770599, 32.080921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224516, 0.692268, 0.685826,
		-0.589501, -0.463921, 0.661261,
		0.775939, -0.552759, 0.303935,
		34.502575, 33.604771, 32.172100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793945, 33.841816, 32.730999>,  <33.959419, 33.991703, 31.959347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793945, 33.841816, 32.730999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182514, 33.778748, 32.660023>,  <34.415653, 33.740906, 32.617435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.182514, 33.778748, 32.660023>,  <33.793945, 33.841816, 32.730999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182514, 33.778748, 32.660023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226294, 0.389416, 0.892830,
		-0.071676, -0.907466, 0.413966,
		0.971418, -0.157673, -0.177443,
		34.473938, 33.731445, 32.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059685, 33.450577, 33.341671>,  <33.793945, 33.841816, 32.730999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059685, 33.450577, 33.341671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.352730, 33.643391, 33.149456>,  <34.528557, 33.759079, 33.034126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.352730, 33.643391, 33.149456>,  <34.059685, 33.450577, 33.341671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352730, 33.643391, 33.149456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292733, 0.414234, 0.861811,
		0.614480, -0.772044, 0.162366,
		0.732613, 0.482035, -0.480541,
		34.572514, 33.788002, 33.005295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606388, 33.490719, 33.869850>,  <34.059685, 33.450577, 33.341671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606388, 33.490719, 33.869850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736992, 33.749104, 33.593842>,  <34.815353, 33.904133, 33.428238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736992, 33.749104, 33.593842>,  <34.606388, 33.490719, 33.869850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736992, 33.749104, 33.593842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415103, 0.557866, 0.718662,
		0.849165, -0.521080, -0.085991,
		0.326509, 0.645957, -0.690022,
		34.834946, 33.942890, 33.386833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388081, 33.618843, 33.892765>,  <34.606388, 33.490719, 33.869850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388081, 33.618843, 33.892765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223152, 33.943954, 33.728138>,  <35.124195, 34.139019, 33.629364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223152, 33.943954, 33.728138>,  <35.388081, 33.618843, 33.892765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223152, 33.943954, 33.728138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267480, 0.539845, 0.798137,
		0.870886, 0.219007, -0.439993,
		-0.412325, 0.812775, -0.411564,
		35.099453, 34.187786, 33.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897320, 34.127438, 33.910446>,  <35.388081, 33.618843, 33.892765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897320, 34.127438, 33.910446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523766, 34.269772, 33.896385>,  <35.299633, 34.355171, 33.887947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523766, 34.269772, 33.896385>,  <35.897320, 34.127438, 33.910446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523766, 34.269772, 33.896385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143459, 0.462920, 0.874714,
		0.327523, 0.811843, -0.483363,
		-0.933889, 0.355832, -0.035151,
		35.243599, 34.376522, 33.885841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331474, 34.783459, 34.094597>,  <35.897320, 34.127438, 33.910446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331474, 34.783459, 34.094597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715302, 34.762962, 34.205311>,  <36.945599, 34.750664, 34.271740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715302, 34.762962, 34.205311>,  <36.331474, 34.783459, 34.094597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715302, 34.762962, 34.205311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194995, -0.588146, -0.784896,
		0.203012, 0.807130, -0.554372,
		0.959564, -0.051243, 0.276787,
		37.003170, 34.747589, 34.288345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800934, 34.988129, 33.529530>,  <36.331474, 34.783459, 34.094597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800934, 34.988129, 33.529530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981541, 34.715790, 33.760208>,  <37.089905, 34.552387, 33.898613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981541, 34.715790, 33.760208>,  <36.800934, 34.988129, 33.529530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981541, 34.715790, 33.760208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022582, -0.637401, -0.770202,
		0.891974, 0.360785, -0.272425,
		0.451522, -0.680848, 0.576692,
		37.116997, 34.511536, 33.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373299, 34.678024, 33.141994>,  <36.800934, 34.988129, 33.529530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373299, 34.678024, 33.141994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315453, 34.398743, 33.422451>,  <37.280746, 34.231174, 33.590725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315453, 34.398743, 33.422451>,  <37.373299, 34.678024, 33.141994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315453, 34.398743, 33.422451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070252, -0.699558, -0.711114,
		0.986991, -0.152093, 0.052114,
		-0.144612, -0.698202, 0.701143,
		37.272068, 34.189281, 33.632793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841595, 34.115669, 33.048611>,  <37.373299, 34.678024, 33.141994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841595, 34.115669, 33.048611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548668, 33.943306, 33.259525>,  <37.372913, 33.839890, 33.386074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548668, 33.943306, 33.259525>,  <37.841595, 34.115669, 33.048611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548668, 33.943306, 33.259525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007550, -0.779411, -0.626467,
		0.680921, -0.454792, 0.574030,
		-0.732318, -0.430909, 0.527284,
		37.328972, 33.814034, 33.417709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095566, 33.442215, 33.089394>,  <37.841595, 34.115669, 33.048611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095566, 33.442215, 33.089394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702221, 33.422230, 33.159248>,  <37.466213, 33.410240, 33.201160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702221, 33.422230, 33.159248>,  <38.095566, 33.442215, 33.089394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702221, 33.422230, 33.159248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081685, -0.737105, -0.670823,
		0.162239, -0.673929, 0.720762,
		-0.983365, -0.049959, 0.174637,
		37.407211, 33.407242, 33.211639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022335, 32.743244, 33.109970>,  <38.095566, 33.442215, 33.089394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022335, 32.743244, 33.109970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653030, 32.893661, 33.078529>,  <37.431446, 32.983913, 33.059666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653030, 32.893661, 33.078529>,  <38.022335, 32.743244, 33.109970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653030, 32.893661, 33.078529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188499, -0.621700, -0.760235,
		-0.334751, -0.687079, 0.644876,
		-0.923261, 0.376048, -0.078601,
		37.376053, 33.006477, 33.054951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500870, 32.182812, 33.177139>,  <38.022335, 32.743244, 33.109970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500870, 32.182812, 33.177139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318596, 32.476372, 32.975651>,  <37.209232, 32.652508, 32.854759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318596, 32.476372, 32.975651>,  <37.500870, 32.182812, 33.177139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318596, 32.476372, 32.975651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118231, -0.610779, -0.782924,
		-0.882253, -0.297213, 0.365094,
		-0.455687, 0.733903, -0.503722,
		37.181889, 32.696541, 32.824535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095715, 31.800602, 32.744312>,  <37.500870, 32.182812, 33.177139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095715, 31.800602, 32.744312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100285, 32.168995, 32.588539>,  <37.103027, 32.390030, 32.495075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100285, 32.168995, 32.588539>,  <37.095715, 31.800602, 32.744312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100285, 32.168995, 32.588539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127303, -0.384949, -0.914116,
		-0.991798, 0.060020, 0.112846,
		0.011425, 0.920984, -0.389433,
		37.103714, 32.445290, 32.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651764, 31.677717, 32.285084>,  <37.095715, 31.800602, 32.744312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651764, 31.677717, 32.285084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819355, 32.014610, 32.149372>,  <36.919910, 32.216747, 32.067947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819355, 32.014610, 32.149372>,  <36.651764, 31.677717, 32.285084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819355, 32.014610, 32.149372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075520, -0.340035, -0.937375,
		-0.904852, 0.418358, -0.078861,
		0.418974, 0.842230, -0.339276,
		36.945045, 32.267281, 32.047588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291351, 31.773424, 31.637369>,  <36.651764, 31.677717, 32.285084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291351, 31.773424, 31.637369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608967, 32.013348, 31.597910>,  <36.799538, 32.157303, 31.574234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608967, 32.013348, 31.597910>,  <36.291351, 31.773424, 31.637369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608967, 32.013348, 31.597910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021322, -0.134703, -0.990656,
		-0.607493, 0.788723, -0.094170,
		0.794039, 0.599809, -0.098648,
		36.847179, 32.193291, 31.568316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139603, 32.296219, 31.078228>,  <36.291351, 31.773424, 31.637369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139603, 32.296219, 31.078228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531010, 32.224224, 31.118444>,  <36.765854, 32.181026, 31.142574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531010, 32.224224, 31.118444>,  <36.139603, 32.296219, 31.078228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531010, 32.224224, 31.118444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061803, -0.209163, -0.975926,
		0.196687, 0.961173, -0.193546,
		0.978517, -0.179990, 0.100543,
		36.824566, 32.170227, 31.148607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433212, 32.547897, 30.459078>,  <36.139603, 32.296219, 31.078228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433212, 32.547897, 30.459078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708809, 32.299526, 30.608606>,  <36.874168, 32.150505, 30.698324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708809, 32.299526, 30.608606>,  <36.433212, 32.547897, 30.459078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708809, 32.299526, 30.608606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316414, -0.206338, -0.925909,
		0.652053, 0.756226, 0.054304,
		0.688991, -0.620924, 0.373823,
		36.915504, 32.113251, 30.720753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057854, 32.739441, 30.174955>,  <36.433212, 32.547897, 30.459078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057854, 32.739441, 30.174955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126698, 32.360817, 30.284058>,  <37.168003, 32.133640, 30.349518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126698, 32.360817, 30.284058>,  <37.057854, 32.739441, 30.174955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126698, 32.360817, 30.284058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387485, -0.189511, -0.902187,
		0.905667, 0.260964, 0.334163,
		0.172111, -0.946564, 0.272754,
		37.178329, 32.076847, 30.365883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625137, 32.619129, 29.805744>,  <37.057854, 32.739441, 30.174955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625137, 32.619129, 29.805744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508831, 32.258606, 29.934177>,  <37.439049, 32.042290, 30.011238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508831, 32.258606, 29.934177>,  <37.625137, 32.619129, 29.805744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508831, 32.258606, 29.934177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105077, -0.363632, -0.925597,
		0.951007, -0.235393, 0.200439,
		-0.290765, -0.901311, 0.321083,
		37.421600, 31.988213, 30.030502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056393, 32.107479, 29.497709>,  <37.625137, 32.619129, 29.805744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056393, 32.107479, 29.497709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744923, 31.886169, 29.616064>,  <37.558041, 31.753384, 29.687077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744923, 31.886169, 29.616064>,  <38.056393, 32.107479, 29.497709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744923, 31.886169, 29.616064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010018, -0.482493, -0.875843,
		0.627346, -0.679034, 0.381249,
		-0.778677, -0.553275, 0.295887,
		37.511318, 31.720186, 29.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142113, 31.394209, 29.192165>,  <38.056393, 32.107479, 29.497709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142113, 31.394209, 29.192165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753387, 31.408369, 29.285402>,  <37.520153, 31.416864, 29.341345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753387, 31.408369, 29.285402>,  <38.142113, 31.394209, 29.192165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753387, 31.408369, 29.285402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, -0.543972, -0.811251,
		0.098077, -0.838356, 0.536228,
		-0.971810, 0.035400, 0.233091,
		37.461845, 31.418989, 29.355330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879238, 30.780136, 29.003244>,  <38.142113, 31.394209, 29.192165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879238, 30.780136, 29.003244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566879, 31.028973, 29.025881>,  <37.379463, 31.178274, 29.039463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566879, 31.028973, 29.025881>,  <37.879238, 30.780136, 29.003244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566879, 31.028973, 29.025881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330469, -0.334548, -0.882535,
		-0.530085, -0.707870, 0.466829,
		-0.780897, 0.622092, 0.056591,
		37.332611, 31.215599, 29.042858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339619, 30.390707, 28.924938>,  <37.879238, 30.780136, 29.003244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339619, 30.390707, 28.924938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157307, 30.723917, 28.799503>,  <37.047920, 30.923843, 28.724243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157307, 30.723917, 28.799503>,  <37.339619, 30.390707, 28.924938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157307, 30.723917, 28.799503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422902, -0.512670, -0.747211,
		-0.783209, -0.207949, 0.585952,
		-0.455782, 0.833023, -0.313586,
		37.020573, 30.973824, 28.705427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669964, 30.264362, 28.773123>,  <37.339619, 30.390707, 28.924938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669964, 30.264362, 28.773123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770161, 30.583555, 28.553860>,  <36.830276, 30.775072, 28.422302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770161, 30.583555, 28.553860>,  <36.669964, 30.264362, 28.773123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770161, 30.583555, 28.553860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512669, -0.370968, -0.774308,
		-0.821234, 0.474979, 0.316178,
		0.250488, 0.797983, -0.548159,
		36.845306, 30.822950, 28.389412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.989536, 30.281044, 28.448618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252628, 30.522829, 28.268829>,  <36.410484, 30.667900, 28.160957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.252628, 30.522829, 28.268829>,  <35.989536, 30.281044, 28.448618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252628, 30.522829, 28.268829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294958, -0.342379, -0.892063,
		-0.693106, 0.719308, -0.046901,
		0.657726, 0.604461, -0.449470,
		36.449947, 30.704166, 28.133987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571331, 30.684711, 28.003752>,  <35.989536, 30.281044, 28.448618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571331, 30.684711, 28.003752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942642, 30.688728, 27.855051>,  <36.165428, 30.691137, 27.765831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942642, 30.688728, 27.855051>,  <35.571331, 30.684711, 28.003752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942642, 30.688728, 27.855051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355013, -0.273777, -0.893875,
		-0.110753, 0.961741, -0.250576,
		0.928278, 0.010041, -0.371752,
		36.221127, 30.691740, 27.743525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515102, 30.989630, 27.325748>,  <35.571331, 30.684711, 28.003752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515102, 30.989630, 27.325748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859032, 30.785484, 27.331846>,  <36.065388, 30.662996, 27.335505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859032, 30.785484, 27.331846>,  <35.515102, 30.989630, 27.325748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859032, 30.785484, 27.331846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254337, -0.453997, -0.853932,
		0.442739, 0.730352, -0.520162,
		0.859822, -0.510365, 0.015246,
		36.116978, 30.632374, 27.336420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705677, 31.030428, 26.648531>,  <35.515102, 30.989630, 27.325748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705677, 31.030428, 26.648531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907787, 30.710602, 26.778389>,  <36.029053, 30.518705, 26.856304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907787, 30.710602, 26.778389>,  <35.705677, 31.030428, 26.648531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907787, 30.710602, 26.778389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088021, -0.421987, -0.902319,
		0.858459, 0.427341, -0.283597,
		0.505272, -0.799567, 0.324644,
		36.059368, 30.470732, 26.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203251, 30.907583, 26.144697>,  <35.705677, 31.030428, 26.648531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203251, 30.907583, 26.144697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140179, 30.567722, 26.345982>,  <36.102333, 30.363806, 26.466753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140179, 30.567722, 26.345982>,  <36.203251, 30.907583, 26.144697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140179, 30.567722, 26.345982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128484, -0.487603, -0.863560,
		0.979095, -0.200825, -0.032279,
		-0.157685, -0.849654, 0.503212,
		36.092873, 30.312826, 26.496944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459900, 30.440172, 25.792133>,  <36.203251, 30.907583, 26.144697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459900, 30.440172, 25.792133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199512, 30.228815, 26.010139>,  <36.043282, 30.102001, 26.140944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199512, 30.228815, 26.010139>,  <36.459900, 30.440172, 25.792133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199512, 30.228815, 26.010139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137742, -0.623833, -0.769324,
		0.746506, -0.575875, 0.333312,
		-0.650966, -0.528394, 0.545017,
		36.004223, 30.070297, 26.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671009, 29.673063, 25.592886>,  <36.459900, 30.440172, 25.792133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671009, 29.673063, 25.592886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308510, 29.669142, 25.761940>,  <36.091011, 29.666790, 25.863373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308510, 29.669142, 25.761940>,  <36.671009, 29.673063, 25.592886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308510, 29.669142, 25.761940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343612, -0.565295, -0.749915,
		0.246264, -0.824831, 0.508929,
		-0.906248, -0.009803, 0.422634,
		36.036636, 29.666201, 25.888731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511417, 28.945312, 25.695320>,  <36.671009, 29.673063, 25.592886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511417, 28.945312, 25.695320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155514, 29.127369, 25.709040>,  <35.941971, 29.236603, 25.717272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155514, 29.127369, 25.709040>,  <36.511417, 28.945312, 25.695320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155514, 29.127369, 25.709040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315408, -0.558792, -0.766987,
		-0.329922, -0.693251, 0.640745,
		-0.889758, 0.455141, 0.034299,
		35.888588, 29.263912, 25.719330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993774, 28.438635, 25.555590>,  <36.511417, 28.945312, 25.695320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993774, 28.438635, 25.555590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788887, 28.772657, 25.475277>,  <35.665955, 28.973070, 25.427090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788887, 28.772657, 25.475277>,  <35.993774, 28.438635, 25.555590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788887, 28.772657, 25.475277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335830, -0.409905, -0.848055,
		-0.790473, -0.366963, 0.490398,
		-0.512221, 0.835055, -0.200782,
		35.635220, 29.023174, 25.415043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397049, 28.217516, 25.230776>,  <35.993774, 28.438635, 25.555590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397049, 28.217516, 25.230776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432346, 28.596645, 25.108240>,  <35.453526, 28.824123, 25.034719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432346, 28.596645, 25.108240>,  <35.397049, 28.217516, 25.230776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432346, 28.596645, 25.108240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351587, -0.258108, -0.899871,
		-0.931987, 0.187110, 0.310467,
		0.088241, 0.947824, -0.306339,
		35.458820, 28.880993, 25.016338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737251, 28.345129, 24.761841>,  <35.397049, 28.217516, 25.230776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737251, 28.345129, 24.761841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008911, 28.625652, 24.675198>,  <35.171906, 28.793966, 24.623211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008911, 28.625652, 24.675198>,  <34.737251, 28.345129, 24.761841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008911, 28.625652, 24.675198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231636, -0.075246, -0.969888,
		-0.696491, 0.708875, 0.111345,
		0.679151, 0.701309, -0.216608,
		35.212658, 28.836044, 24.610214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362427, 28.908815, 24.351862>,  <34.737251, 28.345129, 24.761841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362427, 28.908815, 24.351862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753094, 28.941090, 24.272251>,  <34.987495, 28.960453, 24.224485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753094, 28.941090, 24.272251>,  <34.362427, 28.908815, 24.351862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753094, 28.941090, 24.272251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192383, -0.083166, -0.977789,
		-0.095443, 0.993264, -0.065704,
		0.976667, 0.080683, -0.199025,
		35.046093, 28.965294, 24.212543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362011, 29.322447, 23.746780>,  <34.362427, 28.908815, 24.351862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362011, 29.322447, 23.746780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735264, 29.179090, 23.758249>,  <34.959213, 29.093077, 23.765131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735264, 29.179090, 23.758249>,  <34.362011, 29.322447, 23.746780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735264, 29.179090, 23.758249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012503, -0.047348, -0.998800,
		0.359321, 0.932369, -0.039701,
		0.933131, -0.358393, 0.028671,
		35.015202, 29.071573, 23.766851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755470, 29.720125, 23.251562>,  <34.362011, 29.322447, 23.746780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755470, 29.720125, 23.251562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937988, 29.368227, 23.304993>,  <35.047497, 29.157087, 23.337051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937988, 29.368227, 23.304993>,  <34.755470, 29.720125, 23.251562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937988, 29.368227, 23.304993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065913, -0.183121, -0.980878,
		0.887385, 0.438763, -0.141544,
		0.456293, -0.879746, 0.133579,
		35.074875, 29.104303, 23.345066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243694, 29.654364, 22.717878>,  <34.755470, 29.720125, 23.251562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243694, 29.654364, 22.717878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224831, 29.267641, 22.818325>,  <35.213512, 29.035608, 22.878593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.224831, 29.267641, 22.818325>,  <35.243694, 29.654364, 22.717878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224831, 29.267641, 22.818325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092172, -0.246113, -0.964848,
		0.994626, -0.068647, -0.077506,
		-0.047159, -0.966807, 0.251118,
		35.210682, 28.977598, 22.893660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760452, 29.298588, 22.218702>,  <35.243694, 29.654364, 22.717878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760452, 29.298588, 22.218702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473335, 29.040953, 22.324472>,  <35.301064, 28.886372, 22.387936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473335, 29.040953, 22.324472>,  <35.760452, 29.298588, 22.218702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473335, 29.040953, 22.324472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019529, -0.361011, -0.932357,
		0.695982, -0.674404, 0.246552,
		-0.717793, -0.644089, 0.264427,
		35.257996, 28.847727, 22.403801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911827, 28.700520, 21.782654>,  <35.760452, 29.298588, 22.218702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911827, 28.700520, 21.782654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530365, 28.653189, 21.893320>,  <35.301487, 28.624790, 21.959721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530365, 28.653189, 21.893320>,  <35.911827, 28.700520, 21.782654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530365, 28.653189, 21.893320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195173, -0.456565, -0.868018,
		0.229029, -0.881786, 0.412310,
		-0.953653, -0.118329, 0.276667,
		35.244270, 28.617689, 21.976320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806976, 28.101208, 21.511833>,  <35.911827, 28.700520, 21.782654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806976, 28.101208, 21.511833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444717, 28.242323, 21.605936>,  <35.227364, 28.326992, 21.662397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444717, 28.242323, 21.605936>,  <35.806976, 28.101208, 21.511833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444717, 28.242323, 21.605936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392980, -0.489881, -0.778192,
		-0.159287, -0.797219, 0.582297,
		-0.905646, 0.352787, 0.235259,
		35.173023, 28.348160, 21.676514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291862, 27.523060, 21.515419>,  <35.806976, 28.101208, 21.511833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291862, 27.523060, 21.515419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057438, 27.847149, 21.518820>,  <34.916782, 28.041603, 21.520861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057438, 27.847149, 21.518820>,  <35.291862, 27.523060, 21.515419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057438, 27.847149, 21.518820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518713, -0.367100, -0.772124,
		-0.622471, -0.456921, 0.635416,
		-0.586061, 0.810223, 0.008502,
		34.881618, 28.090216, 21.521370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566734, 27.251766, 21.524374>,  <35.291862, 27.523060, 21.515419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566734, 27.251766, 21.524374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550186, 27.625750, 21.383440>,  <34.540257, 27.850140, 21.298880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550186, 27.625750, 21.383440>,  <34.566734, 27.251766, 21.524374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550186, 27.625750, 21.383440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585250, -0.308489, -0.749878,
		-0.809797, 0.175180, 0.559948,
		-0.041374, 0.934958, -0.352337,
		34.537773, 27.906237, 21.277739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868252, 27.354776, 21.307869>,  <34.566734, 27.251766, 21.524374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868252, 27.354776, 21.307869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087883, 27.609205, 21.091009>,  <34.219662, 27.761862, 20.960894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087883, 27.609205, 21.091009>,  <33.868252, 27.354776, 21.307869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087883, 27.609205, 21.091009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551673, -0.211452, -0.806812,
		-0.627828, 0.742092, 0.234800,
		0.549080, 0.636072, -0.542147,
		34.252605, 27.800028, 20.928366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563717, 28.026619, 21.063536>,  <33.868252, 27.354776, 21.307869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563717, 28.026619, 21.063536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827053, 27.866652, 20.808456>,  <33.985054, 27.770672, 20.655409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827053, 27.866652, 20.808456>,  <33.563717, 28.026619, 21.063536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827053, 27.866652, 20.808456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714269, -0.064582, -0.696885,
		0.237512, 0.914274, -0.328164,
		0.658337, -0.399916, -0.637699,
		34.024555, 27.746677, 20.617147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066132, 27.984585, 20.602234>,  <33.563717, 28.026619, 21.063536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066132, 27.984585, 20.602234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366753, 27.786549, 20.427855>,  <33.547127, 27.667727, 20.323227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366753, 27.786549, 20.427855>,  <33.066132, 27.984585, 20.602234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366753, 27.786549, 20.427855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568703, -0.151378, -0.808494,
		0.334286, 0.855551, -0.395329,
		0.751552, -0.495093, -0.435951,
		33.592216, 27.638021, 20.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206802, 28.341619, 19.940067>,  <33.066132, 27.984585, 20.602234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206802, 28.341619, 19.940067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276237, 27.948145, 19.958942>,  <33.317898, 27.712059, 19.970266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276237, 27.948145, 19.958942>,  <33.206802, 28.341619, 19.940067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276237, 27.948145, 19.958942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588244, -0.141993, -0.796120,
		0.789833, 0.110439, -0.603297,
		0.173586, -0.983688, 0.047186,
		33.328312, 27.653038, 19.973099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669842, 28.846975, 20.134439>,  <33.206802, 28.341619, 19.940067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669842, 28.846975, 20.134439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366272, 29.068789, 19.997892>,  <32.184132, 29.201876, 19.915964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366272, 29.068789, 19.997892>,  <32.669842, 28.846975, 20.134439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366272, 29.068789, 19.997892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291838, 0.758275, 0.582966,
		0.582122, 0.342803, -0.737306,
		-0.758923, 0.554531, -0.341366,
		32.138596, 29.235147, 19.895483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951904, 29.574303, 19.916142>,  <32.669842, 28.846975, 20.134439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951904, 29.574303, 19.916142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567120, 29.584986, 20.024893>,  <32.336250, 29.591396, 20.090143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567120, 29.584986, 20.024893>,  <32.951904, 29.574303, 19.916142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567120, 29.584986, 20.024893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205071, 0.728122, 0.654052,
		-0.180491, 0.684927, -0.705902,
		-0.961961, 0.026710, 0.271878,
		32.278530, 29.592999, 20.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763245, 30.336197, 20.077694>,  <32.951904, 29.574303, 19.916142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763245, 30.336197, 20.077694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459255, 30.129217, 20.235014>,  <32.276863, 30.005030, 20.329407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459255, 30.129217, 20.235014>,  <32.763245, 30.336197, 20.077694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459255, 30.129217, 20.235014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037248, 0.569452, 0.821180,
		-0.648887, 0.638724, -0.413494,
		-0.759973, -0.517451, 0.393301,
		32.231262, 29.973982, 20.353004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408821, 30.770048, 20.406080>,  <32.763245, 30.336197, 20.077694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408821, 30.770048, 20.406080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301132, 30.415625, 20.557032>,  <32.236519, 30.202971, 20.647602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301132, 30.415625, 20.557032>,  <32.408821, 30.770048, 20.406080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301132, 30.415625, 20.557032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178578, 0.339120, 0.923638,
		-0.946375, 0.316059, 0.066931,
		-0.269227, -0.886061, 0.377376,
		32.220364, 30.149807, 20.670244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960714, 31.009256, 20.885012>,  <32.408821, 30.770048, 20.406080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960714, 31.009256, 20.885012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033604, 30.629812, 20.988497>,  <32.077339, 30.402145, 21.050587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.033604, 30.629812, 20.988497>,  <31.960714, 31.009256, 20.885012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033604, 30.629812, 20.988497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076975, 0.276072, 0.958050,
		-0.980239, -0.154666, 0.123326,
		0.182224, -0.948611, 0.258712,
		32.088272, 30.345228, 21.066111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484367, 30.768789, 21.501041>,  <31.960714, 31.009256, 20.885012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484367, 30.768789, 21.501041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831442, 30.570301, 21.489119>,  <32.039688, 30.451208, 21.481966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831442, 30.570301, 21.489119>,  <31.484367, 30.768789, 21.501041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831442, 30.570301, 21.489119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211965, 0.315075, 0.925094,
		-0.449660, -0.809008, 0.378567,
		0.867685, -0.496220, -0.029805,
		32.091747, 30.421434, 21.480177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628363, 30.582207, 22.166185>,  <31.484367, 30.768789, 21.501041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628363, 30.582207, 22.166185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985106, 30.523174, 21.995157>,  <32.199150, 30.487755, 21.892540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985106, 30.523174, 21.995157>,  <31.628363, 30.582207, 22.166185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985106, 30.523174, 21.995157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445727, 0.447566, 0.775249,
		0.076955, -0.881989, 0.464944,
		0.891855, -0.147579, -0.427569,
		32.252663, 30.478901, 21.866886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955650, 30.009764, 22.561548>,  <31.628363, 30.582207, 22.166185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955650, 30.009764, 22.561548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239948, 30.230225, 22.386700>,  <32.410526, 30.362501, 22.281790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239948, 30.230225, 22.386700>,  <31.955650, 30.009764, 22.561548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239948, 30.230225, 22.386700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495307, 0.049153, 0.867326,
		0.499515, -0.832956, -0.238054,
		0.710743, 0.551152, -0.437122,
		32.453171, 30.395571, 22.255564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504913, 29.690901, 22.729130>,  <31.955650, 30.009764, 22.561548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504913, 29.690901, 22.729130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613285, 30.059912, 22.619188>,  <32.678310, 30.281319, 22.553225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613285, 30.059912, 22.619188>,  <32.504913, 29.690901, 22.729130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613285, 30.059912, 22.619188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592220, 0.065352, 0.803122,
		0.758862, -0.380364, -0.528632,
		0.270931, 0.922525, -0.274852,
		32.694565, 30.336670, 22.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235840, 29.636656, 22.905684>,  <32.504913, 29.690901, 22.729130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235840, 29.636656, 22.905684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125317, 30.018400, 22.860340>,  <33.059002, 30.247446, 22.833134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125317, 30.018400, 22.860340>,  <33.235840, 29.636656, 22.905684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125317, 30.018400, 22.860340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510048, 0.245583, 0.824342,
		0.814559, 0.169950, -0.554626,
		-0.276304, 0.954362, -0.113359,
		33.042427, 30.304708, 22.826332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817806, 30.043015, 23.066168>,  <33.235840, 29.636656, 22.905684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817806, 30.043015, 23.066168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507313, 30.290794, 23.113064>,  <33.321018, 30.439463, 23.141201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507313, 30.290794, 23.113064>,  <33.817806, 30.043015, 23.066168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507313, 30.290794, 23.113064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359289, 0.281843, 0.889649,
		0.518052, 0.732696, -0.441338,
		-0.776231, 0.619452, 0.117240,
		33.274445, 30.476629, 23.148235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180969, 30.653694, 23.334366>,  <33.817806, 30.043015, 23.066168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180969, 30.653694, 23.334366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793190, 30.696058, 23.422865>,  <33.560520, 30.721478, 23.475964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793190, 30.696058, 23.422865>,  <34.180969, 30.653694, 23.334366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793190, 30.696058, 23.422865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240915, 0.241557, 0.940006,
		0.046113, 0.964590, -0.259692,
		-0.969450, 0.105910, 0.221245,
		33.502354, 30.727831, 23.489239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185669, 31.265165, 23.788061>,  <34.180969, 30.653694, 23.334366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185669, 31.265165, 23.788061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858173, 31.041924, 23.841995>,  <33.661674, 30.907978, 23.874355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858173, 31.041924, 23.841995>,  <34.185669, 31.265165, 23.788061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858173, 31.041924, 23.841995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039120, 0.180070, 0.982876,
		-0.572827, 0.809997, -0.125598,
		-0.818743, -0.558104, 0.134836,
		33.612549, 30.874493, 23.882446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811558, 31.673759, 24.252848>,  <34.185669, 31.265165, 23.788061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811558, 31.673759, 24.252848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659031, 31.305944, 24.290911>,  <33.567516, 31.085257, 24.313749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659031, 31.305944, 24.290911>,  <33.811558, 31.673759, 24.252848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659031, 31.305944, 24.290911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023418, 0.112510, 0.993375,
		-0.924149, 0.376559, -0.064435,
		-0.381313, -0.919535, 0.095158,
		33.544636, 31.030085, 24.319458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177082, 31.697632, 24.683727>,  <33.811558, 31.673759, 24.252848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177082, 31.697632, 24.683727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316994, 31.323025, 24.693481>,  <33.400940, 31.098261, 24.699333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316994, 31.323025, 24.693481>,  <33.177082, 31.697632, 24.683727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316994, 31.323025, 24.693481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036196, 0.012501, 0.999266,
		-0.936134, -0.350402, -0.029525,
		0.349776, -0.936516, 0.024386,
		33.421928, 31.042070, 24.700798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797409, 31.344372, 25.224110>,  <33.177082, 31.697632, 24.683727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797409, 31.344372, 25.224110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110321, 31.098757, 25.182171>,  <33.298069, 30.951387, 25.157007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.110321, 31.098757, 25.182171>,  <32.797409, 31.344372, 25.224110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110321, 31.098757, 25.182171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046564, -0.225483, 0.973134,
		-0.621184, -0.756381, -0.204983,
		0.782280, -0.614040, -0.104847,
		33.345005, 30.914545, 25.150717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524014, 30.705589, 25.448975>,  <32.797409, 31.344372, 25.224110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524014, 30.705589, 25.448975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923496, 30.697693, 25.467752>,  <33.163185, 30.692955, 25.479019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923496, 30.697693, 25.467752>,  <32.524014, 30.705589, 25.448975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923496, 30.697693, 25.467752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048997, -0.121122, 0.991428,
		-0.013885, -0.992441, -0.121932,
		0.998703, -0.019740, 0.046945,
		33.223106, 30.691771, 25.481836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633671, 30.188887, 25.818766>,  <32.524014, 30.705589, 25.448975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633671, 30.188887, 25.818766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986599, 30.374489, 25.850302>,  <33.198357, 30.485851, 25.869225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986599, 30.374489, 25.850302>,  <32.633671, 30.188887, 25.818766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986599, 30.374489, 25.850302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082843, -0.011792, 0.996493,
		0.463310, -0.885753, 0.028036,
		0.882316, 0.464007, 0.078842,
		33.251293, 30.513691, 25.873955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146595, 29.854866, 26.439398>,  <32.633671, 30.188887, 25.818766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146595, 29.854866, 26.439398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291389, 30.222651, 26.378012>,  <33.378265, 30.443321, 26.341181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291389, 30.222651, 26.378012>,  <33.146595, 29.854866, 26.439398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291389, 30.222651, 26.378012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168908, 0.097206, 0.980827,
		0.916752, -0.380970, -0.120117,
		0.361990, 0.919463, -0.153463,
		33.399986, 30.498489, 26.331972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864380, 29.895636, 26.743540>,  <33.146595, 29.854866, 26.439398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864380, 29.895636, 26.743540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743946, 30.275846, 26.712959>,  <33.671684, 30.503973, 26.694611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743946, 30.275846, 26.712959>,  <33.864380, 29.895636, 26.743540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743946, 30.275846, 26.712959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190679, 0.138565, 0.971824,
		0.934338, 0.278027, -0.222966,
		-0.301089, 0.950527, -0.076453,
		33.653618, 30.561005, 26.690023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.585598, 30.921312, 30.785921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485161, 31.284904, 30.652830>,  <37.424896, 31.503059, 30.572975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485161, 31.284904, 30.652830>,  <37.585598, 30.921312, 30.785921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485161, 31.284904, 30.652830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024578, 0.349617, 0.936570,
		0.967650, 0.226992, -0.110128,
		-0.251096, 0.908979, -0.332728,
		37.409832, 31.557598, 30.553011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873104, 31.418253, 31.163982>,  <37.585598, 30.921312, 30.785921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873104, 31.418253, 31.163982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586494, 31.654743, 31.015902>,  <37.414528, 31.796637, 30.927053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586494, 31.654743, 31.015902>,  <37.873104, 31.418253, 31.163982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586494, 31.654743, 31.015902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040148, 0.494873, 0.868038,
		0.696409, 0.636831, -0.330850,
		-0.716522, 0.591226, -0.370201,
		37.371536, 31.832111, 30.904840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150841, 32.184414, 31.282806>,  <37.873104, 31.418253, 31.163982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150841, 32.184414, 31.282806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753662, 32.151947, 31.248236>,  <37.515354, 32.132465, 31.227493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.753662, 32.151947, 31.248236>,  <38.150841, 32.184414, 31.282806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753662, 32.151947, 31.248236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112948, 0.425836, 0.897723,
		-0.036061, 0.901153, -0.431999,
		-0.992946, -0.081166, -0.086427,
		37.455780, 32.127598, 31.222307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938148, 32.855206, 31.329010>,  <38.150841, 32.184414, 31.282806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938148, 32.855206, 31.329010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619038, 32.624699, 31.399963>,  <37.427570, 32.486397, 31.442535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619038, 32.624699, 31.399963>,  <37.938148, 32.855206, 31.329010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619038, 32.624699, 31.399963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231036, 0.563901, 0.792867,
		-0.556928, 0.591552, -0.583008,
		-0.797781, -0.576265, 0.177382,
		37.379704, 32.451820, 31.453178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532547, 33.331421, 31.625198>,  <37.938148, 32.855206, 31.329010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532547, 33.331421, 31.625198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368275, 32.999359, 31.776030>,  <37.269711, 32.800121, 31.866528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368275, 32.999359, 31.776030>,  <37.532547, 33.331421, 31.625198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368275, 32.999359, 31.776030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063619, 0.438645, 0.896406,
		-0.909557, 0.344147, -0.232956,
		-0.410681, -0.830153, 0.377078,
		37.245071, 32.750313, 31.889153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012970, 33.598690, 31.856359>,  <37.532547, 33.331421, 31.625198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012970, 33.598690, 31.856359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.077694, 33.260513, 32.059948>,  <37.116528, 33.057610, 32.182102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.077694, 33.260513, 32.059948>,  <37.012970, 33.598690, 31.856359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077694, 33.260513, 32.059948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253564, 0.462829, 0.849409,
		-0.953689, -0.266502, -0.139481,
		0.161813, -0.845439, 0.508970,
		37.126236, 33.006882, 32.212639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476948, 33.664436, 32.261272>,  <37.012970, 33.598690, 31.856359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476948, 33.664436, 32.261272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674725, 33.363770, 32.435867>,  <36.793388, 33.183369, 32.540627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674725, 33.363770, 32.435867>,  <36.476948, 33.664436, 32.261272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674725, 33.363770, 32.435867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110858, 0.443535, 0.889374,
		-0.862115, -0.488129, 0.135972,
		0.494438, -0.751669, 0.436491,
		36.823055, 33.138268, 32.566814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214916, 33.661060, 32.909695>,  <36.476948, 33.664436, 32.261272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214916, 33.661060, 32.909695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556652, 33.457951, 32.954018>,  <36.761692, 33.336086, 32.980610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556652, 33.457951, 32.954018>,  <36.214916, 33.661060, 32.909695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556652, 33.457951, 32.954018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040980, 0.278353, 0.959604,
		-0.518103, -0.815284, 0.258615,
		0.854337, -0.507771, 0.110805,
		36.812954, 33.305618, 32.987259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165897, 33.349987, 33.510681>,  <36.214916, 33.661060, 32.909695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165897, 33.349987, 33.510681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558899, 33.346489, 33.436260>,  <36.794701, 33.344391, 33.391609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.558899, 33.346489, 33.436260>,  <36.165897, 33.349987, 33.510681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558899, 33.346489, 33.436260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171542, 0.431623, 0.885593,
		0.072557, -0.902012, 0.425571,
		0.982501, -0.008747, -0.186050,
		36.853649, 33.343864, 33.380444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530014, 33.218285, 34.186028>,  <36.165897, 33.349987, 33.510681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530014, 33.218285, 34.186028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783360, 33.398380, 33.934273>,  <36.935368, 33.506439, 33.783218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783360, 33.398380, 33.934273>,  <36.530014, 33.218285, 34.186028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783360, 33.398380, 33.934273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280976, 0.624017, 0.729147,
		0.721040, -0.638661, 0.268725,
		0.633367, 0.450238, -0.629390,
		36.973370, 33.533451, 33.745457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045776, 33.388241, 34.606724>,  <36.530014, 33.218285, 34.186028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045776, 33.388241, 34.606724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091648, 33.639603, 34.298969>,  <37.119171, 33.790421, 34.114315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.091648, 33.639603, 34.298969>,  <37.045776, 33.388241, 34.606724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091648, 33.639603, 34.298969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216955, 0.739956, 0.636707,
		0.969422, -0.239939, -0.051479,
		0.114678, 0.628407, -0.769385,
		37.126053, 33.828125, 34.068153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647362, 33.701584, 34.724007>,  <37.045776, 33.388241, 34.606724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647362, 33.701584, 34.724007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480881, 33.968361, 34.476791>,  <37.380993, 34.128426, 34.328465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480881, 33.968361, 34.476791>,  <37.647362, 33.701584, 34.724007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480881, 33.968361, 34.476791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180707, 0.726814, 0.662636,
		0.891135, 0.164106, -0.423021,
		-0.416201, 0.666942, -0.618034,
		37.356022, 34.168442, 34.291382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156391, 34.256962, 34.470272>,  <37.647362, 33.701584, 34.724007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156391, 34.256962, 34.470272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770046, 34.359917, 34.481964>,  <37.538239, 34.421692, 34.488979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.770046, 34.359917, 34.481964>,  <38.156391, 34.256962, 34.470272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770046, 34.359917, 34.481964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202393, 0.679400, 0.705303,
		0.161681, 0.687143, -0.708303,
		-0.965866, 0.257390, 0.029227,
		37.480286, 34.437134, 34.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033939, 34.988174, 34.334522>,  <38.156391, 34.256962, 34.470272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033939, 34.988174, 34.334522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813103, 34.761280, 34.578964>,  <37.680603, 34.625145, 34.725628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813103, 34.761280, 34.578964>,  <38.033939, 34.988174, 34.334522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813103, 34.761280, 34.578964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246965, 0.588787, 0.769635,
		-0.796372, 0.575827, -0.184975,
		-0.552087, -0.567233, 0.611102,
		37.647476, 34.591110, 34.762295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693401, 35.017708, 34.062778>,  <38.033939, 34.988174, 34.334522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693401, 35.017708, 34.062778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066441, 35.160130, 34.039177>,  <39.290264, 35.245583, 34.025017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066441, 35.160130, 34.039177>,  <38.693401, 35.017708, 34.062778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066441, 35.160130, 34.039177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181400, 0.321110, -0.929507,
		-0.312010, 0.877561, 0.364056,
		0.932601, 0.356055, -0.059000,
		39.346222, 35.266945, 34.021477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723961, 35.784412, 33.922123>,  <38.693401, 35.017708, 34.062778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723961, 35.784412, 33.922123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042828, 35.589855, 33.779049>,  <39.234150, 35.473122, 33.693203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042828, 35.589855, 33.779049>,  <38.723961, 35.784412, 33.922123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042828, 35.589855, 33.779049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181198, 0.372387, -0.910217,
		0.575921, 0.790411, 0.208723,
		0.797171, -0.486393, -0.357687,
		39.281979, 35.443935, 33.671741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982265, 36.288704, 33.522606>,  <38.723961, 35.784412, 33.922123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982265, 36.288704, 33.522606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165222, 35.949215, 33.416424>,  <39.274998, 35.745522, 33.352715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165222, 35.949215, 33.416424>,  <38.982265, 36.288704, 33.522606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165222, 35.949215, 33.416424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169006, 0.210110, -0.962959,
		0.873057, 0.485315, -0.047335,
		0.457393, -0.848718, -0.265459,
		39.302441, 35.694599, 33.336784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378361, 36.480839, 32.925022>,  <38.982265, 36.288704, 33.522606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378361, 36.480839, 32.925022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348881, 36.082840, 32.898064>,  <39.331192, 35.844040, 32.881889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348881, 36.082840, 32.898064>,  <39.378361, 36.480839, 32.925022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348881, 36.082840, 32.898064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152736, 0.078047, -0.985180,
		0.985515, -0.062313, -0.157724,
		-0.073700, -0.995000, -0.067399,
		39.326771, 35.784340, 32.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827866, 36.277390, 32.406265>,  <39.378361, 36.480839, 32.925022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827866, 36.277390, 32.406265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.542622, 36.000885, 32.452965>,  <39.371475, 35.834980, 32.480984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.542622, 36.000885, 32.452965>,  <39.827866, 36.277390, 32.406265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542622, 36.000885, 32.452965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231694, 0.075215, -0.969877,
		0.661660, -0.718677, -0.213798,
		-0.713109, -0.691264, 0.116747,
		39.328690, 35.793507, 32.487988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910789, 35.674717, 31.815939>,  <39.827866, 36.277390, 32.406265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910789, 35.674717, 31.815939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537312, 35.631649, 31.952543>,  <39.313225, 35.605808, 32.034504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537312, 35.631649, 31.952543>,  <39.910789, 35.674717, 31.815939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537312, 35.631649, 31.952543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329966, -0.111739, -0.937356,
		0.139083, -0.987888, 0.068803,
		-0.933691, -0.107667, 0.341511,
		39.257206, 35.599350, 32.054996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675266, 35.058674, 31.539448>,  <39.910789, 35.674717, 31.815939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675266, 35.058674, 31.539448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345684, 35.265099, 31.633059>,  <39.147934, 35.388954, 31.689226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345684, 35.265099, 31.633059>,  <39.675266, 35.058674, 31.539448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345684, 35.265099, 31.633059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327799, -0.097213, -0.939732,
		-0.462214, -0.851014, 0.249265,
		-0.823957, 0.516067, 0.234029,
		39.098495, 35.419918, 31.703268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142853, 34.674332, 31.275888>,  <39.675266, 35.058674, 31.539448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142853, 34.674332, 31.275888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967770, 35.031792, 31.315475>,  <38.862720, 35.246269, 31.339228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967770, 35.031792, 31.315475>,  <39.142853, 34.674332, 31.275888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967770, 35.031792, 31.315475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497023, -0.148764, -0.854891,
		-0.749254, -0.423380, 0.509282,
		-0.437707, 0.893655, 0.098968,
		38.836456, 35.299889, 31.345165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436928, 34.561142, 31.109095>,  <39.142853, 34.674332, 31.275888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436928, 34.561142, 31.109095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420959, 34.960690, 31.098827>,  <38.411381, 35.200420, 31.092667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420959, 34.960690, 31.098827>,  <38.436928, 34.561142, 31.109095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420959, 34.960690, 31.098827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605171, -0.044608, -0.794845,
		-0.795094, -0.016194, 0.606270,
		-0.039916, 0.998873, -0.025668,
		38.408985, 35.260353, 31.091127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699093, 34.804874, 30.959337>,  <38.436928, 34.561142, 31.109095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699093, 34.804874, 30.959337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.945171, 35.106335, 30.866779>,  <38.092819, 35.287209, 30.811245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.945171, 35.106335, 30.866779>,  <37.699093, 34.804874, 30.959337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945171, 35.106335, 30.866779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517798, 0.164936, -0.839453,
		-0.594487, 0.636247, 0.491706,
		0.615200, 0.753648, -0.231395,
		38.129730, 35.332428, 30.797361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217621, 35.264870, 30.621893>,  <37.699093, 34.804874, 30.959337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217621, 35.264870, 30.621893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571308, 35.432713, 30.539833>,  <37.783520, 35.533421, 30.490597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571308, 35.432713, 30.539833>,  <37.217621, 35.264870, 30.621893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571308, 35.432713, 30.539833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301613, 0.177588, -0.936746,
		-0.356637, 0.890162, 0.283586,
		0.884217, 0.419611, -0.205150,
		37.836575, 35.558598, 30.478289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051270, 35.927856, 30.350227>,  <37.217621, 35.264870, 30.621893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051270, 35.927856, 30.350227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404743, 35.788860, 30.224783>,  <37.616825, 35.705463, 30.149515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404743, 35.788860, 30.224783>,  <37.051270, 35.927856, 30.350227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404743, 35.788860, 30.224783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233287, 0.253901, -0.938675,
		0.405811, 0.902653, 0.143302,
		0.883682, -0.347494, -0.313613,
		37.669849, 35.684612, 30.130699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305962, 36.450043, 29.818624>,  <37.051270, 35.927856, 30.350227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305962, 36.450043, 29.818624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481255, 36.098774, 29.741928>,  <37.586430, 35.888012, 29.695910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481255, 36.098774, 29.741928>,  <37.305962, 36.450043, 29.818624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481255, 36.098774, 29.741928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427674, -0.016086, -0.903790,
		0.790601, 0.478070, -0.382621,
		0.438229, -0.878175, -0.191740,
		37.612724, 35.835323, 29.684406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603146, 36.490528, 29.113186>,  <37.305962, 36.450043, 29.818624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603146, 36.490528, 29.113186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582577, 36.097477, 29.184511>,  <37.570236, 35.861645, 29.227306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582577, 36.097477, 29.184511>,  <37.603146, 36.490528, 29.113186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582577, 36.097477, 29.184511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353925, -0.149031, -0.923324,
		0.933859, -0.110589, -0.340113,
		-0.051422, -0.982629, 0.178314,
		37.567150, 35.802689, 29.238005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849255, 36.987438, 28.571642>,  <37.603146, 36.490528, 29.113186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849255, 36.987438, 28.571642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600529, 37.184494, 28.328115>,  <37.451294, 37.302727, 28.181999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600529, 37.184494, 28.328115>,  <37.849255, 36.987438, 28.571642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600529, 37.184494, 28.328115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152946, 0.686023, 0.711323,
		0.768086, 0.535426, -0.351231,
		-0.621813, 0.492637, -0.608816,
		37.413986, 37.332287, 28.145472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048698, 37.703999, 28.678459>,  <37.849255, 36.987438, 28.571642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048698, 37.703999, 28.678459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671539, 37.696606, 28.545431>,  <37.445244, 37.692169, 28.465614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671539, 37.696606, 28.545431>,  <38.048698, 37.703999, 28.678459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671539, 37.696606, 28.545431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289851, 0.537460, 0.791911,
		0.164107, 0.843087, -0.512127,
		-0.942897, -0.018483, -0.332570,
		37.388672, 37.691059, 28.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819939, 38.369366, 28.853020>,  <38.048698, 37.703999, 28.678459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819939, 38.369366, 28.853020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483295, 38.171246, 28.766890>,  <37.281307, 38.052372, 28.715212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483295, 38.171246, 28.766890>,  <37.819939, 38.369366, 28.853020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483295, 38.171246, 28.766890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474893, 0.488786, 0.731823,
		-0.257227, 0.718166, -0.646584,
		-0.841612, -0.495303, -0.215323,
		37.230812, 38.022655, 28.702293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333267, 38.858768, 28.768766>,  <37.819939, 38.369366, 28.853020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333267, 38.858768, 28.768766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133968, 38.524857, 28.862478>,  <37.014389, 38.324509, 28.918705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133968, 38.524857, 28.862478>,  <37.333267, 38.858768, 28.768766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133968, 38.524857, 28.862478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593621, 0.525382, 0.609579,
		-0.631953, 0.164647, -0.757315,
		-0.498245, -0.834784, 0.234279,
		36.984493, 38.274422, 28.932762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570206, 39.054771, 28.914083>,  <37.333267, 38.858768, 28.768766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570206, 39.054771, 28.914083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609100, 38.696362, 29.087374>,  <36.632439, 38.481316, 29.191349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609100, 38.696362, 29.087374>,  <36.570206, 39.054771, 28.914083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609100, 38.696362, 29.087374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611077, 0.289830, 0.736603,
		-0.785576, -0.336363, -0.519356,
		0.097241, -0.896024, 0.433227,
		36.638271, 38.427555, 29.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796803, 38.722210, 29.139967>,  <36.570206, 39.054771, 28.914083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796803, 38.722210, 29.139967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076206, 38.544575, 29.364420>,  <36.243847, 38.437992, 29.499092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076206, 38.544575, 29.364420>,  <35.796803, 38.722210, 29.139967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076206, 38.544575, 29.364420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661198, -0.100631, 0.743432,
		-0.273683, -0.890314, -0.363922,
		0.698509, -0.444089, 0.561132,
		36.285759, 38.411346, 29.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465065, 38.234661, 29.655504>,  <35.796803, 38.722210, 29.139967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465065, 38.234661, 29.655504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.831009, 38.206028, 29.814455>,  <36.050575, 38.188847, 29.909824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.831009, 38.206028, 29.814455>,  <35.465065, 38.234661, 29.655504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831009, 38.206028, 29.814455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403177, -0.215354, 0.889422,
		0.021911, -0.973909, -0.225878,
		0.914860, -0.071581, 0.397377,
		36.105465, 38.184551, 29.933668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519615, 37.567997, 29.991590>,  <35.465065, 38.234661, 29.655504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519615, 37.567997, 29.991590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.782223, 37.816277, 30.163038>,  <35.939789, 37.965244, 30.265907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.782223, 37.816277, 30.163038>,  <35.519615, 37.567997, 29.991590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782223, 37.816277, 30.163038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272795, -0.334391, 0.902090,
		0.703250, -0.709167, -0.050212,
		0.656523, 0.620697, 0.428618,
		35.979179, 38.002487, 30.291624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689781, 37.264565, 30.508179>,  <35.519615, 37.567997, 29.991590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689781, 37.264565, 30.508179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820251, 37.627739, 30.613449>,  <35.898533, 37.845642, 30.676611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820251, 37.627739, 30.613449>,  <35.689781, 37.264565, 30.508179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820251, 37.627739, 30.613449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168076, -0.218264, 0.961307,
		0.930247, -0.357789, 0.081410,
		0.326176, 0.907936, 0.263175,
		35.918106, 37.900120, 30.692402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182400, 37.104214, 30.956207>,  <35.689781, 37.264565, 30.508179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182400, 37.104214, 30.956207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101665, 37.483253, 31.055256>,  <36.053226, 37.710678, 31.114685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101665, 37.483253, 31.055256>,  <36.182400, 37.104214, 30.956207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101665, 37.483253, 31.055256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276645, -0.297688, 0.913701,
		0.939538, 0.115911, 0.322232,
		-0.201832, 0.947600, 0.247623,
		36.041115, 37.767532, 31.129543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481358, 37.267838, 31.680822>,  <36.182400, 37.104214, 30.956207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481358, 37.267838, 31.680822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.179119, 37.517071, 31.599979>,  <35.997776, 37.666611, 31.551474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.179119, 37.517071, 31.599979>,  <36.481358, 37.267838, 31.680822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179119, 37.517071, 31.599979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300358, -0.055366, 0.952219,
		0.582119, 0.780196, 0.228981,
		-0.755595, 0.623080, -0.202108,
		35.952442, 37.703995, 31.539347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626427, 37.861961, 32.095917>,  <36.481358, 37.267838, 31.680822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626427, 37.861961, 32.095917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231579, 37.840481, 32.035633>,  <35.994671, 37.827591, 31.999462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.231579, 37.840481, 32.035633>,  <36.626427, 37.861961, 32.095917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231579, 37.840481, 32.035633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130706, -0.272572, 0.953216,
		-0.092267, 0.960636, 0.262042,
		-0.987118, -0.053700, -0.150710,
		35.935444, 37.824371, 31.990419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.178013, 35.754028, 24.737070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785839, 35.741440, 24.814800>,  <38.550537, 35.733887, 24.861439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785839, 35.741440, 24.814800>,  <39.178013, 35.754028, 24.737070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785839, 35.741440, 24.814800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161133, 0.438787, 0.884026,
		-0.113089, 0.898040, -0.425130,
		-0.980432, -0.031471, 0.194326,
		38.491711, 35.731998, 24.873098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959507, 36.496700, 24.954775>,  <39.178013, 35.754028, 24.737070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959507, 36.496700, 24.954775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669571, 36.263744, 25.101974>,  <38.495609, 36.123970, 25.190294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669571, 36.263744, 25.101974>,  <38.959507, 36.496700, 24.954775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669571, 36.263744, 25.101974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010640, 0.543573, 0.839294,
		-0.688834, 0.604440, -0.400201,
		-0.724841, -0.582393, 0.368000,
		38.452118, 36.089027, 25.212374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319675, 36.930138, 25.067495>,  <38.959507, 36.496700, 24.954775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319675, 36.930138, 25.067495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283440, 36.609276, 25.303579>,  <38.261700, 36.416759, 25.445230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283440, 36.609276, 25.303579>,  <38.319675, 36.930138, 25.067495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283440, 36.609276, 25.303579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181460, 0.596020, 0.782197,
		-0.979217, -0.036243, -0.199549,
		-0.090586, -0.802151, 0.590210,
		38.256264, 36.368629, 25.480642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856972, 37.202282, 25.516064>,  <38.319675, 36.930138, 25.067495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856972, 37.202282, 25.516064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929497, 36.859768, 25.709517>,  <37.973011, 36.654259, 25.825588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929497, 36.859768, 25.709517>,  <37.856972, 37.202282, 25.516064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929497, 36.859768, 25.709517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452805, 0.363865, 0.813984,
		-0.872981, -0.366574, -0.321759,
		0.181309, -0.856286, 0.483633,
		37.983891, 36.602882, 25.854607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231544, 36.978577, 25.813848>,  <37.856972, 37.202282, 25.516064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231544, 36.978577, 25.813848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546280, 36.834721, 26.014463>,  <37.735123, 36.748409, 26.134832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546280, 36.834721, 26.014463>,  <37.231544, 36.978577, 25.813848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546280, 36.834721, 26.014463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311126, 0.470684, 0.825625,
		-0.532991, -0.805679, 0.258462,
		0.786843, -0.359637, 0.501538,
		37.782333, 36.726830, 26.164925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948875, 36.604786, 26.345711>,  <37.231544, 36.978577, 25.813848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948875, 36.604786, 26.345711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316856, 36.623920, 26.501352>,  <37.537643, 36.635399, 26.594738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316856, 36.623920, 26.501352>,  <36.948875, 36.604786, 26.345711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316856, 36.623920, 26.501352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383040, 0.321057, 0.866142,
		-0.083497, -0.945851, 0.313677,
		0.919950, 0.047831, 0.389106,
		37.592842, 36.638271, 26.618084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859478, 36.344368, 27.014408>,  <36.948875, 36.604786, 26.345711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859478, 36.344368, 27.014408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201027, 36.548553, 27.055063>,  <37.405956, 36.671062, 27.079456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201027, 36.548553, 27.055063>,  <36.859478, 36.344368, 27.014408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201027, 36.548553, 27.055063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338168, 0.395656, 0.853873,
		0.395656, -0.763470, 0.510461,
		-0.853873, -0.510461, -0.101637,
		37.457188, 36.701691, 27.085554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132252, 36.181675, 27.694258>,  <36.859478, 36.344368, 27.014408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132252, 36.181675, 27.694258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311794, 36.522953, 27.587994>,  <37.419521, 36.727722, 27.524235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311794, 36.522953, 27.587994>,  <37.132252, 36.181675, 27.694258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311794, 36.522953, 27.587994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434260, 0.468095, 0.769614,
		0.780989, -0.230083, 0.580619,
		0.448860, 0.853199, -0.265661,
		37.446453, 36.778912, 27.508295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388927, 36.480228, 28.341879>,  <37.132252, 36.181675, 27.694258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388927, 36.480228, 28.341879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400345, 36.784206, 28.082134>,  <37.407196, 36.966595, 27.926289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400345, 36.784206, 28.082134>,  <37.388927, 36.480228, 28.341879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400345, 36.784206, 28.082134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294015, 0.627271, 0.721170,
		0.955375, 0.170337, 0.241339,
		0.028543, 0.759945, -0.649360,
		37.408909, 37.012192, 27.887325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990208, 36.110432, 28.454050>,  <37.388927, 36.480228, 28.341879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990208, 36.110432, 28.454050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770020, 35.833843, 28.641176>,  <37.637905, 35.667889, 28.753452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770020, 35.833843, 28.641176>,  <37.990208, 36.110432, 28.454050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770020, 35.833843, 28.641176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443832, -0.232224, -0.865497,
		0.707105, -0.684061, -0.179065,
		-0.550469, -0.691472, 0.467814,
		37.604877, 35.626400, 28.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084637, 35.422482, 28.194475>,  <37.990208, 36.110432, 28.454050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084637, 35.422482, 28.194475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725273, 35.386772, 28.366474>,  <37.509655, 35.365345, 28.469673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725273, 35.386772, 28.366474>,  <38.084637, 35.422482, 28.194475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725273, 35.386772, 28.366474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382810, -0.320659, -0.866391,
		0.215231, -0.942978, 0.253906,
		-0.898406, -0.089276, 0.429997,
		37.455753, 35.359989, 28.495474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935135, 34.714321, 28.050770>,  <38.084637, 35.422482, 28.194475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935135, 34.714321, 28.050770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578003, 34.876339, 28.129549>,  <37.363724, 34.973549, 28.176817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578003, 34.876339, 28.129549>,  <37.935135, 34.714321, 28.050770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578003, 34.876339, 28.129549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398251, -0.505761, -0.765246,
		-0.210353, -0.761670, 0.612870,
		-0.892831, 0.405048, 0.196948,
		37.310154, 34.997852, 28.188633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530392, 34.213501, 27.987944>,  <37.935135, 34.714321, 28.050770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530392, 34.213501, 27.987944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278889, 34.523121, 27.958269>,  <37.127987, 34.708893, 27.940464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278889, 34.523121, 27.958269>,  <37.530392, 34.213501, 27.987944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278889, 34.523121, 27.958269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530436, -0.496711, -0.686961,
		-0.568592, -0.392584, 0.722898,
		-0.628761, 0.774052, -0.074185,
		37.090260, 34.755337, 27.936014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893261, 33.891445, 28.069664>,  <37.530392, 34.213501, 27.987944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893261, 33.891445, 28.069664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804916, 34.224964, 27.867279>,  <36.751907, 34.425076, 27.745848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804916, 34.224964, 27.867279>,  <36.893261, 33.891445, 28.069664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804916, 34.224964, 27.867279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484626, -0.544021, -0.684966,
		-0.846378, 0.093919, 0.524236,
		-0.220864, 0.833799, -0.505963,
		36.738659, 34.475105, 27.715490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144192, 33.795586, 27.748789>,  <36.893261, 33.891445, 28.069664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144192, 33.795586, 27.748789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313152, 34.093182, 27.541693>,  <36.414528, 34.271740, 27.417435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313152, 34.093182, 27.541693>,  <36.144192, 33.795586, 27.748789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313152, 34.093182, 27.541693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457149, -0.318367, -0.830456,
		-0.782684, 0.587469, 0.205637,
		0.422399, 0.743991, -0.517741,
		36.439873, 34.316380, 27.386370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634895, 34.206165, 27.377556>,  <36.144192, 33.795586, 27.748789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634895, 34.206165, 27.377556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999008, 34.208382, 27.211977>,  <36.217476, 34.209713, 27.112629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999008, 34.208382, 27.211977>,  <35.634895, 34.206165, 27.377556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999008, 34.208382, 27.211977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349225, -0.526697, -0.775005,
		-0.222318, 0.850035, -0.477509,
		0.910284, 0.005540, -0.413948,
		36.272095, 34.210045, 27.087793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428833, 34.189453, 26.775042>,  <35.634895, 34.206165, 27.377556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428833, 34.189453, 26.775042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814301, 34.083633, 26.789740>,  <36.045582, 34.020142, 26.798559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814301, 34.083633, 26.789740>,  <35.428833, 34.189453, 26.775042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814301, 34.083633, 26.789740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148263, -0.644296, -0.750267,
		0.222155, 0.717564, -0.660113,
		0.963673, -0.264546, 0.036745,
		36.103401, 34.004269, 26.800764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631752, 34.206474, 26.106331>,  <35.428833, 34.189453, 26.775042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631752, 34.206474, 26.106331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895416, 33.958984, 26.277300>,  <36.053616, 33.810490, 26.379881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895416, 33.958984, 26.277300>,  <35.631752, 34.206474, 26.106331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895416, 33.958984, 26.277300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130329, -0.653766, -0.745389,
		0.740626, 0.435623, -0.511573,
		0.659157, -0.618727, 0.427421,
		36.093163, 33.773365, 26.405527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270710, 34.205990, 25.747517>,  <35.631752, 34.206474, 26.106331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270710, 34.205990, 25.747517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279869, 33.857483, 25.943628>,  <36.285362, 33.648380, 26.061295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279869, 33.857483, 25.943628>,  <36.270710, 34.205990, 25.747517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279869, 33.857483, 25.943628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088661, -0.486706, -0.869055,
		0.995799, 0.063365, 0.066105,
		0.022894, -0.871265, 0.490279,
		36.286736, 33.596104, 26.090712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772369, 33.838547, 25.495110>,  <36.270710, 34.205990, 25.747517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772369, 33.838547, 25.495110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580959, 33.545116, 25.688139>,  <36.466114, 33.369057, 25.803957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580959, 33.545116, 25.688139>,  <36.772369, 33.838547, 25.495110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580959, 33.545116, 25.688139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042998, -0.568500, -0.821558,
		0.877019, -0.372389, 0.303586,
		-0.478528, -0.733576, 0.482573,
		36.437401, 33.325043, 25.832911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141926, 33.232552, 25.344629>,  <36.772369, 33.838547, 25.495110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141926, 33.232552, 25.344629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787361, 33.086689, 25.458685>,  <36.574623, 32.999172, 25.527119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787361, 33.086689, 25.458685>,  <37.141926, 33.232552, 25.344629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787361, 33.086689, 25.458685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023257, -0.650286, -0.759334,
		0.462320, -0.666448, 0.584899,
		-0.886408, -0.364658, 0.285141,
		36.521439, 32.977291, 25.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176231, 32.527950, 25.334829>,  <37.141926, 33.232552, 25.344629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176231, 32.527950, 25.334829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779373, 32.577496, 25.327797>,  <36.541260, 32.607224, 25.323578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779373, 32.577496, 25.327797>,  <37.176231, 32.527950, 25.334829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779373, 32.577496, 25.327797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080327, -0.738453, -0.669503,
		-0.095907, -0.662831, 0.742601,
		-0.992144, 0.123861, -0.017579,
		36.481731, 32.614655, 25.322523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891022, 31.871346, 25.512556>,  <37.176231, 32.527950, 25.334829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891022, 31.871346, 25.512556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614670, 32.074059, 25.306313>,  <36.448856, 32.195686, 25.182568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614670, 32.074059, 25.306313>,  <36.891022, 31.871346, 25.512556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614670, 32.074059, 25.306313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197532, -0.818368, -0.539680,
		-0.695457, -0.271007, 0.665503,
		-0.690884, 0.506783, -0.515607,
		36.407406, 32.226093, 25.151630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.039442, 33.731346, 24.998297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.417397, 33.861958, 24.988749>,  <31.644169, 33.940323, 24.983019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.417397, 33.861958, 24.988749>,  <31.039442, 33.731346, 24.998297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417397, 33.861958, 24.988749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020704, 0.132361, 0.990985,
		0.326743, -0.935874, 0.131827,
		0.944886, 0.326527, -0.023872,
		31.700863, 33.959915, 24.981586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365921, 33.409214, 25.523121>,  <31.039442, 33.731346, 24.998297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365921, 33.409214, 25.523121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.607847, 33.720280, 25.454496>,  <31.753004, 33.906918, 25.413322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.607847, 33.720280, 25.454496>,  <31.365921, 33.409214, 25.523121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607847, 33.720280, 25.454496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025489, 0.234222, 0.971849,
		0.795957, -0.583418, 0.161483,
		0.604817, 0.777665, -0.171560,
		31.789291, 33.953579, 25.403028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050404, 33.299652, 25.897886>,  <31.365921, 33.409214, 25.523121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050404, 33.299652, 25.897886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983841, 33.688793, 25.833553>,  <31.943903, 33.922279, 25.794954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983841, 33.688793, 25.833553>,  <32.050404, 33.299652, 25.897886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983841, 33.688793, 25.833553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072351, 0.150619, 0.985941,
		0.983399, 0.175704, 0.045323,
		-0.166407, 0.972852, -0.160831,
		31.933918, 33.980648, 25.785305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473484, 33.621815, 26.379486>,  <32.050404, 33.299652, 25.897886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473484, 33.621815, 26.379486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223827, 33.911404, 26.261969>,  <32.074036, 34.085155, 26.191458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223827, 33.911404, 26.261969>,  <32.473484, 33.621815, 26.379486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223827, 33.911404, 26.261969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011531, 0.384518, 0.923045,
		0.781228, 0.572721, -0.248341,
		-0.624139, 0.723973, -0.293793,
		32.036587, 34.128597, 26.173830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716877, 34.281548, 26.524475>,  <32.473484, 33.621815, 26.379486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716877, 34.281548, 26.524475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.318687, 34.319191, 26.519243>,  <32.079773, 34.341778, 26.516104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.318687, 34.319191, 26.519243>,  <32.716877, 34.281548, 26.524475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318687, 34.319191, 26.519243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030650, 0.448368, 0.893323,
		0.089937, 0.888881, -0.449224,
		-0.995476, 0.094112, -0.013080,
		32.020046, 34.347424, 26.515320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620380, 34.946728, 26.764603>,  <32.716877, 34.281548, 26.524475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620380, 34.946728, 26.764603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.267361, 34.764908, 26.812757>,  <32.055550, 34.655815, 26.841650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.267361, 34.764908, 26.812757>,  <32.620380, 34.946728, 26.764603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267361, 34.764908, 26.812757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102722, 0.436211, 0.893962,
		-0.458862, 0.776600, -0.431669,
		-0.882550, -0.454547, 0.120387,
		32.002594, 34.628544, 26.848873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415359, 35.257599, 27.231281>,  <32.620380, 34.946728, 26.764603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415359, 35.257599, 27.231281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.189682, 34.929489, 27.268867>,  <32.054276, 34.732624, 27.291420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.189682, 34.929489, 27.268867>,  <32.415359, 35.257599, 27.231281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189682, 34.929489, 27.268867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131599, 0.201699, 0.970566,
		-0.815085, 0.535225, -0.221745,
		-0.564197, -0.820275, 0.093967,
		32.020424, 34.683407, 27.297058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885082, 35.403633, 27.778776>,  <32.415359, 35.257599, 27.231281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885082, 35.403633, 27.778776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.924353, 35.005726, 27.767429>,  <31.947914, 34.766983, 27.760622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.924353, 35.005726, 27.767429>,  <31.885082, 35.403633, 27.778776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924353, 35.005726, 27.767429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100490, -0.038268, 0.994202,
		-0.990083, -0.094755, -0.103721,
		0.098175, -0.994765, -0.028366,
		31.953806, 34.707298, 27.758919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487074, 35.176094, 28.279572>,  <31.885082, 35.403633, 27.778776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487074, 35.176094, 28.279572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.711224, 34.850563, 28.218025>,  <31.845713, 34.655247, 28.181097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.711224, 34.850563, 28.218025>,  <31.487074, 35.176094, 28.279572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711224, 34.850563, 28.218025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038575, -0.159926, 0.986375,
		-0.827342, -0.558672, -0.058224,
		0.560372, -0.813824, -0.153864,
		31.879335, 34.606415, 28.171865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440968, 34.761948, 28.834169>,  <31.487074, 35.176094, 28.279572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440968, 34.761948, 28.834169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.725924, 34.534748, 28.669306>,  <31.896898, 34.398430, 28.570387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.725924, 34.534748, 28.669306>,  <31.440968, 34.761948, 28.834169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725924, 34.534748, 28.669306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176065, -0.423865, 0.888448,
		-0.679338, -0.705489, -0.201953,
		0.712390, -0.568000, -0.412160,
		31.939640, 34.364349, 28.545658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272781, 34.026604, 28.980377>,  <31.440968, 34.761948, 28.834169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272781, 34.026604, 28.980377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.664957, 34.068638, 28.913803>,  <31.900263, 34.093857, 28.873857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.664957, 34.068638, 28.913803>,  <31.272781, 34.026604, 28.980377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664957, 34.068638, 28.913803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195274, -0.413007, 0.889547,
		0.024736, -0.904645, -0.425447,
		0.980437, 0.105082, -0.166437,
		31.959087, 34.100163, 28.863873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615751, 33.461765, 29.368448>,  <31.272781, 34.026604, 28.980377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615751, 33.461765, 29.368448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.900707, 33.735542, 29.306423>,  <32.071682, 33.899807, 29.269209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.900707, 33.735542, 29.306423>,  <31.615751, 33.461765, 29.368448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900707, 33.735542, 29.306423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364063, -0.171533, 0.915442,
		0.599967, -0.708603, -0.371378,
		0.712388, 0.684440, -0.155062,
		32.114426, 33.940876, 29.259905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249271, 33.140221, 29.670736>,  <31.615751, 33.461765, 29.368448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249271, 33.140221, 29.670736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291092, 33.537834, 29.658255>,  <32.316185, 33.776402, 29.650766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291092, 33.537834, 29.658255>,  <32.249271, 33.140221, 29.670736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291092, 33.537834, 29.658255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194937, 0.010284, 0.980762,
		0.975227, -0.108621, -0.192698,
		0.104550, 0.994030, -0.031204,
		32.322456, 33.836044, 29.648893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995987, 33.308865, 29.948069>,  <32.249271, 33.140221, 29.670736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995987, 33.308865, 29.948069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.764645, 33.631760, 29.995174>,  <32.625839, 33.825497, 30.023438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.764645, 33.631760, 29.995174>,  <32.995987, 33.308865, 29.948069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764645, 33.631760, 29.995174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355957, 0.119823, 0.926789,
		0.734028, 0.577935, -0.356643,
		-0.578357, 0.807239, 0.117766,
		32.591137, 33.873932, 30.030504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707752, 32.916073, 30.034458>,  <32.995987, 33.308865, 29.948069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707752, 32.916073, 30.034458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822136, 32.581051, 30.220673>,  <33.890766, 32.380039, 30.332401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822136, 32.581051, 30.220673>,  <33.707752, 32.916073, 30.034458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822136, 32.581051, 30.220673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216042, -0.529670, -0.820229,
		0.933569, 0.133979, -0.332413,
		0.285963, -0.837556, 0.465539,
		33.907925, 32.329784, 30.360334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301796, 32.616318, 29.725382>,  <33.707752, 32.916073, 30.034458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301796, 32.616318, 29.725382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.120693, 32.319569, 29.923225>,  <34.012032, 32.141518, 30.041931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.120693, 32.319569, 29.923225>,  <34.301796, 32.616318, 29.725382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120693, 32.319569, 29.923225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008722, -0.558381, -0.829539,
		0.891592, -0.371265, 0.259281,
		-0.452756, -0.741872, 0.494609,
		33.984867, 32.097008, 30.071608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701992, 32.021763, 29.511295>,  <34.301796, 32.616318, 29.725382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701992, 32.021763, 29.511295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335056, 31.907946, 29.622671>,  <34.114895, 31.839655, 29.689497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.335056, 31.907946, 29.622671>,  <34.701992, 32.021763, 29.511295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335056, 31.907946, 29.622671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072786, -0.567740, -0.819984,
		0.391403, -0.772467, 0.500098,
		-0.917336, -0.284544, 0.278440,
		34.059856, 31.822582, 29.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743607, 31.314249, 29.444719>,  <34.701992, 32.021763, 29.511295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743607, 31.314249, 29.444719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354729, 31.406853, 29.458830>,  <34.121403, 31.462414, 29.467297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354729, 31.406853, 29.458830>,  <34.743607, 31.314249, 29.444719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354729, 31.406853, 29.458830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137563, -0.442667, -0.886071,
		-0.189515, -0.866286, 0.462205,
		-0.972194, 0.231506, 0.035277,
		34.063072, 31.476305, 29.469414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481003, 30.694557, 29.246166>,  <34.743607, 31.314249, 29.444719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481003, 30.694557, 29.246166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197189, 30.970108, 29.186819>,  <34.026901, 31.135439, 29.151211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197189, 30.970108, 29.186819>,  <34.481003, 30.694557, 29.246166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197189, 30.970108, 29.186819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175841, -0.376972, -0.909380,
		-0.682381, -0.619145, 0.388606,
		-0.709532, 0.688877, -0.148367,
		33.984329, 31.176771, 29.142309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926006, 30.376928, 28.922411>,  <34.481003, 30.694557, 29.246166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926006, 30.376928, 28.922411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860134, 30.760803, 28.831301>,  <33.820610, 30.991127, 28.776634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.860134, 30.760803, 28.831301>,  <33.926006, 30.376928, 28.922411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860134, 30.760803, 28.831301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294415, -0.268229, -0.917264,
		-0.941382, -0.083997, 0.326719,
		-0.164683, 0.959686, -0.227776,
		33.810730, 31.048710, 28.762968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288033, 30.407417, 28.592049>,  <33.926006, 30.376928, 28.922411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288033, 30.407417, 28.592049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.485992, 30.735237, 28.476524>,  <33.604771, 30.931929, 28.407209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.485992, 30.735237, 28.476524>,  <33.288033, 30.407417, 28.592049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485992, 30.735237, 28.476524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379944, -0.094819, -0.920137,
		-0.781482, 0.565109, 0.264457,
		0.494902, 0.819549, -0.288809,
		33.634464, 30.981102, 28.389881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755463, 30.694643, 28.173239>,  <33.288033, 30.407417, 28.592049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755463, 30.694643, 28.173239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096870, 30.875479, 28.069613>,  <33.301716, 30.983980, 28.007437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096870, 30.875479, 28.069613>,  <32.755463, 30.694643, 28.173239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096870, 30.875479, 28.069613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301866, 0.023767, -0.953054,
		-0.424707, 0.891657, 0.156755,
		0.853523, 0.452088, -0.259067,
		33.352928, 31.011105, 27.991892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585640, 31.199240, 27.637009>,  <32.755463, 30.694643, 28.173239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585640, 31.199240, 27.637009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975292, 31.135174, 27.573231>,  <33.209084, 31.096733, 27.534964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975292, 31.135174, 27.573231>,  <32.585640, 31.199240, 27.637009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975292, 31.135174, 27.573231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138108, 0.136564, -0.980957,
		0.178890, 0.977598, 0.110910,
		0.974128, -0.160166, -0.159444,
		33.267532, 31.087124, 27.525398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736881, 31.456839, 27.049824>,  <32.585640, 31.199240, 27.637009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736881, 31.456839, 27.049824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083576, 31.257401, 27.044645>,  <33.291592, 31.137737, 27.041538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083576, 31.257401, 27.044645>,  <32.736881, 31.456839, 27.049824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083576, 31.257401, 27.044645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008254, 0.011614, -0.999898,
		0.498696, 0.866757, 0.005951,
		0.866738, -0.498596, -0.012947,
		33.343597, 31.107822, 27.040762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180767, 31.755590, 26.495975>,  <32.736881, 31.456839, 27.049824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180767, 31.755590, 26.495975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.328129, 31.392736, 26.577349>,  <33.416546, 31.175024, 26.626173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.328129, 31.392736, 26.577349>,  <33.180767, 31.755590, 26.495975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328129, 31.392736, 26.577349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331834, -0.076099, -0.940263,
		0.868426, 0.413905, 0.272983,
		0.368406, -0.907134, 0.203434,
		33.438652, 31.120596, 26.638378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825325, 31.670923, 26.093088>,  <33.180767, 31.755590, 26.495975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825325, 31.670923, 26.093088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.665447, 31.316862, 26.188377>,  <33.569519, 31.104425, 26.245550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.665447, 31.316862, 26.188377>,  <33.825325, 31.670923, 26.093088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665447, 31.316862, 26.188377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261811, -0.359296, -0.895746,
		0.878462, -0.295660, 0.375353,
		-0.399699, -0.885151, 0.238221,
		33.545536, 31.051317, 26.259844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349644, 31.234509, 25.865541>,  <33.825325, 31.670923, 26.093088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349644, 31.234509, 25.865541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986877, 31.066238, 25.856239>,  <33.769218, 30.965277, 25.850658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986877, 31.066238, 25.856239>,  <34.349644, 31.234509, 25.865541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986877, 31.066238, 25.856239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191425, -0.362257, -0.912209,
		0.375319, -0.831747, 0.409064,
		-0.906913, -0.420675, -0.023255,
		33.714802, 30.940037, 25.849262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542225, 30.613991, 25.615664>,  <34.349644, 31.234509, 25.865541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542225, 30.613991, 25.615664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144997, 30.641781, 25.577761>,  <33.906658, 30.658455, 25.555019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144997, 30.641781, 25.577761>,  <34.542225, 30.613991, 25.615664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144997, 30.641781, 25.577761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062172, -0.373613, -0.925499,
		-0.099699, -0.924980, 0.366706,
		-0.993074, 0.069472, -0.094756,
		33.847076, 30.662622, 25.549334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741177, 29.876331, 25.688610>,  <34.542225, 30.613991, 25.615664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741177, 29.876331, 25.688610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103291, 29.706625, 25.697191>,  <35.320557, 29.604801, 25.702339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.103291, 29.706625, 25.697191>,  <34.741177, 29.876331, 25.688610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103291, 29.706625, 25.697191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188143, 0.445705, 0.875186,
		-0.380875, -0.788254, 0.483312,
		0.905282, -0.424268, 0.021454,
		35.374874, 29.579344, 25.703627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855358, 29.548929, 26.401646>,  <34.741177, 29.876331, 25.688610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855358, 29.548929, 26.401646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218002, 29.607689, 26.243416>,  <35.435589, 29.642944, 26.148478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218002, 29.607689, 26.243416>,  <34.855358, 29.548929, 26.401646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218002, 29.607689, 26.243416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289063, 0.466732, 0.835825,
		0.307409, -0.872113, 0.380681,
		0.906610, 0.146899, -0.395573,
		35.489986, 29.651758, 26.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255177, 29.257206, 26.852720>,  <34.855358, 29.548929, 26.401646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255177, 29.257206, 26.852720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475155, 29.523132, 26.650501>,  <35.607143, 29.682688, 26.529169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475155, 29.523132, 26.650501>,  <35.255177, 29.257206, 26.852720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475155, 29.523132, 26.650501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452933, 0.271165, 0.849306,
		0.701718, -0.696054, -0.151989,
		0.549949, 0.664814, -0.505548,
		35.640141, 29.722576, 26.498837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002838, 29.280453, 27.333036>,  <35.255177, 29.257206, 26.852720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002838, 29.280453, 27.333036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022732, 29.583769, 27.073029>,  <36.034668, 29.765759, 26.917025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022732, 29.583769, 27.073029>,  <36.002838, 29.280453, 27.333036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022732, 29.583769, 27.073029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546814, 0.523942, 0.653054,
		0.835775, -0.387920, -0.388584,
		0.049737, 0.758289, -0.650018,
		36.037651, 29.811256, 26.878023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726261, 29.415697, 27.350321>,  <36.002838, 29.280453, 27.333036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726261, 29.415697, 27.350321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545567, 29.740095, 27.201609>,  <36.437149, 29.934734, 27.112381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545567, 29.740095, 27.201609>,  <36.726261, 29.415697, 27.350321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545567, 29.740095, 27.201609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451272, 0.567193, 0.688945,
		0.769603, 0.143445, -0.622201,
		-0.451734, 0.810996, -0.371781,
		36.410046, 29.983395, 27.090075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210781, 29.905676, 27.234537>,  <36.726261, 29.415697, 27.350321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210781, 29.905676, 27.234537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873215, 30.114674, 27.283195>,  <36.670673, 30.240072, 27.312391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873215, 30.114674, 27.283195>,  <37.210781, 29.905676, 27.234537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873215, 30.114674, 27.283195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420574, 0.503603, 0.754653,
		0.333041, 0.688029, -0.644748,
		-0.843920, 0.522495, 0.121647,
		36.620037, 30.271421, 27.319689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426517, 30.573582, 27.251385>,  <37.210781, 29.905676, 27.234537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426517, 30.573582, 27.251385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057713, 30.618561, 27.399570>,  <36.836430, 30.645548, 27.488482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057713, 30.618561, 27.399570>,  <37.426517, 30.573582, 27.251385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057713, 30.618561, 27.399570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355255, 0.626087, 0.694124,
		-0.153889, 0.771602, -0.617210,
		-0.922015, 0.112449, 0.370463,
		36.781109, 30.652296, 27.510710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311932, 31.297316, 27.309422>,  <37.426517, 30.573582, 27.251385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311932, 31.297316, 27.309422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067902, 31.102709, 27.559576>,  <36.921482, 30.985945, 27.709669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067902, 31.102709, 27.559576>,  <37.311932, 31.297316, 27.309422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067902, 31.102709, 27.559576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363476, 0.529496, 0.766498,
		-0.704053, 0.694936, -0.146196,
		-0.610078, -0.486516, 0.625386,
		36.884880, 30.956755, 27.747192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117268, 31.879452, 27.698463>,  <37.311932, 31.297316, 27.309422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117268, 31.879452, 27.698463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012615, 31.569967, 27.929260>,  <36.949825, 31.384277, 28.067739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012615, 31.569967, 27.929260>,  <37.117268, 31.879452, 27.698463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012615, 31.569967, 27.929260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275628, 0.513026, 0.812916,
		-0.924975, 0.371719, 0.079033,
		-0.261630, -0.773711, 0.576993,
		36.934128, 31.337854, 28.102358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828854, 32.146244, 28.360983>,  <37.117268, 31.879452, 27.698463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828854, 32.146244, 28.360983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852932, 31.760336, 28.463423>,  <36.867378, 31.528790, 28.524887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852932, 31.760336, 28.463423>,  <36.828854, 32.146244, 28.360983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852932, 31.760336, 28.463423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197567, 0.263004, 0.944350,
		-0.978440, -0.006245, 0.206438,
		0.060192, -0.964774, 0.256100,
		36.870991, 31.470903, 28.540253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342625, 32.058197, 28.876736>,  <36.828854, 32.146244, 28.360983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342625, 32.058197, 28.876736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633461, 31.790718, 28.938946>,  <36.807961, 31.630232, 28.976273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633461, 31.790718, 28.938946>,  <36.342625, 32.058197, 28.876736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633461, 31.790718, 28.938946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014123, 0.211917, 0.977185,
		-0.686399, -0.712697, 0.144639,
		0.727088, -0.668696, 0.155525,
		36.851589, 31.590109, 28.985603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187744, 31.738052, 29.528994>,  <36.342625, 32.058197, 28.876736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187744, 31.738052, 29.528994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566696, 31.622879, 29.473049>,  <36.794067, 31.553774, 29.439482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566696, 31.622879, 29.473049>,  <36.187744, 31.738052, 29.528994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566696, 31.622879, 29.473049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142114, -0.013179, 0.989763,
		-0.286830, -0.957559, 0.028434,
		0.947381, -0.287935, -0.139862,
		36.850910, 31.536499, 29.431091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354607, 31.188745, 29.934956>,  <36.187744, 31.738052, 29.528994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354607, 31.188745, 29.934956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714058, 31.353222, 29.873791>,  <36.929729, 31.451908, 29.837091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714058, 31.353222, 29.873791>,  <36.354607, 31.188745, 29.934956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714058, 31.353222, 29.873791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130694, 0.081812, 0.988041,
		0.418785, -0.907870, 0.019779,
		0.898631, 0.411192, -0.152914,
		36.983646, 31.476580, 29.827917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942516, 30.803560, 30.346235>,  <36.354607, 31.188745, 29.934956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942516, 30.803560, 30.346235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064243, 31.174583, 30.259499>,  <37.137280, 31.397198, 30.207457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064243, 31.174583, 30.259499>,  <36.942516, 30.803560, 30.346235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064243, 31.174583, 30.259499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101507, 0.194766, 0.975583,
		0.947146, -0.318902, -0.034882,
		0.304322, 0.927560, -0.216843,
		37.155540, 31.452852, 30.194447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.237175, 31.358002, 25.285374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.189556, 31.666632, 25.035414>,  <36.160984, 31.851809, 24.885437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.189556, 31.666632, 25.035414>,  <36.237175, 31.358002, 25.285374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189556, 31.666632, 25.035414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023710, -0.626988, -0.778668,
		-0.992605, -0.107516, 0.056348,
		-0.119048, 0.771574, -0.624901,
		36.153843, 31.898104, 24.847944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771046, 30.994770, 24.776031>,  <36.237175, 31.358002, 25.285374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771046, 30.994770, 24.776031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.949905, 31.311924, 24.610434>,  <36.057220, 31.502216, 24.511074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.949905, 31.311924, 24.610434>,  <35.771046, 30.994770, 24.776031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949905, 31.311924, 24.610434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176580, -0.531983, -0.828138,
		-0.876859, 0.297195, -0.377881,
		0.447145, 0.792886, -0.413996,
		36.084049, 31.549789, 24.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550346, 31.018528, 24.034229>,  <35.771046, 30.994770, 24.776031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550346, 31.018528, 24.034229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883266, 31.240204, 24.029289>,  <36.083019, 31.373209, 24.026325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883266, 31.240204, 24.029289>,  <35.550346, 31.018528, 24.034229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883266, 31.240204, 24.029289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257908, -0.406867, -0.876323,
		-0.490674, 0.726178, -0.481565,
		0.832300, 0.554188, -0.012352,
		36.132957, 31.406460, 24.025583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610497, 31.128815, 23.351515>,  <35.550346, 31.018528, 24.034229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610497, 31.128815, 23.351515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970554, 31.228542, 23.494390>,  <36.186588, 31.288380, 23.580116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970554, 31.228542, 23.494390>,  <35.610497, 31.128815, 23.351515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970554, 31.228542, 23.494390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434361, -0.451988, -0.779126,
		-0.032805, 0.856474, -0.515147,
		0.900141, 0.249319, 0.357191,
		36.240597, 31.303337, 23.601547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882423, 31.467405, 22.828413>,  <35.610497, 31.128815, 23.351515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882423, 31.467405, 22.828413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184067, 31.317471, 23.044125>,  <36.365051, 31.227510, 23.173552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184067, 31.317471, 23.044125>,  <35.882423, 31.467405, 22.828413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184067, 31.317471, 23.044125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387646, -0.408794, -0.826207,
		0.530147, 0.832097, -0.162970,
		0.754105, -0.374836, 0.539280,
		36.410297, 31.205019, 23.205910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424713, 31.499554, 22.316563>,  <35.882423, 31.467405, 22.828413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424713, 31.499554, 22.316563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554661, 31.238903, 22.590742>,  <36.632629, 31.082512, 22.755249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.554661, 31.238903, 22.590742>,  <36.424713, 31.499554, 22.316563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554661, 31.238903, 22.590742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298077, -0.617276, -0.728094,
		0.897558, 0.440852, -0.006299,
		0.324870, -0.651629, 0.685448,
		36.652122, 31.043415, 22.796377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137821, 31.350294, 22.207121>,  <36.424713, 31.499554, 22.316563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137821, 31.350294, 22.207121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037601, 31.014605, 22.400169>,  <36.977470, 30.813190, 22.515999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037601, 31.014605, 22.400169>,  <37.137821, 31.350294, 22.207121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037601, 31.014605, 22.400169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421686, -0.543354, -0.725911,
		0.871438, 0.021637, 0.490029,
		-0.250553, -0.839225, 0.482624,
		36.962437, 30.762836, 22.544956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696644, 30.900242, 22.027151>,  <37.137821, 31.350294, 22.207121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696644, 30.900242, 22.027151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424553, 30.645996, 22.173183>,  <37.261299, 30.493448, 22.260803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424553, 30.645996, 22.173183>,  <37.696644, 30.900242, 22.027151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424553, 30.645996, 22.173183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313220, -0.702354, -0.639212,
		0.662707, -0.320461, 0.676849,
		-0.680230, -0.635613, 0.365080,
		37.220486, 30.455313, 22.282707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078648, 30.291840, 22.039087>,  <37.696644, 30.900242, 22.027151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078648, 30.291840, 22.039087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691299, 30.193342, 22.055161>,  <37.458889, 30.134243, 22.064804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691299, 30.193342, 22.055161>,  <38.078648, 30.291840, 22.039087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691299, 30.193342, 22.055161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163679, -0.748539, -0.642572,
		0.188307, -0.615674, 0.765171,
		-0.968375, -0.246243, 0.040182,
		37.400787, 30.119469, 22.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032757, 29.502474, 22.075125>,  <38.078648, 30.291840, 22.039087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032757, 29.502474, 22.075125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685081, 29.642519, 21.935452>,  <37.476475, 29.726545, 21.851648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685081, 29.642519, 21.935452>,  <38.032757, 29.502474, 22.075125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685081, 29.642519, 21.935452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018917, -0.729192, -0.684048,
		-0.494112, -0.587963, 0.640431,
		-0.869192, 0.350111, -0.349180,
		37.424324, 29.747553, 21.830698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664818, 28.992605, 22.158808>,  <38.032757, 29.502474, 22.075125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664818, 28.992605, 22.158808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517113, 29.227194, 21.870447>,  <37.428490, 29.367947, 21.697432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517113, 29.227194, 21.870447>,  <37.664818, 28.992605, 22.158808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517113, 29.227194, 21.870447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026425, -0.768785, -0.638961,
		-0.928948, -0.254995, 0.268388,
		-0.369265, 0.586470, -0.720900,
		37.406334, 29.403135, 21.654177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244942, 28.529978, 21.747612>,  <37.664818, 28.992605, 22.158808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244942, 28.529978, 21.747612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276390, 28.860212, 21.524103>,  <37.295258, 29.058353, 21.389997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276390, 28.860212, 21.524103>,  <37.244942, 28.529978, 21.747612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276390, 28.860212, 21.524103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069245, -0.554630, -0.829211,
		-0.994497, 0.103885, 0.013562,
		0.078621, 0.825586, -0.558772,
		37.299976, 29.107889, 21.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621418, 28.692299, 21.347898>,  <37.244942, 28.529978, 21.747612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621418, 28.692299, 21.347898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965714, 28.823145, 21.191887>,  <37.172291, 28.901653, 21.098280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965714, 28.823145, 21.191887>,  <36.621418, 28.692299, 21.347898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965714, 28.823145, 21.191887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030030, -0.797491, -0.602583,
		-0.508160, 0.506954, -0.696254,
		0.860739, 0.327117, -0.390030,
		37.223934, 28.921280, 21.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062435, 28.838064, 20.915821>,  <36.621418, 28.692299, 21.347898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062435, 28.838064, 20.915821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978817, 28.611935, 20.596645>,  <35.928646, 28.476257, 20.405140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978817, 28.611935, 20.596645>,  <36.062435, 28.838064, 20.915821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978817, 28.611935, 20.596645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365499, -0.711663, 0.599955,
		-0.907033, 0.417066, -0.057853,
		-0.209049, -0.565324, -0.797939,
		35.916103, 28.442337, 20.357264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380733, 28.696659, 20.885405>,  <36.062435, 28.838064, 20.915821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380733, 28.696659, 20.885405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617607, 28.399397, 20.760799>,  <35.759731, 28.221039, 20.686037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617607, 28.399397, 20.760799>,  <35.380733, 28.696659, 20.885405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617607, 28.399397, 20.760799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325701, -0.574345, 0.751031,
		-0.737050, -0.343285, -0.582162,
		0.592179, -0.743158, -0.311512,
		35.795261, 28.176449, 20.667345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857662, 28.820248, 20.289801>,  <35.380733, 28.696659, 20.885405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857662, 28.820248, 20.289801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684200, 28.524197, 20.495382>,  <34.580124, 28.346565, 20.618732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684200, 28.524197, 20.495382>,  <34.857662, 28.820248, 20.289801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684200, 28.524197, 20.495382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254503, 0.446549, 0.857801,
		-0.864389, 0.502796, -0.005286,
		-0.433659, -0.740128, 0.513955,
		34.554104, 28.302158, 20.649569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624130, 29.123365, 20.774485>,  <34.857662, 28.820248, 20.289801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624130, 29.123365, 20.774485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547764, 28.764399, 20.933578>,  <34.501945, 28.549019, 21.029034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547764, 28.764399, 20.933578>,  <34.624130, 29.123365, 20.774485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547764, 28.764399, 20.933578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300713, 0.332235, 0.893975,
		-0.934411, 0.290275, 0.206438,
		-0.190912, -0.897419, 0.397733,
		34.490490, 28.495173, 21.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286335, 29.234921, 21.356239>,  <34.624130, 29.123365, 20.774485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286335, 29.234921, 21.356239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448105, 28.873087, 21.410152>,  <34.545166, 28.655987, 21.442501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448105, 28.873087, 21.410152>,  <34.286335, 29.234921, 21.356239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448105, 28.873087, 21.410152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216970, 0.238064, 0.946704,
		-0.888461, -0.353629, 0.292547,
		0.404427, -0.904584, 0.134784,
		34.569431, 28.601711, 21.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929344, 28.793293, 21.924547>,  <34.286335, 29.234921, 21.356239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929344, 28.793293, 21.924547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301517, 28.661457, 21.860477>,  <34.524822, 28.582355, 21.822035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301517, 28.661457, 21.860477>,  <33.929344, 28.793293, 21.924547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301517, 28.661457, 21.860477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191157, 0.063624, 0.979495,
		-0.312642, -0.941978, 0.122202,
		0.930438, -0.329591, -0.160174,
		34.580650, 28.562580, 21.812426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122875, 28.303394, 22.500872>,  <33.929344, 28.793293, 21.924547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122875, 28.303394, 22.500872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486420, 28.378830, 22.352062>,  <34.704548, 28.424091, 22.262777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.486420, 28.378830, 22.352062>,  <34.122875, 28.303394, 22.500872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486420, 28.378830, 22.352062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360106, 0.095257, 0.928036,
		0.210455, -0.977425, 0.018664,
		0.908863, 0.188589, -0.372024,
		34.759079, 28.435406, 22.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550755, 27.910976, 22.954340>,  <34.122875, 28.303394, 22.500872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550755, 27.910976, 22.954340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764820, 28.194118, 22.769932>,  <34.893261, 28.364004, 22.659286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764820, 28.194118, 22.769932>,  <34.550755, 27.910976, 22.954340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764820, 28.194118, 22.769932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391361, 0.275891, 0.877907,
		0.748623, -0.650250, -0.129380,
		0.535164, 0.707856, -0.461020,
		34.925369, 28.406475, 22.631626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144955, 27.759693, 23.300804>,  <34.550755, 27.910976, 22.954340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144955, 27.759693, 23.300804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148876, 28.136221, 23.165855>,  <35.151230, 28.362137, 23.084887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148876, 28.136221, 23.165855>,  <35.144955, 27.759693, 23.300804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148876, 28.136221, 23.165855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325098, 0.316061, 0.891300,
		0.945629, -0.118413, -0.302924,
		0.009799, 0.941320, -0.337372,
		35.151817, 28.418617, 23.064644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642448, 27.952879, 23.625126>,  <35.144955, 27.759693, 23.300804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642448, 27.952879, 23.625126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487503, 28.305536, 23.517303>,  <35.394535, 28.517130, 23.452610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487503, 28.305536, 23.517303>,  <35.642448, 27.952879, 23.625126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487503, 28.305536, 23.517303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322410, 0.403465, 0.856310,
		0.863715, 0.244793, -0.440537,
		-0.387360, 0.881642, -0.269555,
		35.371296, 28.570028, 23.436438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202656, 28.430548, 23.814651>,  <35.642448, 27.952879, 23.625126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202656, 28.430548, 23.814651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854427, 28.626514, 23.796356>,  <35.645493, 28.744095, 23.785379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854427, 28.626514, 23.796356>,  <36.202656, 28.430548, 23.814651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854427, 28.626514, 23.796356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177383, 0.399186, 0.899548,
		0.458964, 0.775003, -0.434421,
		-0.870567, 0.489919, -0.045740,
		35.593258, 28.773491, 23.782635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347881, 29.139471, 23.938618>,  <36.202656, 28.430548, 23.814651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347881, 29.139471, 23.938618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959106, 29.083481, 24.014244>,  <35.725842, 29.049887, 24.059620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959106, 29.083481, 24.014244>,  <36.347881, 29.139471, 23.938618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959106, 29.083481, 24.014244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117544, 0.407213, 0.905738,
		-0.203770, 0.902544, -0.379332,
		-0.971937, -0.139974, 0.189067,
		35.667526, 29.041489, 24.070965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110859, 29.760452, 24.261547>,  <36.347881, 29.139471, 23.938618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110859, 29.760452, 24.261547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858746, 29.467983, 24.365950>,  <35.707478, 29.292501, 24.428591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858746, 29.467983, 24.365950>,  <36.110859, 29.760452, 24.261547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858746, 29.467983, 24.365950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000462, 0.336547, 0.941667,
		-0.776363, 0.593399, -0.212459,
		-0.630286, -0.731173, 0.261008,
		35.669659, 29.248631, 24.444252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643871, 30.164621, 24.656712>,  <36.110859, 29.760452, 24.261547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643871, 30.164621, 24.656712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585060, 29.789499, 24.782505>,  <35.549774, 29.564426, 24.857981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585060, 29.789499, 24.782505>,  <35.643871, 30.164621, 24.656712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585060, 29.789499, 24.782505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066785, 0.307801, 0.949104,
		-0.986874, 0.160551, 0.017375,
		-0.147032, -0.937807, 0.314483,
		35.540951, 29.508158, 24.876850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035912, 30.128525, 25.077267>,  <35.643871, 30.164621, 24.656712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035912, 30.128525, 25.077267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229946, 29.795792, 25.185148>,  <35.346367, 29.596151, 25.249876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229946, 29.795792, 25.185148>,  <35.035912, 30.128525, 25.077267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229946, 29.795792, 25.185148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086726, 0.352665, 0.931722,
		-0.870153, -0.428579, 0.243216,
		0.485090, -0.831834, 0.269703,
		35.375473, 29.546242, 25.266060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318195, 30.070711, 25.001469>,  <35.035912, 30.128525, 25.077267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318195, 30.070711, 25.001469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021072, 30.333199, 25.054556>,  <33.842800, 30.490690, 25.086409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021072, 30.333199, 25.054556>,  <34.318195, 30.070711, 25.001469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021072, 30.333199, 25.054556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335370, -0.193133, -0.922077,
		-0.579452, -0.729436, 0.363536,
		-0.742807, 0.656219, 0.132720,
		33.798229, 30.530064, 25.094372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785839, 29.774458, 24.795893>,  <34.318195, 30.070711, 25.001469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785839, 29.774458, 24.795893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679382, 30.158842, 24.765629>,  <33.615509, 30.389473, 24.747471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679382, 30.158842, 24.765629>,  <33.785839, 29.774458, 24.795893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679382, 30.158842, 24.765629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230699, -0.139707, -0.962943,
		-0.935921, -0.238822, 0.258875,
		-0.266139, 0.960961, -0.075659,
		33.599541, 30.447130, 24.742931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114246, 29.762236, 24.481792>,  <33.785839, 29.774458, 24.795893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114246, 29.762236, 24.481792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259060, 30.131517, 24.430210>,  <33.345947, 30.353086, 24.399261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259060, 30.131517, 24.430210>,  <33.114246, 29.762236, 24.481792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259060, 30.131517, 24.430210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316561, -0.008356, -0.948535,
		-0.876768, 0.384223, 0.289225,
		0.362032, 0.923202, -0.128956,
		33.367668, 30.408478, 24.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553234, 30.100983, 24.063730>,  <33.114246, 29.762236, 24.481792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553234, 30.100983, 24.063730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873913, 30.334866, 24.014086>,  <33.066319, 30.475195, 23.984299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873913, 30.334866, 24.014086>,  <32.553234, 30.100983, 24.063730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873913, 30.334866, 24.014086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317208, 0.240190, -0.917435,
		-0.506622, 0.774871, 0.378033,
		0.801694, 0.584709, -0.124110,
		33.114422, 30.510279, 23.976852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231445, 30.679962, 23.758240>,  <32.553234, 30.100983, 24.063730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231445, 30.679962, 23.758240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620907, 30.721935, 23.677261>,  <32.854584, 30.747120, 23.628675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620907, 30.721935, 23.677261>,  <32.231445, 30.679962, 23.758240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620907, 30.721935, 23.677261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212317, 0.093395, -0.972728,
		-0.083165, 0.990084, 0.113214,
		0.973656, 0.104934, -0.202444,
		32.913002, 30.753416, 23.616528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349915, 31.323156, 23.379049>,  <32.231445, 30.679962, 23.758240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349915, 31.323156, 23.379049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634602, 31.053892, 23.298746>,  <32.805416, 30.892334, 23.250565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634602, 31.053892, 23.298746>,  <32.349915, 31.323156, 23.379049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634602, 31.053892, 23.298746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298314, -0.030897, -0.953967,
		0.635972, 0.738849, -0.222804,
		0.711722, -0.673163, -0.200759,
		32.848118, 30.851944, 23.238518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610737, 31.571129, 22.826443>,  <32.349915, 31.323156, 23.379049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610737, 31.571129, 22.826443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733711, 31.190559, 22.833143>,  <32.807495, 30.962217, 22.837164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733711, 31.190559, 22.833143>,  <32.610737, 31.571129, 22.826443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733711, 31.190559, 22.833143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269499, -0.103941, -0.957375,
		0.912609, 0.289813, -0.288363,
		0.307433, -0.951422, 0.016753,
		32.825939, 30.905132, 22.838169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846622, 32.209717, 22.642433>,  <32.610737, 31.571129, 22.826443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846622, 32.209717, 22.642433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604401, 32.503502, 22.519884>,  <32.459068, 32.679771, 22.446356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604401, 32.503502, 22.519884>,  <32.846622, 32.209717, 22.642433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604401, 32.503502, 22.519884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323379, 0.578872, 0.748554,
		0.727136, 0.354219, -0.588050,
		-0.605558, 0.734463, -0.306372,
		32.422733, 32.723843, 22.427973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172131, 32.884613, 22.723377>,  <32.846622, 32.209717, 22.642433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172131, 32.884613, 22.723377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781178, 32.964005, 22.752571>,  <32.546604, 33.011639, 22.770088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781178, 32.964005, 22.752571>,  <33.172131, 32.884613, 22.723377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781178, 32.964005, 22.752571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179070, 0.593193, 0.784893,
		0.112486, 0.780212, -0.615318,
		-0.977385, 0.198474, 0.072986,
		32.487961, 33.023548, 22.774467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155720, 33.570984, 23.004908>,  <33.172131, 32.884613, 22.723377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155720, 33.570984, 23.004908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781471, 33.440342, 23.058479>,  <32.556923, 33.361958, 23.090622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781471, 33.440342, 23.058479>,  <33.155720, 33.570984, 23.004908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781471, 33.440342, 23.058479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078677, 0.562805, 0.822837,
		-0.344114, 0.759330, -0.552271,
		-0.935626, -0.326601, 0.133928,
		32.500782, 33.342361, 23.098658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727253, 34.151237, 23.055578>,  <33.155720, 33.570984, 23.004908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727253, 34.151237, 23.055578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519951, 33.864895, 23.242746>,  <32.395569, 33.693089, 23.355047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519951, 33.864895, 23.242746>,  <32.727253, 34.151237, 23.055578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519951, 33.864895, 23.242746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094125, 0.591553, 0.800753,
		-0.850028, 0.370955, -0.373959,
		-0.518260, -0.715861, 0.467921,
		32.364471, 33.650135, 23.383123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186302, 34.511021, 23.375450>,  <32.727253, 34.151237, 23.055578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186302, 34.511021, 23.375450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219055, 34.164291, 23.572189>,  <32.238708, 33.956253, 23.690233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.219055, 34.164291, 23.572189>,  <32.186302, 34.511021, 23.375450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219055, 34.164291, 23.572189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247834, 0.460292, 0.852473,
		-0.965336, -0.191697, -0.177139,
		0.081881, -0.866824, 0.491846,
		32.243618, 33.904243, 23.719744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488565, 34.387146, 23.647802>,  <32.186302, 34.511021, 23.375450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488565, 34.387146, 23.647802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732584, 34.164913, 23.873783>,  <31.878994, 34.031574, 24.009371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732584, 34.164913, 23.873783>,  <31.488565, 34.387146, 23.647802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732584, 34.164913, 23.873783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373123, 0.427570, 0.823385,
		-0.699017, -0.713098, 0.053535,
		0.610044, -0.555585, 0.564952,
		31.915598, 33.998238, 24.043268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173187, 34.345078, 24.248985>,  <31.488565, 34.387146, 23.647802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173187, 34.345078, 24.248985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.511477, 34.181763, 24.386423>,  <31.714451, 34.083775, 24.468885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.511477, 34.181763, 24.386423>,  <31.173187, 34.345078, 24.248985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511477, 34.181763, 24.386423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196841, 0.359791, 0.912033,
		-0.495990, -0.838961, 0.223917,
		0.845723, -0.408283, 0.343595,
		31.765194, 34.059277, 24.489502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.417084, 31.676426, 19.228422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571766, 31.498142, 19.551359>,  <36.664574, 31.391172, 19.745121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571766, 31.498142, 19.551359>,  <36.417084, 31.676426, 19.228422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571766, 31.498142, 19.551359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094413, 0.889984, 0.446111,
		-0.917357, -0.096290, 0.386243,
		0.386706, -0.445710, 0.807342,
		36.687778, 31.364429, 19.793562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130379, 31.979652, 19.834352>,  <36.417084, 31.676426, 19.228422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130379, 31.979652, 19.834352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476215, 31.821066, 19.957829>,  <36.683720, 31.725914, 20.031914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476215, 31.821066, 19.957829>,  <36.130379, 31.979652, 19.834352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476215, 31.821066, 19.957829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160789, 0.800343, 0.577579,
		-0.476050, -0.449737, 0.755720,
		0.864594, -0.396468, 0.308691,
		36.735592, 31.702126, 20.050436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118656, 32.241455, 20.463270>,  <36.130379, 31.979652, 19.834352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118656, 32.241455, 20.463270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.499298, 32.123348, 20.429171>,  <36.727684, 32.052483, 20.408710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.499298, 32.123348, 20.429171>,  <36.118656, 32.241455, 20.463270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499298, 32.123348, 20.429171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252970, 0.595023, 0.762859,
		-0.174525, -0.747504, 0.640920,
		0.951603, -0.295272, -0.085250,
		36.784779, 32.034767, 20.403595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376778, 32.173504, 21.196949>,  <36.118656, 32.241455, 20.463270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376778, 32.173504, 21.196949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709911, 32.186028, 20.975897>,  <36.909794, 32.193542, 20.843266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709911, 32.186028, 20.975897>,  <36.376778, 32.173504, 21.196949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709911, 32.186028, 20.975897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315232, 0.793837, 0.520048,
		0.454982, -0.607323, 0.651268,
		0.832839, 0.031312, -0.552630,
		36.959763, 32.195419, 20.810108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955601, 32.271343, 21.638988>,  <36.376778, 32.173504, 21.196949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955601, 32.271343, 21.638988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.066620, 32.419033, 21.284218>,  <37.133232, 32.507648, 21.071356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.066620, 32.419033, 21.284218>,  <36.955601, 32.271343, 21.638988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066620, 32.419033, 21.284218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579914, 0.671643, 0.461081,
		0.765941, -0.642313, -0.027707,
		0.277550, 0.369228, -0.886926,
		37.149883, 32.529800, 21.018141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760059, 32.330746, 21.671141>,  <36.955601, 32.271343, 21.638988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760059, 32.330746, 21.671141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625729, 32.568630, 21.378967>,  <37.545128, 32.711361, 21.203663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625729, 32.568630, 21.378967>,  <37.760059, 32.330746, 21.671141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625729, 32.568630, 21.378967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484218, 0.774160, 0.407687,
		0.807930, -0.216776, -0.547958,
		-0.335831, 0.594713, -0.730434,
		37.524979, 32.747044, 21.159838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276215, 32.807552, 21.497646>,  <37.760059, 32.330746, 21.671141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276215, 32.807552, 21.497646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944073, 32.995544, 21.377895>,  <37.744789, 33.108341, 21.306044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.944073, 32.995544, 21.377895>,  <38.276215, 32.807552, 21.497646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944073, 32.995544, 21.377895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315512, 0.839376, 0.442607,
		0.459310, 0.273062, -0.845264,
		-0.830353, 0.469985, -0.299379,
		37.694965, 33.136539, 21.288082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450157, 33.526459, 21.414320>,  <38.276215, 32.807552, 21.497646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450157, 33.526459, 21.414320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054558, 33.521008, 21.473228>,  <37.817196, 33.517738, 21.508574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.054558, 33.521008, 21.473228>,  <38.450157, 33.526459, 21.414320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054558, 33.521008, 21.473228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073019, 0.820939, 0.566328,
		-0.128617, 0.570854, -0.810915,
		-0.989002, -0.013628, 0.147270,
		37.757858, 33.516918, 21.517410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328930, 34.231739, 21.449472>,  <38.450157, 33.526459, 21.414320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328930, 34.231739, 21.449472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994545, 34.080334, 21.608416>,  <37.793915, 33.989491, 21.703781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994545, 34.080334, 21.608416>,  <38.328930, 34.231739, 21.449472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994545, 34.080334, 21.608416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046480, 0.672631, 0.738517,
		-0.546817, 0.635841, -0.544700,
		-0.835961, -0.378516, 0.397360,
		37.743755, 33.966778, 21.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985561, 34.849281, 21.638435>,  <38.328930, 34.231739, 21.449472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985561, 34.849281, 21.638435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807217, 34.564816, 21.855860>,  <37.700211, 34.394135, 21.986315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807217, 34.564816, 21.855860>,  <37.985561, 34.849281, 21.638435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807217, 34.564816, 21.855860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146613, 0.657080, 0.739426,
		-0.883015, 0.249985, -0.397230,
		-0.445858, -0.711163, 0.543560,
		37.673458, 34.351467, 22.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304680, 35.173302, 21.955946>,  <37.985561, 34.849281, 21.638435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304680, 35.173302, 21.955946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433952, 34.857578, 22.164768>,  <37.511517, 34.668144, 22.290062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433952, 34.857578, 22.164768>,  <37.304680, 35.173302, 21.955946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433952, 34.857578, 22.164768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126831, 0.510553, 0.850440,
		-0.937798, -0.341062, 0.064893,
		0.323184, -0.789311, 0.522054,
		37.530907, 34.620785, 22.321384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814705, 34.955032, 22.505741>,  <37.304680, 35.173302, 21.955946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814705, 34.955032, 22.505741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181610, 34.860493, 22.633974>,  <37.401752, 34.803768, 22.710913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181610, 34.860493, 22.633974>,  <36.814705, 34.955032, 22.505741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181610, 34.860493, 22.633974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233955, 0.331669, 0.913926,
		-0.322330, -0.913310, 0.248933,
		0.917261, -0.236346, 0.320581,
		37.456787, 34.789589, 22.730148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242901, 34.487041, 22.763739>,  <36.814705, 34.955032, 22.505741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242901, 34.487041, 22.763739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913250, 34.710255, 22.724918>,  <35.715462, 34.844181, 22.701626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.913250, 34.710255, 22.724918>,  <36.242901, 34.487041, 22.763739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913250, 34.710255, 22.724918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111136, -0.327329, -0.938352,
		-0.555398, -0.762533, 0.331777,
		-0.824125, 0.558032, -0.097053,
		35.666012, 34.877663, 22.695803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675674, 33.984035, 22.662682>,  <36.242901, 34.487041, 22.763739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675674, 33.984035, 22.662682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533268, 34.329208, 22.519241>,  <35.447823, 34.536312, 22.433178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533268, 34.329208, 22.519241>,  <35.675674, 33.984035, 22.662682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533268, 34.329208, 22.519241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123961, -0.423962, -0.897157,
		-0.926220, -0.274952, 0.257909,
		-0.356019, 0.862935, -0.358599,
		35.426464, 34.588089, 22.411661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972294, 33.880325, 22.321318>,  <35.675674, 33.984035, 22.662682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972294, 33.880325, 22.321318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.129986, 34.210320, 22.159336>,  <35.224602, 34.408314, 22.062147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.129986, 34.210320, 22.159336>,  <34.972294, 33.880325, 22.321318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129986, 34.210320, 22.159336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317213, -0.291410, -0.902472,
		-0.862532, 0.484235, 0.146814,
		0.394226, 0.824983, -0.404956,
		35.248253, 34.457813, 22.037849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436653, 34.165096, 21.902815>,  <34.972294, 33.880325, 22.321318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436653, 34.165096, 21.902815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787338, 34.319199, 21.787611>,  <34.997749, 34.411659, 21.718489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787338, 34.319199, 21.787611>,  <34.436653, 34.165096, 21.902815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787338, 34.319199, 21.787611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196713, -0.259239, -0.945568,
		-0.438949, 0.885649, -0.151494,
		0.876714, 0.385255, -0.288011,
		35.050354, 34.434776, 21.701208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340569, 34.589855, 21.218904>,  <34.436653, 34.165096, 21.902815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340569, 34.589855, 21.218904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730022, 34.498898, 21.211657>,  <34.963696, 34.444321, 21.207308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730022, 34.498898, 21.211657>,  <34.340569, 34.589855, 21.218904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730022, 34.498898, 21.211657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083954, -0.283341, -0.955337,
		0.212108, 0.931669, -0.294961,
		0.973633, -0.227398, -0.018118,
		35.022114, 34.430679, 21.206221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538631, 34.952835, 20.637871>,  <34.340569, 34.589855, 21.218904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538631, 34.952835, 20.637871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.833183, 34.685043, 20.676931>,  <35.009914, 34.524368, 20.700367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.833183, 34.685043, 20.676931>,  <34.538631, 34.952835, 20.637871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833183, 34.685043, 20.676931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063342, -0.211920, -0.975232,
		0.673593, 0.711959, -0.198461,
		0.736383, -0.669481, 0.097651,
		35.054100, 34.484200, 20.706226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033390, 35.071598, 20.141186>,  <34.538631, 34.952835, 20.637871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033390, 35.071598, 20.141186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.093613, 34.689713, 20.243832>,  <35.129745, 34.460579, 20.305418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.093613, 34.689713, 20.243832>,  <35.033390, 35.071598, 20.141186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093613, 34.689713, 20.243832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147041, -0.278309, -0.949169,
		0.977605, 0.105169, -0.182283,
		0.150555, -0.954716, 0.256613,
		35.138779, 34.403297, 20.320816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458149, 34.862801, 19.654013>,  <35.033390, 35.071598, 20.141186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458149, 34.862801, 19.654013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293259, 34.523945, 19.788136>,  <35.194324, 34.320633, 19.868608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.293259, 34.523945, 19.788136>,  <35.458149, 34.862801, 19.654013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293259, 34.523945, 19.788136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059085, -0.342398, -0.937695,
		0.909166, -0.406350, 0.091090,
		-0.412221, -0.847138, 0.335306,
		35.169594, 34.269802, 19.888727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576935, 34.452320, 19.189066>,  <35.458149, 34.862801, 19.654013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576935, 34.452320, 19.189066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.318317, 34.207722, 19.371515>,  <35.163147, 34.060963, 19.480986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.318317, 34.207722, 19.371515>,  <35.576935, 34.452320, 19.189066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318317, 34.207722, 19.371515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251033, -0.394066, -0.884135,
		0.720392, -0.686133, 0.101274,
		-0.646543, -0.611501, 0.456124,
		35.124355, 34.024273, 19.508352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640976, 33.760403, 18.789906>,  <35.576935, 34.452320, 19.189066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640976, 33.760403, 18.789906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.292290, 33.789017, 18.983809>,  <35.083076, 33.806183, 19.100151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.292290, 33.789017, 18.983809>,  <35.640976, 33.760403, 18.789906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292290, 33.789017, 18.983809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466008, -0.426837, -0.775014,
		0.151476, -0.901495, 0.405415,
		-0.871718, 0.071530, 0.484760,
		35.030773, 33.810474, 19.129236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218880, 33.106136, 18.607121>,  <35.640976, 33.760403, 18.789906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218880, 33.106136, 18.607121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946930, 33.370388, 18.734453>,  <34.783760, 33.528938, 18.810852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946930, 33.370388, 18.734453>,  <35.218880, 33.106136, 18.607121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946930, 33.370388, 18.734453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615832, -0.278668, -0.736950,
		-0.398142, -0.697074, 0.596297,
		-0.679878, 0.660629, 0.318331,
		34.742966, 33.568577, 18.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632385, 32.780800, 18.492548>,  <35.218880, 33.106136, 18.607121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632385, 32.780800, 18.492548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.493050, 33.152618, 18.540897>,  <34.409447, 33.375710, 18.569908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.493050, 33.152618, 18.540897>,  <34.632385, 32.780800, 18.492548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493050, 33.152618, 18.540897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730013, -0.188128, -0.657030,
		-0.587998, -0.317108, 0.744111,
		-0.348337, 0.929543, 0.120874,
		34.388550, 33.431480, 18.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840599, 32.768852, 18.656830>,  <34.632385, 32.780800, 18.492548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840599, 32.768852, 18.656830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.932289, 33.127705, 18.505775>,  <33.987305, 33.343018, 18.415144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.932289, 33.127705, 18.505775>,  <33.840599, 32.768852, 18.656830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932289, 33.127705, 18.505775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747547, -0.086215, -0.658589,
		-0.623399, 0.433268, 0.650886,
		0.229230, 0.897132, -0.377634,
		34.001057, 33.396843, 18.392485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127975, 32.656616, 19.019550>,  <33.840599, 32.768852, 18.656830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127975, 32.656616, 19.019550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777683, 32.505333, 19.139589>,  <32.567509, 32.414562, 19.211613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777683, 32.505333, 19.139589>,  <33.127975, 32.656616, 19.019550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777683, 32.505333, 19.139589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167069, 0.345784, 0.923321,
		-0.452978, 0.858714, -0.239626,
		-0.875728, -0.378210, 0.300097,
		32.514965, 32.391869, 19.229618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667439, 33.162758, 19.366465>,  <33.127975, 32.656616, 19.019550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667439, 33.162758, 19.366465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501938, 32.817467, 19.482145>,  <32.402637, 32.610291, 19.551554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.501938, 32.817467, 19.482145>,  <32.667439, 33.162758, 19.366465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501938, 32.817467, 19.482145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020250, 0.308862, 0.950891,
		-0.910163, 0.399293, -0.110313,
		-0.413755, -0.863232, 0.289200,
		32.377811, 32.558498, 19.568905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112297, 33.310745, 19.846664>,  <32.667439, 33.162758, 19.366465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112297, 33.310745, 19.846664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.194069, 32.926517, 19.922041>,  <32.243134, 32.695980, 19.967268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.194069, 32.926517, 19.922041>,  <32.112297, 33.310745, 19.846664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194069, 32.926517, 19.922041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188675, 0.150233, 0.970480,
		-0.960526, -0.233951, -0.150523,
		0.204432, -0.960571, 0.188443,
		32.255398, 32.638348, 19.978575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531231, 32.957310, 20.270544>,  <32.112297, 33.310745, 19.846664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531231, 32.957310, 20.270544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876308, 32.763844, 20.329638>,  <32.083355, 32.647762, 20.365093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876308, 32.763844, 20.329638>,  <31.531231, 32.957310, 20.270544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876308, 32.763844, 20.329638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139662, 0.052906, 0.988785,
		-0.486059, -0.873651, -0.021908,
		0.862694, -0.483667, 0.147732,
		32.135117, 32.618744, 20.373957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290205, 32.556602, 20.770105>,  <31.531231, 32.957310, 20.270544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290205, 32.556602, 20.770105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.689346, 32.548351, 20.794954>,  <31.928831, 32.543400, 20.809864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.689346, 32.548351, 20.794954>,  <31.290205, 32.556602, 20.770105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689346, 32.548351, 20.794954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062793, -0.033635, 0.997460,
		-0.018460, -0.999222, -0.034857,
		0.997856, -0.020602, 0.062123,
		31.988703, 32.542164, 20.813591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351749, 32.178131, 21.272379>,  <31.290205, 32.556602, 20.770105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351749, 32.178131, 21.272379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721443, 32.330238, 21.258598>,  <31.943260, 32.421501, 21.250330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721443, 32.330238, 21.258598>,  <31.351749, 32.178131, 21.272379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721443, 32.330238, 21.258598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054084, -0.041056, 0.997692,
		0.377978, -0.923964, -0.058512,
		0.924234, 0.380270, -0.034453,
		31.998713, 32.444321, 21.248262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686804, 31.873465, 21.891756>,  <31.351749, 32.178131, 21.272379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686804, 31.873465, 21.891756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871670, 32.209194, 21.777258>,  <31.982590, 32.410633, 21.708559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871670, 32.209194, 21.777258>,  <31.686804, 31.873465, 21.891756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871670, 32.209194, 21.777258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274450, 0.171564, 0.946173,
		0.843256, -0.515848, -0.151062,
		0.462165, 0.839325, -0.286247,
		32.010319, 32.460991, 21.691383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463821, 31.860605, 22.094810>,  <31.686804, 31.873465, 21.891756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463821, 31.860605, 22.094810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331341, 32.237648, 22.077822>,  <32.251854, 32.463875, 22.067629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331341, 32.237648, 22.077822>,  <32.463821, 31.860605, 22.094810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331341, 32.237648, 22.077822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334519, 0.159390, 0.928812,
		0.882273, 0.293412, -0.368109,
		-0.331198, 0.942605, -0.042473,
		32.231983, 32.520428, 22.065081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132778, 31.540810, 22.185402>,  <32.463821, 31.860605, 22.094810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132778, 31.540810, 22.185402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011497, 31.174921, 22.292250>,  <32.938728, 30.955387, 22.356359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011497, 31.174921, 22.292250>,  <33.132778, 31.540810, 22.185402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011497, 31.174921, 22.292250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447913, -0.110617, -0.887208,
		0.841097, -0.388648, -0.376177,
		-0.303200, -0.914722, 0.267121,
		32.920536, 30.900505, 22.372385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308525, 31.055542, 21.553131>,  <33.132778, 31.540810, 22.185402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308525, 31.055542, 21.553131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059128, 30.847979, 21.787050>,  <32.909489, 30.723440, 21.927402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059128, 30.847979, 21.787050>,  <33.308525, 31.055542, 21.553131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059128, 30.847979, 21.787050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376813, -0.455933, -0.806311,
		0.685028, -0.723091, 0.088742,
		-0.623497, -0.518907, 0.584797,
		32.872078, 30.692307, 21.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445210, 30.255770, 21.525517>,  <33.308525, 31.055542, 21.553131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445210, 30.255770, 21.525517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062691, 30.326880, 21.618368>,  <32.833179, 30.369545, 21.674080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.062691, 30.326880, 21.618368>,  <33.445210, 30.255770, 21.525517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062691, 30.326880, 21.618368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291863, -0.627778, -0.721603,
		0.017443, -0.757820, 0.652231,
		-0.956301, 0.177776, 0.232130,
		32.775799, 30.380213, 21.688007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119102, 29.584707, 21.519085>,  <33.445210, 30.255770, 21.525517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119102, 29.584707, 21.519085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.814087, 29.842155, 21.492905>,  <32.631077, 29.996624, 21.477196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.814087, 29.842155, 21.492905>,  <33.119102, 29.584707, 21.519085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814087, 29.842155, 21.492905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411149, -0.560244, -0.719085,
		-0.499486, -0.521422, 0.691833,
		-0.762542, 0.643619, -0.065452,
		32.585323, 30.035242, 21.473269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610279, 29.153381, 21.244677>,  <33.119102, 29.584707, 21.519085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610279, 29.153381, 21.244677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447796, 29.518314, 21.224100>,  <32.350307, 29.737274, 21.211754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.447796, 29.518314, 21.224100>,  <32.610279, 29.153381, 21.244677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447796, 29.518314, 21.224100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647906, -0.327257, -0.687838,
		-0.644372, -0.246074, 0.724039,
		-0.406206, 0.912333, -0.051442,
		32.325935, 29.792015, 21.208668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828268, 29.070801, 21.295340>,  <32.610279, 29.153381, 21.244677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828268, 29.070801, 21.295340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.942507, 29.407738, 21.112520>,  <32.011051, 29.609900, 21.002829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.942507, 29.407738, 21.112520>,  <31.828268, 29.070801, 21.295340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942507, 29.407738, 21.112520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531990, -0.257338, -0.806699,
		-0.797133, 0.473537, 0.374622,
		0.285598, 0.842342, -0.457050,
		32.028187, 29.660440, 20.975405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299109, 29.226768, 20.771685>,  <31.828268, 29.070801, 21.295340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299109, 29.226768, 20.771685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599127, 29.460636, 20.648012>,  <31.779139, 29.600956, 20.573809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599127, 29.460636, 20.648012>,  <31.299109, 29.226768, 20.771685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599127, 29.460636, 20.648012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302753, -0.112105, -0.946453,
		-0.588021, 0.803490, 0.092926,
		0.750048, 0.584668, -0.309179,
		31.824141, 29.636036, 20.555258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998728, 29.802568, 20.321581>,  <31.299109, 29.226768, 20.771685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998728, 29.802568, 20.321581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383520, 29.722067, 20.247728>,  <31.614395, 29.673765, 20.203417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383520, 29.722067, 20.247728>,  <30.998728, 29.802568, 20.321581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383520, 29.722067, 20.247728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237957, -0.285819, -0.928269,
		0.134048, 0.936912, -0.322842,
		0.961981, -0.201255, -0.184632,
		31.672115, 29.661690, 20.192339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234173, 30.126045, 19.679846>,  <30.998728, 29.802568, 20.321581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234173, 30.126045, 19.679846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487947, 29.822596, 19.739143>,  <31.640213, 29.640526, 19.774721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.487947, 29.822596, 19.739143>,  <31.234173, 30.126045, 19.679846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487947, 29.822596, 19.739143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178347, -0.330274, -0.926883,
		0.752118, 0.561611, -0.344837,
		0.634438, -0.758626, 0.148244,
		31.678278, 29.595009, 19.783617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.576763, 35.305668, 34.224628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913586, 35.246109, 34.017258>,  <35.115681, 35.210373, 33.892834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.913586, 35.246109, 34.017258>,  <34.576763, 35.305668, 34.224628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913586, 35.246109, 34.017258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446865, -0.730851, -0.515915,
		-0.302080, 0.666098, -0.681953,
		0.842057, -0.148894, -0.518432,
		35.166203, 35.201443, 33.861729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419964, 35.264206, 33.562824>,  <34.576763, 35.305668, 34.224628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419964, 35.264206, 33.562824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757217, 35.051517, 33.594826>,  <34.959568, 34.923904, 33.614029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757217, 35.051517, 33.594826>,  <34.419964, 35.264206, 33.562824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757217, 35.051517, 33.594826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346010, -0.650412, -0.676196,
		0.411583, 0.542441, -0.732364,
		0.843135, -0.531716, 0.080008,
		35.010159, 34.892002, 33.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722973, 35.179024, 32.922428>,  <34.419964, 35.264206, 33.562824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722973, 35.179024, 32.922428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853455, 34.872238, 33.143463>,  <34.931744, 34.688168, 33.276085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853455, 34.872238, 33.143463>,  <34.722973, 35.179024, 32.922428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853455, 34.872238, 33.143463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163893, -0.621594, -0.766003,
		0.930982, 0.159311, -0.328469,
		0.326207, -0.766968, 0.552583,
		34.951317, 34.642147, 33.309238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297653, 34.861057, 32.592907>,  <34.722973, 35.179024, 32.922428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297653, 34.861057, 32.592907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132252, 34.579979, 32.824505>,  <35.033009, 34.411331, 32.963463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132252, 34.579979, 32.824505>,  <35.297653, 34.861057, 32.592907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132252, 34.579979, 32.824505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107128, -0.593939, -0.797346,
		0.904177, -0.391734, 0.170320,
		-0.413507, -0.702696, 0.578992,
		35.008202, 34.369171, 32.998203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608368, 34.228580, 32.326191>,  <35.297653, 34.861057, 32.592907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608368, 34.228580, 32.326191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295738, 34.101547, 32.540958>,  <35.108162, 34.025326, 32.669819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295738, 34.101547, 32.540958>,  <35.608368, 34.228580, 32.326191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295738, 34.101547, 32.540958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008363, -0.855294, -0.518076,
		0.623760, -0.409403, 0.665817,
		-0.781571, -0.317587, 0.536922,
		35.061268, 34.006271, 32.702034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742306, 33.483940, 32.372898>,  <35.608368, 34.228580, 32.326191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742306, 33.483940, 32.372898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357929, 33.532539, 32.472363>,  <35.127304, 33.561699, 32.532040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357929, 33.532539, 32.472363>,  <35.742306, 33.483940, 32.372898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357929, 33.532539, 32.472363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248542, -0.774071, -0.582272,
		0.121733, -0.621331, 0.774034,
		-0.960941, 0.121499, 0.248657,
		35.069649, 33.568989, 32.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466702, 32.866234, 32.662106>,  <35.742306, 33.483940, 32.372898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466702, 32.866234, 32.662106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164677, 33.081215, 32.511894>,  <34.983459, 33.210205, 32.421768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.164677, 33.081215, 32.511894>,  <35.466702, 32.866234, 32.662106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164677, 33.081215, 32.511894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243382, -0.761594, -0.600617,
		-0.608805, -0.362107, 0.705858,
		-0.755064, 0.537451, -0.375531,
		34.938156, 33.242451, 32.399235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786991, 32.462578, 32.738674>,  <35.466702, 32.866234, 32.662106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786991, 32.462578, 32.738674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731483, 32.729511, 32.445988>,  <34.698177, 32.889671, 32.270374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731483, 32.729511, 32.445988>,  <34.786991, 32.462578, 32.738674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731483, 32.729511, 32.445988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263354, -0.737130, -0.622322,
		-0.954666, 0.106341, 0.278036,
		-0.138770, 0.667332, -0.731718,
		34.689854, 32.929710, 32.226471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052826, 32.179024, 32.365566>,  <34.786991, 32.462578, 32.738674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052826, 32.179024, 32.365566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208565, 32.463898, 32.131916>,  <34.302006, 32.634823, 31.991726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208565, 32.463898, 32.131916>,  <34.052826, 32.179024, 32.365566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208565, 32.463898, 32.131916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425501, -0.423382, -0.799810,
		-0.816921, 0.559949, 0.138194,
		0.389344, 0.712183, -0.584128,
		34.325367, 32.677551, 31.956678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493298, 32.355614, 32.013229>,  <34.052826, 32.179024, 32.365566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493298, 32.355614, 32.013229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809063, 32.493954, 31.810366>,  <33.998524, 32.576958, 31.688646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809063, 32.493954, 31.810366>,  <33.493298, 32.355614, 32.013229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809063, 32.493954, 31.810366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371876, -0.387894, -0.843354,
		-0.488402, 0.854356, -0.177594,
		0.789412, 0.345853, -0.507163,
		34.045887, 32.597710, 31.658216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233376, 32.692490, 31.442640>,  <33.493298, 32.355614, 32.013229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233376, 32.692490, 31.442640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605465, 32.579746, 31.348625>,  <33.828720, 32.512100, 31.292217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605465, 32.579746, 31.348625>,  <33.233376, 32.692490, 31.442640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605465, 32.579746, 31.348625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338265, -0.410094, -0.846995,
		0.142343, 0.867399, -0.476820,
		0.930223, -0.281855, -0.235036,
		33.884533, 32.495190, 31.278114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340225, 32.944031, 30.783400>,  <33.233376, 32.692490, 31.442640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340225, 32.944031, 30.783400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601021, 32.647076, 30.845072>,  <33.757496, 32.468903, 30.882074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601021, 32.647076, 30.845072>,  <33.340225, 32.944031, 30.783400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601021, 32.647076, 30.845072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348321, -0.473871, -0.808776,
		0.673490, 0.473605, -0.567547,
		0.651985, -0.742391, 0.154181,
		33.796616, 32.424358, 30.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220074, 33.645893, 30.554033>,  <33.340225, 32.944031, 30.783400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220074, 33.645893, 30.554033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892731, 33.867805, 30.494020>,  <32.696327, 34.000954, 30.458014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892731, 33.867805, 30.494020>,  <33.220074, 33.645893, 30.554033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892731, 33.867805, 30.494020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057138, 0.181220, 0.981781,
		0.571865, 0.812018, -0.116603,
		-0.818355, 0.554784, -0.150031,
		32.647224, 34.034241, 30.449011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304127, 34.238800, 30.898745>,  <33.220074, 33.645893, 30.554033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304127, 34.238800, 30.898745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906071, 34.230469, 30.860260>,  <32.667236, 34.225471, 30.837170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906071, 34.230469, 30.860260>,  <33.304127, 34.238800, 30.898745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906071, 34.230469, 30.860260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097582, 0.337535, 0.936241,
		0.012973, 0.941083, -0.337928,
		-0.995143, -0.020830, -0.096212,
		32.607529, 34.224220, 30.831396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071571, 34.875786, 31.093521>,  <33.304127, 34.238800, 30.898745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071571, 34.875786, 31.093521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772095, 34.613113, 31.129812>,  <32.592407, 34.455509, 31.151587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772095, 34.613113, 31.129812>,  <33.071571, 34.875786, 31.093521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772095, 34.613113, 31.129812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079448, 0.224761, 0.971170,
		-0.658141, 0.719898, -0.220449,
		-0.748691, -0.656681, 0.090730,
		32.547489, 34.416111, 31.157032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529472, 35.213764, 31.505760>,  <33.071571, 34.875786, 31.093521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529472, 35.213764, 31.505760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424194, 34.828121, 31.519726>,  <32.361027, 34.596733, 31.528105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424194, 34.828121, 31.519726>,  <32.529472, 35.213764, 31.505760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424194, 34.828121, 31.519726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278042, 0.110462, 0.954196,
		-0.923807, 0.241434, -0.297136,
		-0.263198, -0.964110, 0.034916,
		32.345234, 34.538887, 31.530201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865995, 35.219906, 31.755199>,  <32.529472, 35.213764, 31.505760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865995, 35.219906, 31.755199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047260, 34.873356, 31.839134>,  <32.156021, 34.665424, 31.889496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047260, 34.873356, 31.839134>,  <31.865995, 35.219906, 31.755199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047260, 34.873356, 31.839134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103524, 0.182653, 0.977712,
		-0.885396, -0.464787, -0.006919,
		0.453164, -0.866378, 0.209837,
		32.183208, 34.613441, 31.902084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465307, 35.014160, 32.237946>,  <31.865995, 35.219906, 31.755199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465307, 35.014160, 32.237946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779016, 34.771473, 32.289799>,  <31.967241, 34.625858, 32.320911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779016, 34.771473, 32.289799>,  <31.465307, 35.014160, 32.237946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779016, 34.771473, 32.289799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061951, 0.131313, 0.989403,
		-0.617315, -0.783993, 0.065398,
		0.784273, -0.606722, 0.129630,
		32.014297, 34.589455, 32.328690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240419, 34.407829, 32.702850>,  <31.465307, 35.014160, 32.237946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240419, 34.407829, 32.702850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636612, 34.462879, 32.701721>,  <31.874327, 34.495911, 32.701042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636612, 34.462879, 32.701721>,  <31.240419, 34.407829, 32.702850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636612, 34.462879, 32.701721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036352, 0.281294, 0.958933,
		0.132769, -0.949701, 0.283619,
		0.990480, 0.137627, -0.002824,
		31.933756, 34.504166, 32.700874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402151, 34.342274, 33.335388>,  <31.240419, 34.407829, 32.702850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402151, 34.342274, 33.335388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755579, 34.503876, 33.240665>,  <31.967636, 34.600838, 33.183830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755579, 34.503876, 33.240665>,  <31.402151, 34.342274, 33.335388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755579, 34.503876, 33.240665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146203, 0.242424, 0.959091,
		0.444890, -0.882047, 0.155132,
		0.883571, 0.404009, -0.236810,
		32.020649, 34.625080, 33.169624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860559, 34.245956, 33.939152>,  <31.402151, 34.342274, 33.335388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860559, 34.245956, 33.939152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033504, 34.540016, 33.730297>,  <32.137272, 34.716450, 33.604984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033504, 34.540016, 33.730297>,  <31.860559, 34.245956, 33.939152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033504, 34.540016, 33.730297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035938, 0.564544, 0.824620,
		0.900984, -0.375299, 0.217668,
		0.432362, 0.735147, -0.522132,
		32.163212, 34.760559, 33.573658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432564, 34.529682, 34.330254>,  <31.860559, 34.245956, 33.939152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432564, 34.529682, 34.330254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363251, 34.829685, 34.074924>,  <32.321663, 35.009689, 33.921726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363251, 34.829685, 34.074924>,  <32.432564, 34.529682, 34.330254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363251, 34.829685, 34.074924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182058, 0.612567, 0.769166,
		0.967899, 0.249494, 0.030399,
		-0.173281, 0.750009, -0.638326,
		32.311268, 35.054688, 33.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705845, 35.035751, 34.592743>,  <32.432564, 34.529682, 34.330254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705845, 35.035751, 34.592743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475155, 35.245358, 34.342049>,  <32.336742, 35.371120, 34.191631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475155, 35.245358, 34.342049>,  <32.705845, 35.035751, 34.592743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475155, 35.245358, 34.342049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018642, 0.758533, 0.651367,
		0.816728, 0.387341, -0.427694,
		-0.576722, 0.524017, -0.626736,
		32.302139, 35.402561, 34.154026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082138, 35.723270, 34.419472>,  <32.705845, 35.035751, 34.592743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082138, 35.723270, 34.419472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691593, 35.745388, 34.335884>,  <32.457268, 35.758659, 34.285732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691593, 35.745388, 34.335884>,  <33.082138, 35.723270, 34.419472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691593, 35.745388, 34.335884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017505, 0.943337, 0.331375,
		0.215450, 0.327198, -0.920066,
		-0.976358, 0.055289, -0.208970,
		32.398685, 35.761974, 34.273193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054161, 36.278870, 34.019058>,  <33.082138, 35.723270, 34.419472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054161, 36.278870, 34.019058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689892, 36.223103, 34.174618>,  <32.471333, 36.189644, 34.267952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689892, 36.223103, 34.174618>,  <33.054161, 36.278870, 34.019058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689892, 36.223103, 34.174618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074181, 0.981221, 0.178049,
		-0.406420, 0.133295, -0.903911,
		-0.910670, -0.139416, 0.388900,
		32.416691, 36.181278, 34.291286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774868, 36.853416, 33.858059>,  <33.054161, 36.278870, 34.019058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774868, 36.853416, 33.858059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525841, 36.705284, 34.133816>,  <32.376423, 36.616405, 34.299271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525841, 36.705284, 34.133816>,  <32.774868, 36.853416, 33.858059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525841, 36.705284, 34.133816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114235, 0.914511, 0.388098,
		-0.774182, 0.162866, -0.611651,
		-0.622569, -0.370331, 0.689393,
		32.339069, 36.594185, 34.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803329, 37.276054, 33.152122>,  <32.774868, 36.853416, 33.858059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803329, 37.276054, 33.152122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821701, 37.668972, 33.079472>,  <32.832726, 37.904724, 33.035881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821701, 37.668972, 33.079472>,  <32.803329, 37.276054, 33.152122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821701, 37.668972, 33.079472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015465, -0.181103, -0.983343,
		-0.998825, 0.047978, 0.006873,
		0.045934, 0.982293, -0.181632,
		32.835480, 37.963661, 33.024982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355331, 37.424400, 32.558414>,  <32.803329, 37.276054, 33.152122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355331, 37.424400, 32.558414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.635521, 37.707386, 32.595989>,  <32.803635, 37.877178, 32.618534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.635521, 37.707386, 32.595989>,  <32.355331, 37.424400, 32.558414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635521, 37.707386, 32.595989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288403, -0.160204, -0.944012,
		-0.652808, 0.688349, -0.316255,
		0.700475, 0.707468, 0.093940,
		32.845665, 37.919628, 32.624172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241074, 37.985836, 32.113762>,  <32.355331, 37.424400, 32.558414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241074, 37.985836, 32.113762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638996, 37.984360, 32.154446>,  <32.877750, 37.983475, 32.178856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638996, 37.984360, 32.154446>,  <32.241074, 37.985836, 32.113762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638996, 37.984360, 32.154446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101101, -0.078845, -0.991747,
		0.011679, 0.996880, -0.078063,
		0.994808, -0.003690, 0.101707,
		32.937439, 37.983253, 32.184959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534916, 38.500340, 31.600849>,  <32.241074, 37.985836, 32.113762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534916, 38.500340, 31.600849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843449, 38.277271, 31.723518>,  <33.028568, 38.143429, 31.797119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843449, 38.277271, 31.723518>,  <32.534916, 38.500340, 31.600849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843449, 38.277271, 31.723518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280999, -0.133933, -0.950317,
		0.571038, 0.819185, 0.053398,
		0.771334, -0.557671, 0.306671,
		33.074848, 38.109970, 31.815519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123085, 38.726166, 31.174557>,  <32.534916, 38.500340, 31.600849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123085, 38.726166, 31.174557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282627, 38.387772, 31.316107>,  <33.378353, 38.184734, 31.401037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282627, 38.387772, 31.316107>,  <33.123085, 38.726166, 31.174557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282627, 38.387772, 31.316107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376963, -0.200524, -0.904262,
		0.835949, 0.494070, 0.238923,
		0.398858, -0.845982, 0.353873,
		33.402287, 38.133976, 31.422268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781498, 38.672379, 30.908329>,  <33.123085, 38.726166, 31.174557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781498, 38.672379, 30.908329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709602, 38.295319, 31.020830>,  <33.666466, 38.069084, 31.088331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709602, 38.295319, 31.020830>,  <33.781498, 38.672379, 30.908329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709602, 38.295319, 31.020830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248631, -0.320161, -0.914155,
		0.951775, -0.094384, 0.291919,
		-0.179742, -0.942650, 0.281254,
		33.655678, 38.012524, 31.105206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340511, 38.126804, 30.598139>,  <33.781498, 38.672379, 30.908329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340511, 38.126804, 30.598139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028294, 37.897961, 30.698885>,  <33.840961, 37.760654, 30.759333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028294, 37.897961, 30.698885>,  <34.340511, 38.126804, 30.598139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028294, 37.897961, 30.698885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076263, -0.487068, -0.870028,
		0.620428, -0.659889, 0.423810,
		-0.780546, -0.572111, 0.251866,
		33.794128, 37.726326, 30.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563213, 37.442734, 30.361664>,  <34.340511, 38.126804, 30.598139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563213, 37.442734, 30.361664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167831, 37.400414, 30.405041>,  <33.930603, 37.375019, 30.431067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167831, 37.400414, 30.405041>,  <34.563213, 37.442734, 30.361664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167831, 37.400414, 30.405041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051472, -0.438676, -0.897170,
		0.142494, -0.892395, 0.428166,
		-0.988456, -0.105803, 0.108442,
		33.871296, 37.368671, 30.437572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324211, 36.739491, 30.293049>,  <34.563213, 37.442734, 30.361664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324211, 36.739491, 30.293049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019974, 36.981903, 30.199898>,  <33.837433, 37.127350, 30.144007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019974, 36.981903, 30.199898>,  <34.324211, 36.739491, 30.293049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019974, 36.981903, 30.199898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111204, -0.475006, -0.872928,
		-0.639638, -0.638043, 0.428678,
		-0.760590, 0.606028, -0.232879,
		33.791798, 37.163712, 30.130033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729713, 36.250992, 30.120710>,  <34.324211, 36.739491, 30.293049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729713, 36.250992, 30.120710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707516, 36.604691, 29.935226>,  <33.694199, 36.816910, 29.823936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707516, 36.604691, 29.935226>,  <33.729713, 36.250992, 30.120710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707516, 36.604691, 29.935226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092938, -0.457832, -0.884167,
		-0.994124, -0.092163, -0.056773,
		-0.055495, 0.884249, -0.463708,
		33.690868, 36.869965, 29.796114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349674, 36.112972, 29.441275>,  <33.729713, 36.250992, 30.120710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349674, 36.112972, 29.441275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540558, 36.463676, 29.417389>,  <33.655087, 36.674099, 29.403057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540558, 36.463676, 29.417389>,  <33.349674, 36.112972, 29.441275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540558, 36.463676, 29.417389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192895, -0.170801, -0.966239,
		-0.857359, 0.449577, -0.250630,
		0.477207, 0.876760, -0.059716,
		33.683720, 36.726704, 29.399473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105511, 36.399967, 28.833134>,  <33.349674, 36.112972, 29.441275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105511, 36.399967, 28.833134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463047, 36.554878, 28.923515>,  <33.677570, 36.647827, 28.977745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463047, 36.554878, 28.923515>,  <33.105511, 36.399967, 28.833134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463047, 36.554878, 28.923515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314891, -0.183449, -0.931230,
		-0.319197, 0.903526, -0.285926,
		0.893844, 0.387281, 0.225956,
		33.731201, 36.671062, 28.991302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193668, 36.761650, 28.316780>,  <33.105511, 36.399967, 28.833134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193668, 36.761650, 28.316780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564091, 36.734051, 28.465195>,  <33.786343, 36.717491, 28.554243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564091, 36.734051, 28.465195>,  <33.193668, 36.761650, 28.316780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564091, 36.734051, 28.465195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358480, -0.146550, -0.921963,
		0.117987, 0.986794, -0.110980,
		0.926051, -0.068995, 0.371037,
		33.841908, 36.713352, 28.576506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507252, 37.148991, 27.839228>,  <33.193668, 36.761650, 28.316780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507252, 37.148991, 27.839228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782444, 36.942867, 28.043633>,  <33.947559, 36.819191, 28.166275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782444, 36.942867, 28.043633>,  <33.507252, 37.148991, 27.839228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782444, 36.942867, 28.043633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433770, -0.272536, -0.858818,
		0.581827, 0.812514, 0.036026,
		0.687983, -0.515310, 0.511013,
		33.988838, 36.788273, 28.196936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139400, 37.461258, 27.671125>,  <33.507252, 37.148991, 27.839228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139400, 37.461258, 27.671125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237637, 37.094860, 27.798016>,  <34.296577, 36.875019, 27.874149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237637, 37.094860, 27.798016>,  <34.139400, 37.461258, 27.671125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237637, 37.094860, 27.798016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462683, -0.176800, -0.868716,
		0.851828, 0.360121, 0.380397,
		0.245588, -0.915999, 0.317225,
		34.311314, 36.820061, 27.893183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841385, 37.340038, 27.349842>,  <34.139400, 37.461258, 27.671125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841385, 37.340038, 27.349842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701603, 36.982388, 27.461855>,  <34.617733, 36.767799, 27.529062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701603, 36.982388, 27.461855>,  <34.841385, 37.340038, 27.349842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701603, 36.982388, 27.461855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297938, -0.389409, -0.871547,
		0.888319, -0.221137, 0.402477,
		-0.349459, -0.894125, 0.280034,
		34.596764, 36.714149, 27.545866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391102, 36.931862, 27.235991>,  <34.841385, 37.340038, 27.349842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391102, 36.931862, 27.235991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076157, 36.685303, 27.231846>,  <34.887188, 36.537365, 27.229359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076157, 36.685303, 27.231846>,  <35.391102, 36.931862, 27.235991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076157, 36.685303, 27.231846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412735, -0.514573, -0.751575,
		0.457940, -0.596039, 0.659566,
		-0.787363, -0.616402, -0.010363,
		34.839947, 36.500381, 27.228737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627552, 36.426285, 26.922869>,  <35.391102, 36.931862, 27.235991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627552, 36.426285, 26.922869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242680, 36.333645, 26.865499>,  <35.011757, 36.278061, 26.831078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242680, 36.333645, 26.865499>,  <35.627552, 36.426285, 26.922869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242680, 36.333645, 26.865499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238051, -0.458868, -0.856021,
		0.132443, -0.857788, 0.496647,
		-0.962180, -0.231601, -0.143424,
		34.954025, 36.264164, 26.822472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588699, 35.777348, 26.776928>,  <35.627552, 36.426285, 26.922869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588699, 35.777348, 26.776928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240517, 35.905170, 26.627157>,  <35.031609, 35.981865, 26.537294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240517, 35.905170, 26.627157>,  <35.588699, 35.777348, 26.776928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240517, 35.905170, 26.627157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200353, -0.464793, -0.862454,
		-0.449624, -0.825746, 0.340560,
		-0.870458, 0.319548, -0.374423,
		34.979382, 36.001038, 26.514830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276459, 35.215538, 26.518349>,  <35.588699, 35.777348, 26.776928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276459, 35.215538, 26.518349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112160, 35.524937, 26.325270>,  <35.013580, 35.710575, 26.209421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112160, 35.524937, 26.325270>,  <35.276459, 35.215538, 26.518349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112160, 35.524937, 26.325270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141144, -0.469095, -0.871796,
		-0.900759, -0.426215, 0.083504,
		-0.410744, 0.773492, -0.482700,
		34.988937, 35.756985, 26.180460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915409, 34.824886, 25.955990>,  <35.276459, 35.215538, 26.518349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915409, 34.824886, 25.955990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921490, 35.208492, 25.842813>,  <34.925140, 35.438656, 25.774908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921490, 35.208492, 25.842813>,  <34.915409, 34.824886, 25.955990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921490, 35.208492, 25.842813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012990, -0.283141, -0.958991,
		-0.999800, 0.010906, -0.016763,
		0.015205, 0.959017, -0.282942,
		34.926052, 35.496197, 25.757931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635136, 34.860519, 25.319389>,  <34.915409, 34.824886, 25.955990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635136, 34.860519, 25.319389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833904, 35.207630, 25.316885>,  <34.953163, 35.415897, 25.315382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833904, 35.207630, 25.316885>,  <34.635136, 34.860519, 25.319389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833904, 35.207630, 25.316885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024277, -0.021114, -0.999482,
		-0.867457, 0.496509, -0.031559,
		0.496919, 0.867774, -0.006262,
		34.982979, 35.467964, 25.315006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298893, 35.371647, 24.887381>,  <34.635136, 34.860519, 25.319389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298893, 35.371647, 24.887381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678284, 35.495724, 24.913252>,  <34.905918, 35.570168, 24.928774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.678284, 35.495724, 24.913252>,  <34.298893, 35.371647, 24.887381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678284, 35.495724, 24.913252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036115, 0.096961, -0.994633,
		-0.314795, 0.945718, 0.080763,
		0.948473, 0.310188, 0.064677,
		34.962826, 35.588779, 24.932655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363544, 35.950714, 24.361626>,  <34.298893, 35.371647, 24.887381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363544, 35.950714, 24.361626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734791, 35.823055, 24.438301>,  <34.957539, 35.746460, 24.484306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734791, 35.823055, 24.438301>,  <34.363544, 35.950714, 24.361626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734791, 35.823055, 24.438301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233000, 0.096365, -0.967690,
		0.290360, 0.942794, 0.163798,
		0.928118, -0.319144, 0.191691,
		35.013226, 35.727314, 24.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865215, 36.342350, 23.987143>,  <34.363544, 35.950714, 24.361626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865215, 36.342350, 23.987143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052261, 35.998661, 24.070160>,  <35.164490, 35.792446, 24.119970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052261, 35.998661, 24.070160>,  <34.865215, 36.342350, 23.987143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052261, 35.998661, 24.070160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334818, -0.045130, -0.941201,
		0.818069, 0.509606, 0.266580,
		0.467611, -0.859223, 0.207545,
		35.192543, 35.740894, 24.132423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600002, 36.355244, 23.615974>,  <34.865215, 36.342350, 23.987143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600002, 36.355244, 23.615974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506584, 35.973568, 23.690790>,  <35.450535, 35.744564, 23.735680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506584, 35.973568, 23.690790>,  <35.600002, 36.355244, 23.615974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506584, 35.973568, 23.690790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329139, -0.258582, -0.908186,
		0.914945, -0.150541, 0.374451,
		-0.233546, -0.954187, 0.187039,
		35.436520, 35.687313, 23.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179665, 36.006466, 23.207497>,  <35.600002, 36.355244, 23.615974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179665, 36.006466, 23.207497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883858, 35.757893, 23.310986>,  <35.706375, 35.608749, 23.373079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.883858, 35.757893, 23.310986>,  <36.179665, 36.006466, 23.207497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883858, 35.757893, 23.310986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083552, -0.466116, -0.880769,
		0.667935, -0.629725, 0.396622,
		-0.739514, -0.621435, 0.258720,
		35.662003, 35.571461, 23.388601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379322, 35.331329, 23.097084>,  <36.179665, 36.006466, 23.207497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379322, 35.331329, 23.097084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983490, 35.277416, 23.076824>,  <35.745991, 35.245068, 23.064669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983490, 35.277416, 23.076824>,  <36.379322, 35.331329, 23.097084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983490, 35.277416, 23.076824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113535, -0.514066, -0.850203,
		0.088559, -0.847094, 0.524012,
		-0.989579, -0.134787, -0.050649,
		35.686615, 35.236980, 23.061630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782623, 34.746365, 23.337019>,  <36.379322, 35.331329, 23.097084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782623, 34.746365, 23.337019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176876, 34.793900, 23.289019>,  <37.413429, 34.822422, 23.260218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176876, 34.793900, 23.289019>,  <36.782623, 34.746365, 23.337019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176876, 34.793900, 23.289019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031529, 0.568562, 0.822036,
		0.165919, -0.814011, 0.556648,
		0.985635, 0.118841, -0.120001,
		37.472565, 34.829552, 23.253019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101604, 34.535149, 24.053461>,  <36.782623, 34.746365, 23.337019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101604, 34.535149, 24.053461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407730, 34.703140, 23.858356>,  <37.591408, 34.803936, 23.741295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407730, 34.703140, 23.858356>,  <37.101604, 34.535149, 24.053461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407730, 34.703140, 23.858356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355577, 0.355801, 0.864275,
		0.536523, -0.834879, 0.122965,
		0.765315, 0.419980, -0.487759,
		37.637325, 34.829136, 23.712029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728363, 34.363468, 24.390478>,  <37.101604, 34.535149, 24.053461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728363, 34.363468, 24.390478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844398, 34.685490, 24.183502>,  <37.914021, 34.878700, 24.059317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844398, 34.685490, 24.183502>,  <37.728363, 34.363468, 24.390478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844398, 34.685490, 24.183502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224441, 0.468379, 0.854545,
		0.930309, -0.364028, -0.044815,
		0.290087, 0.805049, -0.517440,
		37.931423, 34.927006, 24.028271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453918, 34.506218, 24.574440>,  <37.728363, 34.363468, 24.390478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453918, 34.506218, 24.574440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.258308, 34.831169, 24.447380>,  <38.140942, 35.026138, 24.371143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.258308, 34.831169, 24.447380>,  <38.453918, 34.506218, 24.574440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258308, 34.831169, 24.447380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312901, 0.503307, 0.805466,
		0.814217, 0.294498, -0.500322,
		-0.489023, 0.812375, -0.317652,
		38.111603, 35.074883, 24.352085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916447, 35.052113, 24.737253>,  <38.453918, 34.506218, 24.574440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916447, 35.052113, 24.737253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573357, 35.251122, 24.685440>,  <38.367500, 35.370525, 24.654352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573357, 35.251122, 24.685440>,  <38.916447, 35.052113, 24.737253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573357, 35.251122, 24.685440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198905, 0.553479, 0.808763,
		0.474069, 0.667933, -0.573693,
		-0.857727, 0.497520, -0.129532,
		38.316040, 35.400379, 24.646580>
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
